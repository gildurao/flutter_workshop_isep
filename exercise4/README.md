# Challenge 4 - Bloc Counter

Time to start learning a new state management approach, BLoC!

First step, we need to add our bloc package dependency so we can use it. Go to ``pubspec.yaml`` and uncomment the line with the bloc dependency and run ``flutter pub get`` to refresh the project's dependencies (most IDEs do this automatically when you save the file).

Since this is a very simple example, we can code everything in ``main.dart``.

We already have our layout defined, so let's think about our Bloc first. We're gonna need:

    - The Bloc itself, **CounterBloc**
    - The Bloc's events, **CounterEvent**
    - The Bloc's states, since this is just a counter example we can represent our state with an integer.

Let's go over our events first. Since this is a counter app, the user can do two things, ``increment`` the counter and ``decrement`` the counter. So, those are our events! Let's create an enum to represent these:

```
enum CounterEvent {
  increment,
  decrement,
}
```

Let's go over our bloc now. To use the bloc package, let's start by writing our class header:

```
class CounterBloc extends Bloc<CounterEvent, int> {}
```

As seen, our CounterBloc will extend the Bloc class, and it will have two types: one for the Events, ``CounterEvent`` and one for our states, which are integers.

You'll notice by now that your IDE will warn you that there are 2 missing overrides! Let's go take a look at them one by one.

```
@override
  int get initialState => null;
```

A Bloc always has an initial state, and it's up to you to decide what it is. Since we're dealing with a counter app, our initial state can be ``0``! So let's go ahead and replace that null with our initial state.

```
@override
Stream<int> mapEventToState(CounterEvent event) {
    // TODO: implement mapEventToState
    return null;
}
```

Another method that is also your responsibility is the ```mapEventToState``` method. Like the name suggests this is where the Bloc magic happens, where you separate your UI concerns from your business logic concerns. In our case, our business logic is simple, decrement or increment our state! So let's do that!

```
@override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
      default:
        state;
    }
  }
```

Seems simple right? We differentiate our actions according to what event was dispatched to the Bloc! So, if it's an increment event, well yield our state + 1 and if it's a decrement event, we'll yield our state - 1. Notice the ``async*`` that we added to our method. This allows us to yield our states to the bloc's stream. This is particularly useful when we need to make calls to web services and we want to show a loading indicator when that call is still being processed.

Alright, you created your first BLoC! Now all we need to do is use it in our Widget!

Start off by creating a variable that will reference our BLoC and overriding the initState and dispose methods of our Widget State.

```
CounterBloc counterBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
```

Next, we'll add two things to ``initState`` and ``dispose``. These methods are the first and last one called in a Stateful Widget's lifecycle. Therefore, we need to initialize our bloc in initState and close the bloc's stream when we destroy it, so we avoid nasty errors.

```
CounterBloc counterBloc;

  @override
  void initState() {
    super.initState();
    counterBloc = CounterBloc();
  }

  @override
  void dispose() {
    counterBloc.close();
    super.dispose();
  }
```

We're almost reaching our goal! Now, we need to dispatch events when the user presses the add or subtract buttons!

```
onPressed: () => counterBloc.add(
                CounterEvent.decrement,
              ),

onPressed: () => counterBloc.add(
                CounterEvent.increment,
              ),
```

Awesome! All that's left is to have our widget react to the changes that happen in the bloc's stream. To do that, we can request aid from the ``StreamBuilder`` widget! Let's take a look!

```
StreamBuilder(
    stream: counterBloc,
    builder: (context, AsyncSnapshot<int> snapshot) {
        return Text(
            '${snapshot.data}',
            style: Theme.of(context).textTheme.headline,
        );
    },
),
```

The StreamBuilder Widget requires a stream to listen to and a builder function, where you can decide what to build according to what information you have in the ``snapshot``. The snapshot gets an update each time there's a change in our bloc's stream!

Congratulations! Our challenge is over! Go ahead and try out your reactive UI!


## Goals

Hopefully, with this challenge:

- You'll get acquainted with the Bloc pattern and the bloc package;
- You'll understand how to use the StreamBuilder Widget to create reactive interfaces;
- You'll know about the ``initState`` and ``dispose`` methods and their roles in a Stateful Widget's lifecycle.

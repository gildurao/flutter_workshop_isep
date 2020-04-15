# Challenge 6

This is the finish line to this workshop! And the final challenge is....

Writing tests! (What a huge disapointment!)

Writing tests is crucial for any software, because they assure you that everything is working as intended. We'll be taking a look at widget tests, or tests to the User Interface. Don't worry though, it's easy!

We'll be testing our counter app from the first challenge! Our test suite will comprise of:

- Ensuring that when we click increment the counter changes value by +1;
- Ensuring that when we click decrement the counter changes value by -1;
- Ensuring that when the counter text has an odd number, its color is Colors.teal;
- Ensuring that when the counter text has an even number, its color is Colors.pink

We'll be learning about the WidgetTest object and how helpful it is to write our tests! We'll also be taking a look at what Keys are, and how they can be helpful when writing tests!

We already have the first test written for us, so let's take a look at it!

```
testWidgets(
    'Counter increments smoke test without keys',
    (WidgetTester tester) async {
        // Build our app and trigger a frame.
        await tester.pumpWidget(MyApp());

        // Verify that our counter starts at 0.
        expect(find.text('0'), findsOneWidget);
        expect(find.text('1'), findsNothing);

        // Tap the '+' icon and trigger a frame.
        await tester.tap(find.byIcon(Icons.add));
        await tester.pump();

        // Verify that our counter has incremented.
        expect(find.text('0'), findsNothing);
        expect(find.text('1'), findsOneWidget);
    },
);
```

We need to start by pumping our MyApp widget into Flutter's WidgetTester, so that we actually have our app "running" to test it! By default, the widget tester runs our app in an 800x600 device, which can really help us determine whether or not we're also being careful with building responsive layouts!

Next up is the expectations. In this case we want to verify that we don't find any text that has a '1' in it, and one Widget that has a '0' in it. Our second step is to tap the add icon, so we can trigger the increment change. Notice the call to ``tester.pump()``. This is necessary to ensure that there are no frames left to render from the tapping action! After that we reverse our initial expectations, and we find one widget with the text of '1' and zero widgets with the text '0'.

There's a problem with this test. What if we have a text just around the UI saying '1' or 'o' or '1010'? This test would fail, because it wouldn't know that we want to check the text widget that holds the counter's value! That's why Keys are important! Keys allow us to uniquely identify our Widgets in our widget tree. If you take a look at the code, you'll notice that there are 3 keys defined: 1 for our counter Text widget, 1 for our increment FAB and 1 for our decrement FAB. Let's see how we can find widgets through their keys with the WidgetTester!

```
final textWidget = tester.widget<Text>(find.byKey(Key('counterText')));
```

With the ```tester.widget<T>()``` function we can retrieve the actual Widget instance. All we need is to pass it a finder! Once again, we could've used ``find.Text('0')`` to retrieve our Widget, but this time we're using its Key.

Now, go forth and write some tests and ensure the quality of your software!


## Goals

Hopefully with this challenge, you'll learn about:

- How to write basic widget tests in Flutter;
- Why Keys are super super helpful in writing tests-



# Challenge 3 - Show and Hide a List!

In this challenge you'll implement UI logic to show/hide a List to the user.

First, copy over your awesome container from Challenge 2 and add it to the layout's Column!

Now, let's learn about the ``GestureDetector`` Widget! As its name suggests, it captures gestures that the user might do to a widget. Start by wrapping your container with a GestureDetector. This Widget offers a whole ton of gestures to capture, but for this challenge, we'll only need to capture a tap gesture, so let's use ``onTap``. It will execute a callback function that we define every time the user taps on our Container.

So, our goal is to show or hide a list to the user. We are missing two things: the state management for showing/hiding the list, and the list itself! Let's take care of state management first. For this, we'll take advantage of the ``setState`` callback of our Widget's State! Define a boolean before the build method called ``_showList`` and set it to false (the "_" in dart signals that this variable is private). This assumes that the list is hidden by default. All that's left is to change its value whenever the user taps on our Container. Try to figure out what you have to do! If you find yourself stuck, add this to the ``onTap`` property of our GestureDetector:

```
onTap: () => setState((){
    _showList = !_showList;
}),
```

Congratulations! Your Container + GestureDetector is now a button!


Ok, so now we have a tap callback that will rebuild our Widget and show/hide the list to the user. But now that we have that, we need to use the ``_showList`` flag in the build method itself to change the Container's text accordingly and show/hide the list. But how do we build a list? Using the ``ListView`` widget! Copy this into your build method.

```
_showList
    ?   ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
                return ListTile(
                    leading: Icon(
                        Icons.collections,
                    ),
                    title: Text(
                        'List Tile $index',
                    ),
                    trailing: Icon(
                        Icons.comment,
                    ),
                );
            },
        ),
    :   Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'No list here!',
            ),
        ),
```

The ``ListView`` widget has an additional constructor, ``ListView.builder`` which is more efficient than just using ``ListView``. To use this constructor we need to specify the length of our listem and a function that builds the list's widgets. In this case we're only building ``ListTile`` Widgets!
Ok, so added the state management logic to our build method and we're ready to go! Try to tap our Container to build the List!

Looks like we have an error happening. Because the Column Widget has a finite height, and ListViews have infinite heights, Flutter will not know what to do! To solve this, we need to wrap our ListView with an ``Expanded`` Widget. The Expanded Widget is flexible, and as such will tell the ListView to only go as far as it can in terms of available space! Do this and we'll see our List.

How easy was that? With a few lines of code we built a pretty neat List. We also adapted our layout to be flexible using the Expanded Widget. But, our button doesn't really look like a button yet right? If you tap it we get a reaction from the app, but the Container itself doesn't give us a sign that it was tapped. To fix this, replace the GestureDetector Widget with an ``InkWell``. An InkWell is like a GestureDetector, but a bit fancier! Try to tap your Container again and see it react to your tapping!

## Goals

Hopefully, by the end of this challenge you'll understand;

- How to capture gestures on a Widget with GestureDetector or InkWell;

- How to build a List using the ListView Widget;

- How to make a layout flexible with the Expanded Widget.

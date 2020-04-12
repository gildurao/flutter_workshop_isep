# Challenge 2 - The Lil' Container that could

I hope that by now you are starting to see how cool Flutter is. This challenge is all about one of the most versatile Widgets in Flutter, the Container!

The sample app already offers you the layout for the challenge, and a starting level 1 Container. There are 10 more levels, i.e. Containers, for you to code!

- Level 2 Container:
    - Use the ``color`` property to change the Container's background color. Feel free to choose it from the ``Colors`` class.

- Level 3 Container:
    - The Container already looks so much better, but it could be bigger. Let's try to add some padding to it! Use the ``padding`` property to add some padding to the Container.  To do this, you need ``EdgeInsetsGeometry`` which gives you several constructors. For now, use 16 points of padding for all sides, i.e., ``EdgeInsets.all(16.0)``.

- Level 4 Container:
    - Let's try aligning our container to the right and keep it centered at the same time! Use the ``alignment`` property and set it to ``Alignment.centerRight``. Watch what happens and be confused!

- Level 5 Container:
    - That was weird! Let's remove the padding and alignment for this level. Let's see, what if we want for our Container to always have a specific width and height on every possible screen size? Easy! Just use the ``width`` and ``height`` properties of the Container. Set them to whatever value you want (be careful though!). After that, align your Container to the center.

- Level 6 Container:
    - Fixed sizes can be wonderful, but they can also bring a lot of problems. Let's remove them for now and put back our padding! Time to take our Container's look up a notch. Let's dig in on the ``decoration`` property. Assign a BoxDecoration to it and start by setting the decoration's ``borderRadius`` to ``BorderRadius.circular(12.0)``. Try to solve the error that is going to happen!

- Level 7 Container:
    - Let's change the shape of our Container to a circle! Try to figure out how to do this one (hint: it's a property of BoxDecoration)

- Level 8 Container:
    - Our text is way too big for our circle now. Let's just use the level number now. Style your text with what you learned in the previous Challenge so it has a bigger font size (e.g. 18) and is bold. Change the text's color too!

- Level 9 Container: 
    - Let's put a shadow on our Container. Use the ``boxShadow`` property inside ``BoxDecoration``. Since you can have multiple shadows, you have to provide an array. Try to create a ``BoxShadow`` inside that array and provide it a ``color``, a ``blurRadius`` and a ``spreadRadius``!

- Level 10 Container:
    - Let's add a gradient to our Container. Once again, we'll use ``BoxDecoration``to set it. Use the ``gradient`` property and create whatever Gradient you like best, ``LinearGradient``, ``RadialGradient`` or ``SweepGradient``. Each of them takes a ``begin`` and ``end`` alignments, an array of ``colors`` and an array of ``stops``. Keep in mind that the length of the last 2 arrays has to be the same!  Notice that when you set a gradient, the Container's ``color`` is ignored.

- Level 11 Container:
    - Let's change our shape back to a rectangle and change the text to "Final Container! Congrats!\nBut, oh no! Look at the top of your emulator or device!". Please let me know during the workshop when you've reached this level so I can tell you all about the SafeArea Widget!


## Goals for this challenge

- Hopefully, in this challenge you'll understand just how powerful and versatile a Container can be when you want to create your own styled Widgets! You'll also learn about the SafeArea Widget and how it can save you from showing content below your device's status bar.

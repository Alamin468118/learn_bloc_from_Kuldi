# learn_bloc_from_Kuldi
This repo is about Flutter Bloc that i learn from Kuldi project Youtube channel ( flutter version 3.0.5)

in this folder there have how to relate stream, cubit, bloc, multi bloc provider, multi bloc listener.. 

//==================================================================================================================================================================== //

A StatefulWidget does not scale to larger applications. The BLOC pattern does.

Why is StatefulWidget not good for larger applications?

Communicating information from one screen to a sibling screen tends to be challenging, meaning you have to write a lot of code to transfer data from one screen to another. It is possible, but it tends to be a pain and that's what the BLOC pattern solves.

It makes it easy to share information between multiple widgets inside our application.

BLOC stands for Business LOgic Component and its idea is to house all the data or state inside the application inside one area. It's outside the rest of the application and makes it easy to access.

That's different from a StatefulWidget, because with a BLOC all the data can live within one class outside the component hierarchy. So the state is being centralized to some outside object.

So with the BLOC pattern you do need a solid understanding of streams

//==================================================================================================================================================================== //

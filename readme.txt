Simple pong game based on SFML.

Game engine inspired by https://www.binpress.com/tutorial/creating-a-city-building-game-with-sfml/137

TODO LIST:
	1. Rewrite the texture manager, see *
	2. Fix resizing of the window.
	
	
	
	
	
	
	
	
	
*:
Our texture manager will work by storing an std::map that maps strings to textures; when we want a texture we will call the getRef function with the name of the texture we want and the manager will return a reference to it. This way our textures will not be destroyed unless our manager is, 
we don't have to use a bunch of pointers storing each individual texture, and our pointers will have easy to remember names instead of indices in an array. 
This method is not the best way to handle textures, but it is a simple way of doing it. In larger games (where the VRAM space is actually an issue) you would require ways of unloading textures so that only the required textures were loaded at any one time. For our purposes though, this will do fine. 
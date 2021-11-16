ultimo([E],E).
ultimo([_|L],Last) :- ultimo(L,Last).

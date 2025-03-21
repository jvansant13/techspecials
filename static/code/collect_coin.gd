## This function is called when character collides with coin and coin calls this function.
## this function can easily be modified for a variety of pickup items
##
##
## For better organization place signals in your character script where you keep 
## signals, place variables with other variable, and place functions with other functions. 

signal coin_collected(coins: int)
var coin_total: int = 0


# This function is called when character collides with coin and coin calls this function.
# this function can easily be modified for a variety of pickup items
func collect_coin():
    coin_total += 1
    coin_collected.emit(coin_total)

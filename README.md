# feikController

feikController is a PIC16F18325 emulating a PlayStation 1 controller.  
I wanted to make this into a library but it's too device specific.  
I'm using a cheap pedal button as input to the 16F18325, which sends data to the PlayStation 1 to emulate a press on the X button.  


## Disclaimer

This has been tested on my PlayStation 1 and it seems to be working fine.  
However, I am not responsible if for some reason your PlayStation gets damaged by using or installing this.  

You use this at your own risk.  

## Why

A while back I found out you could use a second controller in Time Crisis 1 to work as an arcade pedal.  
I recently made the PlayStation 1 reset mod with the 16F18325 so I was confident I could emulate a controller.  

That's how this idea came to be, and it seems to be working quite well.  
Here's a demo of the pedal controller : [https://youtu.be/5PXXQ49MqOc](https://youtu.be/5PXXQ49MqOc)  

You can find [a playlist](https://www.youtube.com/watch?v=J5fQKmc8AMY&list=PLGaX4WJGgdHhcbQUQQJR6zFgzyka-xVOa) of me struggling to make this pedal controller.  
  
  
I'd like to point out that the code as it is now is way overkill for just a pedal that only works for Time Crisis.  
It's more a proof of concept on making a PlayStation 1 controller.  

If you're not afraid of modding your GUNCON then I suggest you go that route. It's going to be cheaper too.  
I'd recommend adding something like a 3.5mm jack where you can plug in your pedal.  

Connect the jack in parallel to either the A or B button.  

Be sure to double check the pedal you're buying is the correct type.  
You want a pedal with a normal open button, not normal closed, nor a potentiometer.  

## License

Attribution-ShareAlike 4.0 International, see license file for more info

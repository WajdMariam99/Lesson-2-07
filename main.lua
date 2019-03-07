-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- 
local DiameterOfPizzaTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 200 , 75 )
DiameterOfPizzaTextField.id = "DiameterOfPizza"

local CostOfPizzaTextField = display.newText( "Cost of Pizza", display.contentCenterX, display.contentCenterY - 100 , native.systemFont, 30 )
CostOfPizzaTextField:setFillColor( 87, 61, 178 )
 
 function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

local calculateButton = display.newImageRect( "assets/calculateButton.png", 175 , 75 )
calculateButton.x = 165
calculateButton.y = 455
calculateButton.id = "calculate Button"

local function calculateButtonTouch( event )
 	-- this function calculates the area of a square given the length of one of its sides
	
  local DiameterOfPizza
	local CostOfPizza

	local DiameterOfPizza = DiameterOfPizzaTextField.text
	local CostOfPizza = ((DiameterOfPizza*0.50+0.75+1.00)*1.13)
  
	-- print( Cost of Pizza )
   CostOfPizzaTextField.text = "The total Cost is " .. round(CostOfPizza,2)
   return true
   end

calculateButton:addEventListener ("touch", calculateButtonTouch)
local composer = require( "composer" )

local scene = composer.newScene(  )

---------------------------------------------------------------------------------

function scene:create( event )
    local sceneGroup = self.view
    local carro = display.newImage( "images/explosao.png", math.random(0,320), math.random(0,480))
    print( "cena",carro )
    sceneGroup:insert(carro)

end

function scene:show( event )
    local sceneGroup = self.view

    if event.phase == "will" then

    elseif event.phase == "did" then
        print( carro )
        function nextScene ( event )
            composer.gotoScene( "cena3", { effect = "fade", time = 300 } )
            Runtime:removeEventListener( "tap", nextScene )
        end
        Runtime:addEventListener( "tap", nextScene ) 
        
    end 
end

function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase

    if event.phase == "will" then
        
    elseif phase == "did" then

    end 
end


function scene:destroy( event )
    local sceneGroup = self.view

end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene

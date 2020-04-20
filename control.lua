-- Unlock recipes if mod was installed after technology was researched
script.on_configuration_changed(function(e)
  for _, force in pairs(game.forces) do
    if force.technologies["nuclear-power"].researched then
	  force.recipes["steamWorks-steam-expansion"].enabled = true
    end
  end
end)

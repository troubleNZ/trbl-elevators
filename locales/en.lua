local Translations = {
    error = {
        something_went_wrong    = 'Something went wrong',
        no_vehicles             =   '~r~Vehicles are not allowed.'
        
    },
    success = {
        transitioned    = 'You moved to the requested floor',
        waiting         = 'Waiting for Elevator..'
        
    },
    info = {
        list_of_choices = 'Floor Choices',
        welcome         = 'Elevator Access',
        
    },
    text = {
        enter           = 'Select Floor',
        enter_boss      = 'Welcome Boss',
        enter_general   = 'Select Floor',
        open_menu        = 'Open Menu',
        close_menu      = '⬅ Close Menu',
        elevator        = ' Elevator',
        showmenu        = '[E] Elevator Menu',
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

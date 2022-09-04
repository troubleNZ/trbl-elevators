local Translations = {
    error = {
        something_went_wrong = 'Something went wrong',
        
    },
    success = {
        transitioned = 'You moved to the requested floor',
        waiting = 'Waiting for Elevator..'
        
    },
    info = {
        list_of_choices = 'Floor Choices',
    },
    text = {
        enter = 'Select Floor',
        enter_boss = 'Welcome Boss',
        enter_general = 'Select Floor',
        close_menu = '⬅ Close Menu',
        elevator = " Elevator"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

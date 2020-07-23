Given('the user enters value {string} in {string}', (inputValue, element) => {

    if (inputValue === '') {
        cy
            .get(element)
            .clear()
    } else {
        cy
            .get(element)
            .clear()
            .type(inputValue);
    }
});

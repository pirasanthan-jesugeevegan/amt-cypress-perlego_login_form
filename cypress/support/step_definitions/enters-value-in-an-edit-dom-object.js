Given('the user enters value {string} in {string}', (inputValue, element) => {

    cy
        .get(element)
        .clear()
        .type(inputValue);
});

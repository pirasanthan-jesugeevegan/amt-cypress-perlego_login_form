Given('the user clicks on {string}', (elementSelector) => {

    cy
        .get(elementSelector)
        .click();
});

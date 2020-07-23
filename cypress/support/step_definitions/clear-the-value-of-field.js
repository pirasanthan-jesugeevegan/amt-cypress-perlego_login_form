Given('the user clears {string}', (elementSelectorKey) => {
    cy
        .get(elementSelectorKey)
        .clear();
});

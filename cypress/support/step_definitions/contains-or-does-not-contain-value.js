
Given('the field {string} contains {string}', (elementSelector, assertionValue) => {
    cy
        .get(elementSelector)
        .should((elementSelector) => {
            expect(elementSelector).to.have.text || value(assertionValue)
        })
});

Given('the field {string} does not contain {string}', (elementSelector, assertionValue) => {
    cy
        .get(elementSelector)
        .should((elementSelector) => {
            expect(elementSelector).not.have.text || value(assertionValue)
        })
});

const implementation = (elementKey, condition) => {

    const element = elementKey;

    cy
        .get(element)
        .should(condition);
};

Given('the field {string} is visible', (elementKey) => {
    implementation(elementKey, 'be.visible');
});

Given('the field {string} is not visible', (elementKey) => {
    implementation(elementKey, 'be.hidden');
});

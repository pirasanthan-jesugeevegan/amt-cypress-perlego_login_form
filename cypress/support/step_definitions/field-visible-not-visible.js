import * as selectors from './mappings-importer.js';

const implementation = (elementKey, condition) => {

    const element = selectors[elementKey];

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

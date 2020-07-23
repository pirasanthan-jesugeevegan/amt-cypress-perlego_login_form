import * as selectors from './mappings-importer.js';

Given('the user enters value {string} in {string}', (inputValue, element) => {

    if (inputValue === '') {
        cy
            .get(selectors[element])
            .clear()
    } else {
        cy
            .get(selectors[element])
            .clear()
            .type(inputValue);
    }
});

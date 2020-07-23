import * as selectors from './mappings-importer.js';
Given('the user clears {string}', (elementSelectorKey) => {
    cy
        .get(selectors[elementSelectorKey])
        .clear();
});

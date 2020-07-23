import * as selectors from './mappings-importer.js';

Given('the user sets checkbox {string} value to {string}', (checkbox, state) => {

    if (state === 'true') {
        cy
            .get(selectors[checkbox])
            .check({ force: true });
    } else {
        cy
            .get(selectors[checkbox])
            .uncheck({ force: true });
    }
});

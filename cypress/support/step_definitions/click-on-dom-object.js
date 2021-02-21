import * as selectors from './mappings-importer.js';

Given('the user clicks on {string}', (elementSelector) => {
  cy.get(selectors[elementSelector]).click();
});

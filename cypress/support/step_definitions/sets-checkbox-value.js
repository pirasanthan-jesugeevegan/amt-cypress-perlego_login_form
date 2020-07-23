Given('the user sets checkbox {string} value to {string}', (checkbox, state) => {

    if (state === 'true') {
        cy
            .get(checkbox)
            .check({ force: true });
    } else {
        cy
            .get(checkbox)
            .uncheck({ force: true });
    }
});

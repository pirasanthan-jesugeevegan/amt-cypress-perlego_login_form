Given('the user navigates to {string}', (url) => {
    cy
        .visit(url)
        .wait(3000)

});

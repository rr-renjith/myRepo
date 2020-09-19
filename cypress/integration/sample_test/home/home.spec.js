/// <reference types="cypress" />

describe('/home', () => {
    
    it('logs message', () => {
        cy.log('hello world')
        expect(true).to.equal(true)
    })
    
})
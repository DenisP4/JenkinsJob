Feature: Skills Options feature
 
  Background: Given User is on NTK Dashboard page
            
Scenario: Adding skills to user

         When User navigates to Skills Options menu
         And User enters the skills name "Denis-automation testing"
         And User enters the description of the skills "Automation"
        Then System displays successfuly added message "Successfully Saved"
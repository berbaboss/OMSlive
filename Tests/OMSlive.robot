*** Settings ***
Library             AppiumLibrary
Resource		    ..\\Pages\\LoginPage.robot
Resource		    ..\\Pages\\Weight_Manual.robot
Resource		    ..\\Pages\\OpenApp.robot


*** Variables ***

*** Test Cases ***
OMS Live Stock
    Open App
    Login OMS Livestock
    Weight Manual Test
    
    
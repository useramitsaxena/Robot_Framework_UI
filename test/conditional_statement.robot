*** Variables ***

@{input}=  Amit     Saxena      Manu
${variablename} # Scaler variable
&{variablename}=['key1': 'value1' 'key2': 'value2',.......]# dict variable
&{user}=['name' : 'Rakul', 'age' : '21']
@{ROBOTS}=  Bender    Johnny5    Terminator    Robocop # List variable
@{variablename}
@{user}=["Jaanu", "Jhanvi"]
*** Test Cases ***

Test
    run keyword if    10 == 10
              ELSE  Log  10

Test2
    FOR  ${i}  IN   RANGE  1 2 3 4 5
        log to console  ${i}
    END


Test3
    FOR  ${i}  IN  @{input}
        log to console  ${i}
    END

Test4
     FOR    ${robot}    IN  @{ROBOTS}
        Exit For Loop If    $robot == 'Robocop'
        log to console  ${robot}
     END

Test5

    WHILE    True    limit=1
        Log    Executed until the default loop limit (10) is hit.
    END

#*** Keywords ***

*** Settings ***
Library  String
*** Variables ***
${user}=  Amit  Saxena
${name}=  DUMMY users
${email}=  amitsaxena9225@gmail.com

@{list_data}=  Amit  Saxena  is  learning  robot  Framework
*** Test Cases ***
#Test string_Lower
#    [Tags]    DEBUG
#   # convert into lower case
#   ${str1} =	Convert To Lower Case	ABC
#   log to console  ${str1}
#Test Title_Case
#   ${str1} =	Convert To Title Case	hello, world!
#   log to console  ${str1}
#Test Upper_Case
#   ${str1} =	Convert To Upper Case	abc
#   ${str2} =	Convert To Upper Case	1a2C3d
#   Should Be Equal	${str1}	ABC
#   Should Be Equal	${str2}	1A2C3D
#   log to console  ${str1}
#   log to console  ${str2}
#   ${str2} =	Convert To Upper Case	1a2C3d
#   ${bytes} =	Encode String To Bytes	${str2}	UTF-8
#
    #${string} =	Decode Bytes To String	${bytes}	UTF-8
#   log to console  ${bytes}
#   ${string} =	Decode Bytes To String	${bytes}	UTF-8
#   log to console  ${string}
#    ${SPACE}  ' '
#    ${str2} =	Convert To Upper Case	1a2C3d
#    @{words} =  Split String    ${str2}      ,${SPACE}
#    ${test}  fetch from left  @{words}  2
#    log to console  ${test}

    #
#    ${str2} =	Convert To Upper Case	1a2C3d
#    @{words} =  Split String    ${str2}      ,${SPACE}
#    ${test}  fetch from right  @{words}  2
#    log to console  ${test}
# *******************

#    ${to} =	Format String	To: {} <{}>	${user}	${email}
#    log to console  ${to}
#
#    ${to} =	Format String	To: ${name}  ${email} 	name=${name}	email=${email}
#    log to console  ${to}
#
#    ${xx} =	Format String	{:*^30}	AMIT SAXENA
#    log to console  ${xx}

#    ${yy} =	Format String	{0:{width}{base}}	${42}	base=X	width=10
#    log to console  ${yy}

#Genearte_String
#    ${low} =	Generate Random String	12	[LOWER]
#    log to console  ${low}

#    ${ret} =	Generate Random String
#    log to console  ${ret}

#    ${bin} =	Generate Random String	8	01
#    log to console  ${bin}
#    ${hex} =	Generate Random String	4	[NUMBERS]abcdef
#
#    log to console  ${hex}

#    ${rnd} =	Generate Random String	5-10	# Generates a string 5 to 10 characters long
#    log to console  ${rnd}

Get_line
    [Documentation]  Returns the specified line from the given string.
    ${first} =	Get Line	@{list_data}	0
    log to console  ${first}






*** Keywords ***
Provided precondition
    Setup system under test
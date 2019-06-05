<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of July 28, 2017 on March 20, 2018 at 3:21:15 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-created>
<name>CS474</name> <type>package</type>
</component-created>

<class>
<name>SAL</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>instructionString hardware numberOfArguments argument locationOfInstructionInMemory </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>SAL</class-id>
<body>This is the instruction abstract class on which all the instruction sub classes will extend on. 
</comment>

<class>
<name>ADD</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>ADD</class-id>
<body>This is the ADD subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>HLT</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>HLT</class-id>
<body>This is the HLT subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>ComputerHardware</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>memory registerA registerB PC symbolTable zero_result_bit overflow_bit numberOfInstructions </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>ComputerHardware</class-id>
<body>This class contains all the components of the hardware such as the memory, the required bits and the registers along with the symbol table. 
</comment>

<class>
<name>Interpreter</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>inputEditor datamemory accumulatorInput Binput pcinput overflowinput zeroinput hardware executeOneLineVariable inputInstructions executeAllLinesVariable </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>Interpreter</class-id>
<body>This is the GUI for the Assembly language interpreter program. The user will be interacting with this program. 
</comment>

<class>
<name>DEC</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>DEC</class-id>
<body>This is the DEC subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>LDA</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>LDA</class-id>
<body>This is the LDA subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>LDB</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>LDB</class-id>
<body>This is the LDB subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>LDI</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>LDI</class-id>
<body>This is the LDI subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>ST</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>ST</class-id>
<body>This is the ST subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>XCH</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>XCH</class-id>
<body>This is the XCH subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>JMP</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>JMP</class-id>
<body>This is the JMP subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>JZS</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>JZS</class-id>
<body>This is the JZS subclass. It extends off of the SAL abstract class
</comment>

<class>
<name>JVS</name>
<environment>Smalltalk</environment>
<super>SAL</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>JVS</class-id>
<body>This is the JVS subclass. It extends off of the SAL abstract class
</comment>

<methods>
<class-id>SAL class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>SAL</class-id> <category>accessing</category>

<body package="CS474" selector="arguments:">arguments: anObject

<body package="CS474" selector="instructionString:">instructionString: anObject

<body package="CS474" selector="arguments">arguments

<body package="CS474" selector="numberOfArguments:">numberOfArguments: anObject

<body package="CS474" selector="hardware:">hardware: anObject

<body package="CS474" selector="hardware">hardware

<body package="CS474" selector="instructionString">instructionString

<body package="CS474" selector="locationOfInstructionInMemory">locationOfInstructionInMemory

<body package="CS474" selector="locationOfInstructionInMemory:">locationOfInstructionInMemory: anObject

<body package="CS474" selector="numberOfArguments">numberOfArguments
</methods>

<methods>
<class-id>SAL</class-id> <category>printing</category>

<body package="CS474" selector="printString">printString
</methods>

<methods>
<class-id>SAL</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute
</methods>

<methods>
<class-id>SAL</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>DEC</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute

<body package="CS474" selector="execute:">execute: aValue
</methods>

<methods>
<class-id>DEC</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aHardware

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>LDA</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute

<body package="CS474" selector="execute:">execute: aValue
</methods>

<methods>
<class-id>LDA</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aHardware

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>LDB</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue

<body package="CS474" selector="execute">execute
</methods>

<methods>
<class-id>LDB</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize

<body package="CS474" selector="initialize:">initialize: aHardware
</methods>


<methods>
<class-id>LDI</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue

<body package="CS474" selector="execute">execute
</methods>

<methods>
<class-id>LDI</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize

<body package="CS474" selector="initialize:">initialize: aHardware
</methods>


<methods>
<class-id>ST</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue

<body package="CS474" selector="execute">execute
</methods>

<methods>
<class-id>ST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize

<body package="CS474" selector="initialize:">initialize: aHardware
</methods>


<methods>
<class-id>XCH</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute

<body package="CS474" selector="execute:">execute: aValue
</methods>

<methods>
<class-id>XCH</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aHardware

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>JMP</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute
</methods>

<methods>
<class-id>JMP</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize

<body package="CS474" selector="initialize:">initialize: aHardware
</methods>


<methods>
<class-id>JZS</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue

<body package="CS474" selector="execute">execute
</methods>

<methods>
<class-id>JZS</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize

<body package="CS474" selector="initialize:">initialize: aHardware
</methods>


<methods>
<class-id>JVS</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute

<body package="CS474" selector="execute:">execute: aValue
</methods>

<methods>
<class-id>JVS</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aHardware

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>ADD</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue

<body package="CS474" selector="execute">execute
</methods>

<methods>
<class-id>ADD</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize

<body package="CS474" selector="initialize:">initialize: aHardware
</methods>


<methods>
<class-id>HLT</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue

<body package="CS474" selector="execute">execute
</methods>

<methods>
<class-id>HLT</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize

<body package="CS474" selector="initialize:">initialize: aHardware
</methods>


<methods>
<class-id>ComputerHardware class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>ComputerHardware</class-id> <category>Updating</category>

<body package="CS474" selector="splitStringToWords:">splitStringToWords: instructionString

<body package="CS474" selector="updateMemory:">updateMemory: instructionArray

<body package="CS474" selector="updateMemory:at:">updateMemory: instructionSet at: i
</methods>

<methods>
<class-id>ComputerHardware</class-id> <category>accessing</category>

<body package="CS474" selector="registerB">registerB

<body package="CS474" selector="numberOfInstructions:">numberOfInstructions: anObject

<body package="CS474" selector="numberOfInstructions">numberOfInstructions

<body package="CS474" selector="registerB:">registerB: anObject

<body package="CS474" selector="memoryhelperTable">memoryhelperTable

<body package="CS474" selector="zero_result_bit">zero_result_bit

<body package="CS474" selector="zero_result_bit:">zero_result_bit: anObject

<body package="CS474" selector="memoryhelperTable:">memoryhelperTable: anObject

<body package="CS474" selector="registerA">registerA

<body package="CS474" selector="pC">pC

<body package="CS474" selector="registerA:">registerA: anObject

<body package="CS474" selector="symbolTable">symbolTable

<body package="CS474" selector="pC:">pC: anObject

<body package="CS474" selector="memory">memory

<body package="CS474" selector="overflow_bit">overflow_bit

<body package="CS474" selector="memory:">memory: anObject

<body package="CS474" selector="overflow_bit:">overflow_bit: anObject

<body package="CS474" selector="symbolTable:">symbolTable: anObject
</methods>

<methods>
<class-id>ComputerHardware</class-id> <category>execute</category>

<body package="CS474" selector="executeInstructionAtPosition:">executeInstructionAtPosition: i

<body package="CS474" selector="executeAllInstructions">executeAllInstructions

<body package="CS474" selector="executePCLine">executePCLine
</methods>

<methods>
<class-id>ComputerHardware</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>Interpreter class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>Interpreter</class-id> <category>aspects</category>

<body package="CS474" selector="zeroinput">zeroinput

<body package="CS474" selector="accumulatorInput">accumulatorInput

<body package="CS474" selector="hardware:">hardware: anObject

<body package="CS474" selector="hardware">hardware

<body package="CS474" selector="Binput">Binput

<body package="CS474" selector="overflowinput">overflowinput

<body package="CS474" selector="pcinput">pcinput

<body package="CS474" selector="inputEditor">inputEditor

<body package="CS474" selector="datamemory">datamemory
</methods>

<methods>
<class-id>Interpreter</class-id> <category>actions</category>

<body package="CS474" selector="Executeoneline">Executeoneline

<body package="CS474" selector="clearall">clearall

<body package="CS474" selector="getUserInput">getUserInput

<body package="CS474" selector="updateEverything">updateEverything

<body package="CS474" selector="ExecuteAllLines">ExecuteAllLines
</methods>

<methods>
<class-id>Interpreter</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>



</st-source>
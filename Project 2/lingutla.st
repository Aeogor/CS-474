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
<body>This is the instruction abstract class on which all the instruction sub classes will extend on. Subclasses must implement the following messages:	execute		executeInstance Variables:	argument	&lt;ArithmeticValue | Date | Duration | Timestamp&gt;	description of argument	hardware	&lt;ComputerHardware&gt;	description of hardware	instructionString	&lt;String&gt;	description of instructionString	locationOfInstructionInMemory	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of locationOfInstructionInMemory	numberOfArguments	&lt;SmallInteger&gt;	description of numberOfArguments</body>
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
<body>This is the ADD subclass. It extends off of the SAL abstract class</body>
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
<body>This is the HLT subclass. It extends off of the SAL abstract class</body>
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
<body>This class contains all the components of the hardware such as the memory, the required bits and the registers along with the symbol table. Instance Variables:	memory	&lt;(Array of: (AdHocQueryTool | CodeRegenerator | Cursor | DeferrableAction | ExternalDatabaseSession | Query | Refactoring | RefactoryChange | SAL))&gt;	description of memory	numberOfInstructions	&lt;ArithmeticValue&gt;	description of numberOfInstructions	overflow_bit	&lt;SmallInteger&gt;	description of overflow_bit	PC	&lt;ArithmeticValue&gt;	description of PC	registerA	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of registerA	registerB	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of registerB	symbolTable	&lt;Dictionary&gt;	description of symbolTable	zero_result_bit	&lt;SmallInteger&gt;	description of zero_result_bit</body>
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
<body>This is the GUI for the Assembly language interpreter program. The user will be interacting with this program. Instance Variables:	accumulatorInput	&lt;ValueModel&gt;	description of accumulatorInput	Binput	&lt;ValueModel&gt;	description of Binput	datamemory	&lt;ValueModel&gt;	description of datamemory	executeOneLineVariable	&lt;SmallInteger&gt;	description of executeOneLineVariable	hardware	&lt;ComputerHardware&gt;	description of hardware	inputEditor	&lt;ValueModel&gt;	description of inputEditor	inputInstructions	&lt;ByteFieldDescriptor | CCompoundType | (Collection of: (AbstractProxy | Object | ProtoObject)) | GlorpExpression | MC_FileBTree | RBProgramNode | SharedRegistry | Stream | Struct | UnmanagedCache&gt;	description of inputInstructions	overflowinput	&lt;ValueModel&gt;	description of overflowinput	pcinput	&lt;ValueModel&gt;	description of pcinput	zeroinput	&lt;ValueModel&gt;	description of zeroinput</body>
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
<body>This is the DEC subclass. It extends off of the SAL abstract class</body>
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
<body>This is the LDA subclass. It extends off of the SAL abstract class</body>
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
<body>This is the LDB subclass. It extends off of the SAL abstract class</body>
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
<body>This is the LDI subclass. It extends off of the SAL abstract class</body>
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
<body>This is the ST subclass. It extends off of the SAL abstract class</body>
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
<body>This is the XCH subclass. It extends off of the SAL abstract class</body>
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
<body>This is the JMP subclass. It extends off of the SAL abstract class</body>
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
<body>This is the JZS subclass. It extends off of the SAL abstract class</body>
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
<body>This is the JVS subclass. It extends off of the SAL abstract class</body>
</comment>

<methods>
<class-id>SAL class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>SAL</class-id> <category>accessing</category>

<body package="CS474" selector="arguments:">arguments: anObject	argument := anObject</body>

<body package="CS474" selector="instructionString:">instructionString: anObject	instructionString := anObject</body>

<body package="CS474" selector="arguments">arguments	^argument</body>

<body package="CS474" selector="numberOfArguments:">numberOfArguments: anObject	numberOfArguments := anObject</body>

<body package="CS474" selector="hardware:">hardware: anObject	hardware := anObject</body>

<body package="CS474" selector="hardware">hardware	^hardware</body>

<body package="CS474" selector="instructionString">instructionString	^instructionString</body>

<body package="CS474" selector="locationOfInstructionInMemory">locationOfInstructionInMemory	^locationOfInstructionInMemory</body>

<body package="CS474" selector="locationOfInstructionInMemory:">locationOfInstructionInMemory: anObject	locationOfInstructionInMemory := anObject</body>

<body package="CS474" selector="numberOfArguments">numberOfArguments	^numberOfArguments</body>
</methods>

<methods>
<class-id>SAL</class-id> <category>printing</category>

<body package="CS474" selector="printString">printString	"comment stating purpose of message"		argument = nil		ifTrue: [^instructionString] ifFalse: [^ instructionString, ' ', (argument printString)].</body>
</methods>

<methods>
<class-id>SAL</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute	"comment stating purpose of message"	self subclassResponsibility.</body>
</methods>

<methods>
<class-id>SAL</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."		^self error: 'Error creating an instance of pure abstract class'.</body>
</methods>


<methods>
<class-id>DEC</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "		argument = nil ifTrue: [^0].		(self hardware symbolTable) at: argument put: locationOfInstructionInMemory.	^1.</body>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>
</methods>

<methods>
<class-id>DEC</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'DEC'.	hardware :=aHardware.	numberOfArguments := 1.		^self</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'DEC'.	hardware := nil.	numberOfArguments := 1.		^self</body>
</methods>


<methods>
<class-id>LDA</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	| memoryLocation |		argument = nil ifTrue: [^self error: 'No argument found'].		memoryLocation := (self hardware symbolTable) findKeyOrNil: argument.		memoryLocation = nil ifTrue: [^Dialog warn: 'No Symbol found in symbol table'].		memoryLocation := (self hardware symbolTable) at: argument.		hardware registerA: ((hardware memory) at: memoryLocation).		^1.</body>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>
</methods>

<methods>
<class-id>LDA</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'LDA'.	hardware :=aHardware.	numberOfArguments := 1.		^self</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'LDA'.	hardware := nil.	numberOfArguments := 1.		^self</body>
</methods>


<methods>
<class-id>LDB</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "		| memoryLocation |		argument = nil ifTrue: [^self error: 'No argument found'].		memoryLocation := (self hardware symbolTable) findKeyOrNil: argument.		memoryLocation = nil ifTrue: [^self error: 'No Symbol found in symbol table'].		memoryLocation := (self hardware symbolTable) at: argument.			hardware registerB: ((hardware memory) at: memoryLocation).		^1.</body>
</methods>

<methods>
<class-id>LDB</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'LDB'.	hardware := nil.	numberOfArguments := 1.		^self</body>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'LDB'.	hardware := aHardware.	numberOfArguments := 1.		^self</body>
</methods>


<methods>
<class-id>LDI</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	argument = nil ifTrue: [^self error: 'No argument found'].		(argument &gt; 1073741823 or: [argument &lt; -1073741823]) 		ifTrue: [^self error: 'LDI value not in range'.].		hardware registerA: argument.		^1.</body>
</methods>

<methods>
<class-id>LDI</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'LDI'.	hardware := nil.	numberOfArguments := 1.		^self</body>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'LDI'.	hardware :=aHardware.	numberOfArguments := 1.		^self</body>
</methods>


<methods>
<class-id>ST</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	| memoryLocation |		argument = nil ifTrue: [^self error: 'No argument found'].		memoryLocation := (self hardware symbolTable) findKeyOrNil: argument.		memoryLocation = nil ifTrue: [^self error: 'No Symbol found in symbol table'].		memoryLocation := (self hardware symbolTable) at: argument.		(hardware memory) at: memoryLocation put: (hardware registerA).		^1</body>
</methods>

<methods>
<class-id>ST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'ST'.	hardware := nil.	numberOfArguments := 1.		^self</body>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'ST'.	hardware := aHardware.	numberOfArguments := 1.		^self</body>
</methods>


<methods>
<class-id>XCH</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	| temp |		temp:= hardware registerB.	hardware registerB: (hardware registerA).	hardware registerA: temp.		^1.</body>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>
</methods>

<methods>
<class-id>XCH</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'XCH'.	hardware :=aHardware.	numberOfArguments := 0.		^self</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'XCH'.	hardware := nil.	numberOfArguments := 0.		^self</body>
</methods>


<methods>
<class-id>JMP</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "		argument = nil ifTrue: [^self error: 'Incorrect jump instruction'].	argument &gt; 255 ifTrue: [^self error: 'Incorrect jump instruction'].	(hardware pC: (argument - 1)).	^1.</body>
</methods>

<methods>
<class-id>JMP</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'JMP'.	hardware := nil.	numberOfArguments := 1.		^self</body>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'JMP'.	hardware := aHardware.	numberOfArguments := 1.		^self</body>
</methods>


<methods>
<class-id>JZS</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "			argument = nil ifTrue: [^self error: 'Incorrect jump instruction'].	argument &gt; 255 ifTrue: [^self error: 'Incorrect jump instruction'].	(hardware zero_result_bit = 1) ifTrue: [hardware pC: (argument - 1)].	^1.</body>
</methods>

<methods>
<class-id>JZS</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'JZS'.	hardware := nil.	numberOfArguments := 1.		^self</body>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'JZS'.	hardware := aHardware.	numberOfArguments := 1.		^self</body>
</methods>


<methods>
<class-id>JVS</class-id> <category>execute</category>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "		argument = nil ifTrue: [^self error: 'Incorrect jump instruction'].	argument &gt; 255 ifTrue: [^self error: 'Incorrect jump instruction'].	(hardware overflow_bit = 1) ifTrue: [hardware pC: (argument - 1)].	^1.</body>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>
</methods>

<methods>
<class-id>JVS</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'JVS'.	hardware := aHardware.	numberOfArguments :=1.		^self</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'JVS'.	hardware := nil.	numberOfArguments :=1.		^self</body>
</methods>


<methods>
<class-id>ADD</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	| result |		result := hardware registerA + hardware registerB.		"error checking"		(result &gt; 536870911 or: [result &lt; -536870912]) 		ifTrue: [			hardware overflow_bit: 1.			(result &gt; 536870911) ifTrue: [result := (result - 536870911) asSmallInteger].			(result &lt; -536870912) ifTrue: [result := (result + 536870912) asSmallInteger].]								ifFalse: [hardware overflow_bit: 0]. 							result = 0 ifTrue: [hardware zero_result_bit: 1]			ifFalse: [hardware zero_result_bit: 0].		hardware registerA: result asSmallInteger.		^1.</body>
</methods>

<methods>
<class-id>ADD</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'ADD'.	hardware := nil.	numberOfArguments := 0.		^self</body>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'ADD'.	hardware := aHardware.	numberOfArguments := 0.		^self</body>
</methods>


<methods>
<class-id>HLT</class-id> <category>execute</category>

<body package="CS474" selector="execute:">execute: aValue	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	self error: 'Subclass responsibility stub not reimplemented'</body>

<body package="CS474" selector="execute">execute	" *** This method was defined by SAL as a subclass responsibility.	Replace its body with a proper implementation. *** "	^-1.</body>
</methods>

<methods>
<class-id>HLT</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'HLT'.	hardware := nil.	numberOfArguments := 0.		^self</body>

<body package="CS474" selector="initialize:">initialize: aHardware	"Initialize a newly created instance. This method must answer the receiver."	instructionString := 'HLT'.	hardware :=aHardware.	numberOfArguments := 0.		^self</body>
</methods>


<methods>
<class-id>ComputerHardware class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>ComputerHardware</class-id> <category>Updating</category>

<body package="CS474" selector="splitStringToWords:">splitStringToWords: instructionString	"comment stating purpose of message"		| words newString |		instructionString ifNil: [^nil.].	words := OrderedCollection new.		newString := instructionString tokensBasedOn: Character space.		1 to: newString size do: [		:i | (newString at: i) isNotEmpty ifTrue: [words add: (newString at: i)]].		^words</body>

<body package="CS474" selector="updateMemory:">updateMemory: instructionArray		"comment stating purpose of message"	instructionArray ifNil: [^self].	self pC: 0.	self numberOfInstructions: 0.		(instructionArray size &gt; 255) ifTrue: [^self error: 'Too many instructions.'].		(1 to: (instructionArray size)) do: [ :i | | instructionSet |				instructionSet := self splitStringToWords: (instructionArray at: i).			(instructionSet size &gt; 0) ifTrue: [				numberOfInstructions := numberOfInstructions + 1.				self updateMemory: instructionSet at: i.				].		].</body>

<body package="CS474" selector="updateMemory:at:">updateMemory: instructionSet at: i	"comment stating purpose of message"	| instruction commandInstruction| 					commandInstruction := instructionSet at: 1.		commandInstruction = 'ADD' ifTrue: [instruction:= ADD new. 											instruction arguments: nil].		commandInstruction = 'DEC' ifTrue: [ instruction:= DEC new. 											instruction arguments: ((instructionSet at: 2) asString)].		commandInstruction = 'HLT' ifTrue: [instruction:= HLT new. 											instruction arguments: nil].		commandInstruction = 'JMP' ifTrue: [instruction:= JMP new. 											instruction arguments: ((instructionSet at: 2)  asNumber)].								commandInstruction = 'JVS' ifTrue: [instruction:= JVS new. 											instruction arguments: ((instructionSet at: 2) asNumber)].		commandInstruction = 'JZS' ifTrue: [instruction:= JZS new. 											instruction arguments: ((instructionSet at: 2) asNumber)].												commandInstruction = 'LDA' ifTrue: [instruction:= LDA new. 											instruction arguments: ((instructionSet at: 2) asString)].						commandInstruction = 'LDB' ifTrue: [instruction:= LDB new. 											instruction arguments: ((instructionSet at: 2) asString)].				commandInstruction = 'LDI' ifTrue: [instruction:= LDI new. 											instruction arguments: (((instructionSet at: 2) asNumber) asSmallInteger)].				commandInstruction = 'ST' ifTrue: [instruction:= ST new. 											instruction arguments: ((instructionSet at: 2) asString)].				commandInstruction = 'XCH' ifTrue: [instruction:= XCH new. 											instruction arguments: nil].				instruction hardware: self.		instruction locationOfInstructionInMemory: i.		instruction numberOfArguments: (instructionSet size - 1).		memory at: i put: instruction.						^self.</body>
</methods>

<methods>
<class-id>ComputerHardware</class-id> <category>accessing</category>

<body package="CS474" selector="registerB">registerB	^registerB</body>

<body package="CS474" selector="numberOfInstructions:">numberOfInstructions: anObject	numberOfInstructions := anObject</body>

<body package="CS474" selector="numberOfInstructions">numberOfInstructions	^numberOfInstructions</body>

<body package="CS474" selector="registerB:">registerB: anObject	registerB := anObject</body>

<body package="CS474" selector="memoryhelperTable">memoryhelperTable	^memoryhelperTable</body>

<body package="CS474" selector="zero_result_bit">zero_result_bit	^zero_result_bit</body>

<body package="CS474" selector="zero_result_bit:">zero_result_bit: anObject	zero_result_bit := anObject</body>

<body package="CS474" selector="memoryhelperTable:">memoryhelperTable: anObject	memoryhelperTable := anObject</body>

<body package="CS474" selector="registerA">registerA	^registerA</body>

<body package="CS474" selector="pC">pC	^PC</body>

<body package="CS474" selector="registerA:">registerA: anObject	registerA := anObject</body>

<body package="CS474" selector="symbolTable">symbolTable	^symbolTable</body>

<body package="CS474" selector="pC:">pC: anObject	PC := anObject</body>

<body package="CS474" selector="memory">memory	^memory</body>

<body package="CS474" selector="overflow_bit">overflow_bit	^overflow_bit</body>

<body package="CS474" selector="memory:">memory: anObject	memory := anObject</body>

<body package="CS474" selector="overflow_bit:">overflow_bit: anObject	overflow_bit := anObject</body>

<body package="CS474" selector="symbolTable:">symbolTable: anObject	symbolTable := anObject</body>
</methods>

<methods>
<class-id>ComputerHardware</class-id> <category>execute</category>

<body package="CS474" selector="executeInstructionAtPosition:">executeInstructionAtPosition: i		|  returnStatus|		((memory at: i) isKindOf: SAL) ifTrue: [				returnStatus := (self memory at: i) ifNotNil: [(memory at: i) execute.].						].		^returnStatus.</body>

<body package="CS474" selector="executeAllInstructions">executeAllInstructions		[PC &lt; numberOfInstructions] whileTrue: [|status|								status := self executePCLine.																status = 0 ifTrue: [^self error: 'Execute failed'].								status = -1 ifTrue: [^self.].].</body>

<body package="CS474" selector="executePCLine">executePCLine	| returnStatus  |	((PC + 1) &gt; numberOfInstructions) ifTrue: [^Dialog warn: 'End of instructions'].		returnStatus := self executeInstructionAtPosition: (PC + 1).	PC := PC + 1.		^returnStatus.</body>
</methods>

<methods>
<class-id>ComputerHardware</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	memory := Array new: 256.	registerA := 0 asSmallInteger.	registerB := 0 asSmallInteger.	PC := 0.	symbolTable := Dictionary new.	zero_result_bit := 0.	overflow_bit := 0.	numberOfInstructions := 0.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Interpreter class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Interpreter' 			#bounds: #(#{Graphics.Rectangle} 735 246 1455 642 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 42 0 33 0 230 0 373 0 ) 					#name: #TextEditor 					#model: #inputEditor 					#tabRequiresControl: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 505 0 234 0 640 0 255 0 ) 					#name: #ExecuteAllbutton 					#model: #ExecuteAllLines 					#label: 'Execute All Lines' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 506 0 278 0 640 0 299 0 ) 					#name: #Executelinebutton 					#model: #Executeoneline 					#label: 'Execute Line' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 505 0 322 0 640 0 344 0 ) 					#name: #clearbutton 					#model: #clearall 					#label: 'Clear Contents' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 493 0 30 0 ) 					#name: #Label1 					#label: 'Accumulator:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 493 0 61 0 ) 					#name: #Label2 					#label: 'Register B:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 493 0 96 0 ) 					#name: #Label3 					#label: 'Program counter:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 493 0 131 0 ) 					#name: #Label4 					#label: 'Overflow Bit:' ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 263 0 32 0 453 0 373 0 ) 					#name: #datamemoryoutput 					#model: #datamemory 					#isReadOnly: true 					#tabRequiresControl: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 493 0 166 0 ) 					#name: #Label5 					#label: 'Zero Bit:' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 596 0 30 0 696 0 49 0 ) 					#name: #InputField1 					#model: #accumulatorInput 					#isReadOnly: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 596 0 60 0 696 0 79 0 ) 					#name: #InputField2 					#model: #Binput 					#isReadOnly: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 596 0 95 0 696 0 114 0 ) 					#name: #InputField3 					#model: #pcinput 					#isReadOnly: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 596 0 130 0 696 0 149 0 ) 					#name: #InputField4 					#model: #overflowinput 					#isReadOnly: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 596 0 164 0 696 0 183 0 ) 					#name: #InputField5 					#model: #zeroinput 					#isReadOnly: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 105 0 5 0 ) 					#name: #Label6 					#label: 'Input' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 320 0 6 0 ) 					#name: #Label7 					#label: 'Data Memory' ) ) ) )</body>
</methods>


<methods>
<class-id>Interpreter</class-id> <category>aspects</category>

<body package="CS474" selector="zeroinput">zeroinput	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^zeroinput isNil		ifTrue:			[zeroinput := String new asValue]		ifFalse:			[zeroinput]</body>

<body package="CS474" selector="accumulatorInput">accumulatorInput	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^accumulatorInput isNil		ifTrue:			[accumulatorInput := String new asValue]		ifFalse:			[accumulatorInput]</body>

<body package="CS474" selector="hardware:">hardware: anObject	hardware := anObject</body>

<body package="CS474" selector="hardware">hardware	^hardware</body>

<body package="CS474" selector="Binput">Binput	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^Binput isNil		ifTrue:			[Binput := String new asValue]		ifFalse:			[Binput]</body>

<body package="CS474" selector="overflowinput">overflowinput	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^overflowinput isNil		ifTrue:			[overflowinput := String new asValue]		ifFalse:			[overflowinput]</body>

<body package="CS474" selector="pcinput">pcinput	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^pcinput isNil		ifTrue:			[pcinput := String new asValue]		ifFalse:			[pcinput]</body>

<body package="CS474" selector="inputEditor">inputEditor	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^inputEditor isNil		ifTrue:			[inputEditor := String new asValue]		ifFalse:			[inputEditor]</body>

<body package="CS474" selector="datamemory">datamemory	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^datamemory isNil		ifTrue:			[datamemory := String new asValue]		ifFalse:			[datamemory]</body>
</methods>

<methods>
<class-id>Interpreter</class-id> <category>actions</category>

<body package="CS474" selector="Executeoneline">Executeoneline	"This stub method was generated by UIDefiner"	| userInput memoryString printNewLine position|	(executeOneLineVariable = 0) ifTrue: [	hardware := ComputerHardware new. 									executeOneLineVariable := 1.									userInput := self getUserInput.										userInput = nil ifTrue: [self clearall. ^nil].																		(userInput size &gt; 255) ifTrue: [										Dialog warn: 'Too many instructions.'.										executeOneLineVariable := 0. ^nil].										hardware updateMemory: userInput.									hardware pC: 0.									].				hardware executePCLine.	self updateEverything.		memoryString := String new.	position := 0.	printNewLine := String with: Character cr.			inputInstructions do:[ :i | 					i ~= nil ifTrue: [				(hardware pC -1 = position) 				ifTrue: [memoryString := ((memoryString , i ,  printNewLine) asText allBold)]				ifFalse:[memoryString := memoryString , i,  printNewLine ] .				position := position + 1.].		].		inputEditor value: memoryString.	executeAllLinesVariable :=0.		^nil.</body>

<body package="CS474" selector="clearall">clearall	"This stub method was generated by UIDefiner"	accumulatorInput value: ''.	Binput value: ''.	pcinput value: ''.	zeroinput value: ''.	overflowinput value: ''.		datamemory value: ''.	inputEditor value: ''.		hardware := nil.	executeOneLineVariable := 0.	executeAllLinesVariable := 0.	inputInstructions := nil.</body>

<body package="CS474" selector="getUserInput">getUserInput	"This stub method was generated by UIDefiner"	| array userInput|		(inputEditor value) isEmpty ifTrue: [Dialog warn: 'Enter atleast one instruction'. ^nil.].		userInput := inputEditor value tokensBasedOn: Character cr.		array := Array new: (userInput size).		1 to: userInput size do: [		:i | (userInput at: i) isNotEmpty ifTrue: [array at: i put: ((userInput at: i) asString)]].		inputInstructions := array.	^array.</body>

<body package="CS474" selector="updateEverything">updateEverything	"This stub method was generated by UIDefiner"		| memoryString position printNewLine|		accumulatorInput value: (hardware registerA printString).	Binput value: (hardware registerB printString).	pcinput value: (hardware pC printString).	zeroinput value: (hardware zero_result_bit printString).	overflowinput value: (hardware overflow_bit printString).		memoryString := String new.	position := 0.	printNewLine := String with: Character cr.		hardware memory do:[ :i | 					i ~= nil ifTrue: [memoryString := memoryString , position printString, ': ', i printString , printNewLine ] .			position := position + 1.		].		datamemory value: memoryString.</body>

<body package="CS474" selector="ExecuteAllLines">ExecuteAllLines	"This stub method was generated by UIDefiner"	| userInput |			(executeAllLinesVariable = 0) ifTrue: [	hardware := ComputerHardware new. 									executeAllLinesVariable := 1.									userInput := self getUserInput.										userInput = nil ifTrue: [self clearall. ^nil].									(userInput size &gt; 255) ifTrue: [										Dialog warn: 'Too many instructions.'.										executeAllLinesVariable := 0. ^nil].																		hardware updateMemory: userInput.									hardware pC: 0.									].			hardware executeAllInstructions.	self updateEverything.	executeOneLineVariable := 0.	^nil.</body>
</methods>

<methods>
<class-id>Interpreter</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	hardware := nil.	executeOneLineVariable := 0.	executeAllLinesVariable := 0.</body>
</methods>



</st-source>

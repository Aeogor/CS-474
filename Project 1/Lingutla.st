<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of July 28, 2017 on February 19, 2018 at 6:42:30 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-created>
<name>CS474</name> <type>package</type>
</component-created>

<class>
<name>BSTNode</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>_rightNode _leftNode pair </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>NewDictionary</name>
<environment>Smalltalk</environment>
<super>Core.Collection</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>DictionaryInUse dictionary </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>SortedDictionary</name>
<environment>Smalltalk</environment>
<super>NewDictionary</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>size items </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>DictionaryPair</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>key value </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>TreeDictionary</name>
<environment>Smalltalk</environment>
<super>NewDictionary</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>tree size </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>BST</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>root size </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>DictionaryApp</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>dictionary applyBlockText getValueFromKey valueInput keyInput AllPairsList AllKeysList AllValuesList currentDictionaryLabel </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<methods>
<class-id>DictionaryApp class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #specifiedSize #positionType #positionSystemDefault #openType #advanced ) 			#label: 'Dictionary' 			#min: #(#{Core.Point} 20 20 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 408 188 1128 636 ) 			#colors: 			#(#{UI.LookPreferences} 				#setForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setBackgroundColor: #(#{Graphics.ColorValue} 8191 8191 3072 ) 				#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 5557 6360 7998 ) 				#setBorderColor: #(#{Graphics.ColorValue} #lightGray ) ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 120 0 25 0 294 0 46 0 ) 					#name: #ActionButton1 					#model: #newSD 					#label: 'New Sorted Dictionary' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 405 0 27 0 578 0 48 0 ) 					#name: #ActionButton2 					#model: #newTD 					#label: 'New Tree Dictionary' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 86 0 79 0 218 0 98 0 ) 					#name: #InputField1 					#model: #keyInput ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 86 0 106 0 218 0 125 0 ) 					#name: #InputField2 					#model: #valueInput 					#type: #string ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 45 0 138 0 222 0 159 0 ) 					#name: #ActionButton3 					#model: #addPiar 					#label: 'Add new pair' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 44 0 80 0 ) 					#name: #Label1 					#label: 'Key:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 44 0 108 0 ) 					#name: #Label2 					#label: 'Value:' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 298 0 78 0 435 0 97 0 ) 					#name: #InputField3 					#model: #getValueFromKey ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 256 0 110 0 434 0 131 0 ) 					#name: #ActionButton4 					#model: #getValue 					#label: 'Get Value' 					#defaultable: true ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.LayoutFrame} -8 0 64 0 703 0 68 0 ) 					#name: #Divider1 ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 258 0 80 0 ) 					#name: #Label3 					#label: 'Key:' ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.LayoutFrame} 35 0 175 0 678 0 179 0 ) 					#name: #Divider2 ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 456 0 78 0 691 0 97 0 ) 					#name: #InputField4 					#model: #applyBlockText ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 459 0 110 0 691 0 131 0 ) 					#name: #ActionButton5 					#model: #applyBlock 					#label: 'Apply Block' 					#defaultable: true ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.LayoutFrame} 266 0 230 0 467 0 419 0 ) 					#name: #List1 					#model: #AllKeysList 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 56 0 191 0 212 0 212 0 ) 					#name: #ActionButton6 					#model: #getAllPairs 					#label: 'All Pairs' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 528 0 192 0 676 0 214 0 ) 					#name: #ActionButton8 					#model: #getAllValues 					#label: 'All Values' 					#defaultable: true ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.LayoutFrame} 503 0 229 0 697 0 417 0 ) 					#name: #List3 					#model: #AllValuesList 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.LayoutFrame} 29 0 229 0 225 0 416 0 ) 					#name: #List2 					#model: #AllPairsList 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 282 0 191 0 448 0 212 0 ) 					#name: #ActionButton7 					#model: #getAllKeys 					#label: 'All Keys' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 435 0 147 0 586 0 166 0 ) 					#name: #InputField5 					#model: #currentDictionaryLabel 					#isReadOnly: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 368 0 148 0 ) 					#name: #Label4 					#label: 'Dictionary:' ) ) ) )</body>
</methods>


<methods>
<class-id>DictionaryApp</class-id> <category>actions</category>

<body package="CS474" selector="applyBlock">applyBlock	"This stub method was generated by UIDefiner"	|  block string|			string := applyBlockText value.			block := BlockClosure readFromString: string.		dictionary do: block.</body>

<body package="CS474" selector="resetDictionary">resetDictionary	"This stub method was generated by UIDefiner"	| empty |	dictionary := nil.		empty := OrderedCollection new.		keyInput value: ''.	valueInput value: ''.		getValueFromKey value: ''.	applyBlockText value: ''.		AllKeysList list: empty.	AllPairsList list: empty.	AllValuesList list: empty.		^self</body>

<body package="CS474" selector="getAllPairs">getAllPairs	"This stub method was generated by UIDefiner"	|  finalList |		dictionary ifNil: [^Dialog warn: 'Create a new dictionary first'].		finalList := OrderedCollection new.	dictionary do: [ :index | finalList add: 'Key: ' , (index key printString) , '  Value: ' , (index value printString)].		AllPairsList list: finalList.</body>

<body package="CS474" selector="addPiar">addPiar	"This stub method was generated by UIDefiner"		| _key _value |		dictionary ifNil: [^Dialog warn: 'Create a new dictionary first'].		_key := keyInput value.			_value := valueInput value asNumber.		dictionary at: _key put: _value.		keyInput value: ''.	valueInput value: ''.</body>

<body package="CS474" selector="newSD">newSD	dictionary ifNotNil: [self resetDictionary].		dictionary := SortedDictionary new.		currentDictionaryLabel value: 'Sorted Dictionary'.	^dictionary</body>

<body package="CS474" selector="newTD">newTD	"This stub method was generated by UIDefiner"		dictionary ifNotNil: [self resetDictionary].		dictionary := TreeDictionary new.		currentDictionaryLabel value: 'Tree Dictionary'.	^dictionary</body>

<body package="CS474" selector="getValue">getValue	"This stub method was generated by UIDefiner"		| _key _value |		dictionary ifNil: [^Dialog warn: 'Create a new dictionary first'].		_key := getValueFromKey value .		_value := dictionary at: _key.		getValueFromKey value: ''.		_value ifNil: [^Dialog warn: 'No Pair found'].		^Dialog warn: ( 'The value is ' , (_value printString)).</body>

<body package="CS474" selector="getAllKeys">getAllKeys	"This stub method was generated by UIDefiner"		|  list |		dictionary ifNil: [^Dialog warn: 'Create a new dictionary first'].	list := dictionary keys.		AllKeysList list: list.</body>

<body package="CS474" selector="getAllValues">getAllValues	"This stub method was generated by UIDefiner"	|  list length random n randomInteger|		dictionary ifNil: [^Dialog warn: 'Create a new dictionary first'].	list := dictionary values.	length := dictionary size.	n := 100.	random := FastRandom new.	randomInteger := (random nextValue) * length.	randomInteger := randomInteger asInteger.		[ n &gt; 1 ] whileTrue: [				randomInteger &lt; 1 ifTrue: [randomInteger  := 1.].		randomInteger &gt; length ifTrue: [randomInteger  := length.].		      	list swap: length with: randomInteger.     		n := n - 1.		randomInteger := (random next) * length.		randomInteger := randomInteger asInteger.    	]  .			AllValuesList list: list.</body>
</methods>

<methods>
<class-id>DictionaryApp</class-id> <category>aspects</category>

<body package="CS474" selector="getValueFromKey">getValueFromKey	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^getValueFromKey isNil		ifTrue:			[getValueFromKey := String new asValue]		ifFalse:			[getValueFromKey]</body>

<body package="CS474" selector="currentDictionaryLabel">currentDictionaryLabel	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^currentDictionaryLabel isNil		ifTrue:			[currentDictionaryLabel := String new asValue]		ifFalse:			[currentDictionaryLabel]</body>

<body package="CS474" selector="AllValuesList">AllValuesList	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^AllValuesList isNil		ifTrue:			[AllValuesList := SelectionInList new]		ifFalse:			[AllValuesList]</body>

<body package="CS474" selector="AllPairsList">AllPairsList	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^AllPairsList isNil		ifTrue:			[AllPairsList := SelectionInList new]		ifFalse:			[AllPairsList]</body>

<body package="CS474" selector="applyBlockText">applyBlockText	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^applyBlockText isNil		ifTrue:			[applyBlockText := String new asValue]		ifFalse:			[applyBlockText]</body>

<body package="CS474" selector="valueInput">valueInput	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^valueInput isNil		ifTrue:			[valueInput := String new asValue]		ifFalse:			[valueInput]</body>

<body package="CS474" selector="AllKeysList">AllKeysList	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^AllKeysList isNil		ifTrue:			[AllKeysList := SelectionInList new]		ifFalse:			[AllKeysList]</body>

<body package="CS474" selector="keyInput">keyInput	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^keyInput isNil		ifTrue:			[keyInput := String new asValue]		ifFalse:			[keyInput]</body>
</methods>


<methods>
<class-id>NewDictionary class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>NewDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	DictionaryInUse := 0.	dictionary := nil.		" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="dictionaryInUse:">dictionaryInUse: anObject	DictionaryInUse := anObject</body>

<body package="CS474" selector="at:">at: key	^self subclassResponsibility</body>

<body package="CS474" selector="at:put:">at: key put: value	^self subclassResponsibility</body>

<body package="CS474" selector="keys">keys	^self subclassResponsibility</body>

<body package="CS474" selector="dictionaryInUse">dictionaryInUse	^DictionaryInUse</body>

<body package="CS474" selector="dictionary:">dictionary: anObject	dictionary := anObject</body>

<body package="CS474" selector="values">values	^self subclassResponsibility</body>

<body package="CS474" selector="allPairs">allPairs	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	| set |		set:= OrderedCollection new.		self do: [ :index | set add: (index)].			^set</body>

<body package="CS474" selector="dictionary">dictionary	^dictionary</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>removing</category>

<body package="CS474" selector="remove:ifAbsent:">remove: oldObject ifAbsent: anExceptionBlock	" *** This method was defined by Collection as a subclass responsibility.	Replace its body with a proper implementation. *** "	self shouldNotImplement</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>adding</category>

<body package="CS474" selector="add:">add: newObject	" *** This method was defined by Collection as a subclass responsibility.	Replace its body with a proper implementation. *** "| oldPair currentPair|(currentPair := dictionary getPair: (newObject key)).currentPair ifNotNil: [oldPair := (DictionaryPair new) key: (currentPair key) value: (currentPair value)].self at: (newObject key) put: (newObject value).^oldPair.</body>
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock	" *** This method was defined by Collection as a subclass responsibility.	Replace its body with a proper implementation. *** "	^self subclassResponsibility</body>
</methods>


<methods>
<class-id>SortedDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock	" *** This method was defined by Collection as a subclass responsibility.	Replace its body with a proper implementation. *** "		items do:		[:i | aBlock value: i]</body>
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="items">items	^items</body>

<body package="CS474" selector="at:">at: position	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "		|  start current end|		position == nil ifTrue: [^self subscriptBoundsErrorFor: #at index: nil ].		(size = 0) ifTrue: [^nil].	start := 1. 	end:= size.		[start &lt;= end] whileTrue: [		current := ((start + (end))/2) floor.		(current &gt; end) ifTrue: [current := size.].				((items at: current) key = position) ifTrue: [^((items at: current) value)]. 		((items at: current) key &lt; position) ifTrue: [start:= current + 1] 									ifFalse: [end := current - 1].										].			^nil</body>

<body package="CS474" selector="getPair:">getPair: position	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "		|  start current end|		start := 1. 	end:= size.		[start &lt;= end] whileTrue: [		current := (start + ((end-1)/2)) floor.		((items at: current) key = position) ifTrue: [^(items at: current)]. 		((items at: current) key &lt; position) ifTrue: [start:= current + 1] 									ifFalse: [end := current - 1].										].			^nil</body>

<body package="CS474" selector="at:put:">at: _key put: _value	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "		| pair |	_key == nil ifTrue: [^self subscriptBoundsErrorFor: #at:put: index: nil value: _value].	_value == nil ifTrue: [^self subscriptBoundsErrorFor: #at:put: index: nil value: _value].		((self at: _key) = nil) ifTrue: [		pair:= (DictionaryPair new) key: _key value:_value.			items add: pair.		size := size + 1.				] ifFalse: [		pair:= self getPair: _key.		pair value: _value.				].				^pair</body>

<body package="CS474" selector="keys">keys	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	| set |		set:= OrderedCollection new.		self do: [ :index | set add: (index key) ].		^set</body>

<body package="CS474" selector="getSize">getSize	^size</body>

<body package="CS474" selector="size:">size: anObject	size := anObject</body>

<body package="CS474" selector="values">values	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	| set |		set:= OrderedCollection new.		self do: [ :index | set add: (index value) ].			^set</body>

<body package="CS474" selector="items:">items: anObject	items := anObject</body>
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	size := 0.	items := SortedCollection sortBlock:[:a :b | a key &lt; b key].	dictionary := self.	DictionaryInUse := 1.		" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>DictionaryPair class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>DictionaryPair</class-id> <category>initialize-release</category>

<body package="CS474" selector="key:value:">key: new_key value:new_value	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	key := new_key.	value := new_value.	" *** And replace this comment with additional initialization code *** "	^self</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	key := nil.	value := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>DictionaryPair</class-id> <category>accessing</category>

<body package="CS474" selector="key:">key: anObject	key := anObject</body>

<body package="CS474" selector="key">key	^key</body>

<body package="CS474" selector="value:">value: anObject	value := anObject</body>

<body package="CS474" selector="value">value	^value</body>
</methods>


<methods>
<class-id>TreeDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	^(tree iterate: aBlock on: (tree root))</body>
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="at:">at: key	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	|  searchObject |		key == nil ifTrue: [^self subscriptBoundsErrorFor: #at index: nil ].		searchObject:= tree getValueAt: key.		^searchObject.</body>

<body package="CS474" selector="at:put:">at: _key put: _value	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	| dictpair Node |	_key == nil ifTrue: [^self subscriptBoundsErrorFor: #at:put: index: nil value: _value].	_value == nil ifTrue: [^self subscriptBoundsErrorFor: #at:put: index: nil value: _value].		((self at: _key) = nil)	 ifTrue: [		dictpair:= (DictionaryPair new) key: _key value:_value.		Node:= (BSTNode new).		Node pair: dictpair.		tree at: _key put: Node.		size := size + 1.]		ifFalse: [	dictpair:= self getPair: _key.			dictpair value: _value.].		^dictpair</body>

<body package="CS474" selector="getPair:">getPair: key	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	|  node |		node:= tree getNode: key.		(node) ifNil: [^nil] ifNotNil: [^(node pair)].</body>

<body package="CS474" selector="keys">keys	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "		| set someblock|		set:= OrderedCollection new.		someblock:= [:pair | set add: pair key ].		self do: someblock.		^set</body>

<body package="CS474" selector="front:">front: anObject	tree := anObject</body>

<body package="CS474" selector="getSize">getSize	^size</body>

<body package="CS474" selector="front">front	^tree</body>

<body package="CS474" selector="size:">size: anObject	size := anObject</body>

<body package="CS474" selector="values">values	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	| set someblock|		set:= OrderedCollection new.		someblock:= [:pair | set add: pair value ].		self do: someblock.		^set</body>
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	tree := BST new.	size := 0.	dictionary := self.	DictionaryInUse := 2.		" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>BSTNode class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>BSTNode</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	_rightNode := nil.	_leftNode := nil.	pair := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>accessing</category>

<body package="CS474" selector="pair:">pair: anObject	pair := anObject</body>

<body package="CS474" selector="right:">right: anObject	_rightNode := anObject</body>

<body package="CS474" selector="pair">pair	^pair</body>

<body package="CS474" selector="right">right	^_rightNode</body>

<body package="CS474" selector="left:">left: anObject	_leftNode := anObject</body>

<body package="CS474" selector="left">left	^_leftNode</body>
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="root:">root: anObject	root := anObject</body>

<body package="CS474" selector="at:put:">at: key put: object|  head  parent |root = nil ifTrue: [root:= object. size := size + 1. ^root].head:= root.parent:= nil.[(head) ~= nil] whileTrue: [		parent:= head.		((head pair key) = key) ifTrue: [^self]. 		((head pair key) &lt; key) ifTrue: [head:= head right] 						ifFalse: [head:= head left]. 											].((parent pair key) &lt; key) ifTrue: [parent right: object]					ifFalse: [parent left: object].size := size + 1.^self</body>

<body package="CS474" selector="getSize">getSize	^size</body>

<body package="CS474" selector="getValueAt:">getValueAt: key	|  searchObject |		searchObject:= self getNode: key.		(searchObject ~= nil) ifTrue: [^(searchObject pair value)] ifFalse: [^nil].</body>

<body package="CS474" selector="getNode:">getNode: key|  head  |root = nil ifTrue: [^nil].head:= root.[(head) ~= nil] whileTrue: [		((head pair key) = key) ifTrue: [^head]. 		((head pair key) &lt; key) ifTrue: [head:= head right] 						ifFalse: [head:= head left]. 											].^nil</body>

<body package="CS474" selector="root">root	^root</body>

<body package="CS474" selector="size:">size: anObject	size := anObject</body>

<body package="CS474" selector="iterate:on:">iterate: aBlock on: aNode(aNode = nil) ifTrue: [^aNode].self iterate:aBlock on: (aNode left).aBlock value: (aNode pair).self iterate:aBlock on: (aNode right).^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>adding</category>

<body package="CS474" selector="add:">add: object|  head  parent key|key:= object pair key.root = nil ifTrue: [root:= object. ^root].head:= root.parent:= nil.[(head) ~= nil] whileTrue: [		parent:= head.		((head pair key) = key) ifTrue: [^self]. 		((head pair key) &lt; key) ifTrue: [head:= head right] 						ifFalse: [head:= head left]. 											].((parent pair key) &lt; key) ifTrue: [parent right: object]					ifFalse: [parent left: object].size := size + 1.^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	root := nil.	size := 0.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>



</st-source>

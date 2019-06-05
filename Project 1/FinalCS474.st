<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of July 28, 2017 on February 17, 2018 at 2:46:53 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-created>
<name>CS474</name> <type>package</type>
</component-created>

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

<body package="CS474" selector="do:">do: aBlock	" *** This method was defined by Collection as a subclass responsibility.	Replace its body with a proper implementation. *** "		(1) to: (size) do:		[:i | aBlock value: (self items at: i)]</body>
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="items">items	^items</body>

<body package="CS474" selector="at:">at: position	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "				|  start current end|	(size = 0) ifTrue: [^nil].	start := 1. 	end:= size.		[start &lt;= end] whileTrue: [		current := (start + ((end-1)/2)) floor.		((items at: current) key = position) ifTrue: [^((items at: current) value)]. 		((items at: current) key &lt; position) ifTrue: [start:= current + 1] 									ifFalse: [end := current - 1].										].			^nil</body>

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

<body package="CS474" selector="at:">at: key	" *** This method was defined by NewDictionary as a subclass responsibility.	Replace its body with a proper implementation. *** "	|  searchObject |		searchObject:= tree getValueAt: key.		^searchObject.</body>

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

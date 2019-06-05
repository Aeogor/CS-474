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

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>DictionaryApp</class-id> <category>actions</category>

<body package="CS474" selector="applyBlock">applyBlock

<body package="CS474" selector="resetDictionary">resetDictionary

<body package="CS474" selector="getAllPairs">getAllPairs

<body package="CS474" selector="addPiar">addPiar

<body package="CS474" selector="newSD">newSD

<body package="CS474" selector="newTD">newTD

<body package="CS474" selector="getValue">getValue

<body package="CS474" selector="getAllKeys">getAllKeys

<body package="CS474" selector="getAllValues">getAllValues
</methods>

<methods>
<class-id>DictionaryApp</class-id> <category>aspects</category>

<body package="CS474" selector="getValueFromKey">getValueFromKey

<body package="CS474" selector="currentDictionaryLabel">currentDictionaryLabel

<body package="CS474" selector="AllValuesList">AllValuesList

<body package="CS474" selector="AllPairsList">AllPairsList

<body package="CS474" selector="applyBlockText">applyBlockText

<body package="CS474" selector="valueInput">valueInput

<body package="CS474" selector="AllKeysList">AllKeysList

<body package="CS474" selector="keyInput">keyInput
</methods>


<methods>
<class-id>NewDictionary class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>NewDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="dictionaryInUse:">dictionaryInUse: anObject

<body package="CS474" selector="at:">at: key

<body package="CS474" selector="at:put:">at: key put: value

<body package="CS474" selector="keys">keys

<body package="CS474" selector="dictionaryInUse">dictionaryInUse

<body package="CS474" selector="dictionary:">dictionary: anObject

<body package="CS474" selector="values">values

<body package="CS474" selector="allPairs">allPairs

<body package="CS474" selector="dictionary">dictionary
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>removing</category>

<body package="CS474" selector="remove:ifAbsent:">remove: oldObject ifAbsent: anExceptionBlock
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>adding</category>

<body package="CS474" selector="add:">add: newObject
</methods>

<methods>
<class-id>NewDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock
</methods>


<methods>
<class-id>SortedDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="items">items

<body package="CS474" selector="at:">at: position

<body package="CS474" selector="getPair:">getPair: position

<body package="CS474" selector="at:put:">at: _key put: _value

<body package="CS474" selector="keys">keys

<body package="CS474" selector="getSize">getSize

<body package="CS474" selector="size:">size: anObject

<body package="CS474" selector="values">values

<body package="CS474" selector="items:">items: anObject
</methods>

<methods>
<class-id>SortedDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>DictionaryPair class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>DictionaryPair</class-id> <category>initialize-release</category>

<body package="CS474" selector="key:value:">key: new_key value:new_value

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>DictionaryPair</class-id> <category>accessing</category>

<body package="CS474" selector="key:">key: anObject

<body package="CS474" selector="key">key

<body package="CS474" selector="value:">value: anObject

<body package="CS474" selector="value">value
</methods>


<methods>
<class-id>TreeDictionary</class-id> <category>enumerating</category>

<body package="CS474" selector="do:">do: aBlock
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>accessing</category>

<body package="CS474" selector="at:">at: key

<body package="CS474" selector="at:put:">at: _key put: _value

<body package="CS474" selector="getPair:">getPair: key

<body package="CS474" selector="keys">keys

<body package="CS474" selector="front:">front: anObject

<body package="CS474" selector="getSize">getSize

<body package="CS474" selector="front">front

<body package="CS474" selector="size:">size: anObject

<body package="CS474" selector="values">values
</methods>

<methods>
<class-id>TreeDictionary</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>BSTNode class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>BSTNode</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>BSTNode</class-id> <category>accessing</category>

<body package="CS474" selector="pair:">pair: anObject

<body package="CS474" selector="right:">right: anObject

<body package="CS474" selector="pair">pair

<body package="CS474" selector="right">right

<body package="CS474" selector="left:">left: anObject

<body package="CS474" selector="left">left
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="root:">root: anObject

<body package="CS474" selector="at:put:">at: key put: object

<body package="CS474" selector="getSize">getSize

<body package="CS474" selector="getValueAt:">getValueAt: key

<body package="CS474" selector="getNode:">getNode: key

<body package="CS474" selector="root">root

<body package="CS474" selector="size:">size: anObject

<body package="CS474" selector="iterate:on:">iterate: aBlock on: aNode
</methods>

<methods>
<class-id>BST</class-id> <category>adding</category>

<body package="CS474" selector="add:">add: object
</methods>

<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>



</st-source>
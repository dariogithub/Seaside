testing
isBinary
	"answers whether the contents of a document of the receiving mime type are binary"
	self main = 'text' ifTrue: [ ^ false ].
	self main = 'application'
		ifTrue: [
			"application/json is text"
			self sub = 'json' ifTrue: [ ^ false ] ].
	GRPlatform subStringsIn: self sub splitBy: $+ do: [ :each |
		"application/javascript and application/xml are text"
		(#('javascript' 'xml') includes: each)
			ifTrue: [ ^ false ] ].
	^ true
private
createRoutes
	^ OrderedCollection new
		"GET"
		add: (WARoute get: #listDatabases);
		add: (WARoute post: #createDatabase:);
		add: (WARoute post: #createDatabase:document:);
		add: (WARoute get: #getDatabase:document:);
		add: (WARoute delete: #deleteDatabase:document:);
		yourself
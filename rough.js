db.createCollection("nonFiction",{
    validator:{
        $jsonSchema:{
            required:['name','price'],
            properties:{
                name:{
                    bsonType:'string',
                    description: 'must be a string and reuired'
                },
                price:{
                    bsonType:'number',
                    description:'must be a number'
                }
            }
        }
    },
    validationAction:'error'
})

db.runCommand({
    collMod: 'nonFiction',
    validator:{
        $jsonSchema:{
            required:['name','price','author'],
            properties:{
                name:{
                    bsonType:'string',
                    description: 'must be a string and reuired'
                },
                price:{
                    bsonType:'number',
                    description:'must be a number'
                },
                author:{
                    bsonType:'array',
                    description:"must be an array",
                    items:{
                        bsonType:'object',
                        required:['name','email'],
                        properties:{
                            name:{
                                bsonType:'string'
                            },
                            email:{
                                bsonType:'string'
                            }
                        }
                    }
                }
            }
        }
    },
    validationAction:'error'
})
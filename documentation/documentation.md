FORMAT: 1A

# MyShop API

This is an API to deal with the online shop

# Group Product

Resources related to product display

## Product Display Management [/product]

### Retrieve product list [GET]

+ Response 200 (application/json)

        [
            {
              "id": 1,
              "name": "iPhone 7"
            },
            {
              "id": 2,
              "name": "iPhone 7+"
            },
            {
              "id": 3,
              "name": "iPad Pro 9.7inch"
            }
        ]

### Create new product [POST]

+ Request (application/json)

        {
            "name": "new product name"
        }

+ Response 201 (application/json)

    + Headers
    
            X-INSERTED-ID: new product id
        
    + Body

            {
                "id": 17,
                "name": "new product name"
            }
        
## Individual Product Display Management [/product/{productId}]

### Retrieve product data for a product [GET]

+ Parameters
    + productId: 2 (number) - productId of the inventory you want to retrieve
    
+ Response 200 (application/json)

        {
            "id": 2,
            "name": "iPhone 7+"
        }
        
+ Response 404 (application/json)

### Update product data for a product [PUT]

+ Parameters
    + productId: 2 (number) - productId of the inventory you want to update
   
+ Request (application/json)

        {
            "name": "new product name"
        }

+ Response 200 (application/json)

        {
            "id": 2,
            "name": "new product name"
        }
        
+ Response 201 (application/json)

    + Headers
    
            X-INSERTED-ID: new product id
        
    + Body

            {
                "id": 17,
                "name": "new product name"
            }

 
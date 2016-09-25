component extends="taffy.core.resource" taffy_uri="/product"
{
    public function get() {

        return representationOf(application.productList).withStatus(200, "OK");

    }

    public function post(required string name) {

        var newProduct = {"id":getNextProductId(), "name":arguments.name};

        arrayAppend(application.productList, newProduct);

        return representationOf(newProduct)
                .withStatus(201, "Created")
                .withHeaders({"X-INSERTED-ID":newProduct.id});

    }

    private numeric function getNextProductId() {

        var max = 0;

        for (var product in application.productList) {
            if (product["id"] > max) {
                max = product["id"];
            }
        }

        return max+1;

    }

}
component extends="taffy.core.resource" taffy_uri="/product/{productId}"
{
    public function get(required numeric productId) {

        for (var product in application.productList) {
            if (product["id"] == arguments.productId) {
                return representationOf(product).withStatus(200, "OK");
            }
        }

        return noData().withStatus(404, "Not Found");

    }

    public function put(required numeric productId, required string name) {

        for (var product in application.productList) {
            if (product["id"] == arguments.productId) {
                product["name"] = arguments.name;
                return representationOf(product).withStatus(200, "OK");
            }
        }

        var pc = new ProductCollection();
        return pc.post(arguments.name);

    }

}



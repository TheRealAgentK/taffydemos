component extends="taffy.core.resource" taffy_uri="/product/{productId}"
{
    public function get(numeric productId){

        for (var product in application.productList) {
            if (product["id"] == arguments.productId) {
                return representationOf(product).withStatus(200, "OK");
            }
        }

        return noData().withStatus(404, "Not Found");
    }
}



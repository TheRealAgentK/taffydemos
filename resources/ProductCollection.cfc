component extends="taffy.core.resource" taffy_uri="/product"
{
    public function get(){

        return representationOf(application.productList).withStatus(200, "OK");
    }
}
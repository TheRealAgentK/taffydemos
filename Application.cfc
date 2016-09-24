component extends="taffy.core.api"
{
    this.name = "TaffyDemo";

    function onApplicationStart()
    {
        application.productList = [
            { "id":1, "name":"iPhone 7" },
            { "id":2, "name":"iPhone 7+" },
            { "id":3, "name":"iPad Pro 9.7inch" }
        ];

        return super.onApplicationStart();

    }

    function onRequestStart()
    {
        return super.onRequestStart();
    }

}
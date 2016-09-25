component extends="taffy.core.api"
{
    this.name = "TaffyDemo";

    function onApplicationStart() {

        application.productList = [
            { "id":1, "name":"iPhone 7" },
            { "id":2, "name":"iPhone 7+" },
            { "id":3, "name":"iPad Pro 9.7inch" }
        ];

        application.validAPIKeys = [
            "123456",
            "abcdef",
            "zyxwvu"
        ];

        return super.onApplicationStart();

    }

    function onRequestStart() {

        return super.onRequestStart();

    }

    function onTaffyRequest(verb, cfc, requestArguments, mimeExt) {

        if (not structKeyExists(arguments.requestArguments, "apiKey") || !Len(arguments.requestArguments["apiKey"])) {
            return noData().withStatus(401, "Unauthorized");
        }

        if (!arrayFind(application.validAPIKeys,arguments.requestArguments["apiKey"])) {
            return noData().withStatus(403, "Forbidden");
        }

        return true;
    }

}
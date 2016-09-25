component extends="taffy.core.baseSerializer"
{
    variables.anythingToXML = application.anythingToXML;
    variables.jsonUtil = application.jsonUtil;

    function getAsXML() output="false" taffy_mime="application/xml" taffy_default="false" {
        return variables.anythingToXML.toXml(variables.data);
    }

    function getAsJSON() output="false" taffy_mime="application/json" taffy_default="true" {
        return variables.jsonUtil.serialize(variables.data);
    }
}
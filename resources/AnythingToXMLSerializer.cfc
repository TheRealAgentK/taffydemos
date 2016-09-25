component extends="taffy.core.baseSerializer"
{
    variables.anythingToXML = application.anythingToXML;

    function getAsXML() output="false" taffy_mime="application/xml" taffy_default="true" {
        return variables.anythingToXML.toXml(variables.data);
    }
}
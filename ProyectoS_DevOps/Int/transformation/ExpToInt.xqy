xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://integracion.osb.com/services/infoPersona";
(:: import schema at "../../Exp/Interfaces/infoPersona.xsd" ::)
declare namespace ns2="http://integracion.osb.telefonica.com/services/50001";
(:: import schema at "../Interfaces/INTOSBService50001.xsd" ::)

declare variable $infoPersonaRequest as element() (:: schema-element(ns1:traerInfoPersonaRequest) ::) external;

declare function local:func($infoPersonaRequest as element() (:: schema-element(ns1:traerInfoPersonaRequest) ::)) as element() (:: schema-element(ns2:traerInfoPersonaRequest) ::) {
    <ns2:traerInfoPersonaRequest>
        <idRemedy>{fn:data($infoPersonaRequest/idRemedy)}</idRemedy>
        <email>{fn:data($infoPersonaRequest/correoElectronico)}</email>
    </ns2:traerInfoPersonaRequest>
};

local:func($infoPersonaRequest)

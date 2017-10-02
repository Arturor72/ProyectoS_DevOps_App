xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://integracion.osb.com/services/infoPersona";
(:: import schema at "../../Exp/Interfaces/infoPersona.xsd" ::)
declare namespace ns1="http://integracion.osb.telefonica.com/services/50001";
(:: import schema at "../Interfaces/INTOSBService50001.xsd" ::)

declare variable $infoPersonaResponse as element() (:: schema-element(ns1:traerInfoPersonaResponse) ::) external;

declare function local:func($infoPersonaResponse as element() (:: schema-element(ns1:traerInfoPersonaResponse) ::)) as element() (:: schema-element(ns2:traerInfoPersonaResponse) ::) {
    <ns2:traerInfoPersonaResponse>
        <empresa>{fn:data($infoPersonaResponse/empresa)}</empresa>
        <estadoPersona>{fn:data($infoPersonaResponse/estado)}</estadoPersona>
        <nombre>{fn:data($infoPersonaResponse/nombreCompleto)}</nombre>
    </ns2:traerInfoPersonaResponse>
};

local:func($infoPersonaResponse)

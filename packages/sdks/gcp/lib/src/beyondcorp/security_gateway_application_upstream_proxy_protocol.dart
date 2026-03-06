// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_upstream_proxy_protocol_contextual_headers.dart';

class SecurityGatewayApplicationUpstreamProxyProtocol {
  /// The configuration for the proxy.
  final pulumi.Input<List<String>>? allowedClientHeaders;
  /// Client IP configuration. The client IP address is included if true.
  final pulumi.Input<bool>? clientIp;
  /// Configuration for the contextual headers.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders>? contextualHeaders;
  /// Gateway identity configuration.
  /// Possible values are: `RESOURCE_NAME`.
  final pulumi.Input<String>? gatewayIdentity;
  /// Custom resource specific headers along with the values.
  /// The names should conform to RFC 9110:
  /// &gt; Field names SHOULD constrain themselves to alphanumeric characters, "-",
  /// and ".", and SHOULD begin with a letter.
  /// &gt; Field values SHOULD contain only ASCII printable characters and tab.
  final pulumi.Input<Map<String, String>>? metadataHeaders;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocol].
  /// [allowedClientHeaders] The configuration for the proxy.
  /// [clientIp] Client IP configuration. The client IP address is included if true.
  /// [contextualHeaders] Configuration for the contextual headers.
  /// [gatewayIdentity] Gateway identity configuration.
  /// [metadataHeaders] Custom resource specific headers along with the values.
  const SecurityGatewayApplicationUpstreamProxyProtocol({
    this.allowedClientHeaders,
    this.clientIp,
    this.contextualHeaders,
    this.gatewayIdentity,
    this.metadataHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClientHeaders': ?allowedClientHeaders,
      'clientIp': ?clientIp,
      'contextualHeaders': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders, Map<String, dynamic>>(contextualHeaders, (value) => value.toMap()),
      'gatewayIdentity': ?gatewayIdentity,
      'metadataHeaders': ?metadataHeaders,
    };
  }

  factory SecurityGatewayApplicationUpstreamProxyProtocol.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamProxyProtocol(
      allowedClientHeaders: (() { final guardedValue = map['allowedClientHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientIp: (() { final guardedValue = map['clientIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      contextualHeaders: (() { final guardedValue = map['contextualHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayIdentity: (() { final guardedValue = map['gatewayIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataHeaders: (() { final guardedValue = map['metadataHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


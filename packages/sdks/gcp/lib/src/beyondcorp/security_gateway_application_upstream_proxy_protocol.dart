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
  /// > Field names SHOULD constrain themselves to alphanumeric characters, "-",
  /// and ".", and SHOULD begin with a letter.
  /// > Field values SHOULD contain only ASCII printable characters and tab.
  final pulumi.Input<Map<String, String>>? metadataHeaders;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocol].
  /// [allowedClientHeaders] The configuration for the proxy.
  /// [clientIp] Client IP configuration. The client IP address is included if true.
  /// [contextualHeaders] Configuration for the contextual headers.
  /// [gatewayIdentity] Gateway identity configuration.
  /// [metadataHeaders] Custom resource specific headers along with the values.
  SecurityGatewayApplicationUpstreamProxyProtocol({
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
      allowedClientHeaders: map['allowedClientHeaders'] == null ? null : ((map['allowedClientHeaders']! as List).cast<String>()).input(),
      clientIp: map['clientIp'] == null ? null : (map['clientIp']! as bool).input(),
      contextualHeaders: map['contextualHeaders'] == null ? null : (SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders.fromMap((map['contextualHeaders']! as Map).cast<String, dynamic>())).input(),
      gatewayIdentity: map['gatewayIdentity'] == null ? null : (map['gatewayIdentity']! as String).input(),
      metadataHeaders: map['metadataHeaders'] == null ? null : ((map['metadataHeaders']! as Map).cast<String, String>()).input(),
    );
  }
}


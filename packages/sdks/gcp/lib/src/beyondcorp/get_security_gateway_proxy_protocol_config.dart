// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_proxy_protocol_config_contextual_header.dart';

class GetSecurityGatewayProxyProtocolConfig {
  /// The configuration for the proxy.
  final pulumi.Input<List<String>> allowedClientHeaders;
  /// Client IP configuration. The client IP address is included if true.
  final pulumi.Input<bool> clientIp;
  /// Configuration for the contextual headers.
  final pulumi.Input<List<GetSecurityGatewayProxyProtocolConfigContextualHeader>> contextualHeaders;
  /// Gateway identity configuration. Possible values: ["RESOURCE_NAME"]
  final pulumi.Input<String> gatewayIdentity;
  /// Custom resource specific headers along with the values.
  /// The names should conform to RFC 9110:
  /// &gt; Field names SHOULD constrain themselves to alphanumeric characters, "-",
  /// and ".", and SHOULD begin with a letter.
  /// &gt; Field values SHOULD contain only ASCII printable characters and tab.
  final pulumi.Input<Map<String, String>> metadataHeaders;

  /// Creates a new [GetSecurityGatewayProxyProtocolConfig].
  /// [allowedClientHeaders] The configuration for the proxy.
  /// [clientIp] Client IP configuration. The client IP address is included if true.
  /// [contextualHeaders] Configuration for the contextual headers.
  /// [gatewayIdentity] Gateway identity configuration. Possible values: ["RESOURCE_NAME"]
  /// [metadataHeaders] Custom resource specific headers along with the values.
  GetSecurityGatewayProxyProtocolConfig({
    required this.allowedClientHeaders,
    required this.clientIp,
    required this.contextualHeaders,
    required this.gatewayIdentity,
    required this.metadataHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClientHeaders': allowedClientHeaders,
      'clientIp': clientIp,
      'contextualHeaders': pulumi.Input.mapInputValue<List<GetSecurityGatewayProxyProtocolConfigContextualHeader>, List<Map<String, dynamic>>>(contextualHeaders, (value) => pulumi.Input.encodeList<GetSecurityGatewayProxyProtocolConfigContextualHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayIdentity': gatewayIdentity,
      'metadataHeaders': metadataHeaders,
    };
  }

  factory GetSecurityGatewayProxyProtocolConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfig(
      allowedClientHeaders: pulumi.Input.fromValue((map['allowedClientHeaders'] as List).cast<String>()),
      clientIp: pulumi.Input.fromValue(map['clientIp'] as bool),
      contextualHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityGatewayProxyProtocolConfigContextualHeader>(map['contextualHeaders']!, (value) => GetSecurityGatewayProxyProtocolConfigContextualHeader.fromMap((value as Map).cast<String, dynamic>()))),
      gatewayIdentity: pulumi.Input.fromValue(map['gatewayIdentity'] as String),
      metadataHeaders: pulumi.Input.fromValue((map['metadataHeaders'] as Map).cast<String, String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class GatewayResponse {
  /// The type of hosting used by the gateway.
  final pulumi.Input<String> type;
  /// Server-defined URI for this resource.
  final pulumi.Input<String> uri;
  /// User port reserved on the gateways for this connection, if not specified or zero, the default port is 19443.
  final pulumi.Input<int> userPort;

  /// Creates a new [GatewayResponse].
  /// [type] The type of hosting used by the gateway.
  /// [uri] Server-defined URI for this resource.
  /// [userPort] User port reserved on the gateways for this connection, if not specified or zero, the default port is 19443.
  GatewayResponse({
    required this.type,
    required this.uri,
    required this.userPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'uri': uri,
      'userPort': userPort,
    };
  }

  factory GatewayResponse.fromMap(Map<String, dynamic> map) {
    return GatewayResponse(
      type: (map['type'] as String).input(),
      uri: (map['uri'] as String).input(),
      userPort: (map['userPort'] as int).input(),
    );
  }
}


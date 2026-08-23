// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the REP (rendezvous endpoint) and “Listener” access token from notification service (NS).
class HybridConnectionConfigResponse {
  /// Timestamp when this token will be expired.
  final pulumi.Input<double> expirationTime;
  /// Name of the connection
  final pulumi.Input<String> hybridConnectionName;
  /// Name of the notification service.
  final pulumi.Input<String> relay;
  /// Listener access token
  final pulumi.Input<String> token;

  /// Creates a new [HybridConnectionConfigResponse].
  /// [expirationTime] Timestamp when this token will be expired.
  /// [hybridConnectionName] Name of the connection
  /// [relay] Name of the notification service.
  /// [token] Listener access token
  const HybridConnectionConfigResponse({
    required this.expirationTime,
    required this.hybridConnectionName,
    required this.relay,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'hybridConnectionName': hybridConnectionName,
      'relay': relay,
      'token': token,
    };
  }

  factory HybridConnectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return HybridConnectionConfigResponse(
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as double),
      hybridConnectionName: pulumi.Input.fromValue(map['hybridConnectionName'] as String),
      relay: pulumi.Input.fromValue(map['relay'] as String),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}

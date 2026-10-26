// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_api_shield_discovery_operation_api_shield_discovery_operation_args_doc}
/// The set of arguments for ApiShieldDiscoveryOperation.
/// {@endtemplate}
/// {@macro pulumi_index_api_shield_discovery_operation_api_shield_discovery_operation_args_doc}
class ApiShieldDiscoveryOperationArgs {
  /// UUID.
  final pulumi.Input<String> discoveryId;
  /// Mark state of operation in API Discovery
  /// * `review` - Mark operation as for review
  /// * `ignored` - Mark operation as ignored
  /// Available values: "review", "ignored".
  final pulumi.Input<String?>? state;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ApiShieldDiscoveryOperationArgs].
  /// [discoveryId] UUID.
  /// [state] Mark state of operation in API Discovery
  /// [zoneId] Identifier.
  const ApiShieldDiscoveryOperationArgs({
    required this.discoveryId,
    this.state,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryId': discoveryId,
      'state': ?state,
      'zoneId': zoneId,
    };
  }

  factory ApiShieldDiscoveryOperationArgs.fromMap(Map<String, dynamic> map) {
    return ApiShieldDiscoveryOperationArgs(
      discoveryId: pulumi.Input.fromValue(map['discoveryId'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

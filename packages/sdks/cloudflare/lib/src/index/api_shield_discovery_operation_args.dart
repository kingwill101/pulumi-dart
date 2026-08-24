// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_api_shield_discovery_operation_api_shield_discovery_operation_args_doc}
/// The set of arguments for ApiShieldDiscoveryOperation.
/// {@endtemplate}
/// {@macro pulumi_index_api_shield_discovery_operation_api_shield_discovery_operation_args_doc}
class ApiShieldDiscoveryOperationArgs {
  /// UUID.
  final pulumi.Input<String> operationId;
  /// Mark state of operation in API Discovery
  /// * `review` - Mark operation as for review
  /// * `ignored` - Mark operation as ignored
  /// Available values: "review", "ignored".
  final pulumi.Input<String?>? state;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ApiShieldDiscoveryOperationArgs].
  /// [operationId] UUID.
  /// [state] Mark state of operation in API Discovery
  /// [zoneId] Identifier.
  const ApiShieldDiscoveryOperationArgs({
    required this.operationId,
    this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': operationId,
      'state': ?state,
      'zoneId': ?zoneId,
    };
  }

  factory ApiShieldDiscoveryOperationArgs.fromMap(Map<String, dynamic> map) {
    return ApiShieldDiscoveryOperationArgs(
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

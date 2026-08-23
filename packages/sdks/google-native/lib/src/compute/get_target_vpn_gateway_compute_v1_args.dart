// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_target_vpn_gateway_compute_v1_args_doc}
/// Arguments for getTargetVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_target_vpn_gateway_compute_v1_args_doc}
class GetTargetVpnGatewayComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetVpnGateway;

  /// Creates a new [GetTargetVpnGatewayComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [targetVpnGateway] Required.
  const GetTargetVpnGatewayComputeV1Args({
    this.project,
    required this.region,
    required this.targetVpnGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetVpnGateway': targetVpnGateway,
    };
  }

  factory GetTargetVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetVpnGatewayComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      targetVpnGateway: pulumi.Input.fromValue(map['targetVpnGateway'] as String),
    );
  }
}

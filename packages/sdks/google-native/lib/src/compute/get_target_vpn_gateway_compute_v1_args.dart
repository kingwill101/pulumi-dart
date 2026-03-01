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
  GetTargetVpnGatewayComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> targetVpnGateway,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      targetVpnGateway = pulumi.Input.asInput<String>(targetVpnGateway);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'targetVpnGateway': targetVpnGateway,
    };
  }

  factory GetTargetVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetVpnGatewayComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      targetVpnGateway: pulumi.Output.create<String>(map['targetVpnGateway'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_vpn_gateway_compute_v1_args_doc}
/// Arguments for getVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_vpn_gateway_compute_v1_args_doc}
class GetVpnGatewayComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnGateway;

  /// Creates a new [GetVpnGatewayComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [vpnGateway] Required.
  GetVpnGatewayComputeV1Args({
    this.project,
    required this.region,
    required this.vpnGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'vpnGateway': vpnGateway,
    };
  }

  factory GetVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      vpnGateway: pulumi.Input.fromValue(map['vpnGateway'] as String),
    );
  }
}


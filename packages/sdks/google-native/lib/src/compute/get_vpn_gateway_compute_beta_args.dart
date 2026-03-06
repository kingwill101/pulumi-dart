// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_vpn_gateway_compute_beta_args_doc}
/// Arguments for getVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_vpn_gateway_compute_beta_args_doc}
class GetVpnGatewayComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnGateway;

  /// Creates a new [GetVpnGatewayComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [vpnGateway] Required.
  const GetVpnGatewayComputeBetaArgs({
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

  factory GetVpnGatewayComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      vpnGateway: pulumi.Input.fromValue(map['vpnGateway'] as String),
    );
  }
}


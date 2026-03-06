// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_external_vpn_gateway_compute_beta_args_doc}
/// Arguments for getExternalVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_external_vpn_gateway_compute_beta_args_doc}
class GetExternalVpnGatewayComputeBetaArgs {
  final pulumi.Input<String> externalVpnGateway;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExternalVpnGatewayComputeBetaArgs].
  /// [externalVpnGateway] Required.
  /// [project] Optional.
  const GetExternalVpnGatewayComputeBetaArgs({
    required this.externalVpnGateway,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalVpnGateway': externalVpnGateway,
      'project': ?project,
    };
  }

  factory GetExternalVpnGatewayComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalVpnGatewayComputeBetaArgs(
      externalVpnGateway: pulumi.Input.fromValue(map['externalVpnGateway'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


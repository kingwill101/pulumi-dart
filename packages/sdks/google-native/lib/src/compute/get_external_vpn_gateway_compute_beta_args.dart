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
  GetExternalVpnGatewayComputeBetaArgs({
    required pulumi.Output<String> externalVpnGateway,
    pulumi.Output<String>? project,
  }) :
      externalVpnGateway = pulumi.Input.asInput<String>(externalVpnGateway),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalVpnGateway': externalVpnGateway,
      'project': ?project,
    };
  }

  factory GetExternalVpnGatewayComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalVpnGatewayComputeBetaArgs(
      externalVpnGateway: pulumi.Output.create<String>(map['externalVpnGateway'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


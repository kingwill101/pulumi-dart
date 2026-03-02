// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_external_vpn_gateway_args_doc}
/// Arguments for getExternalVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_external_vpn_gateway_args_doc}
class GetExternalVpnGatewayArgs {
  final pulumi.Input<String> externalVpnGateway;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExternalVpnGatewayArgs].
  /// [externalVpnGateway] Required.
  /// [project] Optional.
  GetExternalVpnGatewayArgs({
    required this.externalVpnGateway,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalVpnGateway': externalVpnGateway,
      'project': ?project,
    };
  }

  factory GetExternalVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalVpnGatewayArgs(
      externalVpnGateway: (map['externalVpnGateway'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


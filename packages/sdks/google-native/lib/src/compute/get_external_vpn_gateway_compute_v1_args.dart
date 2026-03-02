// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_external_vpn_gateway_compute_v1_args_doc}
/// Arguments for getExternalVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_external_vpn_gateway_compute_v1_args_doc}
class GetExternalVpnGatewayComputeV1Args {
  final pulumi.Input<String> externalVpnGateway;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExternalVpnGatewayComputeV1Args].
  /// [externalVpnGateway] Required.
  /// [project] Optional.
  GetExternalVpnGatewayComputeV1Args({
    required this.externalVpnGateway,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalVpnGateway': externalVpnGateway,
      'project': ?project,
    };
  }

  factory GetExternalVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetExternalVpnGatewayComputeV1Args(
      externalVpnGateway: (map['externalVpnGateway'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}


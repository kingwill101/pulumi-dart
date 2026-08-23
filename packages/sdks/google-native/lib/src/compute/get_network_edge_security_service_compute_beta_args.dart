// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_network_edge_security_service_compute_beta_args_doc}
/// Arguments for getNetworkEdgeSecurityService.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_network_edge_security_service_compute_beta_args_doc}
class GetNetworkEdgeSecurityServiceComputeBetaArgs {
  final pulumi.Input<String> networkEdgeSecurityService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNetworkEdgeSecurityServiceComputeBetaArgs].
  /// [networkEdgeSecurityService] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetNetworkEdgeSecurityServiceComputeBetaArgs({
    required this.networkEdgeSecurityService,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkEdgeSecurityService': networkEdgeSecurityService,
      'project': ?project,
      'region': region,
    };
  }

  factory GetNetworkEdgeSecurityServiceComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkEdgeSecurityServiceComputeBetaArgs(
      networkEdgeSecurityService: pulumi.Input.fromValue(map['networkEdgeSecurityService'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

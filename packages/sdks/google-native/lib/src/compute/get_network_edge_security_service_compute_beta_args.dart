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
  GetNetworkEdgeSecurityServiceComputeBetaArgs({
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
      networkEdgeSecurityService: (map['networkEdgeSecurityService'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}


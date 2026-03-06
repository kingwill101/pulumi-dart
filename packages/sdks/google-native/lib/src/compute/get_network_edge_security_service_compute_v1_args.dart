// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_network_edge_security_service_compute_v1_args_doc}
/// Arguments for getNetworkEdgeSecurityService.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_network_edge_security_service_compute_v1_args_doc}
class GetNetworkEdgeSecurityServiceComputeV1Args {
  final pulumi.Input<String> networkEdgeSecurityService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNetworkEdgeSecurityServiceComputeV1Args].
  /// [networkEdgeSecurityService] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetNetworkEdgeSecurityServiceComputeV1Args({
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

  factory GetNetworkEdgeSecurityServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNetworkEdgeSecurityServiceComputeV1Args(
      networkEdgeSecurityService: pulumi.Input.fromValue(map['networkEdgeSecurityService'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}


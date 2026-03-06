// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_network_edge_security_service_args_doc}
/// Arguments for getNetworkEdgeSecurityService.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_network_edge_security_service_args_doc}
class GetNetworkEdgeSecurityServiceArgs {
  final pulumi.Input<String> networkEdgeSecurityService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNetworkEdgeSecurityServiceArgs].
  /// [networkEdgeSecurityService] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetNetworkEdgeSecurityServiceArgs({
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

  factory GetNetworkEdgeSecurityServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkEdgeSecurityServiceArgs(
      networkEdgeSecurityService: pulumi.Input.fromValue(map['networkEdgeSecurityService'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}


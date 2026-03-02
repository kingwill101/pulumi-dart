// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_network_edge_security_service_network_edge_security_service_args_doc}
/// The set of arguments for NetworkEdgeSecurityService.
/// {@endtemplate}
/// {@macro pulumi_compute_network_edge_security_service_network_edge_security_service_args_doc}
class NetworkEdgeSecurityServiceArgs {
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is created.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the gateway security policy.
  final pulumi.Input<String>? region;
  /// The resource URL for the network edge security service associated with this network edge security service.
  final pulumi.Input<String>? securityPolicy;

  /// Creates a new [NetworkEdgeSecurityServiceArgs].
  /// [description] Free-text description of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the gateway security policy.
  /// [securityPolicy] The resource URL for the network edge security service associated with this network edge security service.
  NetworkEdgeSecurityServiceArgs({
    this.description,
    this.name,
    this.project,
    this.region,
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'securityPolicy': ?securityPolicy,
    };
  }

  factory NetworkEdgeSecurityServiceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEdgeSecurityServiceArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityPolicy: map['securityPolicy'] == null ? null : (map['securityPolicy'] as String).input(),
    );
  }
}


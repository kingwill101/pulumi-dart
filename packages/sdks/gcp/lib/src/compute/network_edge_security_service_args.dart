// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_network_edge_security_service_network_edge_security_service_args_doc}
/// The set of arguments for NetworkEdgeSecurityService.
/// {@endtemplate}
/// {@macro pulumi_compute_network_edge_security_service_network_edge_security_service_args_doc}
class NetworkEdgeSecurityServiceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Free-text description of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the gateway security policy.
  /// [securityPolicy] The resource URL for the network edge security service associated with this network edge security service.
  const NetworkEdgeSecurityServiceArgs({
    this.deletionPolicy,
    this.description,
    this.name,
    this.project,
    this.region,
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'securityPolicy': ?securityPolicy,
    };
  }

  factory NetworkEdgeSecurityServiceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEdgeSecurityServiceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

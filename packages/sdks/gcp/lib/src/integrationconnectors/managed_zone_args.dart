// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationconnectors_managed_zone_managed_zone_args_doc}
/// The set of arguments for ManagedZone.
/// {@endtemplate}
/// {@macro pulumi_integrationconnectors_managed_zone_managed_zone_args_doc}
class ManagedZoneArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the resource.
  final pulumi.Input<String?>? description;
  /// DNS Name of the resource.
  final pulumi.Input<String> dns;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Name of Managed Zone needs to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The name of the Target Project.
  final pulumi.Input<String> targetProject;
  /// The name of the Target Project VPC Network.
  final pulumi.Input<String> targetVpc;

  /// Creates a new [ManagedZoneArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the resource.
  /// [dns] DNS Name of the resource.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] Name of Managed Zone needs to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [targetProject] The name of the Target Project.
  /// [targetVpc] The name of the Target Project VPC Network.
  const ManagedZoneArgs({
    this.deletionPolicy,
    this.description,
    required this.dns,
    this.labels,
    this.name,
    this.project,
    required this.targetProject,
    required this.targetVpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dns': dns,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'targetProject': targetProject,
      'targetVpc': targetVpc,
    };
  }

  factory ManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dns: pulumi.Input.fromValue(map['dns'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProject: pulumi.Input.fromValue(map['targetProject'] as String),
      targetVpc: pulumi.Input.fromValue(map['targetVpc'] as String),
    );
  }
}

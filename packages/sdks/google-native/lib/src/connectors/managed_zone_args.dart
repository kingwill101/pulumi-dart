// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_managed_zone_args_doc}
/// The set of arguments for ManagedZone.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_managed_zone_args_doc}
class ManagedZoneArgs {
  /// Optional. Description of the resource.
  final pulumi.Input<String>? description;
  /// DNS Name of the resource
  final pulumi.Input<String> dns;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  /// Required. Identifier to assign to the ManagedZone. Must be unique within scope of the parent resource.
  final pulumi.Input<String> managedZoneId;
  final pulumi.Input<String>? project;
  /// The name of the Target Project
  final pulumi.Input<String> targetProject;
  /// The name of the Target Project VPC Network
  final pulumi.Input<String> targetVpc;

  /// Creates a new [ManagedZoneArgs].
  /// [description] Optional. Description of the resource.
  /// [dns] DNS Name of the resource
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [managedZoneId] Required. Identifier to assign to the ManagedZone. Must be unique within scope of the parent resource.
  /// [project] Optional.
  /// [targetProject] The name of the Target Project
  /// [targetVpc] The name of the Target Project VPC Network
  const ManagedZoneArgs({
    this.description,
    required this.dns,
    this.labels,
    required this.managedZoneId,
    this.project,
    required this.targetProject,
    required this.targetVpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dns': dns,
      'labels': ?labels,
      'managedZoneId': managedZoneId,
      'project': ?project,
      'targetProject': targetProject,
      'targetVpc': targetVpc,
    };
  }

  factory ManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dns: pulumi.Input.fromValue(map['dns'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      managedZoneId: pulumi.Input.fromValue(map['managedZoneId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProject: pulumi.Input.fromValue(map['targetProject'] as String),
      targetVpc: pulumi.Input.fromValue(map['targetVpc'] as String),
    );
  }
}


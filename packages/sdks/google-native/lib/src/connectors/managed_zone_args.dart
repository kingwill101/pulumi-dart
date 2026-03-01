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
  ManagedZoneArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> dns,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> managedZoneId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> targetProject,
    required pulumi.Output<String> targetVpc,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dns = pulumi.Input.asInput<String>(dns),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      managedZoneId = pulumi.Input.asInput<String>(managedZoneId),
      project = pulumi.Input.asOptionalInput<String>(project),
      targetProject = pulumi.Input.asInput<String>(targetProject),
      targetVpc = pulumi.Input.asInput<String>(targetVpc);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dns: pulumi.Output.create<String>(map['dns'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      managedZoneId: pulumi.Output.create<String>(map['managedZoneId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetProject: pulumi.Output.create<String>(map['targetProject'] as String),
      targetVpc: pulumi.Output.create<String>(map['targetVpc'] as String),
    );
  }
}


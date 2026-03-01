// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apphub_boundary_boundary_args_doc}
/// The set of arguments for Boundary.
/// {@endtemplate}
/// {@macro pulumi_apphub_boundary_boundary_args_doc}
class BoundaryArgs {
  /// Optional. The resource name of the CRM node being attached to the
  /// boundary.
  /// Format: `projects/{project-number}`
  final pulumi.Input<String>? crmNode;
  /// The location for the Boundary resource. Must be global.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BoundaryArgs].
  /// [crmNode] Optional. The resource name of the CRM node being attached to the
  /// [location] The location for the Boundary resource. Must be global.
  /// [project] The ID of the project in which the resource belongs.
  BoundaryArgs({
    pulumi.Output<String>? crmNode,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      crmNode = pulumi.Input.asOptionalInput<String>(crmNode),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crmNode': ?crmNode,
      'location': location,
      'project': ?project,
    };
  }

  factory BoundaryArgs.fromMap(Map<String, dynamic> map) {
    return BoundaryArgs(
      crmNode: map['crmNode'] == null ? null : pulumi.Output.create<String>(map['crmNode'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


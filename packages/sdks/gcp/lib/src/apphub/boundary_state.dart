// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Boundary resources.
class BoundaryState {
  /// Create time.
  final pulumi.Input<String>? createTime;
  /// Optional. The resource name of the CRM node being attached to the
  /// boundary.
  /// Format: `projects/{project-number}`
  final pulumi.Input<String>? crmNode;
  /// The location for the Boundary resource. Must be global.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the boundary.
  /// Format: "projects/{project}/locations/{{location}}/boundary"
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Boundary type.
  final pulumi.Input<String>? type;
  /// Update time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BoundaryState].
  /// [createTime] Create time.
  /// [crmNode] Optional. The resource name of the CRM node being attached to the
  /// [location] The location for the Boundary resource. Must be global.
  /// [name] Identifier. The resource name of the boundary.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] Boundary type.
  /// [updateTime] Update time.
  BoundaryState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? crmNode,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      crmNode = pulumi.Input.asOptionalInput<String>(crmNode),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'crmNode': ?crmNode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory BoundaryState.fromMap(Map<String, dynamic> map) {
    return BoundaryState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      crmNode: map['crmNode'] == null ? null : pulumi.Output.create<String>(map['crmNode'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


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
    this.createTime,
    this.crmNode,
    this.location,
    this.name,
    this.project,
    this.type,
    this.updateTime,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crmNode: (() { final guardedValue = map['crmNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


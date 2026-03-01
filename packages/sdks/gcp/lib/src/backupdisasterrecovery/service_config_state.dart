// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceConfig resources.
class ServiceConfigState {
  /// The location in which the Service config is to be initialized.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource type to which the default service config will be applied.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [ServiceConfigState].
  /// [location] The location in which the Service config is to be initialized.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceType] The resource type to which the default service config will be applied.
  ServiceConfigState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? resourceType,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'resourceType': ?resourceType,
    };
  }

  factory ServiceConfigState.fromMap(Map<String, dynamic> map) {
    return ServiceConfigState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}


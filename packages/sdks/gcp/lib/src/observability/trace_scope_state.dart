// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TraceScope resources.
class TraceScopeState {
  /// The creation timestamp of the trace scope.
  final pulumi.Input<String>? createTime;
  /// Describes this trace scope.
  /// The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;
  /// GCP region the TraceScope is stored in. Only `global` is supported.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the trace scope.
  /// For example:
  /// projects/my-project/locations/global/traceScopes/my-trace-scope
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Names of the projects that are included in this trace scope.
  /// *  `projects/[PROJECT_ID]`
  /// A trace scope can include a maximum of 20 projects.
  final pulumi.Input<List<String>>? resourceNames;
  /// A client-assigned identifier for the trace scope.
  final pulumi.Input<String>? traceScopeId;
  /// The last update timestamp of the trace scope.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TraceScopeState].
  /// [createTime] The creation timestamp of the trace scope.
  /// [description] Describes this trace scope.
  /// [location] GCP region the TraceScope is stored in. Only `global` is supported.
  /// [name] Identifier. The resource name of the trace scope.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceNames] Names of the projects that are included in this trace scope.
  /// [traceScopeId] A client-assigned identifier for the trace scope.
  /// [updateTime] The last update timestamp of the trace scope.
  TraceScopeState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? resourceNames,
    pulumi.Output<String>? traceScopeId,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceNames = pulumi.Input.asOptionalInput<List<String>>(resourceNames),
      traceScopeId = pulumi.Input.asOptionalInput<String>(traceScopeId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resourceNames': ?resourceNames,
      'traceScopeId': ?traceScopeId,
      'updateTime': ?updateTime,
    };
  }

  factory TraceScopeState.fromMap(Map<String, dynamic> map) {
    return TraceScopeState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceNames: map['resourceNames'] == null ? null : pulumi.Output.create<List<String>>((map['resourceNames'] as List).cast<String>()),
      traceScopeId: map['traceScopeId'] == null ? null : pulumi.Output.create<String>(map['traceScopeId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


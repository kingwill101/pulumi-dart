// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogScope resources.
class LogScopeState {
  /// Output only. The creation timestamp of the log scopes.
  final pulumi.Input<String>? createTime;
  /// Describes this log scopes.
  final pulumi.Input<String>? description;
  /// The location of the resource. The only supported location is global so far.
  final pulumi.Input<String>? location;
  /// The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  final pulumi.Input<String>? name;
  /// The parent of the resource.
  final pulumi.Input<String>? parent;
  /// Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  final pulumi.Input<List<String>>? resourceNames;
  /// Output only. The last update timestamp of the log scopes.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [LogScopeState].
  /// [createTime] Output only. The creation timestamp of the log scopes.
  /// [description] Describes this log scopes.
  /// [location] The location of the resource. The only supported location is global so far.
  /// [name] The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  /// [parent] The parent of the resource.
  /// [resourceNames] Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  /// [updateTime] Output only. The last update timestamp of the log scopes.
  LogScopeState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<List<String>>? resourceNames,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      resourceNames = pulumi.Input.asOptionalInput<List<String>>(resourceNames),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'resourceNames': ?resourceNames,
      'updateTime': ?updateTime,
    };
  }

  factory LogScopeState.fromMap(Map<String, dynamic> map) {
    return LogScopeState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      resourceNames: map['resourceNames'] == null ? null : pulumi.Output.create<List<String>>((map['resourceNames'] as List).cast<String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


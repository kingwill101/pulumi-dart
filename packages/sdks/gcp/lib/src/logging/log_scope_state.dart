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
    this.createTime,
    this.description,
    this.location,
    this.name,
    this.parent,
    this.resourceNames,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      resourceNames: map['resourceNames'] == null ? null : ((map['resourceNames'] as List).cast<String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}


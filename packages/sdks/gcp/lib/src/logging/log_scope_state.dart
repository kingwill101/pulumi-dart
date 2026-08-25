// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogScope resources.
class LogScopeState {
  /// Output only. The creation timestamp of the log scopes.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Describes this log scopes.
  final pulumi.Input<String?>? description;
  /// The location of the resource. The only supported location is global so far.
  final pulumi.Input<String?>? location;
  /// The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  final pulumi.Input<String?>? name;
  /// The parent of the resource.
  final pulumi.Input<String?>? parent;
  /// Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  final pulumi.Input<List<String>?>? resourceNames;
  /// Output only. The last update timestamp of the log scopes.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [LogScopeState].
  /// [createTime] Output only. The creation timestamp of the log scopes.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Describes this log scopes.
  /// [location] The location of the resource. The only supported location is global so far.
  /// [name] The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  /// [parent] The parent of the resource.
  /// [resourceNames] Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  /// [updateTime] Output only. The last update timestamp of the log scopes.
  const LogScopeState({
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceNames: (() { final guardedValue = map['resourceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

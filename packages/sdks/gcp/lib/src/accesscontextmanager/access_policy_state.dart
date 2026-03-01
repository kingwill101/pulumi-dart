// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPolicy resources.
class AccessPolicyState {
  /// Time the AccessPolicy was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Resource name of the AccessPolicy. Format: '{{policy_id}}'
  final pulumi.Input<String>? name;
  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// Format: 'organizations/{{organization_id}}'
  final pulumi.Input<String>? parent;
  /// Folder or project on which this policy is applicable.
  /// Format: 'folders/{{folder_id}}' or 'projects/{{project_number}}'
  final pulumi.Input<String>? scopes;
  /// Human readable title. Does not affect behavior.
  final pulumi.Input<String>? title;
  /// Time the AccessPolicy was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AccessPolicyState].
  /// [createTime] Time the AccessPolicy was created in UTC.
  /// [name] Resource name of the AccessPolicy. Format: '{{policy_id}}'
  /// [parent] The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// [scopes] Folder or project on which this policy is applicable.
  /// [title] Human readable title. Does not affect behavior.
  /// [updateTime] Time the AccessPolicy was updated in UTC.
  AccessPolicyState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? scopes,
    pulumi.Output<String>? title,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      scopes = pulumi.Input.asOptionalInput<String>(scopes),
      title = pulumi.Input.asOptionalInput<String>(title),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'name': ?name,
      'parent': ?parent,
      'scopes': ?scopes,
      'title': ?title,
      'updateTime': ?updateTime,
    };
  }

  factory AccessPolicyState.fromMap(Map<String, dynamic> map) {
    return AccessPolicyState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<String>(map['scopes'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


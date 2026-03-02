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
    this.createTime,
    this.name,
    this.parent,
    this.scopes,
    this.title,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      scopes: map['scopes'] == null ? null : (map['scopes']! as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}


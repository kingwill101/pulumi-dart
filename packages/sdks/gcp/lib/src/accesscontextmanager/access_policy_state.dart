// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPolicy resources.
class AccessPolicyState {
  /// Time the AccessPolicy was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] Resource name of the AccessPolicy. Format: '{{policy_id}}'
  /// [parent] The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// [scopes] Folder or project on which this policy is applicable.
  /// [title] Human readable title. Does not affect behavior.
  /// [updateTime] Time the AccessPolicy was updated in UTC.
  const AccessPolicyState({
    this.createTime,
    this.deletionPolicy,
    this.name,
    this.parent,
    this.scopes,
    this.title,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'parent': ?parent,
      'scopes': ?scopes,
      'title': ?title,
      'updateTime': ?updateTime,
    };
  }

  factory AccessPolicyState.fromMap(Map<String, dynamic> map) {
    return AccessPolicyState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

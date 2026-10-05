// ignore_for_file: unused_element, unnecessary_cast

import 'rbacrole_binding_lifecycle_state_response.dart';
import 'role_response.dart';

/// Result data returned by getRbacrolebinding.
class GetRbacrolebindingResult {
  /// When the rbacrolebinding was created.
  final String? createTime;
  /// When the rbacrolebinding was deleted.
  final String? deleteTime;
  /// group is the group, as seen by the kubernetes cluster.
  final String? group;
  /// Optional. Labels for this RBACRolebinding.
  final Map<String, String>? labels;
  /// The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  final String? name;
  /// Role to bind to the principal
  final RoleResponse? role;
  /// State of the rbacrolebinding resource.
  final RBACRoleBindingLifecycleStateResponse? state;
  /// Google-generated UUID for this resource. This is unique across all rbacrolebinding resources. If a rbacrolebinding resource is deleted and another resource with the same name is created, it gets a different uid.
  final String? uid;
  /// When the rbacrolebinding was last updated.
  final String? updateTime;
  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  final String? user;

  /// Creates a new [GetRbacrolebindingResult].
  /// [createTime] When the rbacrolebinding was created.
  /// [deleteTime] When the rbacrolebinding was deleted.
  /// [group] group is the group, as seen by the kubernetes cluster.
  /// [labels] Optional. Labels for this RBACRolebinding.
  /// [name] The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  /// [role] Role to bind to the principal
  /// [state] State of the rbacrolebinding resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all rbacrolebinding resources. If a rbacrolebinding resource is deleted and another resource with the same name is created, it gets a different uid.
  /// [updateTime] When the rbacrolebinding was last updated.
  /// [user] user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  const GetRbacrolebindingResult({
    this.createTime,
    this.deleteTime,
    this.group,
    this.labels,
    this.name,
    this.role,
    this.state,
    this.uid,
    this.updateTime,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'group': ?group,
      'labels': ?labels,
      'name': ?name,
      'role': ?role?.toMap(),
      'state': ?state?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'user': ?user,
    };
  }

  factory GetRbacrolebindingResult.fromMap(Map<String, dynamic> map) {
    return GetRbacrolebindingResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return RoleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return RBACRoleBindingLifecycleStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

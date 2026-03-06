// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_rbac_role_binding_role.dart';
import 'membership_rbac_role_binding_state.dart';

/// Input properties used for looking up and filtering MembershipRbacRoleBinding resources.
class MembershipRbacRoleBindingGkehubState {
  /// Time the RBAC Role Binding was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Time the RBAC Role Binding was deleted in UTC.
  final pulumi.Input<String>? deleteTime;
  /// Location of the Membership
  final pulumi.Input<String>? location;
  /// Id of the membership
  final pulumi.Input<String>? membershipId;
  /// The client-provided identifier of the RBAC Role Binding.
  final pulumi.Input<String>? membershipRbacRoleBindingId;
  /// The resource name for the RBAC Role Binding
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Role to bind to the principal.
  /// Structure is documented below.
  final pulumi.Input<MembershipRbacRoleBindingRole>? role;
  /// State of the RBAC Role Binding resource.
  /// Structure is documented below.
  final pulumi.Input<List<MembershipRbacRoleBindingState>>? states;
  /// Google-generated UUID for this resource.
  final pulumi.Input<String>? uid;
  /// Time the RBAC Role Binding was updated in UTC.
  final pulumi.Input<String>? updateTime;
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  final pulumi.Input<String>? user;

  /// Creates a new [MembershipRbacRoleBindingGkehubState].
  /// [createTime] Time the RBAC Role Binding was created in UTC.
  /// [deleteTime] Time the RBAC Role Binding was deleted in UTC.
  /// [location] Location of the Membership
  /// [membershipId] Id of the membership
  /// [membershipRbacRoleBindingId] The client-provided identifier of the RBAC Role Binding.
  /// [name] The resource name for the RBAC Role Binding
  /// [project] The ID of the project in which the resource belongs.
  /// [role] Role to bind to the principal.
  /// [states] State of the RBAC Role Binding resource.
  /// [uid] Google-generated UUID for this resource.
  /// [updateTime] Time the RBAC Role Binding was updated in UTC.
  /// [user] Principal that is be authorized in the cluster (at least of one the oneof
  const MembershipRbacRoleBindingGkehubState({
    this.createTime,
    this.deleteTime,
    this.location,
    this.membershipId,
    this.membershipRbacRoleBindingId,
    this.name,
    this.project,
    this.role,
    this.states,
    this.uid,
    this.updateTime,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'location': ?location,
      'membershipId': ?membershipId,
      'membershipRbacRoleBindingId': ?membershipRbacRoleBindingId,
      'name': ?name,
      'project': ?project,
      'role': ?pulumi.Input.mapOptionalInputValue<MembershipRbacRoleBindingRole, Map<String, dynamic>>(role, (value) => value.toMap()),
      'states': ?pulumi.Input.mapOptionalInputValue<List<MembershipRbacRoleBindingState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MembershipRbacRoleBindingState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'user': ?user,
    };
  }

  factory MembershipRbacRoleBindingGkehubState.fromMap(Map<String, dynamic> map) {
    return MembershipRbacRoleBindingGkehubState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipId: (() { final guardedValue = map['membershipId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipRbacRoleBindingId: (() { final guardedValue = map['membershipRbacRoleBindingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MembershipRbacRoleBindingRole.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MembershipRbacRoleBindingState>(guardedValue, (value) => MembershipRbacRoleBindingState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


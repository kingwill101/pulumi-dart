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
  MembershipRbacRoleBindingGkehubState({
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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      membershipId: map['membershipId'] == null ? null : (map['membershipId']! as String).input(),
      membershipRbacRoleBindingId: map['membershipRbacRoleBindingId'] == null ? null : (map['membershipRbacRoleBindingId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      role: map['role'] == null ? null : (MembershipRbacRoleBindingRole.fromMap((map['role']! as Map).cast<String, dynamic>())).input(),
      states: map['states'] == null ? null : (pulumi.Input.decodeList<MembershipRbacRoleBindingState>(map['states']!, (value) => MembershipRbacRoleBindingState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}


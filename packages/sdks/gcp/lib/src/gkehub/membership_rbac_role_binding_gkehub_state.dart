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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? membershipId,
    pulumi.Output<String>? membershipRbacRoleBindingId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<MembershipRbacRoleBindingRole>? role,
    pulumi.Output<List<MembershipRbacRoleBindingState>>? states,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? user,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      membershipId = pulumi.Input.asOptionalInput<String>(membershipId),
      membershipRbacRoleBindingId = pulumi.Input.asOptionalInput<String>(membershipRbacRoleBindingId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<MembershipRbacRoleBindingRole>(role),
      states = pulumi.Input.asOptionalInput<List<MembershipRbacRoleBindingState>>(states),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      membershipId: map['membershipId'] == null ? null : pulumi.Output.create<String>(map['membershipId'] as String),
      membershipRbacRoleBindingId: map['membershipRbacRoleBindingId'] == null ? null : pulumi.Output.create<String>(map['membershipRbacRoleBindingId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<MembershipRbacRoleBindingRole>(MembershipRbacRoleBindingRole.fromMap((map['role'] as Map).cast<String, dynamic>())),
      states: map['states'] == null ? null : pulumi.Output.create<List<MembershipRbacRoleBindingState>>(pulumi.Input.decodeList<MembershipRbacRoleBindingState>(map['states'], (value) => MembershipRbacRoleBindingState.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}


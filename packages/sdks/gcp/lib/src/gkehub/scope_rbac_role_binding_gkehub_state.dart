// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_rbac_role_binding_role.dart';
import 'scope_rbac_role_binding_state.dart';

/// Input properties used for looking up and filtering ScopeRbacRoleBinding resources.
class ScopeRbacRoleBindingGkehubState {
  /// Time the RBAC Role Binding was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Time the RBAC Role Binding was deleted in UTC.
  final pulumi.Input<String>? deleteTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// group is the group, as seen by the kubernetes cluster.
  final pulumi.Input<String>? group;
  /// Labels for this ScopeRBACRoleBinding.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name for the RBAC Role Binding
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Role to bind to the principal.
  /// Structure is documented below.
  final pulumi.Input<ScopeRbacRoleBindingRole>? role;
  /// Id of the scope
  final pulumi.Input<String>? scopeId;
  /// The client-provided identifier of the RBAC Role Binding.
  final pulumi.Input<String>? scopeRbacRoleBindingId;
  /// State of the RBAC Role Binding resource.
  /// Structure is documented below.
  final pulumi.Input<List<ScopeRbacRoleBindingState>>? states;
  /// Google-generated UUID for this resource.
  final pulumi.Input<String>? uid;
  /// Time the RBAC Role Binding was updated in UTC.
  final pulumi.Input<String>? updateTime;
  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  final pulumi.Input<String>? user;

  /// Creates a new [ScopeRbacRoleBindingGkehubState].
  /// [createTime] Time the RBAC Role Binding was created in UTC.
  /// [deleteTime] Time the RBAC Role Binding was deleted in UTC.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [group] Principal that is be authorized in the cluster (at least of one the oneof
  /// [labels] Labels for this ScopeRBACRoleBinding.
  /// [name] The resource name for the RBAC Role Binding
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [role] Role to bind to the principal.
  /// [scopeId] Id of the scope
  /// [scopeRbacRoleBindingId] The client-provided identifier of the RBAC Role Binding.
  /// [states] State of the RBAC Role Binding resource.
  /// [uid] Google-generated UUID for this resource.
  /// [updateTime] Time the RBAC Role Binding was updated in UTC.
  /// [user] Principal that is be authorized in the cluster (at least of one the oneof
  ScopeRbacRoleBindingGkehubState({
    this.createTime,
    this.deleteTime,
    this.effectiveLabels,
    this.group,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.role,
    this.scopeId,
    this.scopeRbacRoleBindingId,
    this.states,
    this.uid,
    this.updateTime,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'effectiveLabels': ?effectiveLabels,
      'group': ?group,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'role': ?pulumi.Input.mapOptionalInputValue<ScopeRbacRoleBindingRole, Map<String, dynamic>>(role, (value) => value.toMap()),
      'scopeId': ?scopeId,
      'scopeRbacRoleBindingId': ?scopeRbacRoleBindingId,
      'states': ?pulumi.Input.mapOptionalInputValue<List<ScopeRbacRoleBindingState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<ScopeRbacRoleBindingState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'user': ?user,
    };
  }

  factory ScopeRbacRoleBindingGkehubState.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingGkehubState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      group: map['group'] == null ? null : (map['group']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      role: map['role'] == null ? null : (ScopeRbacRoleBindingRole.fromMap((map['role']! as Map).cast<String, dynamic>())).input(),
      scopeId: map['scopeId'] == null ? null : (map['scopeId']! as String).input(),
      scopeRbacRoleBindingId: map['scopeRbacRoleBindingId'] == null ? null : (map['scopeRbacRoleBindingId']! as String).input(),
      states: map['states'] == null ? null : (pulumi.Input.decodeList<ScopeRbacRoleBindingState>(map['states']!, (value) => ScopeRbacRoleBindingState.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}


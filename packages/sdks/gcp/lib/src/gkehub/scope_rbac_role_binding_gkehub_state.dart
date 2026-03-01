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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? group,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<ScopeRbacRoleBindingRole>? role,
    pulumi.Output<String>? scopeId,
    pulumi.Output<String>? scopeRbacRoleBindingId,
    pulumi.Output<List<ScopeRbacRoleBindingState>>? states,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? user,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      group = pulumi.Input.asOptionalInput<String>(group),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      role = pulumi.Input.asOptionalInput<ScopeRbacRoleBindingRole>(role),
      scopeId = pulumi.Input.asOptionalInput<String>(scopeId),
      scopeRbacRoleBindingId = pulumi.Input.asOptionalInput<String>(scopeRbacRoleBindingId),
      states = pulumi.Input.asOptionalInput<List<ScopeRbacRoleBindingState>>(states),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      group: map['group'] == null ? null : pulumi.Output.create<String>(map['group'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      role: map['role'] == null ? null : pulumi.Output.create<ScopeRbacRoleBindingRole>(ScopeRbacRoleBindingRole.fromMap((map['role'] as Map).cast<String, dynamic>())),
      scopeId: map['scopeId'] == null ? null : pulumi.Output.create<String>(map['scopeId'] as String),
      scopeRbacRoleBindingId: map['scopeRbacRoleBindingId'] == null ? null : pulumi.Output.create<String>(map['scopeRbacRoleBindingId'] as String),
      states: map['states'] == null ? null : pulumi.Output.create<List<ScopeRbacRoleBindingState>>(pulumi.Input.decodeList<ScopeRbacRoleBindingState>(map['states'], (value) => ScopeRbacRoleBindingState.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}


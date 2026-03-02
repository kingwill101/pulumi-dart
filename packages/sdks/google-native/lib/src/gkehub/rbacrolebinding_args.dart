// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role.dart';

/// {@template pulumi_gkehub_v1_rbacrolebinding_args_doc}
/// The set of arguments for Rbacrolebinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_rbacrolebinding_args_doc}
class RbacrolebindingArgs {
  /// group is the group, as seen by the kubernetes cluster.
  final pulumi.Input<String>? group;
  /// Optional. Labels for this RBACRolebinding.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> rbacrolebindingId;
  /// Role to bind to the principal
  final pulumi.Input<Role> role;
  final pulumi.Input<String> scopeId;
  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  final pulumi.Input<String>? user;

  /// Creates a new [RbacrolebindingArgs].
  /// [group] group is the group, as seen by the kubernetes cluster.
  /// [labels] Optional. Labels for this RBACRolebinding.
  /// [location] Optional.
  /// [name] The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  /// [project] Optional.
  /// [rbacrolebindingId] Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  /// [role] Role to bind to the principal
  /// [scopeId] Required.
  /// [user] user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  RbacrolebindingArgs({
    this.group,
    this.labels,
    this.location,
    this.name,
    this.project,
    required this.rbacrolebindingId,
    required this.role,
    required this.scopeId,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rbacrolebindingId': rbacrolebindingId,
      'role': pulumi.Input.mapInputValue<Role, Map<String, dynamic>>(role, (value) => value.toMap()),
      'scopeId': scopeId,
      'user': ?user,
    };
  }

  factory RbacrolebindingArgs.fromMap(Map<String, dynamic> map) {
    return RbacrolebindingArgs(
      group: map['group'] == null ? null : (map['group']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rbacrolebindingId: (map['rbacrolebindingId'] as String).input(),
      role: (Role.fromMap((map['role'] as Map).cast<String, dynamic>())).input(),
      scopeId: (map['scopeId'] as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}


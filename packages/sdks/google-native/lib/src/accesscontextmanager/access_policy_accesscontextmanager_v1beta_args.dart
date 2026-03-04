// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1beta_access_policy_accesscontextmanager_v1beta_args_doc}
/// The set of arguments for AccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1beta_access_policy_accesscontextmanager_v1beta_args_doc}
class AccessPolicyAccesscontextmanagerV1betaArgs {
  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  final pulumi.Input<String> parent;

  /// Human readable title. Does not affect behavior.
  final pulumi.Input<String> title;

  /// Creates a new [AccessPolicyAccesscontextmanagerV1betaArgs].
  /// [parent] The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  /// [title] Human readable title. Does not affect behavior.
  AccessPolicyAccesscontextmanagerV1betaArgs({
    required this.parent,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parent': parent, 'title': title};
  }

  factory AccessPolicyAccesscontextmanagerV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return AccessPolicyAccesscontextmanagerV1betaArgs(
      parent: pulumi.Input.fromValue(map['parent'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

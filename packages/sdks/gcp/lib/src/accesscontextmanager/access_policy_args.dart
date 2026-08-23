// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_access_policy_access_policy_args_doc}
/// The set of arguments for AccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_access_policy_access_policy_args_doc}
class AccessPolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// Format: 'organizations/{{organization_id}}'
  final pulumi.Input<String> parent;
  /// Folder or project on which this policy is applicable.
  /// Format: 'folders/{{folder_id}}' or 'projects/{{project_number}}'
  final pulumi.Input<String>? scopes;
  /// Human readable title. Does not affect behavior.
  final pulumi.Input<String> title;

  /// Creates a new [AccessPolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [parent] The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// [scopes] Folder or project on which this policy is applicable.
  /// [title] Human readable title. Does not affect behavior.
  const AccessPolicyArgs({
    this.deletionPolicy,
    required this.parent,
    this.scopes,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'parent': parent,
      'scopes': ?scopes,
      'title': title,
    };
  }

  factory AccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_get_access_policy_get_access_policy_args_doc}
/// Arguments for getAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_get_access_policy_get_access_policy_args_doc}
class GetAccessPolicyArgs {
  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy. Format: `organizations/{{organization_id}}`
  final pulumi.Input<String> parent;
  /// Folder or project on which this policy is applicable. Format: `folders/{{folder_id}}` or `projects/{{project_number}}`
  final pulumi.Input<List<String>?>? scopes;

  /// Creates a new [GetAccessPolicyArgs].
  /// [parent] The parent of this AccessPolicy in the Cloud Resource Hierarchy. Format: `organizations/{{organization_id}}`
  /// [scopes] Folder or project on which this policy is applicable. Format: `folders/{{folder_id}}` or `projects/{{project_number}}`
  const GetAccessPolicyArgs({
    required this.parent,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
      'scopes': ?scopes,
    };
  }

  factory GetAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyArgs(
      parent: pulumi.Input.fromValue(map['parent'] as String),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

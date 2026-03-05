// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_get_access_policy_iam_policy_get_access_policy_iam_policy_args_doc}
/// Arguments for getAccessPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_get_access_policy_iam_policy_get_access_policy_iam_policy_args_doc}
class GetAccessPolicyIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;

  /// Creates a new [GetAccessPolicyIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  GetAccessPolicyIamPolicyArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetAccessPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyIamPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


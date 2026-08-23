// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_get_namespace_iam_policy_get_namespace_iam_policy_args_doc}
/// Arguments for getNamespaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_get_namespace_iam_policy_get_namespace_iam_policy_args_doc}
class GetNamespaceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;

  /// Creates a new [GetNamespaceIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  const GetNamespaceIamPolicyArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetNamespaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIamPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

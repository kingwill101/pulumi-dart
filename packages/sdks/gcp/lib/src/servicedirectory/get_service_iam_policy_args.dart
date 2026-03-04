// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_get_service_iam_policy_get_service_iam_policy_args_doc}
/// Arguments for getServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_get_service_iam_policy_get_service_iam_policy_args_doc}
class GetServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;

  /// Creates a new [GetServiceIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  GetServiceIamPolicyArgs({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceIamPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

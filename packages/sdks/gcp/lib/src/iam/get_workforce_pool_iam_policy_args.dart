// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_workforce_pool_iam_policy_get_workforce_pool_iam_policy_args_doc}
/// Arguments for getWorkforcePoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_get_workforce_pool_iam_policy_get_workforce_pool_iam_policy_args_doc}
class GetWorkforcePoolIamPolicyArgs {
  /// The location for the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [GetWorkforcePoolIamPolicyArgs].
  /// [location] The location for the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [workforcePoolId] Used to find the parent resource to bind the IAM policy to
  const GetWorkforcePoolIamPolicyArgs({
    this.location,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory GetWorkforcePoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforcePoolId: pulumi.Input.fromValue(map['workforcePoolId'] as String),
    );
  }
}


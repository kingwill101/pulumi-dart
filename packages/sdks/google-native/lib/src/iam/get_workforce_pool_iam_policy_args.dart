// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_workforce_pool_iam_policy_args_doc}
/// Arguments for getWorkforcePoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_workforce_pool_iam_policy_args_doc}
class GetWorkforcePoolIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [GetWorkforcePoolIamPolicyArgs].
  /// [location] Required.
  /// [workforcePoolId] Required.
  GetWorkforcePoolIamPolicyArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> workforcePoolId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      workforcePoolId = pulumi.Input.asInput<String>(workforcePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory GetWorkforcePoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      workforcePoolId: pulumi.Output.create<String>(map['workforcePoolId'] as String),
    );
  }
}


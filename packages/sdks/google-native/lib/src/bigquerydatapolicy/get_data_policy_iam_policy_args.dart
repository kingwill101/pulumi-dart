// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquerydatapolicy_v1_get_data_policy_iam_policy_args_doc}
/// Arguments for getDataPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatapolicy_v1_get_data_policy_iam_policy_args_doc}
class GetDataPolicyIamPolicyArgs {
  final pulumi.Input<String> dataPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataPolicyIamPolicyArgs].
  /// [dataPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetDataPolicyIamPolicyArgs({
    required this.dataPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPolicyId': dataPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataPolicyIamPolicyArgs(
      dataPolicyId: pulumi.Input.fromValue(map['dataPolicyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


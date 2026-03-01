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
  GetDataPolicyIamPolicyArgs({
    required pulumi.Output<String> dataPolicyId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      dataPolicyId = pulumi.Input.asInput<String>(dataPolicyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPolicyId': dataPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataPolicyIamPolicyArgs(
      dataPolicyId: pulumi.Output.create<String>(map['dataPolicyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


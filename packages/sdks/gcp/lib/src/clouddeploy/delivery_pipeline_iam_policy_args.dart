// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_delivery_pipeline_iam_policy_delivery_pipeline_iam_policy_args_doc}
/// The set of arguments for DeliveryPipelineIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_delivery_pipeline_iam_policy_delivery_pipeline_iam_policy_args_doc}
class DeliveryPipelineIamPolicyArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [DeliveryPipelineIamPolicyArgs].
  /// [location] Optional.
  /// [name] Optional.
  /// [policyData] Required.
  /// [project] Optional.
  DeliveryPipelineIamPolicyArgs({
    this.location,
    this.name,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'policyData': policyData,
      'project': ?project,
    };
  }

  factory DeliveryPipelineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineIamPolicyArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyData: pulumi.Input.fromValue(map['policyData'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

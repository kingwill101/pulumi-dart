// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_get_peering_iam_policy_managedidentities_v1beta1_args_doc}
/// Arguments for getPeeringIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_get_peering_iam_policy_managedidentities_v1beta1_args_doc}
class GetPeeringIamPolicyManagedidentitiesV1beta1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPeeringIamPolicyManagedidentitiesV1beta1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [peeringId] Required.
  /// [project] Optional.
  GetPeeringIamPolicyManagedidentitiesV1beta1Args({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    required pulumi.Output<String> peeringId,
    pulumi.Output<String>? project,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      peeringId = pulumi.Input.asInput<String>(peeringId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'peeringId': peeringId,
      'project': ?project,
    };
  }

  factory GetPeeringIamPolicyManagedidentitiesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetPeeringIamPolicyManagedidentitiesV1beta1Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      peeringId: pulumi.Output.create<String>(map['peeringId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


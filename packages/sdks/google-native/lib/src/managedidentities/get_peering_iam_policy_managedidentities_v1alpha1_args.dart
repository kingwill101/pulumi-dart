// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1alpha1_get_peering_iam_policy_managedidentities_v1alpha1_args_doc}
/// Arguments for getPeeringIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1alpha1_get_peering_iam_policy_managedidentities_v1alpha1_args_doc}
class GetPeeringIamPolicyManagedidentitiesV1alpha1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPeeringIamPolicyManagedidentitiesV1alpha1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [peeringId] Required.
  /// [project] Optional.
  GetPeeringIamPolicyManagedidentitiesV1alpha1Args({
    this.optionsRequestedPolicyVersion,
    required this.peeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'peeringId': peeringId,
      'project': ?project,
    };
  }

  factory GetPeeringIamPolicyManagedidentitiesV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetPeeringIamPolicyManagedidentitiesV1alpha1Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      peeringId: (map['peeringId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}


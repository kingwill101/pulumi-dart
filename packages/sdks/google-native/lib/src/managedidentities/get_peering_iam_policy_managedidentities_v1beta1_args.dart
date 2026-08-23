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
  const GetPeeringIamPolicyManagedidentitiesV1beta1Args({
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

  factory GetPeeringIamPolicyManagedidentitiesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetPeeringIamPolicyManagedidentitiesV1beta1Args(
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peeringId: pulumi.Input.fromValue(map['peeringId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

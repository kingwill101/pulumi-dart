// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1alpha1_get_domain_iam_policy_managedidentities_v1alpha1_args_doc}
/// Arguments for getDomainIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1alpha1_get_domain_iam_policy_managedidentities_v1alpha1_args_doc}
class GetDomainIamPolicyManagedidentitiesV1alpha1Args {
  final pulumi.Input<String> domainId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainIamPolicyManagedidentitiesV1alpha1Args].
  /// [domainId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDomainIamPolicyManagedidentitiesV1alpha1Args({
    required this.domainId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDomainIamPolicyManagedidentitiesV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetDomainIamPolicyManagedidentitiesV1alpha1Args(
      domainId: (map['domainId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


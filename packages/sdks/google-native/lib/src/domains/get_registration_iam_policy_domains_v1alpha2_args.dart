// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domains_v1alpha2_get_registration_iam_policy_domains_v1alpha2_args_doc}
/// Arguments for getRegistrationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_domains_v1alpha2_get_registration_iam_policy_domains_v1alpha2_args_doc}
class GetRegistrationIamPolicyDomainsV1alpha2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registrationId;

  /// Creates a new [GetRegistrationIamPolicyDomainsV1alpha2Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [registrationId] Required.
  GetRegistrationIamPolicyDomainsV1alpha2Args({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.registrationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'registrationId': registrationId,
    };
  }

  factory GetRegistrationIamPolicyDomainsV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return GetRegistrationIamPolicyDomainsV1alpha2Args(
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      registrationId: (map['registrationId'] as String).input(),
    );
  }
}


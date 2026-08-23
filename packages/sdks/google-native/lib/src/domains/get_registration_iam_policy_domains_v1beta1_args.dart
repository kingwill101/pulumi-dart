// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domains_v1beta1_get_registration_iam_policy_domains_v1beta1_args_doc}
/// Arguments for getRegistrationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_domains_v1beta1_get_registration_iam_policy_domains_v1beta1_args_doc}
class GetRegistrationIamPolicyDomainsV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registrationId;

  /// Creates a new [GetRegistrationIamPolicyDomainsV1beta1Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [registrationId] Required.
  const GetRegistrationIamPolicyDomainsV1beta1Args({
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

  factory GetRegistrationIamPolicyDomainsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetRegistrationIamPolicyDomainsV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationId: pulumi.Input.fromValue(map['registrationId'] as String),
    );
  }
}

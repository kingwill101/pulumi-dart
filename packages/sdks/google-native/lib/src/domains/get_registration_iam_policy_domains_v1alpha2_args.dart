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
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> registrationId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      registrationId = pulumi.Input.asInput<String>(registrationId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      registrationId: pulumi.Output.create<String>(map['registrationId'] as String),
    );
  }
}


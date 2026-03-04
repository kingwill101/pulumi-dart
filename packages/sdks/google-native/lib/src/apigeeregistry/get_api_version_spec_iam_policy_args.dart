// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_api_version_spec_iam_policy_args_doc}
/// Arguments for getApiVersionSpecIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_api_version_spec_iam_policy_args_doc}
class GetApiVersionSpecIamPolicyArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetApiVersionSpecIamPolicyArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [specId] Required.
  /// [versionId] Required.
  GetApiVersionSpecIamPolicyArgs({
    required this.apiId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.specId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'specId': specId,
      'versionId': versionId,
    };
  }

  factory GetApiVersionSpecIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSpecIamPolicyArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      specId: pulumi.Input.fromValue(map['specId'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_get_api_config_iam_policy_apigateway_v1beta_args_doc}
/// Arguments for getApiConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_get_api_config_iam_policy_apigateway_v1beta_args_doc}
class GetApiConfigIamPolicyApigatewayV1betaArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> configId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiConfigIamPolicyApigatewayV1betaArgs].
  /// [apiId] Required.
  /// [configId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  const GetApiConfigIamPolicyApigatewayV1betaArgs({
    required this.apiId,
    required this.configId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'configId': configId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetApiConfigIamPolicyApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetApiConfigIamPolicyApigatewayV1betaArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      configId: pulumi.Input.fromValue(map['configId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_get_api_iam_policy_apigateway_v1beta_args_doc}
/// Arguments for getApiIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_get_api_iam_policy_apigateway_v1beta_args_doc}
class GetApiIamPolicyApigatewayV1betaArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiIamPolicyApigatewayV1betaArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetApiIamPolicyApigatewayV1betaArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetApiIamPolicyApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetApiIamPolicyApigatewayV1betaArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


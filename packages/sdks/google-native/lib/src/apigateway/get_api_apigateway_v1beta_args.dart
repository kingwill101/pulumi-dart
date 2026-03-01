// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_get_api_apigateway_v1beta_args_doc}
/// Arguments for getApi.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_get_api_apigateway_v1beta_args_doc}
class GetApiApigatewayV1betaArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiApigatewayV1betaArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetApiApigatewayV1betaArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetApiApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetApiApigatewayV1betaArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


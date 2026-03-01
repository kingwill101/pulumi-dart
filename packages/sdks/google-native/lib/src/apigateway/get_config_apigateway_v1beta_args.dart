// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_get_config_apigateway_v1beta_args_doc}
/// Arguments for getConfig.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_get_config_apigateway_v1beta_args_doc}
class GetConfigApigatewayV1betaArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> configId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetConfigApigatewayV1betaArgs].
  /// [apiId] Required.
  /// [configId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetConfigApigatewayV1betaArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> configId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      configId = pulumi.Input.asInput<String>(configId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'configId': configId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetConfigApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigApigatewayV1betaArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      configId: pulumi.Output.create<String>(map['configId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}


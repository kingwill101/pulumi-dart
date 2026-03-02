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
    required this.apiId,
    required this.configId,
    required this.location,
    this.project,
    this.view,
  });

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
      apiId: (map['apiId'] as String).input(),
      configId: (map['configId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      view: map['view'] == null ? null : (map['view'] as String).input(),
    );
  }
}


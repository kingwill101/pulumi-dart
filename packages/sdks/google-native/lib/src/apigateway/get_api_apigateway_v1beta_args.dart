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
    required this.apiId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetApiApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetApiApigatewayV1betaArgs(
      apiId: (map['apiId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


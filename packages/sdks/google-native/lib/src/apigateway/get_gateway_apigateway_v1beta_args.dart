// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_get_gateway_apigateway_v1beta_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_get_gateway_apigateway_v1beta_args_doc}
class GetGatewayApigatewayV1betaArgs {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewayApigatewayV1betaArgs].
  /// [gatewayId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGatewayApigatewayV1betaArgs({
    required pulumi.Output<String> gatewayId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGatewayApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayApigatewayV1betaArgs(
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


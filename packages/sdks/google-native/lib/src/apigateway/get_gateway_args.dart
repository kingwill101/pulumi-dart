// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1_get_gateway_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_get_gateway_args_doc}
class GetGatewayArgs {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewayArgs].
  /// [gatewayId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGatewayArgs({
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

  factory GetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs(
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


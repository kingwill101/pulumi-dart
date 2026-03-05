// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_gateway_networkservices_v1beta1_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_gateway_networkservices_v1beta1_args_doc}
class GetGatewayNetworkservicesV1beta1Args {
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewayNetworkservicesV1beta1Args].
  /// [gatewayId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGatewayNetworkservicesV1beta1Args({
    required this.gatewayId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGatewayNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetGatewayNetworkservicesV1beta1Args(
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


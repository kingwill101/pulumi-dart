// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse {
  /// AppGateway name in following format: `projects/{project_id}/locations/{location_id}/appgateways/{gateway_id}`
  final pulumi.Input<String> appGateway;
  /// Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  final pulumi.Input<int> ingressPort;
  /// L7 private service connection for this resource.
  final pulumi.Input<String> l7psc;
  /// The type of hosting used by the gateway.
  final pulumi.Input<String> type;
  /// Server-defined URI for this resource.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse].
  /// [appGateway] AppGateway name in following format: `projects/{project_id}/locations/{location_id}/appgateways/{gateway_id}`
  /// [ingressPort] Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  /// [l7psc] L7 private service connection for this resource.
  /// [type] The type of hosting used by the gateway.
  /// [uri] Server-defined URI for this resource.
  GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse({
    required this.appGateway,
    required this.ingressPort,
    required this.l7psc,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGateway': appGateway,
      'ingressPort': ingressPort,
      'l7psc': l7psc,
      'type': type,
      'uri': uri,
    };
  }

  factory GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayResponse(
      appGateway: pulumi.Input.fromValue(map['appGateway'] as String),
      ingressPort: pulumi.Input.fromValue(map['ingressPort'] as int),
      l7psc: pulumi.Input.fromValue(map['l7psc'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}


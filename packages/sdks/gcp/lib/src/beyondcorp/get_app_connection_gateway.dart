// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppConnectionGateway {
  /// AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  final pulumi.Input<String> appGateway;
  /// Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  final pulumi.Input<int> ingressPort;
  /// The type of hosting used by the gateway. Refer to
  /// https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
  /// for a list of possible values.
  final pulumi.Input<String> type;
  /// Server-defined URI for this resource.
  final pulumi.Input<String> uri;

  /// Creates a new [GetAppConnectionGateway].
  /// [appGateway] AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  /// [ingressPort] Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  /// [type] The type of hosting used by the gateway. Refer to
  /// [uri] Server-defined URI for this resource.
  const GetAppConnectionGateway({
    required this.appGateway,
    required this.ingressPort,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGateway': appGateway,
      'ingressPort': ingressPort,
      'type': type,
      'uri': uri,
    };
  }

  factory GetAppConnectionGateway.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionGateway(
      appGateway: pulumi.Input.fromValue(map['appGateway'] as String),
      ingressPort: pulumi.Input.fromValue((map['ingressPort'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

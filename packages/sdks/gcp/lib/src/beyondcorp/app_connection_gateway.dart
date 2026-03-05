// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppConnectionGateway {
  /// AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  final pulumi.Input<String> appGateway;
  /// (Output)
  /// Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  final pulumi.Input<int>? ingressPort;
  /// The type of hosting used by the gateway. Refer to
  /// https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
  /// for a list of possible values.
  final pulumi.Input<String>? type;
  /// (Output)
  /// Server-defined URI for this resource.
  final pulumi.Input<String>? uri;

  /// Creates a new [AppConnectionGateway].
  /// [appGateway] AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  /// [ingressPort] (Output)
  /// [type] The type of hosting used by the gateway. Refer to
  /// [uri] (Output)
  AppConnectionGateway({
    required this.appGateway,
    this.ingressPort,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGateway': appGateway,
      'ingressPort': ?ingressPort,
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory AppConnectionGateway.fromMap(Map<String, dynamic> map) {
    return AppConnectionGateway(
      appGateway: pulumi.Input.fromValue(map['appGateway'] as String),
      ingressPort: (() { final guardedValue = map['ingressPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


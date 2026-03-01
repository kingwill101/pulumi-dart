// ignore_for_file: unused_element, unnecessary_cast


class AppConnectionGateway {
  /// AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.
  final String appGateway;
  /// (Output)
  /// Ingress port reserved on the gateways for this AppConnection, if not specified or zero, the default port is 19443.
  final int? ingressPort;
  /// The type of hosting used by the gateway. Refer to
  /// https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1
  /// for a list of possible values.
  final String? type;
  /// (Output)
  /// Server-defined URI for this resource.
  final String? uri;

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
      appGateway: map['appGateway'] as String,
      ingressPort: map['ingressPort'] == null ? null : map['ingressPort'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}


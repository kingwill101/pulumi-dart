// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_tcp_route_networkservices_v1beta1_args_doc}
/// Arguments for getTcpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_tcp_route_networkservices_v1beta1_args_doc}
class GetTcpRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tcpRouteId;

  /// Creates a new [GetTcpRouteNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [tcpRouteId] Required.
  const GetTcpRouteNetworkservicesV1beta1Args({
    required this.location,
    this.project,
    required this.tcpRouteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tcpRouteId': tcpRouteId,
    };
  }

  factory GetTcpRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTcpRouteNetworkservicesV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpRouteId: pulumi.Input.fromValue(map['tcpRouteId'] as String),
    );
  }
}

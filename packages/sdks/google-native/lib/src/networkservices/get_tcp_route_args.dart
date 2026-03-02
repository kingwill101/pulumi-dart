// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_tcp_route_args_doc}
/// Arguments for getTcpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_tcp_route_args_doc}
class GetTcpRouteArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tcpRouteId;

  /// Creates a new [GetTcpRouteArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [tcpRouteId] Required.
  GetTcpRouteArgs({
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

  factory GetTcpRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetTcpRouteArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      tcpRouteId: (map['tcpRouteId'] as String).input(),
    );
  }
}


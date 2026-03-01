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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tcpRouteId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tcpRouteId = pulumi.Input.asInput<String>(tcpRouteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tcpRouteId': tcpRouteId,
    };
  }

  factory GetTcpRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetTcpRouteArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tcpRouteId: pulumi.Output.create<String>(map['tcpRouteId'] as String),
    );
  }
}


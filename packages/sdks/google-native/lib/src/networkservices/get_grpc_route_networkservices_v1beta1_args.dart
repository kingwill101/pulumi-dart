// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_grpc_route_networkservices_v1beta1_args_doc}
/// Arguments for getGrpcRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_grpc_route_networkservices_v1beta1_args_doc}
class GetGrpcRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> grpcRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGrpcRouteNetworkservicesV1beta1Args].
  /// [grpcRouteId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetGrpcRouteNetworkservicesV1beta1Args({
    required this.grpcRouteId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRouteId': grpcRouteId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGrpcRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetGrpcRouteNetworkservicesV1beta1Args(
      grpcRouteId: pulumi.Input.fromValue(map['grpcRouteId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

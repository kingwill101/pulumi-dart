// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_grpc_route_args_doc}
/// Arguments for getGrpcRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_grpc_route_args_doc}
class GetGrpcRouteArgs {
  final pulumi.Input<String> grpcRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGrpcRouteArgs].
  /// [grpcRouteId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetGrpcRouteArgs({
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

  factory GetGrpcRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetGrpcRouteArgs(
      grpcRouteId: pulumi.Input.fromValue(map['grpcRouteId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


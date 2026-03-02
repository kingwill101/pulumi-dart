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
  GetGrpcRouteArgs({
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
      grpcRouteId: (map['grpcRouteId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


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
    required pulumi.Output<String> grpcRouteId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      grpcRouteId = pulumi.Input.asInput<String>(grpcRouteId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRouteId': grpcRouteId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGrpcRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetGrpcRouteArgs(
      grpcRouteId: pulumi.Output.create<String>(map['grpcRouteId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_http_route_networkservices_v1beta1_args_doc}
/// Arguments for getHttpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_http_route_networkservices_v1beta1_args_doc}
class GetHttpRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> httpRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpRouteNetworkservicesV1beta1Args].
  /// [httpRouteId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetHttpRouteNetworkservicesV1beta1Args({
    required this.httpRouteId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpRouteId': httpRouteId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetHttpRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetHttpRouteNetworkservicesV1beta1Args(
      httpRouteId: (map['httpRouteId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


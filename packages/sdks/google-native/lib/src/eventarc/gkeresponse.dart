// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a GKE destination.
class GKEResponse {
  /// The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.
  final pulumi.Input<String> cluster;

  /// The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.
  final pulumi.Input<String> location;

  /// The namespace the GKE service is running in.
  final pulumi.Input<String> namespace;

  /// Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final pulumi.Input<String> path;

  /// Name of the GKE service.
  final pulumi.Input<String> service;

  /// Creates a new [GKEResponse].
  /// [cluster] The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.
  /// [location] The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.
  /// [namespace] The namespace the GKE service is running in.
  /// [path] Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  /// [service] Name of the GKE service.
  GKEResponse({
    required this.cluster,
    required this.location,
    required this.namespace,
    required this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'location': location,
      'namespace': namespace,
      'path': path,
      'service': service,
    };
  }

  factory GKEResponse.fromMap(Map<String, dynamic> map) {
    return GKEResponse(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

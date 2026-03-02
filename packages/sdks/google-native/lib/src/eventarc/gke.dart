// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a GKE destination.
class GKE {
  /// The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.
  final pulumi.Input<String> cluster;
  /// The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.
  final pulumi.Input<String> location;
  /// The namespace the GKE service is running in.
  final pulumi.Input<String> namespace;
  /// Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final pulumi.Input<String>? path;
  /// Name of the GKE service.
  final pulumi.Input<String> service;

  /// Creates a new [GKE].
  /// [cluster] The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.
  /// [location] The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.
  /// [namespace] The namespace the GKE service is running in.
  /// [path] Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  /// [service] Name of the GKE service.
  GKE({
    required this.cluster,
    required this.location,
    required this.namespace,
    this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'location': location,
      'namespace': namespace,
      'path': ?path,
      'service': service,
    };
  }

  factory GKE.fromMap(Map<String, dynamic> map) {
    return GKE(
      cluster: (map['cluster'] as String).input(),
      location: (map['location'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}


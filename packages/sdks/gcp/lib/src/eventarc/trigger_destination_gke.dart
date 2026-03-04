// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerDestinationGke {
  /// Required. The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.
  final pulumi.Input<String> cluster;

  /// Required. The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.
  final pulumi.Input<String> location;

  /// Required. The namespace the GKE service is running in.
  final pulumi.Input<String> namespace;

  /// Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final pulumi.Input<String>? path;

  /// Required. Name of the GKE service.
  final pulumi.Input<String> service;

  /// Creates a new [TriggerDestinationGke].
  /// [cluster] Required. The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.
  /// [location] Required. The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.
  /// [namespace] Required. The namespace the GKE service is running in.
  /// [path] Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  /// [service] Required. Name of the GKE service.
  TriggerDestinationGke({
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

  factory TriggerDestinationGke.fromMap(Map<String, dynamic> map) {
    return TriggerDestinationGke(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZonePrivateVisibilityConfigGKEClusterResponse {
  /// The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  final pulumi.Input<String> gkeClusterName;
  final pulumi.Input<String> kind;

  /// Creates a new [ManagedZonePrivateVisibilityConfigGKEClusterResponse].
  /// [gkeClusterName] The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  /// [kind] Required.
  const ManagedZonePrivateVisibilityConfigGKEClusterResponse({
    required this.gkeClusterName,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterName': gkeClusterName,
      'kind': kind,
    };
  }

  factory ManagedZonePrivateVisibilityConfigGKEClusterResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigGKEClusterResponse(
      gkeClusterName: pulumi.Input.fromValue(map['gkeClusterName'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

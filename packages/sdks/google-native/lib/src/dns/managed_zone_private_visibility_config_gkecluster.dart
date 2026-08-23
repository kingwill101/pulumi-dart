// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZonePrivateVisibilityConfigGKECluster {
  /// The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  final pulumi.Input<String>? gkeClusterName;
  final pulumi.Input<String>? kind;

  /// Creates a new [ManagedZonePrivateVisibilityConfigGKECluster].
  /// [gkeClusterName] The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  /// [kind] Optional.
  const ManagedZonePrivateVisibilityConfigGKECluster({
    this.gkeClusterName,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterName': ?gkeClusterName,
      'kind': ?kind,
    };
  }

  factory ManagedZonePrivateVisibilityConfigGKECluster.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigGKECluster(
      gkeClusterName: (() { final guardedValue = map['gkeClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

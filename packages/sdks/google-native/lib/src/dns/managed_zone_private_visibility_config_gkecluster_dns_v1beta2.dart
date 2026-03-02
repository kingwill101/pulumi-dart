// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2 {
  /// The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  final pulumi.Input<String>? gkeClusterName;
  final pulumi.Input<String>? kind;

  /// Creates a new [ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2].
  /// [gkeClusterName] The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  /// [kind] Optional.
  ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2({
    this.gkeClusterName,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterName': ?gkeClusterName,
      'kind': ?kind,
    };
  }

  factory ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigGKEClusterDnsV1beta2(
      gkeClusterName: map['gkeClusterName'] == null ? null : (map['gkeClusterName'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
    );
  }
}


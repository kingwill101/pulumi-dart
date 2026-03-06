// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterEnterpriseConfig {
  /// Indicates the effective cluster tier. Available options include STANDARD and ENTERPRISE.
  final pulumi.Input<String>? clusterTier;
  /// (DEPRECATED) Sets the tier of the cluster. Available options include `STANDARD` and `ENTERPRISE`. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  final pulumi.Input<String>? desiredTier;

  /// Creates a new [ClusterEnterpriseConfig].
  /// [clusterTier] Indicates the effective cluster tier. Available options include STANDARD and ENTERPRISE.
  /// [desiredTier] (DEPRECATED) Sets the tier of the cluster. Available options include `STANDARD` and `ENTERPRISE`. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  const ClusterEnterpriseConfig({
    this.clusterTier,
    this.desiredTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTier': ?clusterTier,
      'desiredTier': ?desiredTier,
    };
  }

  factory ClusterEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return ClusterEnterpriseConfig(
      clusterTier: (() { final guardedValue = map['clusterTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredTier: (() { final guardedValue = map['desiredTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


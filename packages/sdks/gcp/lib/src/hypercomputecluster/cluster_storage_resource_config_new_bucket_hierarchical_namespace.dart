// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceConfigNewBucketHierarchicalNamespace {
  /// Enables hierarchical namespace setup for the bucket.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ClusterStorageResourceConfigNewBucketHierarchicalNamespace].
  /// [enabled] Enables hierarchical namespace setup for the bucket.
  const ClusterStorageResourceConfigNewBucketHierarchicalNamespace({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClusterStorageResourceConfigNewBucketHierarchicalNamespace.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigNewBucketHierarchicalNamespace(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

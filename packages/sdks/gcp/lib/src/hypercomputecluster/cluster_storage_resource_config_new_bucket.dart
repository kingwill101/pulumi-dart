// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_storage_resource_config_new_bucket_autoclass.dart';
import 'cluster_storage_resource_config_new_bucket_hierarchical_namespace.dart';

class ClusterStorageResourceConfigNewBucket {
  /// Message describing Google Cloud Storage autoclass configuration
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfigNewBucketAutoclass>? autoclass;
  /// Name of the Cloud Storage bucket to create.
  final pulumi.Input<String> bucket;
  /// Message describing Google Cloud Storage hierarchical namespace configuration
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfigNewBucketHierarchicalNamespace>? hierarchicalNamespace;
  /// If set, uses the provided storage class as the bucket's default storage
  /// class.
  /// Possible values:
  /// STANDARD
  /// NEARLINE
  /// COLDLINE
  /// ARCHIVE
  final pulumi.Input<String>? storageClass;

  /// Creates a new [ClusterStorageResourceConfigNewBucket].
  /// [autoclass] Message describing Google Cloud Storage autoclass configuration
  /// [bucket] Name of the Cloud Storage bucket to create.
  /// [hierarchicalNamespace] Message describing Google Cloud Storage hierarchical namespace configuration
  /// [storageClass] If set, uses the provided storage class as the bucket's default storage
  const ClusterStorageResourceConfigNewBucket({
    this.autoclass,
    required this.bucket,
    this.hierarchicalNamespace,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoclass': ?pulumi.Input.mapOptionalInputValue<ClusterStorageResourceConfigNewBucketAutoclass, Map<String, dynamic>>(autoclass, (value) => value.toMap()),
      'bucket': bucket,
      'hierarchicalNamespace': ?pulumi.Input.mapOptionalInputValue<ClusterStorageResourceConfigNewBucketHierarchicalNamespace, Map<String, dynamic>>(hierarchicalNamespace, (value) => value.toMap()),
      'storageClass': ?storageClass,
    };
  }

  factory ClusterStorageResourceConfigNewBucket.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigNewBucket(
      autoclass: (() { final guardedValue = map['autoclass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStorageResourceConfigNewBucketAutoclass.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      hierarchicalNamespace: (() { final guardedValue = map['hierarchicalNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStorageResourceConfigNewBucketHierarchicalNamespace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

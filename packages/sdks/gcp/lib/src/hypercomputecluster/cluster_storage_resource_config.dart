// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_storage_resource_config_existing_bucket.dart';
import 'cluster_storage_resource_config_existing_filestore.dart';
import 'cluster_storage_resource_config_existing_lustre.dart';
import 'cluster_storage_resource_config_new_bucket.dart';
import 'cluster_storage_resource_config_new_filestore.dart';
import 'cluster_storage_resource_config_new_lustre.dart';

class ClusterStorageResourceConfig {
  /// When set in a StorageResourceConfig, indicates that an existing
  /// [Google Cloud Storage](https://cloud.google.com/storage) bucket should be
  /// imported.
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfigExistingBucket>? existingBucket;
  /// When set in a StorageResourceConfig, indicates that an existing
  /// [Filestore](https://cloud.google.com/filestore) instance should be imported.
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfigExistingFilestore>? existingFilestore;
  /// When set in a StorageResourceConfig, indicates that an existing
  /// [Managed Lustre](https://cloud.google.com/products/managed-lustre) instance
  /// should be imported.
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfigExistingLustre>? existingLustre;
  /// When set in a StorageResourceConfig, indicates that a new
  /// [Google Cloud Storage](https://cloud.google.com/storage) bucket should be
  /// created.
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfigNewBucket>? newBucket;
  /// When set in a StorageResourceConfig, indicates that a new
  /// [Filestore](https://cloud.google.com/filestore) instance should be created.
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfigNewFilestore>? newFilestore;
  /// When set in a StorageResourceConfig, indicates that a new
  /// [Managed Lustre](https://cloud.google.com/products/managed-lustre) instance
  /// should be created.
  /// Structure is documented below.
  final pulumi.Input<ClusterStorageResourceConfigNewLustre>? newLustre;

  /// Creates a new [ClusterStorageResourceConfig].
  /// [existingBucket] When set in a StorageResourceConfig, indicates that an existing
  /// [existingFilestore] When set in a StorageResourceConfig, indicates that an existing
  /// [existingLustre] When set in a StorageResourceConfig, indicates that an existing
  /// [newBucket] When set in a StorageResourceConfig, indicates that a new
  /// [newFilestore] When set in a StorageResourceConfig, indicates that a new
  /// [newLustre] When set in a StorageResourceConfig, indicates that a new
  const ClusterStorageResourceConfig({
    this.existingBucket,
    this.existingFilestore,
    this.existingLustre,
    this.newBucket,
    this.newFilestore,
    this.newLustre,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'existingBucket': ?pulumi.Input.mapOptionalInputValue<ClusterStorageResourceConfigExistingBucket, Map<String, dynamic>>(existingBucket, (value) => value.toMap()),
      'existingFilestore': ?pulumi.Input.mapOptionalInputValue<ClusterStorageResourceConfigExistingFilestore, Map<String, dynamic>>(existingFilestore, (value) => value.toMap()),
      'existingLustre': ?pulumi.Input.mapOptionalInputValue<ClusterStorageResourceConfigExistingLustre, Map<String, dynamic>>(existingLustre, (value) => value.toMap()),
      'newBucket': ?pulumi.Input.mapOptionalInputValue<ClusterStorageResourceConfigNewBucket, Map<String, dynamic>>(newBucket, (value) => value.toMap()),
      'newFilestore': ?pulumi.Input.mapOptionalInputValue<ClusterStorageResourceConfigNewFilestore, Map<String, dynamic>>(newFilestore, (value) => value.toMap()),
      'newLustre': ?pulumi.Input.mapOptionalInputValue<ClusterStorageResourceConfigNewLustre, Map<String, dynamic>>(newLustre, (value) => value.toMap()),
    };
  }

  factory ClusterStorageResourceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfig(
      existingBucket: (() { final guardedValue = map['existingBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStorageResourceConfigExistingBucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      existingFilestore: (() { final guardedValue = map['existingFilestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStorageResourceConfigExistingFilestore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      existingLustre: (() { final guardedValue = map['existingLustre']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStorageResourceConfigExistingLustre.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      newBucket: (() { final guardedValue = map['newBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStorageResourceConfigNewBucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      newFilestore: (() { final guardedValue = map['newFilestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStorageResourceConfigNewFilestore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      newLustre: (() { final guardedValue = map['newLustre']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStorageResourceConfigNewLustre.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

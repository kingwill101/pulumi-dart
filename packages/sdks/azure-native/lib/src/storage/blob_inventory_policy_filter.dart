// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_creation_time.dart';

/// An object that defines the blob inventory rule filter conditions. For 'Blob' definition.objectType all filter properties are applicable, 'blobTypes' is required and others are optional. For 'Container' definition.objectType only prefixMatch is applicable and is optional.
class BlobInventoryPolicyFilter {
  /// An array of predefined enum values. Valid values include blockBlob, appendBlob, pageBlob. Hns accounts does not support pageBlobs. This field is required when definition.objectType property is set to 'Blob'.
  final pulumi.Input<List<String>>? blobTypes;
  /// This property is used to filter objects based on the object creation time
  final pulumi.Input<BlobInventoryCreationTime>? creationTime;
  /// An array of strings with maximum 10 blob prefixes to be excluded from the inventory.
  final pulumi.Input<List<String>>? excludePrefix;
  /// Includes blob versions in blob inventory when value is set to true. The definition.schemaFields values 'VersionId and IsCurrentVersion' are required if this property is set to true, else they must be excluded.
  final pulumi.Input<bool>? includeBlobVersions;
  /// For 'Container' definition.objectType the definition.schemaFields must include 'Deleted, Version, DeletedTime and RemainingRetentionDays'. For 'Blob' definition.objectType and HNS enabled storage accounts the definition.schemaFields must include 'DeletionId, Deleted, DeletedTime and RemainingRetentionDays' and for Hns disabled accounts the definition.schemaFields must include 'Deleted and RemainingRetentionDays', else it must be excluded.
  final pulumi.Input<bool>? includeDeleted;
  /// Includes blob snapshots in blob inventory when value is set to true. The definition.schemaFields value 'Snapshot' is required if this property is set to true, else it must be excluded.
  final pulumi.Input<bool>? includeSnapshots;
  /// An array of strings with maximum 10 blob prefixes to be included in the inventory.
  final pulumi.Input<List<String>>? prefixMatch;

  /// Creates a new [BlobInventoryPolicyFilter].
  /// [blobTypes] An array of predefined enum values. Valid values include blockBlob, appendBlob, pageBlob. Hns accounts does not support pageBlobs. This field is required when definition.objectType property is set to 'Blob'.
  /// [creationTime] This property is used to filter objects based on the object creation time
  /// [excludePrefix] An array of strings with maximum 10 blob prefixes to be excluded from the inventory.
  /// [includeBlobVersions] Includes blob versions in blob inventory when value is set to true. The definition.schemaFields values 'VersionId and IsCurrentVersion' are required if this property is set to true, else they must be excluded.
  /// [includeDeleted] For 'Container' definition.objectType the definition.schemaFields must include 'Deleted, Version, DeletedTime and RemainingRetentionDays'. For 'Blob' definition.objectType and HNS enabled storage accounts the definition.schemaFields must include 'DeletionId, Deleted, DeletedTime and RemainingRetentionDays' and for Hns disabled accounts the definition.schemaFields must include 'Deleted and RemainingRetentionDays', else it must be excluded.
  /// [includeSnapshots] Includes blob snapshots in blob inventory when value is set to true. The definition.schemaFields value 'Snapshot' is required if this property is set to true, else it must be excluded.
  /// [prefixMatch] An array of strings with maximum 10 blob prefixes to be included in the inventory.
  BlobInventoryPolicyFilter({
    this.blobTypes,
    this.creationTime,
    this.excludePrefix,
    this.includeBlobVersions,
    this.includeDeleted,
    this.includeSnapshots,
    this.prefixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobTypes': ?blobTypes,
      'creationTime': ?pulumi.Input.mapOptionalInputValue<BlobInventoryCreationTime, Map<String, dynamic>>(creationTime, (value) => value.toMap()),
      'excludePrefix': ?excludePrefix,
      'includeBlobVersions': ?includeBlobVersions,
      'includeDeleted': ?includeDeleted,
      'includeSnapshots': ?includeSnapshots,
      'prefixMatch': ?prefixMatch,
    };
  }

  factory BlobInventoryPolicyFilter.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyFilter(
      blobTypes: map['blobTypes'] == null ? null : ((map['blobTypes']! as List).cast<String>()).input(),
      creationTime: map['creationTime'] == null ? null : (BlobInventoryCreationTime.fromMap((map['creationTime']! as Map).cast<String, dynamic>())).input(),
      excludePrefix: map['excludePrefix'] == null ? null : ((map['excludePrefix']! as List).cast<String>()).input(),
      includeBlobVersions: map['includeBlobVersions'] == null ? null : (map['includeBlobVersions']! as bool).input(),
      includeDeleted: map['includeDeleted'] == null ? null : (map['includeDeleted']! as bool).input(),
      includeSnapshots: map['includeSnapshots'] == null ? null : (map['includeSnapshots']! as bool).input(),
      prefixMatch: map['prefixMatch'] == null ? null : ((map['prefixMatch']! as List).cast<String>()).input(),
    );
  }
}


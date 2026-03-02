// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlobInventoryPolicyRuleFilter {
  /// A set of blob types. Possible values are `blockBlob`, `appendBlob`, and `pageBlob`. The storage account with `is_hns_enabled` is `true` doesn't support `pageBlob`.
  ///
  /// > **Note:** The `rules.*.schema_fields` for this rule has to include `BlobType` so that you can specify the `blob_types`.
  final pulumi.Input<List<String>> blobTypes;
  /// A set of strings for blob prefixes to be excluded. Maximum of 10 blob prefixes.
  final pulumi.Input<List<String>>? excludePrefixes;
  /// Includes blob versions in blob inventory or not? Defaults to `false`.
  ///
  /// > **Note:** The `rules.*.schema_fields` for this rule has to include `IsCurrentVersion` and `VersionId` so that you can specify the `include_blob_versions`.
  final pulumi.Input<bool>? includeBlobVersions;
  /// Includes deleted blobs in blob inventory or not? Defaults to `false`.
  ///
  /// > **Note:** If `rules.*.scope` is `Container`, the `rules.*.schema_fields` for this rule must include `Deleted`, `Version`, `DeletedTime`, and `RemainingRetentionDays` so that you can specify the `include_deleted`. If `rules.*.scope` is `Blob`, the `rules.*.schema_fields` must include `Deleted` and `RemainingRetentionDays` so that you can specify the `include_deleted`. If `rules.*.scope` is `Blob` and the storage account specified by `storage_account_id` has hierarchical namespaces enabled (`is_hns_enabled` is `true` on the storage account), the `rules.*.schema_fields` for this rule must include `Deleted`, `Version`, `DeletedTime`, and `RemainingRetentionDays` so that you can specify the `include_deleted`.
  final pulumi.Input<bool>? includeDeleted;
  /// Includes blob snapshots in blob inventory or not? Defaults to `false`.
  ///
  /// > **Note:** The `rules.*.schema_fields` for this rule has to include `Snapshot` so that you can specify the `include_snapshots`.
  final pulumi.Input<bool>? includeSnapshots;
  /// A set of strings for blob prefixes to be matched. Maximum of 10 blob prefixes.
  final pulumi.Input<List<String>>? prefixMatches;

  /// Creates a new [BlobInventoryPolicyRuleFilter].
  /// [blobTypes] A set of blob types. Possible values are `blockBlob`, `appendBlob`, and `pageBlob`. The storage account with `is_hns_enabled` is `true` doesn't support `pageBlob`.
  /// [excludePrefixes] A set of strings for blob prefixes to be excluded. Maximum of 10 blob prefixes.
  /// [includeBlobVersions] Includes blob versions in blob inventory or not? Defaults to `false`.
  /// [includeDeleted] Includes deleted blobs in blob inventory or not? Defaults to `false`.
  /// [includeSnapshots] Includes blob snapshots in blob inventory or not? Defaults to `false`.
  /// [prefixMatches] A set of strings for blob prefixes to be matched. Maximum of 10 blob prefixes.
  BlobInventoryPolicyRuleFilter({
    required this.blobTypes,
    this.excludePrefixes,
    this.includeBlobVersions,
    this.includeDeleted,
    this.includeSnapshots,
    this.prefixMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobTypes': blobTypes,
      'excludePrefixes': ?excludePrefixes,
      'includeBlobVersions': ?includeBlobVersions,
      'includeDeleted': ?includeDeleted,
      'includeSnapshots': ?includeSnapshots,
      'prefixMatches': ?prefixMatches,
    };
  }

  factory BlobInventoryPolicyRuleFilter.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyRuleFilter(
      blobTypes: ((map['blobTypes'] as List).cast<String>()).input(),
      excludePrefixes: map['excludePrefixes'] == null ? null : ((map['excludePrefixes']! as List).cast<String>()).input(),
      includeBlobVersions: map['includeBlobVersions'] == null ? null : (map['includeBlobVersions']! as bool).input(),
      includeDeleted: map['includeDeleted'] == null ? null : (map['includeDeleted']! as bool).input(),
      includeSnapshots: map['includeSnapshots'] == null ? null : (map['includeSnapshots']! as bool).input(),
      prefixMatches: map['prefixMatches'] == null ? null : ((map['prefixMatches']! as List).cast<String>()).input(),
    );
  }
}


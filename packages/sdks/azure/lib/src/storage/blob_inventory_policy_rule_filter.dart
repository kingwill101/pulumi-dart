// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlobInventoryPolicyRuleFilter {
  /// A set of blob types. Possible values are `blockBlob`, `appendBlob`, and `pageBlob`. The storage account with `is_hns_enabled` is `true` doesn't support `pageBlob`.
  ///
  /// &gt; **Note:** The `rules.*.schema_fields` for this rule has to include `BlobType` so that you can specify the `blob_types`.
  final pulumi.Input<List<String>> blobTypes;
  /// A set of strings for blob prefixes to be excluded. Maximum of 10 blob prefixes.
  final pulumi.Input<List<String>>? excludePrefixes;
  /// Includes blob versions in blob inventory or not? Defaults to `false`.
  ///
  /// &gt; **Note:** The `rules.*.schema_fields` for this rule has to include `IsCurrentVersion` and `VersionId` so that you can specify the `include_blob_versions`.
  final pulumi.Input<bool>? includeBlobVersions;
  /// Includes deleted blobs in blob inventory or not? Defaults to `false`.
  ///
  /// &gt; **Note:** If `rules.*.scope` is `Container`, the `rules.*.schema_fields` for this rule must include `Deleted`, `Version`, `DeletedTime`, and `RemainingRetentionDays` so that you can specify the `include_deleted`. If `rules.*.scope` is `Blob`, the `rules.*.schema_fields` must include `Deleted` and `RemainingRetentionDays` so that you can specify the `include_deleted`. If `rules.*.scope` is `Blob` and the storage account specified by `storage_account_id` has hierarchical namespaces enabled (`is_hns_enabled` is `true` on the storage account), the `rules.*.schema_fields` for this rule must include `Deleted`, `Version`, `DeletedTime`, and `RemainingRetentionDays` so that you can specify the `include_deleted`.
  final pulumi.Input<bool>? includeDeleted;
  /// Includes blob snapshots in blob inventory or not? Defaults to `false`.
  ///
  /// &gt; **Note:** The `rules.*.schema_fields` for this rule has to include `Snapshot` so that you can specify the `include_snapshots`.
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
  const BlobInventoryPolicyRuleFilter({
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
      blobTypes: pulumi.Input.fromValue((map['blobTypes'] as List).cast<String>()),
      excludePrefixes: (() { final guardedValue = map['excludePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeBlobVersions: (() { final guardedValue = map['includeBlobVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeDeleted: (() { final guardedValue = map['includeDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeSnapshots: (() { final guardedValue = map['includeSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefixMatches: (() { final guardedValue = map['prefixMatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule_filters_match_blob_index_tag.dart';

class ManagementPolicyRuleFilters {
  /// An array of predefined values. Valid options are `blockBlob` and `appendBlob`.
  final pulumi.Input<List<String>> blobTypes;
  /// A `matchBlobIndexTag` block as defined below. The block defines the blob index tag based filtering for blob objects.
  ///
  /// &gt; **Note:** The `matchBlobIndexTag` property requires enabling the `blobIndex` feature with [PSH or CLI commands](https://azure.microsoft.com/en-us/blog/manage-and-find-data-with-blob-index-for-azure-storage-now-in-preview/).
  final pulumi.Input<List<ManagementPolicyRuleFiltersMatchBlobIndexTag>>? matchBlobIndexTags;
  /// An array of strings for prefixes to be matched.
  final pulumi.Input<List<String>>? prefixMatches;

  /// Creates a new [ManagementPolicyRuleFilters].
  /// [blobTypes] An array of predefined values. Valid options are `blockBlob` and `appendBlob`.
  /// [matchBlobIndexTags] A `matchBlobIndexTag` block as defined below. The block defines the blob index tag based filtering for blob objects.
  /// [prefixMatches] An array of strings for prefixes to be matched.
  const ManagementPolicyRuleFilters({
    required this.blobTypes,
    this.matchBlobIndexTags,
    this.prefixMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobTypes': blobTypes,
      'matchBlobIndexTags': ?pulumi.Input.mapOptionalInputValue<List<ManagementPolicyRuleFiltersMatchBlobIndexTag>, List<Map<String, dynamic>>>(matchBlobIndexTags, (value) => pulumi.Input.encodeList<ManagementPolicyRuleFiltersMatchBlobIndexTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixMatches': ?prefixMatches,
    };
  }

  factory ManagementPolicyRuleFilters.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleFilters(
      blobTypes: pulumi.Input.fromValue((map['blobTypes'] as List).cast<String>()),
      matchBlobIndexTags: (() { final guardedValue = map['matchBlobIndexTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementPolicyRuleFiltersMatchBlobIndexTag>(guardedValue, (value) => ManagementPolicyRuleFiltersMatchBlobIndexTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prefixMatches: (() { final guardedValue = map['prefixMatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

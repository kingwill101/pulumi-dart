// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule_filters_match_blob_index_tag.dart';

class ManagementPolicyRuleFilters {
  /// An array of predefined values. Valid options are `blockBlob` and `appendBlob`.
  final List<String> blobTypes;
  /// A `match_blob_index_tag` block as defined below. The block defines the blob index tag based filtering for blob objects.
  ///
  /// > **Note:** The `match_blob_index_tag` property requires enabling the `blobIndex` feature with [PSH or CLI commands](https://azure.microsoft.com/en-us/blog/manage-and-find-data-with-blob-index-for-azure-storage-now-in-preview/).
  final List<ManagementPolicyRuleFiltersMatchBlobIndexTag>? matchBlobIndexTags;
  /// An array of strings for prefixes to be matched.
  final List<String>? prefixMatches;

  /// Creates a new [ManagementPolicyRuleFilters].
  /// [blobTypes] An array of predefined values. Valid options are `blockBlob` and `appendBlob`.
  /// [matchBlobIndexTags] A `match_blob_index_tag` block as defined below. The block defines the blob index tag based filtering for blob objects.
  /// [prefixMatches] An array of strings for prefixes to be matched.
  ManagementPolicyRuleFilters({
    required this.blobTypes,
    this.matchBlobIndexTags,
    this.prefixMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobTypes': blobTypes,
      'matchBlobIndexTags': ?matchBlobIndexTags == null ? null : pulumi.Input.encodeList<ManagementPolicyRuleFiltersMatchBlobIndexTag, Map<String, dynamic>>(matchBlobIndexTags!, (value) => value.toMap()),
      'prefixMatches': ?prefixMatches,
    };
  }

  factory ManagementPolicyRuleFilters.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleFilters(
      blobTypes: (map['blobTypes'] as List).cast<String>(),
      matchBlobIndexTags: map['matchBlobIndexTags'] == null ? null : pulumi.Input.decodeList<ManagementPolicyRuleFiltersMatchBlobIndexTag>(map['matchBlobIndexTags'], (value) => ManagementPolicyRuleFiltersMatchBlobIndexTag.fromMap((value as Map).cast<String, dynamic>())),
      prefixMatches: map['prefixMatches'] == null ? null : (map['prefixMatches'] as List).cast<String>(),
    );
  }
}


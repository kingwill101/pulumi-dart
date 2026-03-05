// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule_filter_match_blob_index_tag.dart';

class GetPolicyRuleFilter {
  /// An array of predefined values. Valid options are `blockBlob` and `appendBlob`.
  final pulumi.Input<List<String>> blobTypes;
  /// A `match_blob_index_tag` block as defined below. The block defines the blob index tag based filtering for blob objects.
  final pulumi.Input<List<GetPolicyRuleFilterMatchBlobIndexTag>> matchBlobIndexTags;
  /// An array of strings for prefixes to be matched.
  final pulumi.Input<List<String>> prefixMatches;

  /// Creates a new [GetPolicyRuleFilter].
  /// [blobTypes] An array of predefined values. Valid options are `blockBlob` and `appendBlob`.
  /// [matchBlobIndexTags] A `match_blob_index_tag` block as defined below. The block defines the blob index tag based filtering for blob objects.
  /// [prefixMatches] An array of strings for prefixes to be matched.
  GetPolicyRuleFilter({
    required this.blobTypes,
    required this.matchBlobIndexTags,
    required this.prefixMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobTypes': blobTypes,
      'matchBlobIndexTags': pulumi.Input.mapInputValue<List<GetPolicyRuleFilterMatchBlobIndexTag>, List<Map<String, dynamic>>>(matchBlobIndexTags, (value) => pulumi.Input.encodeList<GetPolicyRuleFilterMatchBlobIndexTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixMatches': prefixMatches,
    };
  }

  factory GetPolicyRuleFilter.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleFilter(
      blobTypes: pulumi.Input.fromValue((map['blobTypes'] as List).cast<String>()),
      matchBlobIndexTags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyRuleFilterMatchBlobIndexTag>(map['matchBlobIndexTags']!, (value) => GetPolicyRuleFilterMatchBlobIndexTag.fromMap((value as Map).cast<String, dynamic>()))),
      prefixMatches: pulumi.Input.fromValue((map['prefixMatches'] as List).cast<String>()),
    );
  }
}


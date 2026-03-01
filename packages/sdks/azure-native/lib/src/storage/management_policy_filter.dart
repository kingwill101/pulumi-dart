// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter.dart';

/// Filters limit rule actions to a subset of blobs within the storage account. If multiple filters are defined, a logical AND is performed on all filters.
class ManagementPolicyFilter {
  /// An array of blob index tag based filters, there can be at most 10 tag filters
  final List<TagFilter>? blobIndexMatch;
  /// An array of predefined enum values. Currently blockBlob supports all tiering and delete actions. Only delete actions are supported for appendBlob.
  final List<String> blobTypes;
  /// An array of strings for prefixes to be match.
  final List<String>? prefixMatch;

  /// Creates a new [ManagementPolicyFilter].
  /// [blobIndexMatch] An array of blob index tag based filters, there can be at most 10 tag filters
  /// [blobTypes] An array of predefined enum values. Currently blockBlob supports all tiering and delete actions. Only delete actions are supported for appendBlob.
  /// [prefixMatch] An array of strings for prefixes to be match.
  ManagementPolicyFilter({
    this.blobIndexMatch,
    required this.blobTypes,
    this.prefixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobIndexMatch': ?blobIndexMatch == null ? null : pulumi.Input.encodeList<TagFilter, Map<String, dynamic>>(blobIndexMatch!, (value) => value.toMap()),
      'blobTypes': blobTypes,
      'prefixMatch': ?prefixMatch,
    };
  }

  factory ManagementPolicyFilter.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyFilter(
      blobIndexMatch: map['blobIndexMatch'] == null ? null : pulumi.Input.decodeList<TagFilter>(map['blobIndexMatch'], (value) => TagFilter.fromMap((value as Map).cast<String, dynamic>())),
      blobTypes: (map['blobTypes'] as List).cast<String>(),
      prefixMatch: map['prefixMatch'] == null ? null : (map['prefixMatch'] as List).cast<String>(),
    );
  }
}


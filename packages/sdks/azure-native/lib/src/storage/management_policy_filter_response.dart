// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter_response.dart';

/// Filters limit rule actions to a subset of blobs within the storage account. If multiple filters are defined, a logical AND is performed on all filters.
class ManagementPolicyFilterResponse {
  /// An array of blob index tag based filters, there can be at most 10 tag filters
  final pulumi.Input<List<TagFilterResponse>>? blobIndexMatch;
  /// An array of predefined enum values. Currently blockBlob supports all tiering and delete actions. Only delete actions are supported for appendBlob.
  final pulumi.Input<List<String>> blobTypes;
  /// An array of strings for prefixes to be match.
  final pulumi.Input<List<String>>? prefixMatch;

  /// Creates a new [ManagementPolicyFilterResponse].
  /// [blobIndexMatch] An array of blob index tag based filters, there can be at most 10 tag filters
  /// [blobTypes] An array of predefined enum values. Currently blockBlob supports all tiering and delete actions. Only delete actions are supported for appendBlob.
  /// [prefixMatch] An array of strings for prefixes to be match.
  const ManagementPolicyFilterResponse({
    this.blobIndexMatch,
    required this.blobTypes,
    this.prefixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobIndexMatch': ?pulumi.Input.mapOptionalInputValue<List<TagFilterResponse>, List<Map<String, dynamic>>>(blobIndexMatch, (value) => pulumi.Input.encodeList<TagFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'blobTypes': blobTypes,
      'prefixMatch': ?prefixMatch,
    };
  }

  factory ManagementPolicyFilterResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyFilterResponse(
      blobIndexMatch: (() { final guardedValue = map['blobIndexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagFilterResponse>(guardedValue, (value) => TagFilterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      blobTypes: pulumi.Input.fromValue((map['blobTypes'] as List).cast<String>()),
      prefixMatch: (() { final guardedValue = map['prefixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

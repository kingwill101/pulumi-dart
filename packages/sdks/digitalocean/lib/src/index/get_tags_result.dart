// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter.dart';
import 'get_tags_sort.dart';
import 'get_tags_tag.dart';

/// Result data returned by getTags.
class GetTagsResult {
  final List<GetTagsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetTagsSort>? sorts;
  final List<GetTagsTag> tags;

  /// Creates a new [GetTagsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  /// [tags] Required.
  GetTagsResult({
    this.filters,
    required this.id,
    this.sorts,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetTagsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetTagsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
      'tags': pulumi.Input.encodeList<GetTagsTag, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetTagsResult.fromMap(Map<String, dynamic> map) {
    return GetTagsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetTagsFilter>(map['filters']!, (value) => GetTagsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetTagsSort>(map['sorts']!, (value) => GetTagsSort.fromMap((value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetTagsTag>(map['tags'], (value) => GetTagsTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


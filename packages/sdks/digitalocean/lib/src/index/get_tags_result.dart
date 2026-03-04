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
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<GetTagsFilter, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'id': id,
      'sorts': ?(() {
        final guardedValue = sorts;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<GetTagsSort, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'tags': pulumi.Input.encodeList<GetTagsTag, Map<String, dynamic>>(
        tags,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetTagsResult.fromMap(Map<String, dynamic> map) {
    return GetTagsResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetTagsFilter>(
          guardedValue,
          (value) =>
              GetTagsFilter.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      id: map['id'] as String,
      sorts: (() {
        final guardedValue = map['sorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetTagsSort>(
          guardedValue,
          (value) =>
              GetTagsSort.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      tags: pulumi.Input.decodeList<GetTagsTag>(
        map['tags']!,
        (value) => GetTagsTag.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}

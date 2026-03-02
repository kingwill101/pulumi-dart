// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spaces_buckets_bucket.dart';
import 'get_spaces_buckets_filter.dart';
import 'get_spaces_buckets_sort.dart';

/// Result data returned by getSpacesBuckets.
class GetSpacesBucketsResult {
  /// A list of Spaces buckets satisfying any `filter` and `sort` criteria. Each bucket has the following attributes:
  final List<GetSpacesBucketsBucket> buckets;
  final List<GetSpacesBucketsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetSpacesBucketsSort>? sorts;

  /// Creates a new [GetSpacesBucketsResult].
  /// [buckets] A list of Spaces buckets satisfying any `filter` and `sort` criteria. Each bucket has the following attributes:
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  GetSpacesBucketsResult({
    required this.buckets,
    this.filters,
    required this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': pulumi.Input.encodeList<GetSpacesBucketsBucket, Map<String, dynamic>>(buckets, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetSpacesBucketsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetSpacesBucketsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetSpacesBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketsResult(
      buckets: pulumi.Input.decodeList<GetSpacesBucketsBucket>(map['buckets'], (value) => GetSpacesBucketsBucket.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSpacesBucketsFilter>(map['filters']!, (value) => GetSpacesBucketsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetSpacesBucketsSort>(map['sorts']!, (value) => GetSpacesBucketsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


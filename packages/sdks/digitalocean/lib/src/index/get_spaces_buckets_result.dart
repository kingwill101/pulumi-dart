// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spaces_buckets_bucket.dart';
import 'get_spaces_buckets_filter.dart';
import 'get_spaces_buckets_sort.dart';

/// Result data returned by getSpacesBuckets.
class GetSpacesBucketsResult {
  /// A list of Spaces buckets satisfying any `filter` and `sort` criteria. Each bucket has the following attributes:
  final List<GetSpacesBucketsBucket>? buckets;
  final List<GetSpacesBucketsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetSpacesBucketsSort>? sorts;

  /// Creates a new [GetSpacesBucketsResult].
  /// [buckets] A list of Spaces buckets satisfying any `filter` and `sort` criteria. Each bucket has the following attributes:
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetSpacesBucketsResult({
    this.buckets,
    this.filters,
    this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?(() { final guardedValue = buckets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpacesBucketsBucket, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpacesBucketsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSpacesBucketsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSpacesBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketsResult(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpacesBucketsBucket>(guardedValue, (value) => GetSpacesBucketsBucket.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpacesBucketsFilter>(guardedValue, (value) => GetSpacesBucketsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSpacesBucketsSort>(guardedValue, (value) => GetSpacesBucketsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

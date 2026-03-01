// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sizes_filter.dart';
import 'get_sizes_size.dart';
import 'get_sizes_sort.dart';

/// Result data returned by getSizes.
class GetSizesResult {
  final List<GetSizesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetSizesSize> sizes;
  final List<GetSizesSort>? sorts;

  /// Creates a new [GetSizesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sizes] Required.
  /// [sorts] Optional.
  GetSizesResult({
    this.filters,
    required this.id,
    required this.sizes,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetSizesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'sizes': pulumi.Input.encodeList<GetSizesSize, Map<String, dynamic>>(sizes, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetSizesSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetSizesResult.fromMap(Map<String, dynamic> map) {
    return GetSizesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSizesFilter>(map['filters'], (value) => GetSizesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      sizes: pulumi.Input.decodeList<GetSizesSize>(map['sizes'], (value) => GetSizesSize.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetSizesSort>(map['sorts'], (value) => GetSizesSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


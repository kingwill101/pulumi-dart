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
  const GetSizesResult({
    this.filters,
    required this.id,
    required this.sizes,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSizesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'sizes': pulumi.Input.encodeList<GetSizesSize, Map<String, dynamic>>(sizes, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSizesSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSizesResult.fromMap(Map<String, dynamic> map) {
    return GetSizesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSizesFilter>(guardedValue, (value) => GetSizesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      sizes: pulumi.Input.decodeList<GetSizesSize>(map['sizes']!, (value) => GetSizesSize.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSizesSort>(guardedValue, (value) => GetSizesSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

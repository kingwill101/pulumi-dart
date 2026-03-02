// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_filter.dart';
import 'get_images_sort.dart';

/// {@template pulumi_index_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_index_get_images_get_images_args_doc}
class GetImagesArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetImagesFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetImagesSort>>? sorts;

  /// Creates a new [GetImagesArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  GetImagesArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetImagesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetImagesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetImagesSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetImagesSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetImagesFilter>(map['filters']!, (value) => GetImagesFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sorts: map['sorts'] == null ? null : (pulumi.Input.decodeList<GetImagesSort>(map['sorts']!, (value) => GetImagesSort.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


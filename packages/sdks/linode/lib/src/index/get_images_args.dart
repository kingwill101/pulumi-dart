// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_filter.dart';

/// {@template pulumi_index_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_index_get_images_get_images_args_doc}
class GetImagesArgs {
  final pulumi.Input<List<GetImagesFilter>>? filters;
  /// If true, only the latest image will be returned. Images without a valid `created` field are not included in the result.
  ///
  /// * `filter` - (Optional) A set of filters used to select Linode images that meet certain requirements.
  final pulumi.Input<bool>? latest;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetImagesArgs].
  /// [filters] Optional.
  /// [latest] If true, only the latest image will be returned. Images without a valid `created` field are not included in the result.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetImagesArgs({
    this.filters,
    this.latest,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetImagesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetImagesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetImagesFilter>(map['filters'], (value) => GetImagesFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      latest: map['latest'] == null ? null : (map['latest'] as bool).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
    );
  }
}


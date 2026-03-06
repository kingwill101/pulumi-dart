// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_image_share_group_image_shares_filter.dart';
import 'get_producer_image_share_group_image_shares_image_share.dart';

/// {@template pulumi_index_get_producer_image_share_group_image_shares_get_producer_image_share_group_image_shares_args_doc}
/// Arguments for getProducerImageShareGroupImageShares.
/// {@endtemplate}
/// {@macro pulumi_index_get_producer_image_share_group_image_shares_get_producer_image_share_group_image_shares_args_doc}
class GetProducerImageShareGroupImageSharesArgs {
  final pulumi.Input<List<GetProducerImageShareGroupImageSharesFilter>>? filters;
  final pulumi.Input<List<GetProducerImageShareGroupImageSharesImageShare>>? imageShares;
  final pulumi.Input<String>? order;
  final pulumi.Input<String>? orderBy;
  /// The ID of the Image Share Group to list shared Images from.
  ///
  /// * `filter` - (Optional) A set of filters used to select Image Share Groups that meet certain requirements.
  final pulumi.Input<int> sharegroupId;

  /// Creates a new [GetProducerImageShareGroupImageSharesArgs].
  /// [filters] Optional.
  /// [imageShares] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [sharegroupId] The ID of the Image Share Group to list shared Images from.
  const GetProducerImageShareGroupImageSharesArgs({
    this.filters,
    this.imageShares,
    this.order,
    this.orderBy,
    required this.sharegroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetProducerImageShareGroupImageSharesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetProducerImageShareGroupImageSharesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageShares': ?pulumi.Input.mapOptionalInputValue<List<GetProducerImageShareGroupImageSharesImageShare>, List<Map<String, dynamic>>>(imageShares, (value) => pulumi.Input.encodeList<GetProducerImageShareGroupImageSharesImageShare, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
      'sharegroupId': sharegroupId,
    };
  }

  factory GetProducerImageShareGroupImageSharesArgs.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupImageSharesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetProducerImageShareGroupImageSharesFilter>(guardedValue, (value) => GetProducerImageShareGroupImageSharesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageShares: (() { final guardedValue = map['imageShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetProducerImageShareGroupImageSharesImageShare>(guardedValue, (value) => GetProducerImageShareGroupImageSharesImageShare.fromMap((value as Map).cast<String, dynamic>()))); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharegroupId: pulumi.Input.fromValue(map['sharegroupId'] as int),
    );
  }
}


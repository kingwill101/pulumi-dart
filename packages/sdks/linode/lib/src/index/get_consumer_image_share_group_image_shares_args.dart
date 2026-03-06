// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_image_share_group_image_shares_filter.dart';
import 'get_consumer_image_share_group_image_shares_image_share.dart';

/// {@template pulumi_index_get_consumer_image_share_group_image_shares_get_consumer_image_share_group_image_shares_args_doc}
/// Arguments for getConsumerImageShareGroupImageShares.
/// {@endtemplate}
/// {@macro pulumi_index_get_consumer_image_share_group_image_shares_get_consumer_image_share_group_image_shares_args_doc}
class GetConsumerImageShareGroupImageSharesArgs {
  final pulumi.Input<List<GetConsumerImageShareGroupImageSharesFilter>>? filters;
  final pulumi.Input<List<GetConsumerImageShareGroupImageSharesImageShare>>? imageShares;
  final pulumi.Input<String>? order;
  final pulumi.Input<String>? orderBy;
  /// The UUID of the Token that has been accepted into the Image Share Group to list shared Images from.
  ///
  /// * `filter` - (Optional) A set of filters used to select Image Share Groups that meet certain requirements.
  final pulumi.Input<String> tokenUuid;

  /// Creates a new [GetConsumerImageShareGroupImageSharesArgs].
  /// [filters] Optional.
  /// [imageShares] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [tokenUuid] The UUID of the Token that has been accepted into the Image Share Group to list shared Images from.
  const GetConsumerImageShareGroupImageSharesArgs({
    this.filters,
    this.imageShares,
    this.order,
    this.orderBy,
    required this.tokenUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetConsumerImageShareGroupImageSharesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetConsumerImageShareGroupImageSharesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageShares': ?pulumi.Input.mapOptionalInputValue<List<GetConsumerImageShareGroupImageSharesImageShare>, List<Map<String, dynamic>>>(imageShares, (value) => pulumi.Input.encodeList<GetConsumerImageShareGroupImageSharesImageShare, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
      'tokenUuid': tokenUuid,
    };
  }

  factory GetConsumerImageShareGroupImageSharesArgs.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupImageSharesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetConsumerImageShareGroupImageSharesFilter>(guardedValue, (value) => GetConsumerImageShareGroupImageSharesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageShares: (() { final guardedValue = map['imageShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetConsumerImageShareGroupImageSharesImageShare>(guardedValue, (value) => GetConsumerImageShareGroupImageSharesImageShare.fromMap((value as Map).cast<String, dynamic>()))); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUuid: pulumi.Input.fromValue(map['tokenUuid'] as String),
    );
  }
}


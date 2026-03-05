// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_image_share_group_image_shares_filter.dart';
import 'get_consumer_image_share_group_image_shares_image_share.dart';

/// Result data returned by getConsumerImageShareGroupImageShares.
class GetConsumerImageShareGroupImageSharesResult {
  final List<GetConsumerImageShareGroupImageSharesFilter>? filters;
  /// The unique ID assigned to this Image Share.
  final String id;
  final List<GetConsumerImageShareGroupImageSharesImageShare>? imageShares;
  final String? order;
  final String? orderBy;
  final String tokenUuid;

  /// Creates a new [GetConsumerImageShareGroupImageSharesResult].
  /// [filters] Optional.
  /// [id] The unique ID assigned to this Image Share.
  /// [imageShares] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [tokenUuid] Required.
  GetConsumerImageShareGroupImageSharesResult({
    this.filters,
    required this.id,
    this.imageShares,
    this.order,
    this.orderBy,
    required this.tokenUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConsumerImageShareGroupImageSharesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'imageShares': ?(() { final guardedValue = imageShares; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConsumerImageShareGroupImageSharesImageShare, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'order': ?order,
      'orderBy': ?orderBy,
      'tokenUuid': tokenUuid,
    };
  }

  factory GetConsumerImageShareGroupImageSharesResult.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupImageSharesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConsumerImageShareGroupImageSharesFilter>(guardedValue, (value) => GetConsumerImageShareGroupImageSharesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      imageShares: (() { final guardedValue = map['imageShares']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConsumerImageShareGroupImageSharesImageShare>(guardedValue, (value) => GetConsumerImageShareGroupImageSharesImageShare.fromMap((value as Map).cast<String, dynamic>())); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokenUuid: map['tokenUuid'] as String,
    );
  }
}


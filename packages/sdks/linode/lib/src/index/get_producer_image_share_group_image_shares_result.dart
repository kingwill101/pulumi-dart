// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_image_share_group_image_shares_filter.dart';
import 'get_producer_image_share_group_image_shares_image_share.dart';

/// Result data returned by getProducerImageShareGroupImageShares.
class GetProducerImageShareGroupImageSharesResult {
  final List<GetProducerImageShareGroupImageSharesFilter>? filters;
  /// The unique ID assigned to this Image Share.
  final String id;
  final List<GetProducerImageShareGroupImageSharesImageShare>? imageShares;
  final String? order;
  final String? orderBy;
  /// The sharegroup_id from the im_ImageShare row.
  final int sharegroupId;

  /// Creates a new [GetProducerImageShareGroupImageSharesResult].
  /// [filters] Optional.
  /// [id] The unique ID assigned to this Image Share.
  /// [imageShares] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [sharegroupId] The sharegroup_id from the im_ImageShare row.
  GetProducerImageShareGroupImageSharesResult({
    this.filters,
    required this.id,
    this.imageShares,
    this.order,
    this.orderBy,
    required this.sharegroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetProducerImageShareGroupImageSharesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'imageShares': ?imageShares == null ? null : pulumi.Input.encodeList<GetProducerImageShareGroupImageSharesImageShare, Map<String, dynamic>>(imageShares!, (value) => value.toMap()),
      'order': ?order,
      'orderBy': ?orderBy,
      'sharegroupId': sharegroupId,
    };
  }

  factory GetProducerImageShareGroupImageSharesResult.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupImageSharesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetProducerImageShareGroupImageSharesFilter>(map['filters'], (value) => GetProducerImageShareGroupImageSharesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageShares: map['imageShares'] == null ? null : pulumi.Input.decodeList<GetProducerImageShareGroupImageSharesImageShare>(map['imageShares'], (value) => GetProducerImageShareGroupImageSharesImageShare.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
      sharegroupId: map['sharegroupId'] as int,
    );
  }
}


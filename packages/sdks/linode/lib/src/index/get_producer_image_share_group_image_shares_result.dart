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
  const GetProducerImageShareGroupImageSharesResult({
    this.filters,
    required this.id,
    this.imageShares,
    this.order,
    this.orderBy,
    required this.sharegroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProducerImageShareGroupImageSharesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'imageShares': ?(() { final guardedValue = imageShares; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProducerImageShareGroupImageSharesImageShare, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'order': ?order,
      'orderBy': ?orderBy,
      'sharegroupId': sharegroupId,
    };
  }

  factory GetProducerImageShareGroupImageSharesResult.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupImageSharesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProducerImageShareGroupImageSharesFilter>(guardedValue, (value) => GetProducerImageShareGroupImageSharesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      imageShares: (() { final guardedValue = map['imageShares']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProducerImageShareGroupImageSharesImageShare>(guardedValue, (value) => GetProducerImageShareGroupImageSharesImageShare.fromMap((value as Map).cast<String, dynamic>())); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharegroupId: map['sharegroupId'] as int,
    );
  }
}


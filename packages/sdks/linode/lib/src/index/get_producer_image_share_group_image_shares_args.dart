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
  GetProducerImageShareGroupImageSharesArgs({
    pulumi.Output<List<GetProducerImageShareGroupImageSharesFilter>>? filters,
    pulumi.Output<List<GetProducerImageShareGroupImageSharesImageShare>>? imageShares,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
    required pulumi.Output<int> sharegroupId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetProducerImageShareGroupImageSharesFilter>>(filters),
      imageShares = pulumi.Input.asOptionalInput<List<GetProducerImageShareGroupImageSharesImageShare>>(imageShares),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy),
      sharegroupId = pulumi.Input.asInput<int>(sharegroupId);

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
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetProducerImageShareGroupImageSharesFilter>>(pulumi.Input.decodeList<GetProducerImageShareGroupImageSharesFilter>(map['filters'], (value) => GetProducerImageShareGroupImageSharesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      imageShares: map['imageShares'] == null ? null : pulumi.Output.create<List<GetProducerImageShareGroupImageSharesImageShare>>(pulumi.Input.decodeList<GetProducerImageShareGroupImageSharesImageShare>(map['imageShares'], (value) => GetProducerImageShareGroupImageSharesImageShare.fromMap((value as Map).cast<String, dynamic>()))),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
      sharegroupId: pulumi.Output.create<int>(map['sharegroupId'] as int),
    );
  }
}


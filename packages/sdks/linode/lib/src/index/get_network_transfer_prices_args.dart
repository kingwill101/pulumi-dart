// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_transfer_prices_filter.dart';

/// {@template pulumi_index_get_network_transfer_prices_get_network_transfer_prices_args_doc}
/// Arguments for getNetworkTransferPrices.
/// {@endtemplate}
/// {@macro pulumi_index_get_network_transfer_prices_get_network_transfer_prices_args_doc}
class GetNetworkTransferPricesArgs {
  final pulumi.Input<List<GetNetworkTransferPricesFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetNetworkTransferPricesArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetNetworkTransferPricesArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNetworkTransferPricesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNetworkTransferPricesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNetworkTransferPricesArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkTransferPricesArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetNetworkTransferPricesFilter>(map['filters']!, (value) => GetNetworkTransferPricesFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order']! as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy']! as String).input(),
    );
  }
}


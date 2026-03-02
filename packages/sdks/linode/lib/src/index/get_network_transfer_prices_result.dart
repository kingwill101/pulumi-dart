// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_transfer_prices_filter.dart';
import 'get_network_transfer_prices_type.dart';

/// Result data returned by getNetworkTransferPrices.
class GetNetworkTransferPricesResult {
  final List<GetNetworkTransferPricesFilter>? filters;
  /// The ID representing the Network Transfer Price.
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetNetworkTransferPricesType> types;

  /// Creates a new [GetNetworkTransferPricesResult].
  /// [filters] Optional.
  /// [id] The ID representing the Network Transfer Price.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [types] Required.
  GetNetworkTransferPricesResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetNetworkTransferPricesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'types': pulumi.Input.encodeList<GetNetworkTransferPricesType, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory GetNetworkTransferPricesResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkTransferPricesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNetworkTransferPricesFilter>(map['filters']!, (value) => GetNetworkTransferPricesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      types: pulumi.Input.decodeList<GetNetworkTransferPricesType>(map['types'], (value) => GetNetworkTransferPricesType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


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
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkTransferPricesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'types': pulumi.Input.encodeList<GetNetworkTransferPricesType, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory GetNetworkTransferPricesResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkTransferPricesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkTransferPricesFilter>(guardedValue, (value) => GetNetworkTransferPricesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: pulumi.Input.decodeList<GetNetworkTransferPricesType>(map['types']!, (value) => GetNetworkTransferPricesType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


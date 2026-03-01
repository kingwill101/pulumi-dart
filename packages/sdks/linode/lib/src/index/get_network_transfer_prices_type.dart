// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_transfer_prices_type_price.dart';
import 'get_network_transfer_prices_type_region_price.dart';

class GetNetworkTransferPricesType {
  /// The ID representing the Network Transfer Price.
  final String id;
  /// The Network Transfer Price label is for display purposes only.
  final String label;
  /// Cost in US dollars, broken down into hourly and monthly charges.
  final List<GetNetworkTransferPricesTypePrice> prices;
  /// A list of region-specific prices for this Network Transfer Price.
  final List<GetNetworkTransferPricesTypeRegionPrice> regionPrices;
  /// The monthly outbound transfer amount, in MB.
  final int transfer;

  /// Creates a new [GetNetworkTransferPricesType].
  /// [id] The ID representing the Network Transfer Price.
  /// [label] The Network Transfer Price label is for display purposes only.
  /// [prices] Cost in US dollars, broken down into hourly and monthly charges.
  /// [regionPrices] A list of region-specific prices for this Network Transfer Price.
  /// [transfer] The monthly outbound transfer amount, in MB.
  GetNetworkTransferPricesType({
    required this.id,
    required this.label,
    required this.prices,
    required this.regionPrices,
    required this.transfer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'prices': pulumi.Input.encodeList<GetNetworkTransferPricesTypePrice, Map<String, dynamic>>(prices, (value) => value.toMap()),
      'regionPrices': pulumi.Input.encodeList<GetNetworkTransferPricesTypeRegionPrice, Map<String, dynamic>>(regionPrices, (value) => value.toMap()),
      'transfer': transfer,
    };
  }

  factory GetNetworkTransferPricesType.fromMap(Map<String, dynamic> map) {
    return GetNetworkTransferPricesType(
      id: map['id'] as String,
      label: map['label'] as String,
      prices: pulumi.Input.decodeList<GetNetworkTransferPricesTypePrice>(map['prices'], (value) => GetNetworkTransferPricesTypePrice.fromMap((value as Map).cast<String, dynamic>())),
      regionPrices: pulumi.Input.decodeList<GetNetworkTransferPricesTypeRegionPrice>(map['regionPrices'], (value) => GetNetworkTransferPricesTypeRegionPrice.fromMap((value as Map).cast<String, dynamic>())),
      transfer: map['transfer'] as int,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_transfer_prices_type_price.dart';
import 'get_network_transfer_prices_type_region_price.dart';

class GetNetworkTransferPricesType {
  /// The ID representing the Network Transfer Price.
  final pulumi.Input<String> id;
  /// The Network Transfer Price label is for display purposes only.
  final pulumi.Input<String> label;
  /// Cost in US dollars, broken down into hourly and monthly charges.
  final pulumi.Input<List<GetNetworkTransferPricesTypePrice>> prices;
  /// A list of region-specific prices for this Network Transfer Price.
  final pulumi.Input<List<GetNetworkTransferPricesTypeRegionPrice>> regionPrices;
  /// The monthly outbound transfer amount, in MB.
  final pulumi.Input<int> transfer;

  /// Creates a new [GetNetworkTransferPricesType].
  /// [id] The ID representing the Network Transfer Price.
  /// [label] The Network Transfer Price label is for display purposes only.
  /// [prices] Cost in US dollars, broken down into hourly and monthly charges.
  /// [regionPrices] A list of region-specific prices for this Network Transfer Price.
  /// [transfer] The monthly outbound transfer amount, in MB.
  const GetNetworkTransferPricesType({
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
      'prices': pulumi.Input.mapInputValue<List<GetNetworkTransferPricesTypePrice>, List<Map<String, dynamic>>>(prices, (value) => pulumi.Input.encodeList<GetNetworkTransferPricesTypePrice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionPrices': pulumi.Input.mapInputValue<List<GetNetworkTransferPricesTypeRegionPrice>, List<Map<String, dynamic>>>(regionPrices, (value) => pulumi.Input.encodeList<GetNetworkTransferPricesTypeRegionPrice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transfer': transfer,
    };
  }

  factory GetNetworkTransferPricesType.fromMap(Map<String, dynamic> map) {
    return GetNetworkTransferPricesType(
      id: pulumi.Input.fromValue(map['id'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      prices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkTransferPricesTypePrice>(map['prices']!, (value) => GetNetworkTransferPricesTypePrice.fromMap((value as Map).cast<String, dynamic>()))),
      regionPrices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkTransferPricesTypeRegionPrice>(map['regionPrices']!, (value) => GetNetworkTransferPricesTypeRegionPrice.fromMap((value as Map).cast<String, dynamic>()))),
      transfer: pulumi.Input.fromValue(map['transfer'] as int),
    );
  }
}


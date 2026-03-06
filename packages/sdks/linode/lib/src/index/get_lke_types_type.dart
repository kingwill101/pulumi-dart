// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_types_type_price.dart';
import 'get_lke_types_type_region_price.dart';

class GetLkeTypesType {
  /// The ID representing the Kubernetes type.
  final pulumi.Input<String> id;
  /// The Kubernetes type label is for display purposes only.
  final pulumi.Input<String> label;
  /// Cost in US dollars, broken down into hourly and monthly charges.
  final pulumi.Input<List<GetLkeTypesTypePrice>> prices;
  /// A list of region-specific prices for this LKE Type.
  final pulumi.Input<List<GetLkeTypesTypeRegionPrice>> regionPrices;
  /// The monthly outbound transfer amount, in MB.
  final pulumi.Input<int> transfer;

  /// Creates a new [GetLkeTypesType].
  /// [id] The ID representing the Kubernetes type.
  /// [label] The Kubernetes type label is for display purposes only.
  /// [prices] Cost in US dollars, broken down into hourly and monthly charges.
  /// [regionPrices] A list of region-specific prices for this LKE Type.
  /// [transfer] The monthly outbound transfer amount, in MB.
  const GetLkeTypesType({
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
      'prices': pulumi.Input.mapInputValue<List<GetLkeTypesTypePrice>, List<Map<String, dynamic>>>(prices, (value) => pulumi.Input.encodeList<GetLkeTypesTypePrice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionPrices': pulumi.Input.mapInputValue<List<GetLkeTypesTypeRegionPrice>, List<Map<String, dynamic>>>(regionPrices, (value) => pulumi.Input.encodeList<GetLkeTypesTypeRegionPrice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transfer': transfer,
    };
  }

  factory GetLkeTypesType.fromMap(Map<String, dynamic> map) {
    return GetLkeTypesType(
      id: pulumi.Input.fromValue(map['id'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      prices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLkeTypesTypePrice>(map['prices']!, (value) => GetLkeTypesTypePrice.fromMap((value as Map).cast<String, dynamic>()))),
      regionPrices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLkeTypesTypeRegionPrice>(map['regionPrices']!, (value) => GetLkeTypesTypeRegionPrice.fromMap((value as Map).cast<String, dynamic>()))),
      transfer: pulumi.Input.fromValue(map['transfer'] as int),
    );
  }
}


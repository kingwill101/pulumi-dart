// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_types_type_price.dart';
import 'get_volume_types_type_region_price.dart';

class GetVolumeTypesType {
  /// The ID representing the Volume type.
  final pulumi.Input<String> id;
  /// The Volume type label is for display purposes only.
  final pulumi.Input<String> label;
  /// Cost in US dollars, broken down into hourly and monthly charges.
  final pulumi.Input<List<GetVolumeTypesTypePrice>> prices;
  /// A list of region-specific prices for this Volume Type.
  final pulumi.Input<List<GetVolumeTypesTypeRegionPrice>> regionPrices;
  /// The monthly outbound transfer amount, in MB.
  final pulumi.Input<int> transfer;

  /// Creates a new [GetVolumeTypesType].
  /// [id] The ID representing the Volume type.
  /// [label] The Volume type label is for display purposes only.
  /// [prices] Cost in US dollars, broken down into hourly and monthly charges.
  /// [regionPrices] A list of region-specific prices for this Volume Type.
  /// [transfer] The monthly outbound transfer amount, in MB.
  const GetVolumeTypesType({
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
      'prices': pulumi.Input.mapInputValue<List<GetVolumeTypesTypePrice>, List<Map<String, dynamic>>>(prices, (value) => pulumi.Input.encodeList<GetVolumeTypesTypePrice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionPrices': pulumi.Input.mapInputValue<List<GetVolumeTypesTypeRegionPrice>, List<Map<String, dynamic>>>(regionPrices, (value) => pulumi.Input.encodeList<GetVolumeTypesTypeRegionPrice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transfer': transfer,
    };
  }

  factory GetVolumeTypesType.fromMap(Map<String, dynamic> map) {
    return GetVolumeTypesType(
      id: pulumi.Input.fromValue(map['id'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      prices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeTypesTypePrice>(map['prices']!, (value) => GetVolumeTypesTypePrice.fromMap((value as Map).cast<String, dynamic>()))),
      regionPrices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVolumeTypesTypeRegionPrice>(map['regionPrices']!, (value) => GetVolumeTypesTypeRegionPrice.fromMap((value as Map).cast<String, dynamic>()))),
      transfer: pulumi.Input.fromValue(map['transfer'] as int),
    );
  }
}


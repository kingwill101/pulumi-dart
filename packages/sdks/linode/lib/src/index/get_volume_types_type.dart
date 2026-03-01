// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_types_type_price.dart';
import 'get_volume_types_type_region_price.dart';

class GetVolumeTypesType {
  /// The ID representing the Volume type.
  final String id;
  /// The Volume type label is for display purposes only.
  final String label;
  /// Cost in US dollars, broken down into hourly and monthly charges.
  final List<GetVolumeTypesTypePrice> prices;
  /// A list of region-specific prices for this Volume Type.
  final List<GetVolumeTypesTypeRegionPrice> regionPrices;
  /// The monthly outbound transfer amount, in MB.
  final int transfer;

  /// Creates a new [GetVolumeTypesType].
  /// [id] The ID representing the Volume type.
  /// [label] The Volume type label is for display purposes only.
  /// [prices] Cost in US dollars, broken down into hourly and monthly charges.
  /// [regionPrices] A list of region-specific prices for this Volume Type.
  /// [transfer] The monthly outbound transfer amount, in MB.
  GetVolumeTypesType({
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
      'prices': pulumi.Input.encodeList<GetVolumeTypesTypePrice, Map<String, dynamic>>(prices, (value) => value.toMap()),
      'regionPrices': pulumi.Input.encodeList<GetVolumeTypesTypeRegionPrice, Map<String, dynamic>>(regionPrices, (value) => value.toMap()),
      'transfer': transfer,
    };
  }

  factory GetVolumeTypesType.fromMap(Map<String, dynamic> map) {
    return GetVolumeTypesType(
      id: map['id'] as String,
      label: map['label'] as String,
      prices: pulumi.Input.decodeList<GetVolumeTypesTypePrice>(map['prices'], (value) => GetVolumeTypesTypePrice.fromMap((value as Map).cast<String, dynamic>())),
      regionPrices: pulumi.Input.decodeList<GetVolumeTypesTypeRegionPrice>(map['regionPrices'], (value) => GetVolumeTypesTypeRegionPrice.fromMap((value as Map).cast<String, dynamic>())),
      transfer: map['transfer'] as int,
    );
  }
}


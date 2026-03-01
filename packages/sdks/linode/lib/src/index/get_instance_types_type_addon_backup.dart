// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_type_addon_backup_price.dart';
import 'get_instance_types_type_addon_backup_region_price.dart';

class GetInstanceTypesTypeAddonBackup {
  final List<GetInstanceTypesTypeAddonBackupPrice> prices;
  final List<GetInstanceTypesTypeAddonBackupRegionPrice> regionPrices;

  /// Creates a new [GetInstanceTypesTypeAddonBackup].
  /// [prices] Required.
  /// [regionPrices] Required.
  GetInstanceTypesTypeAddonBackup({
    required this.prices,
    required this.regionPrices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prices': pulumi.Input.encodeList<GetInstanceTypesTypeAddonBackupPrice, Map<String, dynamic>>(prices, (value) => value.toMap()),
      'regionPrices': pulumi.Input.encodeList<GetInstanceTypesTypeAddonBackupRegionPrice, Map<String, dynamic>>(regionPrices, (value) => value.toMap()),
    };
  }

  factory GetInstanceTypesTypeAddonBackup.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesTypeAddonBackup(
      prices: pulumi.Input.decodeList<GetInstanceTypesTypeAddonBackupPrice>(map['prices'], (value) => GetInstanceTypesTypeAddonBackupPrice.fromMap((value as Map).cast<String, dynamic>())),
      regionPrices: pulumi.Input.decodeList<GetInstanceTypesTypeAddonBackupRegionPrice>(map['regionPrices'], (value) => GetInstanceTypesTypeAddonBackupRegionPrice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


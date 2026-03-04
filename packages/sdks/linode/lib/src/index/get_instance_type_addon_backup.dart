// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_addon_backup_price.dart';
import 'get_instance_type_addon_backup_region_price.dart';

class GetInstanceTypeAddonBackup {
  final pulumi.Input<List<GetInstanceTypeAddonBackupPrice>> prices;
  final pulumi.Input<List<GetInstanceTypeAddonBackupRegionPrice>> regionPrices;

  /// Creates a new [GetInstanceTypeAddonBackup].
  /// [prices] Required.
  /// [regionPrices] Required.
  GetInstanceTypeAddonBackup({
    required this.prices,
    required this.regionPrices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prices':
          pulumi.Input.mapInputValue<
            List<GetInstanceTypeAddonBackupPrice>,
            List<Map<String, dynamic>>
          >(
            prices,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstanceTypeAddonBackupPrice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'regionPrices':
          pulumi.Input.mapInputValue<
            List<GetInstanceTypeAddonBackupRegionPrice>,
            List<Map<String, dynamic>>
          >(
            regionPrices,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstanceTypeAddonBackupRegionPrice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInstanceTypeAddonBackup.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeAddonBackup(
      prices: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInstanceTypeAddonBackupPrice>(
          map['prices']!,
          (value) => GetInstanceTypeAddonBackupPrice.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      regionPrices: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInstanceTypeAddonBackupRegionPrice>(
          map['regionPrices']!,
          (value) => GetInstanceTypeAddonBackupRegionPrice.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}

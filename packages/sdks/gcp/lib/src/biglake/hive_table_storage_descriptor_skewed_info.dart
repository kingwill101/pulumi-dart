// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_table_storage_descriptor_skewed_info_skewed_col_value.dart';
import 'hive_table_storage_descriptor_skewed_info_skewed_key_values_location.dart';

class HiveTableStorageDescriptorSkewedInfo {
  /// The column names that are skewed.
  final pulumi.Input<List<String>> skewedColNames;
  /// The skewed column values.
  /// Structure is documented below.
  final pulumi.Input<List<HiveTableStorageDescriptorSkewedInfoSkewedColValue>> skewedColValues;
  /// The skewed key values locations.
  /// Structure is documented below.
  final pulumi.Input<List<HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation>> skewedKeyValuesLocations;

  /// Creates a new [HiveTableStorageDescriptorSkewedInfo].
  /// [skewedColNames] The column names that are skewed.
  /// [skewedColValues] The skewed column values.
  /// [skewedKeyValuesLocations] The skewed key values locations.
  const HiveTableStorageDescriptorSkewedInfo({
    required this.skewedColNames,
    required this.skewedColValues,
    required this.skewedKeyValuesLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skewedColNames': skewedColNames,
      'skewedColValues': pulumi.Input.mapInputValue<List<HiveTableStorageDescriptorSkewedInfoSkewedColValue>, List<Map<String, dynamic>>>(skewedColValues, (value) => pulumi.Input.encodeList<HiveTableStorageDescriptorSkewedInfoSkewedColValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skewedKeyValuesLocations': pulumi.Input.mapInputValue<List<HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation>, List<Map<String, dynamic>>>(skewedKeyValuesLocations, (value) => pulumi.Input.encodeList<HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HiveTableStorageDescriptorSkewedInfo.fromMap(Map<String, dynamic> map) {
    return HiveTableStorageDescriptorSkewedInfo(
      skewedColNames: pulumi.Input.fromValue((map['skewedColNames'] as List).cast<String>()),
      skewedColValues: pulumi.Input.fromValue(pulumi.Input.decodeList<HiveTableStorageDescriptorSkewedInfoSkewedColValue>(map['skewedColValues']!, (value) => HiveTableStorageDescriptorSkewedInfoSkewedColValue.fromMap((value as Map).cast<String, dynamic>()))),
      skewedKeyValuesLocations: pulumi.Input.fromValue(pulumi.Input.decodeList<HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation>(map['skewedKeyValuesLocations']!, (value) => HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

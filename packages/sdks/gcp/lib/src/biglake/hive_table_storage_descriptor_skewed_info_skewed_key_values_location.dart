// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation {
  /// (Required)
  final pulumi.Input<String> location;
  /// (Required)
  final pulumi.Input<List<String>> values;

  /// Creates a new [HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation].
  /// [location] (Required)
  /// [values] (Required)
  const HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation({
    required this.location,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'values': values,
    };
  }

  factory HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation.fromMap(Map<String, dynamic> map) {
    return HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocation(
      location: pulumi.Input.fromValue(map['location'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

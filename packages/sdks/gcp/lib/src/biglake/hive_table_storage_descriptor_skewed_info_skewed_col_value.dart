// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HiveTableStorageDescriptorSkewedInfoSkewedColValue {
  /// (Required)
  final pulumi.Input<List<String>> values;

  /// Creates a new [HiveTableStorageDescriptorSkewedInfoSkewedColValue].
  /// [values] (Required)
  const HiveTableStorageDescriptorSkewedInfoSkewedColValue({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory HiveTableStorageDescriptorSkewedInfoSkewedColValue.fromMap(Map<String, dynamic> map) {
    return HiveTableStorageDescriptorSkewedInfoSkewedColValue(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

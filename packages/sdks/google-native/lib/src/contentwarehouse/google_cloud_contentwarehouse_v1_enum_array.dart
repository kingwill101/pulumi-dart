// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum values.
class GoogleCloudContentwarehouseV1EnumArray {
  /// List of enum values.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1EnumArray].
  /// [values] List of enum values.
  const GoogleCloudContentwarehouseV1EnumArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudContentwarehouseV1EnumArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1EnumArray(
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


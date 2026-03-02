// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum values.
class GoogleCloudContentwarehouseV1EnumArray {
  /// List of enum values.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1EnumArray].
  /// [values] List of enum values.
  GoogleCloudContentwarehouseV1EnumArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudContentwarehouseV1EnumArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1EnumArray(
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Float values.
class GoogleCloudContentwarehouseV1FloatArray {
  /// List of float values.
  final pulumi.Input<List<double>>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1FloatArray].
  /// [values] List of float values.
  GoogleCloudContentwarehouseV1FloatArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudContentwarehouseV1FloatArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1FloatArray(
      values: map['values'] == null ? null : ((map['values']! as List).cast<double>()).input(),
    );
  }
}


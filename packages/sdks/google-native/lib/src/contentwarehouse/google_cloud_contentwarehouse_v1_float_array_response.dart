// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Float values.
class GoogleCloudContentwarehouseV1FloatArrayResponse {
  /// List of float values.
  final pulumi.Input<List<double>> values;

  /// Creates a new [GoogleCloudContentwarehouseV1FloatArrayResponse].
  /// [values] List of float values.
  GoogleCloudContentwarehouseV1FloatArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudContentwarehouseV1FloatArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1FloatArrayResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<double>()),
    );
  }
}


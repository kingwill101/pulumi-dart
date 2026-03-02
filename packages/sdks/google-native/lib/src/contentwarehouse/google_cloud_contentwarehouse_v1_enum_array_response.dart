// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum values.
class GoogleCloudContentwarehouseV1EnumArrayResponse {
  /// List of enum values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudContentwarehouseV1EnumArrayResponse].
  /// [values] List of enum values.
  GoogleCloudContentwarehouseV1EnumArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudContentwarehouseV1EnumArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1EnumArrayResponse(
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}


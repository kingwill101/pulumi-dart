// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// String/text values.
class GoogleCloudContentwarehouseV1TextArrayResponse {
  /// List of text values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudContentwarehouseV1TextArrayResponse].
  /// [values] List of text values.
  const GoogleCloudContentwarehouseV1TextArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudContentwarehouseV1TextArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TextArrayResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

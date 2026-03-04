// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Integer values.
class GoogleCloudContentwarehouseV1IntegerArrayResponse {
  /// List of integer values.
  final pulumi.Input<List<int>> values;

  /// Creates a new [GoogleCloudContentwarehouseV1IntegerArrayResponse].
  /// [values] List of integer values.
  GoogleCloudContentwarehouseV1IntegerArrayResponse({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory GoogleCloudContentwarehouseV1IntegerArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1IntegerArrayResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<int>()),
    );
  }
}

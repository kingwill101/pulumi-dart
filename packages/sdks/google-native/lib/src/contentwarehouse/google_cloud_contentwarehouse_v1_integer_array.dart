// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Integer values.
class GoogleCloudContentwarehouseV1IntegerArray {
  /// List of integer values.
  final pulumi.Input<List<int>>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1IntegerArray].
  /// [values] List of integer values.
  GoogleCloudContentwarehouseV1IntegerArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudContentwarehouseV1IntegerArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1IntegerArray(
      values: map['values'] == null ? null : ((map['values'] as List).cast<int>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// String/text values.
class GoogleCloudContentwarehouseV1TextArray {
  /// List of text values.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1TextArray].
  /// [values] List of text values.
  GoogleCloudContentwarehouseV1TextArray({this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': ?values};
  }

  factory GoogleCloudContentwarehouseV1TextArray.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1TextArray(
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

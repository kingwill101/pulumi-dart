// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_timestamp_value.dart';

/// Timestamp values.
class GoogleCloudContentwarehouseV1TimestampArray {
  /// List of timestamp values.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1TimestampValue>>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1TimestampArray].
  /// [values] List of timestamp values.
  GoogleCloudContentwarehouseV1TimestampArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContentwarehouseV1TimestampValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1TimestampValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudContentwarehouseV1TimestampArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TimestampArray(
      values: map['values'] == null ? null : (pulumi.Input.decodeList<GoogleCloudContentwarehouseV1TimestampValue>(map['values'], (value) => GoogleCloudContentwarehouseV1TimestampValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


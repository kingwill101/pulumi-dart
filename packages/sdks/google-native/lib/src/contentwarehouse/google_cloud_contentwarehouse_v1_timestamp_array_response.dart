// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_timestamp_value_response.dart';

/// Timestamp values.
class GoogleCloudContentwarehouseV1TimestampArrayResponse {
  /// List of timestamp values.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1TimestampValueResponse>> values;

  /// Creates a new [GoogleCloudContentwarehouseV1TimestampArrayResponse].
  /// [values] List of timestamp values.
  GoogleCloudContentwarehouseV1TimestampArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': pulumi.Input.mapInputValue<List<GoogleCloudContentwarehouseV1TimestampValueResponse>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1TimestampValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudContentwarehouseV1TimestampArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TimestampArrayResponse(
      values: (pulumi.Input.decodeList<GoogleCloudContentwarehouseV1TimestampValueResponse>(map['values'], (value) => GoogleCloudContentwarehouseV1TimestampValueResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


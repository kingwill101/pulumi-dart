// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_date_time_response.dart';

/// DateTime values.
class GoogleCloudContentwarehouseV1DateTimeArrayResponse {
  /// List of datetime values. Both OffsetDateTime and ZonedDateTime are supported.
  final pulumi.Input<List<GoogleTypeDateTimeResponse>> values;

  /// Creates a new [GoogleCloudContentwarehouseV1DateTimeArrayResponse].
  /// [values] List of datetime values. Both OffsetDateTime and ZonedDateTime are supported.
  const GoogleCloudContentwarehouseV1DateTimeArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': pulumi.Input.mapInputValue<List<GoogleTypeDateTimeResponse>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<GoogleTypeDateTimeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudContentwarehouseV1DateTimeArrayResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DateTimeArrayResponse(
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleTypeDateTimeResponse>(map['values']!, (value) => GoogleTypeDateTimeResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Timestamp value type.
class GoogleCloudContentwarehouseV1TimestampValueResponse {
  /// The string must represent a valid instant in UTC and is parsed using java.time.format.DateTimeFormatter.ISO_INSTANT. e.g. "2013-09-29T18:46:19Z"
  final pulumi.Input<String> textValue;
  /// Timestamp value
  final pulumi.Input<String> timestampValue;

  /// Creates a new [GoogleCloudContentwarehouseV1TimestampValueResponse].
  /// [textValue] The string must represent a valid instant in UTC and is parsed using java.time.format.DateTimeFormatter.ISO_INSTANT. e.g. "2013-09-29T18:46:19Z"
  /// [timestampValue] Timestamp value
  const GoogleCloudContentwarehouseV1TimestampValueResponse({
    required this.textValue,
    required this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textValue': textValue,
      'timestampValue': timestampValue,
    };
  }

  factory GoogleCloudContentwarehouseV1TimestampValueResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TimestampValueResponse(
      textValue: pulumi.Input.fromValue(map['textValue'] as String),
      timestampValue: pulumi.Input.fromValue(map['timestampValue'] as String),
    );
  }
}

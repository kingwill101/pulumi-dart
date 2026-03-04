// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Timestamp value type.
class GoogleCloudContentwarehouseV1TimestampValue {
  /// The string must represent a valid instant in UTC and is parsed using java.time.format.DateTimeFormatter.ISO_INSTANT. e.g. "2013-09-29T18:46:19Z"
  final pulumi.Input<String>? textValue;

  /// Timestamp value
  final pulumi.Input<String>? timestampValue;

  /// Creates a new [GoogleCloudContentwarehouseV1TimestampValue].
  /// [textValue] The string must represent a valid instant in UTC and is parsed using java.time.format.DateTimeFormatter.ISO_INSTANT. e.g. "2013-09-29T18:46:19Z"
  /// [timestampValue] Timestamp value
  GoogleCloudContentwarehouseV1TimestampValue({
    this.textValue,
    this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textValue': ?textValue,
      'timestampValue': ?timestampValue,
    };
  }

  factory GoogleCloudContentwarehouseV1TimestampValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1TimestampValue(
      textValue: (() {
        final guardedValue = map['textValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timestampValue: (() {
        final guardedValue = map['timestampValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

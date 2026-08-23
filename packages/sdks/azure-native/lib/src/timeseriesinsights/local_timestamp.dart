// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_timestamp_time_zone_offset.dart';

/// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
class LocalTimestamp {
  /// An enum that represents the format of the local timestamp property that needs to be set.
  final pulumi.Input<String>? format;
  /// An object that represents the offset information for the local timestamp format specified. Should not be specified for LocalTimestampFormat - Embedded.
  final pulumi.Input<LocalTimestampTimeZoneOffset>? timeZoneOffset;

  /// Creates a new [LocalTimestamp].
  /// [format] An enum that represents the format of the local timestamp property that needs to be set.
  /// [timeZoneOffset] An object that represents the offset information for the local timestamp format specified. Should not be specified for LocalTimestampFormat - Embedded.
  const LocalTimestamp({
    this.format,
    this.timeZoneOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'timeZoneOffset': ?pulumi.Input.mapOptionalInputValue<LocalTimestampTimeZoneOffset, Map<String, dynamic>>(timeZoneOffset, (value) => value.toMap()),
    };
  }

  factory LocalTimestamp.fromMap(Map<String, dynamic> map) {
    return LocalTimestamp(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZoneOffset: (() { final guardedValue = map['timeZoneOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalTimestampTimeZoneOffset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

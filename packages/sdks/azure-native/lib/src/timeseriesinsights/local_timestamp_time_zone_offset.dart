// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object that represents the offset information for the local timestamp format specified. Should not be specified for LocalTimestampFormat - Embedded.
class LocalTimestampTimeZoneOffset {
  /// The event property that will be contain the offset information to calculate the local timestamp. When the LocalTimestampFormat is Iana, the property name will contain the name of the column which contains IANA Timezone Name (eg: Americas/Los Angeles). When LocalTimestampFormat is Timespan, it contains the name of property which contains values representing the offset (eg: P1D or 1.00:00:00)
  final pulumi.Input<String?>? propertyName;

  /// Creates a new [LocalTimestampTimeZoneOffset].
  /// [propertyName] The event property that will be contain the offset information to calculate the local timestamp. When the LocalTimestampFormat is Iana, the property name will contain the name of the column which contains IANA Timezone Name (eg: Americas/Los Angeles). When LocalTimestampFormat is Timespan, it contains the name of property which contains values representing the offset (eg: P1D or 1.00:00:00)
  const LocalTimestampTimeZoneOffset({
    this.propertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyName': ?propertyName,
    };
  }

  factory LocalTimestampTimeZoneOffset.fromMap(Map<String, dynamic> map) {
    return LocalTimestampTimeZoneOffset(
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

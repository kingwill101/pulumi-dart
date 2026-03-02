// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object that represents the offset information for the local timestamp format specified. Should not be specified for LocalTimestampFormat - Embedded.
class LocalTimestampResponseTimeZoneOffset {
  /// The event property that will be contain the offset information to calculate the local timestamp. When the LocalTimestampFormat is Iana, the property name will contain the name of the column which contains IANA Timezone Name (eg: Americas/Los Angeles). When LocalTimestampFormat is Timespan, it contains the name of property which contains values representing the offset (eg: P1D or 1.00:00:00)
  final pulumi.Input<String>? propertyName;

  /// Creates a new [LocalTimestampResponseTimeZoneOffset].
  /// [propertyName] The event property that will be contain the offset information to calculate the local timestamp. When the LocalTimestampFormat is Iana, the property name will contain the name of the column which contains IANA Timezone Name (eg: Americas/Los Angeles). When LocalTimestampFormat is Timespan, it contains the name of property which contains values representing the offset (eg: P1D or 1.00:00:00)
  LocalTimestampResponseTimeZoneOffset({
    this.propertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propertyName': ?propertyName,
    };
  }

  factory LocalTimestampResponseTimeZoneOffset.fromMap(Map<String, dynamic> map) {
    return LocalTimestampResponseTimeZoneOffset(
      propertyName: map['propertyName'] == null ? null : (map['propertyName'] as String).input(),
    );
  }
}


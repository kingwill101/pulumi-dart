// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class TimeZoneResponseOsconfigV1beta {
  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final pulumi.Input<String> version;

  /// Creates a new [TimeZoneResponseOsconfigV1beta].
  /// [version] Optional. IANA Time Zone Database version number, e.g. "2019a".
  TimeZoneResponseOsconfigV1beta({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory TimeZoneResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return TimeZoneResponseOsconfigV1beta(
      version: (map['version'] as String).input(),
    );
  }
}


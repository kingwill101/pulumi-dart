// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class TimeZoneResponse {
  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final pulumi.Input<String> version;

  /// Creates a new [TimeZoneResponse].
  /// [version] Optional. IANA Time Zone Database version number, e.g. "2019a".
  TimeZoneResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory TimeZoneResponse.fromMap(Map<String, dynamic> map) {
    return TimeZoneResponse(
      version: (map['version'] as String).input(),
    );
  }
}


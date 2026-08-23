// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).
class GoogleTypeTimeZoneResponse {
  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  final pulumi.Input<String> version;

  /// Creates a new [GoogleTypeTimeZoneResponse].
  /// [version] Optional. IANA Time Zone Database version number, e.g. "2019a".
  const GoogleTypeTimeZoneResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory GoogleTypeTimeZoneResponse.fromMap(Map<String, dynamic> map) {
    return GoogleTypeTimeZoneResponse(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

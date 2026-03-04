// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common settings field for backup management
class SettingsResponse {
  /// Workload compression flag. This has been added so that 'isSqlCompression'
  /// will be deprecated once clients upgrade to consider this flag.
  final pulumi.Input<bool>? isCompression;

  /// SQL compression flag
  final pulumi.Input<bool>? issqlcompression;

  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String>? timeZone;

  /// Creates a new [SettingsResponse].
  /// [isCompression] Workload compression flag. This has been added so that 'isSqlCompression'
  /// [issqlcompression] SQL compression flag
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  SettingsResponse({this.isCompression, this.issqlcompression, this.timeZone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompression': ?isCompression,
      'issqlcompression': ?issqlcompression,
      'timeZone': ?timeZone,
    };
  }

  factory SettingsResponse.fromMap(Map<String, dynamic> map) {
    return SettingsResponse(
      isCompression: (() {
        final guardedValue = map['isCompression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      issqlcompression: (() {
        final guardedValue = map['issqlcompression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

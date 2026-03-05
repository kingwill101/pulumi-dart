// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppTimeZoneSetting {
  /// (Output)
  /// The time zone of the app from the time zone database, e.g., America/Los_Angeles, Europe/Paris.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [AppVersionSnapshotAppTimeZoneSetting].
  /// [timeZone] (Output)
  AppVersionSnapshotAppTimeZoneSetting({
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeZone': ?timeZone,
    };
  }

  factory AppVersionSnapshotAppTimeZoneSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppTimeZoneSetting(
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


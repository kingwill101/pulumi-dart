// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentRecurringScheduleTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  final pulumi.Input<String> id;
  /// IANA Time Zone Database version number, e.g. "2019a".
  final pulumi.Input<String>? version;

  /// Creates a new [PatchDeploymentRecurringScheduleTimeZone].
  /// [id] IANA Time Zone Database time zone, e.g. "America/New_York".
  /// [version] IANA Time Zone Database version number, e.g. "2019a".
  const PatchDeploymentRecurringScheduleTimeZone({
    required this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'version': ?version,
    };
  }

  factory PatchDeploymentRecurringScheduleTimeZone.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentRecurringScheduleTimeZone(
      id: pulumi.Input.fromValue(map['id'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


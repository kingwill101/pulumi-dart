// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsLocationPreference {
  /// A GAE application whose zone to remain
  /// in. Must be in the same region as this instance.
  final pulumi.Input<String>? followGaeApplication;

  /// The preferred Compute Engine zone for the secondary/failover.
  final pulumi.Input<String>? secondaryZone;

  /// The preferred compute engine
  /// [zone](https://cloud.google.com/compute/docs/zones?hl=en).
  final pulumi.Input<String>? zone;

  /// Creates a new [DatabaseInstanceSettingsLocationPreference].
  /// [followGaeApplication] A GAE application whose zone to remain
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover.
  /// [zone] The preferred compute engine
  DatabaseInstanceSettingsLocationPreference({
    this.followGaeApplication,
    this.secondaryZone,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followGaeApplication': ?followGaeApplication,
      'secondaryZone': ?secondaryZone,
      'zone': ?zone,
    };
  }

  factory DatabaseInstanceSettingsLocationPreference.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsLocationPreference(
      followGaeApplication: (() {
        final guardedValue = map['followGaeApplication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryZone: (() {
        final guardedValue = map['secondaryZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

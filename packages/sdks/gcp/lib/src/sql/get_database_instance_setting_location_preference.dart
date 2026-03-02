// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingLocationPreference {
  /// A Google App Engine application whose zone to remain in. Must be in the same region as this instance.
  final pulumi.Input<String> followGaeApplication;
  /// The preferred Compute Engine zone for the secondary/failover
  final pulumi.Input<String> secondaryZone;
  /// The preferred compute engine zone.
  final pulumi.Input<String> zone;

  /// Creates a new [GetDatabaseInstanceSettingLocationPreference].
  /// [followGaeApplication] A Google App Engine application whose zone to remain in. Must be in the same region as this instance.
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover
  /// [zone] The preferred compute engine zone.
  GetDatabaseInstanceSettingLocationPreference({
    required this.followGaeApplication,
    required this.secondaryZone,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followGaeApplication': followGaeApplication,
      'secondaryZone': secondaryZone,
      'zone': zone,
    };
  }

  factory GetDatabaseInstanceSettingLocationPreference.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingLocationPreference(
      followGaeApplication: (map['followGaeApplication'] as String).input(),
      secondaryZone: (map['secondaryZone'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}


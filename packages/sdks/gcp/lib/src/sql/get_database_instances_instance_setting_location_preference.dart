// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingLocationPreference {
  /// A Google App Engine application whose zone to remain in. Must be in the same region as this instance.
  final pulumi.Input<String> followGaeApplication;
  /// The preferred Compute Engine zone for the secondary/failover
  final pulumi.Input<String> secondaryZone;
  /// To filter out the Cloud SQL instances which are located in the specified zone. This zone refers to the Compute Engine zone that the instance is currently serving from.
  final pulumi.Input<String> zone;

  /// Creates a new [GetDatabaseInstancesInstanceSettingLocationPreference].
  /// [followGaeApplication] A Google App Engine application whose zone to remain in. Must be in the same region as this instance.
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover
  /// [zone] To filter out the Cloud SQL instances which are located in the specified zone. This zone refers to the Compute Engine zone that the instance is currently serving from.
  const GetDatabaseInstancesInstanceSettingLocationPreference({
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

  factory GetDatabaseInstancesInstanceSettingLocationPreference.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingLocationPreference(
      followGaeApplication: pulumi.Input.fromValue(map['followGaeApplication'] as String),
      secondaryZone: pulumi.Input.fromValue(map['secondaryZone'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preferred location. This specifies where a Cloud SQL instance is located. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified.
class LocationPreferenceSqladminV1beta4 {
  /// The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
  final pulumi.Input<String>? followGaeApplication;
  /// This is always `sql#locationPreference`.
  final pulumi.Input<String>? kind;
  /// The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.). To disable this field, set it to 'no_secondary_zone'.
  final pulumi.Input<String>? secondaryZone;
  /// The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
  final pulumi.Input<String>? zone;

  /// Creates a new [LocationPreferenceSqladminV1beta4].
  /// [followGaeApplication] The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
  /// [kind] This is always `sql#locationPreference`.
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.). To disable this field, set it to 'no_secondary_zone'.
  /// [zone] The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
  const LocationPreferenceSqladminV1beta4({
    this.followGaeApplication,
    this.kind,
    this.secondaryZone,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followGaeApplication': ?followGaeApplication,
      'kind': ?kind,
      'secondaryZone': ?secondaryZone,
      'zone': ?zone,
    };
  }

  factory LocationPreferenceSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return LocationPreferenceSqladminV1beta4(
      followGaeApplication: (() { final guardedValue = map['followGaeApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryZone: (() { final guardedValue = map['secondaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preferred location. This specifies where a Cloud SQL instance is located. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified.
class LocationPreferenceResponseSqladminV1beta4 {
  /// The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
  final pulumi.Input<String> followGaeApplication;
  /// This is always `sql#locationPreference`.
  final pulumi.Input<String> kind;
  /// The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.). To disable this field, set it to 'no_secondary_zone'.
  final pulumi.Input<String> secondaryZone;
  /// The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
  final pulumi.Input<String> zone;

  /// Creates a new [LocationPreferenceResponseSqladminV1beta4].
  /// [followGaeApplication] The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
  /// [kind] This is always `sql#locationPreference`.
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.). To disable this field, set it to 'no_secondary_zone'.
  /// [zone] The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
  const LocationPreferenceResponseSqladminV1beta4({
    required this.followGaeApplication,
    required this.kind,
    required this.secondaryZone,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followGaeApplication': followGaeApplication,
      'kind': kind,
      'secondaryZone': secondaryZone,
      'zone': zone,
    };
  }

  factory LocationPreferenceResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return LocationPreferenceResponseSqladminV1beta4(
      followGaeApplication: pulumi.Input.fromValue(map['followGaeApplication'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      secondaryZone: pulumi.Input.fromValue(map['secondaryZone'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}


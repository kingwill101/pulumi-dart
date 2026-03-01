// ignore_for_file: unused_element, unnecessary_cast


/// Preferred location. This specifies where a Cloud SQL instance is located. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified.
class LocationPreference {
  /// The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
  final String? followGaeApplication;
  /// This is always `sql#locationPreference`.
  final String? kind;
  /// The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.). To disable this field, set it to 'no_secondary_zone'.
  final String? secondaryZone;
  /// The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
  final String? zone;

  /// Creates a new [LocationPreference].
  /// [followGaeApplication] The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.
  /// [kind] This is always `sql#locationPreference`.
  /// [secondaryZone] The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.). To disable this field, set it to 'no_secondary_zone'.
  /// [zone] The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.
  LocationPreference({
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

  factory LocationPreference.fromMap(Map<String, dynamic> map) {
    return LocationPreference(
      followGaeApplication: map['followGaeApplication'] == null ? null : map['followGaeApplication'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      secondaryZone: map['secondaryZone'] == null ? null : map['secondaryZone'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}


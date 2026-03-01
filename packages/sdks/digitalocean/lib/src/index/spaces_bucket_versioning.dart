// ignore_for_file: unused_element, unnecessary_cast


class SpacesBucketVersioning {
  /// Enable versioning. Once you version-enable a bucket, it can never return to an unversioned
  /// state. You can, however, suspend versioning on that bucket.
  final bool? enabled;

  /// Creates a new [SpacesBucketVersioning].
  /// [enabled] Enable versioning. Once you version-enable a bucket, it can never return to an unversioned
  SpacesBucketVersioning({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory SpacesBucketVersioning.fromMap(Map<String, dynamic> map) {
    return SpacesBucketVersioning(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}


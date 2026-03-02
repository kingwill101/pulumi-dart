// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's versioning configuration.
class BucketVersioning {
  /// While set to true, versioning is fully enabled for this bucket.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BucketVersioning].
  /// [enabled] While set to true, versioning is fully enabled for this bucket.
  BucketVersioning({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory BucketVersioning.fromMap(Map<String, dynamic> map) {
    return BucketVersioning(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}


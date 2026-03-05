// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketVersioning {
  /// While set to `true`, versioning is fully enabled for this bucket.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BucketVersioning].
  /// [enabled] While set to `true`, versioning is fully enabled for this bucket.
  BucketVersioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BucketVersioning.fromMap(Map<String, dynamic> map) {
    return BucketVersioning(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}


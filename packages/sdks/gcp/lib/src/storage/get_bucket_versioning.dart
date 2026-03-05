// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketVersioning {
  /// While set to true, versioning is fully enabled for this bucket.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetBucketVersioning].
  /// [enabled] While set to true, versioning is fully enabled for this bucket.
  GetBucketVersioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetBucketVersioning.fromMap(Map<String, dynamic> map) {
    return GetBucketVersioning(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}


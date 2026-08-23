// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketAutoclass {
  /// While set to `true`, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object's access pattern.
  final pulumi.Input<bool> enabled;
  /// The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: `NEARLINE`, `ARCHIVE`.
  final pulumi.Input<String>? terminalStorageClass;

  /// Creates a new [BucketAutoclass].
  /// [enabled] While set to `true`, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object's access pattern.
  /// [terminalStorageClass] The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: `NEARLINE`, `ARCHIVE`.
  const BucketAutoclass({
    required this.enabled,
    this.terminalStorageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'terminalStorageClass': ?terminalStorageClass,
    };
  }

  factory BucketAutoclass.fromMap(Map<String, dynamic> map) {
    return BucketAutoclass(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      terminalStorageClass: (() { final guardedValue = map['terminalStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

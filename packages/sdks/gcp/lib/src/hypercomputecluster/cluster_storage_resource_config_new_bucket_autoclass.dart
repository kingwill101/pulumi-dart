// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceConfigNewBucketAutoclass {
  /// Enables Auto-class feature.
  final pulumi.Input<bool> enabled;
  /// Terminal storage class of the autoclass bucket
  /// Possible values:
  /// NEARLINE
  /// ARCHIVE
  final pulumi.Input<String?>? terminalStorageClass;

  /// Creates a new [ClusterStorageResourceConfigNewBucketAutoclass].
  /// [enabled] Enables Auto-class feature.
  /// [terminalStorageClass] Terminal storage class of the autoclass bucket
  const ClusterStorageResourceConfigNewBucketAutoclass({
    required this.enabled,
    this.terminalStorageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'terminalStorageClass': ?terminalStorageClass,
    };
  }

  factory ClusterStorageResourceConfigNewBucketAutoclass.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigNewBucketAutoclass(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      terminalStorageClass: (() { final guardedValue = map['terminalStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

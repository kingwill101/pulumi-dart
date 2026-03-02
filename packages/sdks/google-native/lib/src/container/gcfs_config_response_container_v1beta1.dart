// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GcfsConfig contains configurations of Google Container File System.
class GcfsConfigResponseContainerV1beta1 {
  /// Whether to use GCFS.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GcfsConfigResponseContainerV1beta1].
  /// [enabled] Whether to use GCFS.
  GcfsConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GcfsConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GcfsConfigResponseContainerV1beta1(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}


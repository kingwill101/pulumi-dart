// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GcfsConfig contains configurations of Google Container File System (image streaming).
class GcfsConfig {
  /// Whether to use GCFS.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [GcfsConfig].
  /// [enabled] Whether to use GCFS.
  GcfsConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory GcfsConfig.fromMap(Map<String, dynamic> map) {
    return GcfsConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

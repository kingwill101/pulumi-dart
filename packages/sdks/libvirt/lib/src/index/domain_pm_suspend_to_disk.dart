// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainPmSuspendToDisk {
  /// Specifies if the suspend to disk feature is enabled.
  final pulumi.Input<String> enabled;

  /// Creates a new [DomainPmSuspendToDisk].
  /// [enabled] Specifies if the suspend to disk feature is enabled.
  DomainPmSuspendToDisk({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory DomainPmSuspendToDisk.fromMap(Map<String, dynamic> map) {
    return DomainPmSuspendToDisk(
      enabled: pulumi.Input.fromValue(map['enabled'] as String),
    );
  }
}


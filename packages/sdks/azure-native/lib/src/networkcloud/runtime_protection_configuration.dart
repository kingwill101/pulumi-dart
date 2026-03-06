// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeProtectionConfiguration {
  /// The mode of operation for runtime protection.
  final pulumi.Input<String>? enforcementLevel;

  /// Creates a new [RuntimeProtectionConfiguration].
  /// [enforcementLevel] The mode of operation for runtime protection.
  const RuntimeProtectionConfiguration({
    this.enforcementLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementLevel': ?enforcementLevel,
    };
  }

  factory RuntimeProtectionConfiguration.fromMap(Map<String, dynamic> map) {
    return RuntimeProtectionConfiguration(
      enforcementLevel: (() { final guardedValue = map['enforcementLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


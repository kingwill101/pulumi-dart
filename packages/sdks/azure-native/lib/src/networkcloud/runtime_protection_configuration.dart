// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeProtectionConfiguration {
  /// The mode of operation for runtime protection.
  final pulumi.Input<String>? enforcementLevel;

  /// Creates a new [RuntimeProtectionConfiguration].
  /// [enforcementLevel] The mode of operation for runtime protection.
  RuntimeProtectionConfiguration({
    this.enforcementLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementLevel': ?enforcementLevel,
    };
  }

  factory RuntimeProtectionConfiguration.fromMap(Map<String, dynamic> map) {
    return RuntimeProtectionConfiguration(
      enforcementLevel: map['enforcementLevel'] == null ? null : (map['enforcementLevel'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeProtectionConfigurationResponse {
  /// The mode of operation for runtime protection.
  final pulumi.Input<String>? enforcementLevel;

  /// Creates a new [RuntimeProtectionConfigurationResponse].
  /// [enforcementLevel] The mode of operation for runtime protection.
  const RuntimeProtectionConfigurationResponse({
    this.enforcementLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementLevel': ?enforcementLevel,
    };
  }

  factory RuntimeProtectionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeProtectionConfigurationResponse(
      enforcementLevel: (() { final guardedValue = map['enforcementLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

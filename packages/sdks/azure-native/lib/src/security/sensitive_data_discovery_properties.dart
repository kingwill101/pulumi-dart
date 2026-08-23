// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Sensitive Data Discovery.
class SensitiveDataDiscoveryProperties {
  /// Indicates whether Sensitive Data Discovery should be enabled.
  final pulumi.Input<bool>? isEnabled;

  /// Creates a new [SensitiveDataDiscoveryProperties].
  /// [isEnabled] Indicates whether Sensitive Data Discovery should be enabled.
  const SensitiveDataDiscoveryProperties({
    this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
    };
  }

  factory SensitiveDataDiscoveryProperties.fromMap(Map<String, dynamic> map) {
    return SensitiveDataDiscoveryProperties(
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

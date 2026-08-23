// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the SR-IOV networking operator config.
class BareMetalSrIovConfig {
  /// Whether to install the SR-IOV operator.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [BareMetalSrIovConfig].
  /// [enabled] Whether to install the SR-IOV operator.
  const BareMetalSrIovConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory BareMetalSrIovConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalSrIovConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

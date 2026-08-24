// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsSandbox {
  /// Specify whether to enable the sandbox.
  final pulumi.Input<bool?>? enabled;
  /// Specify the action to take when the system cannot scan the file.
  /// Available values: "allow", "block".
  final pulumi.Input<String?>? fallbackAction;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsSandbox].
  /// [enabled] Specify whether to enable the sandbox.
  /// [fallbackAction] Specify the action to take when the system cannot scan the file.
  const ZeroTrustGatewaySettingsSettingsSandbox({
    this.enabled,
    this.fallbackAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'fallbackAction': ?fallbackAction,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsSandbox.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsSandbox(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fallbackAction: (() { final guardedValue = map['fallbackAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsSandbox {
  /// Specify whether to enable the sandbox.
  final pulumi.Input<bool> enabled;
  /// Specify the action to take when the system cannot scan the file.
  /// Available values: "allow", "block".
  final pulumi.Input<String> fallbackAction;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsSandbox].
  /// [enabled] Specify whether to enable the sandbox.
  /// [fallbackAction] Specify the action to take when the system cannot scan the file.
  const GetZeroTrustGatewaySettingsSettingsSandbox({
    required this.enabled,
    required this.fallbackAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'fallbackAction': fallbackAction,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsSandbox.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsSandbox(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      fallbackAction: pulumi.Input.fromValue(map['fallbackAction'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsActivityLog {
  /// Specify whether to log activity.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsActivityLog].
  /// [enabled] Specify whether to log activity.
  const ZeroTrustGatewaySettingsSettingsActivityLog({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsActivityLog.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsActivityLog(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

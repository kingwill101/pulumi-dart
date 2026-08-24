// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsHostSelector {
  /// Specify whether to enable filtering via hosts for egress policies.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsHostSelector].
  /// [enabled] Specify whether to enable filtering via hosts for egress policies.
  const ZeroTrustGatewaySettingsSettingsHostSelector({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsHostSelector.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsHostSelector(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

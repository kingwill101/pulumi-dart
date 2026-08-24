// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsHostSelector {
  /// Specify whether to enable filtering via hosts for egress policies.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsHostSelector].
  /// [enabled] Specify whether to enable filtering via hosts for egress policies.
  const GetZeroTrustGatewaySettingsSettingsHostSelector({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsHostSelector.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsHostSelector(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

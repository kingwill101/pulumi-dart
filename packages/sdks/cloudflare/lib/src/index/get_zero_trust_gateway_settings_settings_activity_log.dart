// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsActivityLog {
  /// Specify whether to log activity.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsActivityLog].
  /// [enabled] Specify whether to log activity.
  const GetZeroTrustGatewaySettingsSettingsActivityLog({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsActivityLog.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsActivityLog(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings {
  /// Specify whether to enable notifications.
  final pulumi.Input<bool> enabled;
  /// Specify whether to include context information as query parameters.
  final pulumi.Input<bool> includeContext;
  /// Specify the message to show in the notification.
  final pulumi.Input<String> msg;
  /// Specify a URL that directs users to more information. If unset, the notification opens a block page.
  final pulumi.Input<String> supportUrl;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings].
  /// [enabled] Specify whether to enable notifications.
  /// [includeContext] Specify whether to include context information as query parameters.
  /// [msg] Specify the message to show in the notification.
  /// [supportUrl] Specify a URL that directs users to more information. If unset, the notification opens a block page.
  const GetZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings({
    required this.enabled,
    required this.includeContext,
    required this.msg,
    required this.supportUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'includeContext': includeContext,
      'msg': msg,
      'supportUrl': supportUrl,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      includeContext: pulumi.Input.fromValue(map['includeContext'] as bool),
      msg: pulumi.Input.fromValue(map['msg'] as String),
      supportUrl: pulumi.Input.fromValue(map['supportUrl'] as String),
    );
  }
}

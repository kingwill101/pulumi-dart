// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings {
  /// Specify whether to enable notifications.
  final pulumi.Input<bool?>? enabled;
  /// Specify whether to include context information as query parameters.
  final pulumi.Input<bool?>? includeContext;
  /// Specify the message to show in the notification.
  final pulumi.Input<String?>? msg;
  /// Specify a URL that directs users to more information. If unset, the notification opens a block page.
  final pulumi.Input<String?>? supportUrl;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings].
  /// [enabled] Specify whether to enable notifications.
  /// [includeContext] Specify whether to include context information as query parameters.
  /// [msg] Specify the message to show in the notification.
  /// [supportUrl] Specify a URL that directs users to more information. If unset, the notification opens a block page.
  const ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings({
    this.enabled,
    this.includeContext,
    this.msg,
    this.supportUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'includeContext': ?includeContext,
      'msg': ?msg,
      'supportUrl': ?supportUrl,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeContext: (() { final guardedValue = map['includeContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      msg: (() { final guardedValue = map['msg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsNotificationSettings {
  /// Enable notification.
  final pulumi.Input<bool?>? enabled;
  /// Indicates whether to pass the context information as query parameters.
  final pulumi.Input<bool?>? includeContext;
  /// Customize the message shown in the notification.
  final pulumi.Input<String?>? msg;
  /// Defines an optional URL to direct users to additional information. If unset, the notification opens a block page.
  final pulumi.Input<String?>? supportUrl;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsNotificationSettings].
  /// [enabled] Enable notification.
  /// [includeContext] Indicates whether to pass the context information as query parameters.
  /// [msg] Customize the message shown in the notification.
  /// [supportUrl] Defines an optional URL to direct users to additional information. If unset, the notification opens a block page.
  const ZeroTrustGatewayPolicyRuleSettingsNotificationSettings({
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

  factory ZeroTrustGatewayPolicyRuleSettingsNotificationSettings.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsNotificationSettings(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeContext: (() { final guardedValue = map['includeContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      msg: (() { final guardedValue = map['msg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

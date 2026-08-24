// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsNotificationSettings {
  /// Enable notification.
  final pulumi.Input<bool> enabled;
  /// Indicates whether to pass the context information as query parameters.
  final pulumi.Input<bool> includeContext;
  /// Customize the message shown in the notification.
  final pulumi.Input<String> msg;
  /// Defines an optional URL to direct users to additional information. If unset, the notification opens a block page.
  final pulumi.Input<String> supportUrl;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsNotificationSettings].
  /// [enabled] Enable notification.
  /// [includeContext] Indicates whether to pass the context information as query parameters.
  /// [msg] Customize the message shown in the notification.
  /// [supportUrl] Defines an optional URL to direct users to additional information. If unset, the notification opens a block page.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsNotificationSettings({
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

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsNotificationSettings.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsNotificationSettings(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      includeContext: pulumi.Input.fromValue(map['includeContext'] as bool),
      msg: pulumi.Input.fromValue(map['msg'] as String),
      supportUrl: pulumi.Input.fromValue(map['supportUrl'] as String),
    );
  }
}

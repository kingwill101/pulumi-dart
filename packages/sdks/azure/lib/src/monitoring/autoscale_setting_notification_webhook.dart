// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettingNotificationWebhook {
  /// A map of settings.
  final pulumi.Input<Map<String, String>>? properties;
  /// The HTTPS URI which should receive scale notifications.
  final pulumi.Input<String> serviceUri;

  /// Creates a new [AutoscaleSettingNotificationWebhook].
  /// [properties] A map of settings.
  /// [serviceUri] The HTTPS URI which should receive scale notifications.
  const AutoscaleSettingNotificationWebhook({
    this.properties,
    required this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'serviceUri': serviceUri,
    };
  }

  factory AutoscaleSettingNotificationWebhook.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingNotificationWebhook(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serviceUri: pulumi.Input.fromValue(map['serviceUri'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_setting_response.dart';

/// Notification settings.
class ResourceProviderManifestPropertiesNotificationSettingsResponse {
  final pulumi.Input<List<SubscriberSettingResponse>>? subscriberSettings;

  /// Creates a new [ResourceProviderManifestPropertiesNotificationSettingsResponse].
  /// [subscriberSettings] Optional.
  const ResourceProviderManifestPropertiesNotificationSettingsResponse({
    this.subscriberSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriberSettings': ?pulumi.Input.mapOptionalInputValue<List<SubscriberSettingResponse>, List<Map<String, dynamic>>>(subscriberSettings, (value) => pulumi.Input.encodeList<SubscriberSettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceProviderManifestPropertiesNotificationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesNotificationSettingsResponse(
      subscriberSettings: (() { final guardedValue = map['subscriberSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriberSettingResponse>(guardedValue, (value) => SubscriberSettingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


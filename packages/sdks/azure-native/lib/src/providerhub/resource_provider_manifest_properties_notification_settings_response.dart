// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_setting_response.dart';

/// Notification settings.
class ResourceProviderManifestPropertiesNotificationSettingsResponse {
  final pulumi.Input<List<SubscriberSettingResponse>>? subscriberSettings;

  /// Creates a new [ResourceProviderManifestPropertiesNotificationSettingsResponse].
  /// [subscriberSettings] Optional.
  ResourceProviderManifestPropertiesNotificationSettingsResponse({
    this.subscriberSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriberSettings': ?pulumi.Input.mapOptionalInputValue<List<SubscriberSettingResponse>, List<Map<String, dynamic>>>(subscriberSettings, (value) => pulumi.Input.encodeList<SubscriberSettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceProviderManifestPropertiesNotificationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesNotificationSettingsResponse(
      subscriberSettings: map['subscriberSettings'] == null ? null : (pulumi.Input.decodeList<SubscriberSettingResponse>(map['subscriberSettings'], (value) => SubscriberSettingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


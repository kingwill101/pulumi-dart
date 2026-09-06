// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_setting.dart';

/// Notification settings.
class ResourceProviderManifestPropertiesNotificationSettings {
  final pulumi.Input<List<SubscriberSetting>?>? subscriberSettings;

  /// Creates a new [ResourceProviderManifestPropertiesNotificationSettings].
  /// [subscriberSettings] Optional.
  const ResourceProviderManifestPropertiesNotificationSettings({
    this.subscriberSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriberSettings': ?pulumi.Input.mapOptionalInputValue<List<SubscriberSetting>, List<Map<String, dynamic>>>(subscriberSettings, (value) => pulumi.Input.encodeList<SubscriberSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceProviderManifestPropertiesNotificationSettings.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesNotificationSettings(
      subscriberSettings: (() { final guardedValue = map['subscriberSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriberSetting>(guardedValue, (value) => SubscriberSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

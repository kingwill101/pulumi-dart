// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_storage_defender_storage_defender_args_doc}
/// The set of arguments for StorageDefender.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_storage_defender_storage_defender_args_doc}
class StorageDefenderArgs {
  /// The max GB to be scanned per Month. Must be `-1` or above `0`. Omit this property or set to `-1` if no capping is needed. Defaults to `-1`.
  final pulumi.Input<int>? malwareScanningOnUploadCapGbPerMonth;

  /// Whether On Upload malware scanning should be enabled. Defaults to `false`.
  final pulumi.Input<bool>? malwareScanningOnUploadEnabled;

  /// Whether the settings defined for this storage account should override the settings defined for the subscription. Defaults to `false`.
  final pulumi.Input<bool>? overrideSubscriptionSettingsEnabled;

  /// The Event Grid Topic where every scan result will be sent to. When you set an Event Grid custom topic, you must set `override_subscription_settings_enabled` to `true` to override the subscription-level settings.
  final pulumi.Input<String>? scanResultsEventGridTopicId;

  /// Whether Sensitive Data Discovery should be enabled. Defaults to `false`.
  final pulumi.Input<bool>? sensitiveDataDiscoveryEnabled;

  /// The ID of the storage account the defender applied to. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [StorageDefenderArgs].
  /// [malwareScanningOnUploadCapGbPerMonth] The max GB to be scanned per Month. Must be `-1` or above `0`. Omit this property or set to `-1` if no capping is needed. Defaults to `-1`.
  /// [malwareScanningOnUploadEnabled] Whether On Upload malware scanning should be enabled. Defaults to `false`.
  /// [overrideSubscriptionSettingsEnabled] Whether the settings defined for this storage account should override the settings defined for the subscription. Defaults to `false`.
  /// [scanResultsEventGridTopicId] The Event Grid Topic where every scan result will be sent to. When you set an Event Grid custom topic, you must set `override_subscription_settings_enabled` to `true` to override the subscription-level settings.
  /// [sensitiveDataDiscoveryEnabled] Whether Sensitive Data Discovery should be enabled. Defaults to `false`.
  /// [storageAccountId] The ID of the storage account the defender applied to. Changing this forces a new resource to be created.
  StorageDefenderArgs({
    this.malwareScanningOnUploadCapGbPerMonth,
    this.malwareScanningOnUploadEnabled,
    this.overrideSubscriptionSettingsEnabled,
    this.scanResultsEventGridTopicId,
    this.sensitiveDataDiscoveryEnabled,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malwareScanningOnUploadCapGbPerMonth':
          ?malwareScanningOnUploadCapGbPerMonth,
      'malwareScanningOnUploadEnabled': ?malwareScanningOnUploadEnabled,
      'overrideSubscriptionSettingsEnabled':
          ?overrideSubscriptionSettingsEnabled,
      'scanResultsEventGridTopicId': ?scanResultsEventGridTopicId,
      'sensitiveDataDiscoveryEnabled': ?sensitiveDataDiscoveryEnabled,
      'storageAccountId': storageAccountId,
    };
  }

  factory StorageDefenderArgs.fromMap(Map<String, dynamic> map) {
    return StorageDefenderArgs(
      malwareScanningOnUploadCapGbPerMonth: (() {
        final guardedValue = map['malwareScanningOnUploadCapGbPerMonth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      malwareScanningOnUploadEnabled: (() {
        final guardedValue = map['malwareScanningOnUploadEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      overrideSubscriptionSettingsEnabled: (() {
        final guardedValue = map['overrideSubscriptionSettingsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      scanResultsEventGridTopicId: (() {
        final guardedValue = map['scanResultsEventGridTopicId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sensitiveDataDiscoveryEnabled: (() {
        final guardedValue = map['sensitiveDataDiscoveryEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      storageAccountId: pulumi.Input.fromValue(
        map['storageAccountId'] as String,
      ),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StorageDefender resources.
class StorageDefenderState {
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
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [StorageDefenderState].
  /// [malwareScanningOnUploadCapGbPerMonth] The max GB to be scanned per Month. Must be `-1` or above `0`. Omit this property or set to `-1` if no capping is needed. Defaults to `-1`.
  /// [malwareScanningOnUploadEnabled] Whether On Upload malware scanning should be enabled. Defaults to `false`.
  /// [overrideSubscriptionSettingsEnabled] Whether the settings defined for this storage account should override the settings defined for the subscription. Defaults to `false`.
  /// [scanResultsEventGridTopicId] The Event Grid Topic where every scan result will be sent to. When you set an Event Grid custom topic, you must set `override_subscription_settings_enabled` to `true` to override the subscription-level settings.
  /// [sensitiveDataDiscoveryEnabled] Whether Sensitive Data Discovery should be enabled. Defaults to `false`.
  /// [storageAccountId] The ID of the storage account the defender applied to. Changing this forces a new resource to be created.
  StorageDefenderState({
    pulumi.Output<int>? malwareScanningOnUploadCapGbPerMonth,
    pulumi.Output<bool>? malwareScanningOnUploadEnabled,
    pulumi.Output<bool>? overrideSubscriptionSettingsEnabled,
    pulumi.Output<String>? scanResultsEventGridTopicId,
    pulumi.Output<bool>? sensitiveDataDiscoveryEnabled,
    pulumi.Output<String>? storageAccountId,
  }) :
      malwareScanningOnUploadCapGbPerMonth = pulumi.Input.asOptionalInput<int>(malwareScanningOnUploadCapGbPerMonth),
      malwareScanningOnUploadEnabled = pulumi.Input.asOptionalInput<bool>(malwareScanningOnUploadEnabled),
      overrideSubscriptionSettingsEnabled = pulumi.Input.asOptionalInput<bool>(overrideSubscriptionSettingsEnabled),
      scanResultsEventGridTopicId = pulumi.Input.asOptionalInput<String>(scanResultsEventGridTopicId),
      sensitiveDataDiscoveryEnabled = pulumi.Input.asOptionalInput<bool>(sensitiveDataDiscoveryEnabled),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malwareScanningOnUploadCapGbPerMonth': ?malwareScanningOnUploadCapGbPerMonth,
      'malwareScanningOnUploadEnabled': ?malwareScanningOnUploadEnabled,
      'overrideSubscriptionSettingsEnabled': ?overrideSubscriptionSettingsEnabled,
      'scanResultsEventGridTopicId': ?scanResultsEventGridTopicId,
      'sensitiveDataDiscoveryEnabled': ?sensitiveDataDiscoveryEnabled,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory StorageDefenderState.fromMap(Map<String, dynamic> map) {
    return StorageDefenderState(
      malwareScanningOnUploadCapGbPerMonth: map['malwareScanningOnUploadCapGbPerMonth'] == null ? null : pulumi.Output.create<int>(map['malwareScanningOnUploadCapGbPerMonth'] as int),
      malwareScanningOnUploadEnabled: map['malwareScanningOnUploadEnabled'] == null ? null : pulumi.Output.create<bool>(map['malwareScanningOnUploadEnabled'] as bool),
      overrideSubscriptionSettingsEnabled: map['overrideSubscriptionSettingsEnabled'] == null ? null : pulumi.Output.create<bool>(map['overrideSubscriptionSettingsEnabled'] as bool),
      scanResultsEventGridTopicId: map['scanResultsEventGridTopicId'] == null ? null : pulumi.Output.create<String>(map['scanResultsEventGridTopicId'] as String),
      sensitiveDataDiscoveryEnabled: map['sensitiveDataDiscoveryEnabled'] == null ? null : pulumi.Output.create<bool>(map['sensitiveDataDiscoveryEnabled'] as bool),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}


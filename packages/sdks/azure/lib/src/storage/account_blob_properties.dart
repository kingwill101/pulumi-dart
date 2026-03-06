// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_blob_properties_container_delete_retention_policy.dart';
import 'account_blob_properties_cors_rule.dart';
import 'account_blob_properties_delete_retention_policy.dart';
import 'account_blob_properties_restore_policy.dart';

class AccountBlobProperties {
  /// Is the blob service properties for change feed events enabled? Default to `false`.
  ///
  /// &gt; **Note:** This field cannot be configured when `kind` is set to `Storage` (V1).
  final pulumi.Input<bool>? changeFeedEnabled;
  /// The duration of change feed events retention in days. The possible values are between 1 and 146000 days (400 years). Setting this to null (or omit this in the configuration file) indicates an infinite retention of the change feed.
  ///
  /// &gt; **Note:** This field cannot be configured when `kind` is set to `Storage` (V1).
  final pulumi.Input<int>? changeFeedRetentionInDays;
  /// A `container_delete_retention_policy` block as defined below.
  final pulumi.Input<AccountBlobPropertiesContainerDeleteRetentionPolicy>? containerDeleteRetentionPolicy;
  /// A `cors_rule` block as defined below.
  final pulumi.Input<List<AccountBlobPropertiesCorsRule>>? corsRules;
  /// The API Version which should be used by default for requests to the Data Plane API if an incoming request doesn't specify an API Version.
  final pulumi.Input<String>? defaultServiceVersion;
  /// A `delete_retention_policy` block as defined below.
  final pulumi.Input<AccountBlobPropertiesDeleteRetentionPolicy>? deleteRetentionPolicy;
  /// Is the last access time based tracking enabled? Default to `false`.
  ///
  /// &gt; **Note:** This field cannot be configured when `kind` is set to `Storage` (V1).
  final pulumi.Input<bool>? lastAccessTimeEnabled;
  /// A `restore_policy` block as defined below. This must be used together with `delete_retention_policy` set, `versioning_enabled` and `change_feed_enabled` set to `true`.
  ///
  /// &gt; **Note:** This field cannot be configured when `kind` is set to `Storage` (V1).
  ///
  /// &gt; **Note:** `restore_policy` can not be configured when `dns_endpoint_type` is `AzureDnsZone`.
  final pulumi.Input<AccountBlobPropertiesRestorePolicy>? restorePolicy;
  /// Is versioning enabled? Default to `false`.
  ///
  /// &gt; **Note:** This field cannot be configured when `kind` is set to `Storage` (V1).
  final pulumi.Input<bool>? versioningEnabled;

  /// Creates a new [AccountBlobProperties].
  /// [changeFeedEnabled] Is the blob service properties for change feed events enabled? Default to `false`.
  /// [changeFeedRetentionInDays] The duration of change feed events retention in days. The possible values are between 1 and 146000 days (400 years). Setting this to null (or omit this in the configuration file) indicates an infinite retention of the change feed.
  /// [containerDeleteRetentionPolicy] A `container_delete_retention_policy` block as defined below.
  /// [corsRules] A `cors_rule` block as defined below.
  /// [defaultServiceVersion] The API Version which should be used by default for requests to the Data Plane API if an incoming request doesn't specify an API Version.
  /// [deleteRetentionPolicy] A `delete_retention_policy` block as defined below.
  /// [lastAccessTimeEnabled] Is the last access time based tracking enabled? Default to `false`.
  /// [restorePolicy] A `restore_policy` block as defined below. This must be used together with `delete_retention_policy` set, `versioning_enabled` and `change_feed_enabled` set to `true`.
  /// [versioningEnabled] Is versioning enabled? Default to `false`.
  const AccountBlobProperties({
    this.changeFeedEnabled,
    this.changeFeedRetentionInDays,
    this.containerDeleteRetentionPolicy,
    this.corsRules,
    this.defaultServiceVersion,
    this.deleteRetentionPolicy,
    this.lastAccessTimeEnabled,
    this.restorePolicy,
    this.versioningEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeFeedEnabled': ?changeFeedEnabled,
      'changeFeedRetentionInDays': ?changeFeedRetentionInDays,
      'containerDeleteRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<AccountBlobPropertiesContainerDeleteRetentionPolicy, Map<String, dynamic>>(containerDeleteRetentionPolicy, (value) => value.toMap()),
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<AccountBlobPropertiesCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<AccountBlobPropertiesCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultServiceVersion': ?defaultServiceVersion,
      'deleteRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<AccountBlobPropertiesDeleteRetentionPolicy, Map<String, dynamic>>(deleteRetentionPolicy, (value) => value.toMap()),
      'lastAccessTimeEnabled': ?lastAccessTimeEnabled,
      'restorePolicy': ?pulumi.Input.mapOptionalInputValue<AccountBlobPropertiesRestorePolicy, Map<String, dynamic>>(restorePolicy, (value) => value.toMap()),
      'versioningEnabled': ?versioningEnabled,
    };
  }

  factory AccountBlobProperties.fromMap(Map<String, dynamic> map) {
    return AccountBlobProperties(
      changeFeedEnabled: (() { final guardedValue = map['changeFeedEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      changeFeedRetentionInDays: (() { final guardedValue = map['changeFeedRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      containerDeleteRetentionPolicy: (() { final guardedValue = map['containerDeleteRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountBlobPropertiesContainerDeleteRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountBlobPropertiesCorsRule>(guardedValue, (value) => AccountBlobPropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultServiceVersion: (() { final guardedValue = map['defaultServiceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteRetentionPolicy: (() { final guardedValue = map['deleteRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountBlobPropertiesDeleteRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastAccessTimeEnabled: (() { final guardedValue = map['lastAccessTimeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restorePolicy: (() { final guardedValue = map['restorePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountBlobPropertiesRestorePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versioningEnabled: (() { final guardedValue = map['versioningEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


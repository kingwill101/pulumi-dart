// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_feed.dart';
import 'cors_rules.dart';
import 'delete_retention_policy.dart';
import 'last_access_time_tracking_policy.dart';
import 'restore_policy_properties.dart';

/// {@template pulumi_storage_blob_service_properties_args_doc}
/// The set of arguments for BlobServiceProperties.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_service_properties_args_doc}
class BlobServicePropertiesArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;

  /// Deprecated in favor of isVersioningEnabled property.
  final pulumi.Input<bool>? automaticSnapshotPolicyEnabled;

  /// The name of the blob Service within the specified storage account. Blob Service Name must be 'default'
  final pulumi.Input<String>? blobServicesName;

  /// The blob service properties for change feed events.
  final pulumi.Input<ChangeFeed>? changeFeed;

  /// The blob service properties for container soft delete.
  final pulumi.Input<DeleteRetentionPolicy>? containerDeleteRetentionPolicy;

  /// Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  final pulumi.Input<CorsRules>? cors;

  /// DefaultServiceVersion indicates the default version to use for requests to the Blob service if an incoming request’s version is not specified. Possible values include version 2008-10-27 and all more recent versions.
  final pulumi.Input<String>? defaultServiceVersion;

  /// The blob service properties for blob soft delete.
  final pulumi.Input<DeleteRetentionPolicy>? deleteRetentionPolicy;

  /// Versioning is enabled if set to true.
  final pulumi.Input<bool>? isVersioningEnabled;

  /// The blob service property to configure last access time based tracking policy.
  final pulumi.Input<LastAccessTimeTrackingPolicy>?
  lastAccessTimeTrackingPolicy;

  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The blob service properties for blob restore policy.
  final pulumi.Input<RestorePolicyProperties>? restorePolicy;

  /// Creates a new [BlobServicePropertiesArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [automaticSnapshotPolicyEnabled] Deprecated in favor of isVersioningEnabled property.
  /// [blobServicesName] The name of the blob Service within the specified storage account. Blob Service Name must be 'default'
  /// [changeFeed] The blob service properties for change feed events.
  /// [containerDeleteRetentionPolicy] The blob service properties for container soft delete.
  /// [cors] Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  /// [defaultServiceVersion] DefaultServiceVersion indicates the default version to use for requests to the Blob service if an incoming request’s version is not specified. Possible values include version 2008-10-27 and all more recent versions.
  /// [deleteRetentionPolicy] The blob service properties for blob soft delete.
  /// [isVersioningEnabled] Versioning is enabled if set to true.
  /// [lastAccessTimeTrackingPolicy] The blob service property to configure last access time based tracking policy.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [restorePolicy] The blob service properties for blob restore policy.
  BlobServicePropertiesArgs({
    required this.accountName,
    this.automaticSnapshotPolicyEnabled,
    this.blobServicesName,
    this.changeFeed,
    this.containerDeleteRetentionPolicy,
    this.cors,
    this.defaultServiceVersion,
    this.deleteRetentionPolicy,
    this.isVersioningEnabled,
    this.lastAccessTimeTrackingPolicy,
    required this.resourceGroupName,
    this.restorePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'automaticSnapshotPolicyEnabled': ?automaticSnapshotPolicyEnabled,
      'blobServicesName': ?blobServicesName,
      'changeFeed':
          ?pulumi.Input.mapOptionalInputValue<ChangeFeed, Map<String, dynamic>>(
            changeFeed,
            (value) => value.toMap(),
          ),
      'containerDeleteRetentionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DeleteRetentionPolicy,
            Map<String, dynamic>
          >(containerDeleteRetentionPolicy, (value) => value.toMap()),
      'cors':
          ?pulumi.Input.mapOptionalInputValue<CorsRules, Map<String, dynamic>>(
            cors,
            (value) => value.toMap(),
          ),
      'defaultServiceVersion': ?defaultServiceVersion,
      'deleteRetentionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DeleteRetentionPolicy,
            Map<String, dynamic>
          >(deleteRetentionPolicy, (value) => value.toMap()),
      'isVersioningEnabled': ?isVersioningEnabled,
      'lastAccessTimeTrackingPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            LastAccessTimeTrackingPolicy,
            Map<String, dynamic>
          >(lastAccessTimeTrackingPolicy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'restorePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RestorePolicyProperties,
            Map<String, dynamic>
          >(restorePolicy, (value) => value.toMap()),
    };
  }

  factory BlobServicePropertiesArgs.fromMap(Map<String, dynamic> map) {
    return BlobServicePropertiesArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      automaticSnapshotPolicyEnabled: (() {
        final guardedValue = map['automaticSnapshotPolicyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      blobServicesName: (() {
        final guardedValue = map['blobServicesName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      changeFeed: (() {
        final guardedValue = map['changeFeed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChangeFeed.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      containerDeleteRetentionPolicy: (() {
        final guardedValue = map['containerDeleteRetentionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeleteRetentionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cors: (() {
        final guardedValue = map['cors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CorsRules.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      defaultServiceVersion: (() {
        final guardedValue = map['defaultServiceVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteRetentionPolicy: (() {
        final guardedValue = map['deleteRetentionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeleteRetentionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isVersioningEnabled: (() {
        final guardedValue = map['isVersioningEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lastAccessTimeTrackingPolicy: (() {
        final guardedValue = map['lastAccessTimeTrackingPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LastAccessTimeTrackingPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      restorePolicy: (() {
        final guardedValue = map['restorePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestorePolicyProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

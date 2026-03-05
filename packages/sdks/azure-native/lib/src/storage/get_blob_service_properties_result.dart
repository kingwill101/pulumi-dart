// ignore_for_file: unused_element, unnecessary_cast

import 'change_feed_response.dart';
import 'cors_rules_response.dart';
import 'delete_retention_policy_response.dart';
import 'last_access_time_tracking_policy_response.dart';
import 'restore_policy_properties_response.dart';
import 'sku_response.dart';

/// Result data returned by getBlobServiceProperties.
class GetBlobServicePropertiesResult {
  /// Deprecated in favor of isVersioningEnabled property.
  final bool? automaticSnapshotPolicyEnabled;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The blob service properties for change feed events.
  final ChangeFeedResponse? changeFeed;
  /// The blob service properties for container soft delete.
  final DeleteRetentionPolicyResponse? containerDeleteRetentionPolicy;
  /// Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  final CorsRulesResponse? cors;
  /// DefaultServiceVersion indicates the default version to use for requests to the Blob service if an incoming request’s version is not specified. Possible values include version 2008-10-27 and all more recent versions.
  final String? defaultServiceVersion;
  /// The blob service properties for blob soft delete.
  final DeleteRetentionPolicyResponse? deleteRetentionPolicy;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Versioning is enabled if set to true.
  final bool? isVersioningEnabled;
  /// The blob service property to configure last access time based tracking policy.
  final LastAccessTimeTrackingPolicyResponse? lastAccessTimeTrackingPolicy;
  /// The name of the resource
  final String name;
  /// The blob service properties for blob restore policy.
  final RestorePolicyPropertiesResponse? restorePolicy;
  /// Sku name and tier.
  final SkuResponse sku;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBlobServicePropertiesResult].
  /// [automaticSnapshotPolicyEnabled] Deprecated in favor of isVersioningEnabled property.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changeFeed] The blob service properties for change feed events.
  /// [containerDeleteRetentionPolicy] The blob service properties for container soft delete.
  /// [cors] Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  /// [defaultServiceVersion] DefaultServiceVersion indicates the default version to use for requests to the Blob service if an incoming request’s version is not specified. Possible values include version 2008-10-27 and all more recent versions.
  /// [deleteRetentionPolicy] The blob service properties for blob soft delete.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isVersioningEnabled] Versioning is enabled if set to true.
  /// [lastAccessTimeTrackingPolicy] The blob service property to configure last access time based tracking policy.
  /// [name] The name of the resource
  /// [restorePolicy] The blob service properties for blob restore policy.
  /// [sku] Sku name and tier.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBlobServicePropertiesResult({
    this.automaticSnapshotPolicyEnabled,
    required this.azureApiVersion,
    this.changeFeed,
    this.containerDeleteRetentionPolicy,
    this.cors,
    this.defaultServiceVersion,
    this.deleteRetentionPolicy,
    required this.id,
    this.isVersioningEnabled,
    this.lastAccessTimeTrackingPolicy,
    required this.name,
    this.restorePolicy,
    required this.sku,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticSnapshotPolicyEnabled': ?automaticSnapshotPolicyEnabled,
      'azureApiVersion': azureApiVersion,
      'changeFeed': ?changeFeed?.toMap(),
      'containerDeleteRetentionPolicy': ?containerDeleteRetentionPolicy?.toMap(),
      'cors': ?cors?.toMap(),
      'defaultServiceVersion': ?defaultServiceVersion,
      'deleteRetentionPolicy': ?deleteRetentionPolicy?.toMap(),
      'id': id,
      'isVersioningEnabled': ?isVersioningEnabled,
      'lastAccessTimeTrackingPolicy': ?lastAccessTimeTrackingPolicy?.toMap(),
      'name': name,
      'restorePolicy': ?restorePolicy?.toMap(),
      'sku': sku.toMap(),
      'type': type,
    };
  }

  factory GetBlobServicePropertiesResult.fromMap(Map<String, dynamic> map) {
    return GetBlobServicePropertiesResult(
      automaticSnapshotPolicyEnabled: (() { final guardedValue = map['automaticSnapshotPolicyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      changeFeed: (() { final guardedValue = map['changeFeed']; if (guardedValue == null) return null; return ChangeFeedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      containerDeleteRetentionPolicy: (() { final guardedValue = map['containerDeleteRetentionPolicy']; if (guardedValue == null) return null; return DeleteRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return CorsRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultServiceVersion: (() { final guardedValue = map['defaultServiceVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteRetentionPolicy: (() { final guardedValue = map['deleteRetentionPolicy']; if (guardedValue == null) return null; return DeleteRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      isVersioningEnabled: (() { final guardedValue = map['isVersioningEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastAccessTimeTrackingPolicy: (() { final guardedValue = map['lastAccessTimeTrackingPolicy']; if (guardedValue == null) return null; return LastAccessTimeTrackingPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      restorePolicy: (() { final guardedValue = map['restorePolicy']; if (guardedValue == null) return null; return RestorePolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


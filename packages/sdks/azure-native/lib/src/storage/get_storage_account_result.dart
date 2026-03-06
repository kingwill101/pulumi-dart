// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_files_identity_based_authentication_response.dart';
import 'blob_restore_status_response.dart';
import 'custom_domain_response.dart';
import 'encryption_response.dart';
import 'endpoints_response.dart';
import 'extended_location_response.dart';
import 'geo_replication_stats_response.dart';
import 'identity_response.dart';
import 'immutable_storage_account_response.dart';
import 'key_creation_time_response.dart';
import 'key_policy_response.dart';
import 'network_rule_set_response.dart';
import 'private_endpoint_connection_response.dart';
import 'routing_preference_response.dart';
import 'sas_policy_response.dart';
import 'sku_response.dart';
import 'storage_account_sku_conversion_status_response.dart';

/// Result data returned by getStorageAccount.
class GetStorageAccountResult {
  /// Required for storage accounts where kind = BlobStorage. The access tier is used for billing. The 'Premium' access tier is the default value for premium block blobs storage account type and it cannot be changed for the premium block blobs storage account type.
  final String accessTier;
  /// If customer initiated account migration is in progress, the value will be true else it will be null.
  final bool accountMigrationInProgress;
  /// Allow or disallow public access to all blobs or containers in the storage account. The default interpretation is false for this property.
  final bool? allowBlobPublicAccess;
  /// Allow or disallow cross AAD tenant object replication. Set this property to true for new or existing accounts only if object replication policies will involve storage accounts in different AAD tenants. The default interpretation is false for new accounts to follow best security practices by default.
  final bool? allowCrossTenantReplication;
  /// Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is null, which is equivalent to true.
  final bool? allowSharedKeyAccess;
  /// Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet.
  final String? allowedCopyScope;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Provides the identity based authentication settings for Azure Files.
  final AzureFilesIdentityBasedAuthenticationResponse? azureFilesIdentityBasedAuthentication;
  /// Blob restore status
  final BlobRestoreStatusResponse blobRestoreStatus;
  /// Gets the creation date and time of the storage account in UTC.
  final String creationTime;
  /// Gets the custom domain the user assigned to this storage account.
  final CustomDomainResponse customDomain;
  /// A boolean flag which indicates whether the default authentication is OAuth or not. The default interpretation is false for this property.
  final bool? defaultToOAuthAuthentication;
  /// Allows you to specify the type of endpoint. Set this to AzureDNSZone to create a large number of accounts in a single subscription, which creates accounts in an Azure DNS Zone and the endpoint URL will have an alphanumeric DNS Zone identifier.
  final String? dnsEndpointType;
  /// Enables extended group support with local users feature, if set to true
  final bool? enableExtendedGroups;
  /// Allows https traffic only to storage service if sets to true.
  final bool? enableHttpsTrafficOnly;
  /// NFS 3.0 protocol support enabled if set to true.
  final bool? enableNfsV3;
  /// Encryption settings to be used for server-side encryption for the storage account.
  final EncryptionResponse encryption;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// If the failover is in progress, the value will be true, otherwise, it will be null.
  final bool failoverInProgress;
  /// Geo Replication Stats
  final GeoReplicationStatsResponse geoReplicationStats;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The property is immutable and can only be set to true at the account creation time. When set to true, it enables object level immutability for all the containers in the account by default.
  final ImmutableStorageAccountResponse? immutableStorageWithVersioning;
  /// Account HierarchicalNamespace enabled if sets to true.
  final bool? isHnsEnabled;
  /// Enables local users feature, if set to true
  final bool? isLocalUserEnabled;
  /// Enables Secure File Transfer Protocol, if set to true
  final bool? isSftpEnabled;
  /// This property will be set to true or false on an event of ongoing migration. Default value is null.
  final bool isSkuConversionBlocked;
  /// Storage account keys creation time.
  final KeyCreationTimeResponse keyCreationTime;
  /// KeyPolicy assigned to the storage account.
  final KeyPolicyResponse keyPolicy;
  /// Gets the Kind.
  final String kind;
  /// Allow large file shares if sets to Enabled. It cannot be disabled once it is enabled.
  final String? largeFileSharesState;
  /// Gets the timestamp of the most recent instance of a failover to the secondary location. Only the most recent timestamp is retained. This element is not returned if there has never been a failover instance. Only available if the accountType is Standard_GRS or Standard_RAGRS.
  final String lastGeoFailoverTime;
  /// The geo-location where the resource lives
  final String location;
  /// Set the minimum TLS version to be permitted on requests to storage. The default interpretation is TLS 1.0 for this property.
  final String? minimumTlsVersion;
  /// The name of the resource
  final String name;
  /// Network rule set
  final NetworkRuleSetResponse networkRuleSet;
  /// Gets the URLs that are used to perform a retrieval of a public blob, queue, or table object. Note that Standard_ZRS and Premium_LRS accounts only return the blob endpoint.
  final EndpointsResponse primaryEndpoints;
  /// Gets the location of the primary data center for the storage account.
  final String primaryLocation;
  /// List of private endpoint connection associated with the specified storage account
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Gets the status of the storage account at the time the operation was called.
  final String provisioningState;
  /// Allow, disallow, or let Network Security Perimeter configuration to evaluate public network access to Storage Account.
  final String? publicNetworkAccess;
  /// Maintains information about the network routing choice opted by the user for data transfer
  final RoutingPreferenceResponse? routingPreference;
  /// SasPolicy assigned to the storage account.
  final SasPolicyResponse sasPolicy;
  /// Gets the URLs that are used to perform a retrieval of a public blob, queue, or table object from the secondary location of the storage account. Only available if the SKU name is Standard_RAGRS.
  final EndpointsResponse secondaryEndpoints;
  /// Gets the location of the geo-replicated secondary for the storage account. Only available if the accountType is Standard_GRS or Standard_RAGRS.
  final String secondaryLocation;
  /// Gets the SKU.
  final SkuResponse sku;
  /// Gets the status indicating whether the primary location of the storage account is available or unavailable.
  final String statusOfPrimary;
  /// Gets the status indicating whether the secondary location of the storage account is available or unavailable. Only available if the SKU name is Standard_GRS or Standard_RAGRS.
  final String statusOfSecondary;
  /// This property is readOnly and is set by server during asynchronous storage account sku conversion operations.
  final StorageAccountSkuConversionStatusResponse? storageAccountSkuConversionStatus;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetStorageAccountResult].
  /// [accessTier] Required for storage accounts where kind = BlobStorage. The access tier is used for billing. The 'Premium' access tier is the default value for premium block blobs storage account type and it cannot be changed for the premium block blobs storage account type.
  /// [accountMigrationInProgress] If customer initiated account migration is in progress, the value will be true else it will be null.
  /// [allowBlobPublicAccess] Allow or disallow public access to all blobs or containers in the storage account. The default interpretation is false for this property.
  /// [allowCrossTenantReplication] Allow or disallow cross AAD tenant object replication. Set this property to true for new or existing accounts only if object replication policies will involve storage accounts in different AAD tenants. The default interpretation is false for new accounts to follow best security practices by default.
  /// [allowSharedKeyAccess] Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is null, which is equivalent to true.
  /// [allowedCopyScope] Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureFilesIdentityBasedAuthentication] Provides the identity based authentication settings for Azure Files.
  /// [blobRestoreStatus] Blob restore status
  /// [creationTime] Gets the creation date and time of the storage account in UTC.
  /// [customDomain] Gets the custom domain the user assigned to this storage account.
  /// [defaultToOAuthAuthentication] A boolean flag which indicates whether the default authentication is OAuth or not. The default interpretation is false for this property.
  /// [dnsEndpointType] Allows you to specify the type of endpoint. Set this to AzureDNSZone to create a large number of accounts in a single subscription, which creates accounts in an Azure DNS Zone and the endpoint URL will have an alphanumeric DNS Zone identifier.
  /// [enableExtendedGroups] Enables extended group support with local users feature, if set to true
  /// [enableHttpsTrafficOnly] Allows https traffic only to storage service if sets to true.
  /// [enableNfsV3] NFS 3.0 protocol support enabled if set to true.
  /// [encryption] Encryption settings to be used for server-side encryption for the storage account.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [failoverInProgress] If the failover is in progress, the value will be true, otherwise, it will be null.
  /// [geoReplicationStats] Geo Replication Stats
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the resource.
  /// [immutableStorageWithVersioning] The property is immutable and can only be set to true at the account creation time. When set to true, it enables object level immutability for all the containers in the account by default.
  /// [isHnsEnabled] Account HierarchicalNamespace enabled if sets to true.
  /// [isLocalUserEnabled] Enables local users feature, if set to true
  /// [isSftpEnabled] Enables Secure File Transfer Protocol, if set to true
  /// [isSkuConversionBlocked] This property will be set to true or false on an event of ongoing migration. Default value is null.
  /// [keyCreationTime] Storage account keys creation time.
  /// [keyPolicy] KeyPolicy assigned to the storage account.
  /// [kind] Gets the Kind.
  /// [largeFileSharesState] Allow large file shares if sets to Enabled. It cannot be disabled once it is enabled.
  /// [lastGeoFailoverTime] Gets the timestamp of the most recent instance of a failover to the secondary location. Only the most recent timestamp is retained. This element is not returned if there has never been a failover instance. Only available if the accountType is Standard_GRS or Standard_RAGRS.
  /// [location] The geo-location where the resource lives
  /// [minimumTlsVersion] Set the minimum TLS version to be permitted on requests to storage. The default interpretation is TLS 1.0 for this property.
  /// [name] The name of the resource
  /// [networkRuleSet] Network rule set
  /// [primaryEndpoints] Gets the URLs that are used to perform a retrieval of a public blob, queue, or table object. Note that Standard_ZRS and Premium_LRS accounts only return the blob endpoint.
  /// [primaryLocation] Gets the location of the primary data center for the storage account.
  /// [privateEndpointConnections] List of private endpoint connection associated with the specified storage account
  /// [provisioningState] Gets the status of the storage account at the time the operation was called.
  /// [publicNetworkAccess] Allow, disallow, or let Network Security Perimeter configuration to evaluate public network access to Storage Account.
  /// [routingPreference] Maintains information about the network routing choice opted by the user for data transfer
  /// [sasPolicy] SasPolicy assigned to the storage account.
  /// [secondaryEndpoints] Gets the URLs that are used to perform a retrieval of a public blob, queue, or table object from the secondary location of the storage account. Only available if the SKU name is Standard_RAGRS.
  /// [secondaryLocation] Gets the location of the geo-replicated secondary for the storage account. Only available if the accountType is Standard_GRS or Standard_RAGRS.
  /// [sku] Gets the SKU.
  /// [statusOfPrimary] Gets the status indicating whether the primary location of the storage account is available or unavailable.
  /// [statusOfSecondary] Gets the status indicating whether the secondary location of the storage account is available or unavailable. Only available if the SKU name is Standard_GRS or Standard_RAGRS.
  /// [storageAccountSkuConversionStatus] This property is readOnly and is set by server during asynchronous storage account sku conversion operations.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStorageAccountResult({
    required this.accessTier,
    required this.accountMigrationInProgress,
    this.allowBlobPublicAccess,
    this.allowCrossTenantReplication,
    this.allowSharedKeyAccess,
    this.allowedCopyScope,
    required this.azureApiVersion,
    this.azureFilesIdentityBasedAuthentication,
    required this.blobRestoreStatus,
    required this.creationTime,
    required this.customDomain,
    this.defaultToOAuthAuthentication,
    this.dnsEndpointType,
    this.enableExtendedGroups,
    this.enableHttpsTrafficOnly,
    this.enableNfsV3,
    required this.encryption,
    this.extendedLocation,
    required this.failoverInProgress,
    required this.geoReplicationStats,
    required this.id,
    this.identity,
    this.immutableStorageWithVersioning,
    this.isHnsEnabled,
    this.isLocalUserEnabled,
    this.isSftpEnabled,
    required this.isSkuConversionBlocked,
    required this.keyCreationTime,
    required this.keyPolicy,
    required this.kind,
    this.largeFileSharesState,
    required this.lastGeoFailoverTime,
    required this.location,
    this.minimumTlsVersion,
    required this.name,
    required this.networkRuleSet,
    required this.primaryEndpoints,
    required this.primaryLocation,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.routingPreference,
    required this.sasPolicy,
    required this.secondaryEndpoints,
    required this.secondaryLocation,
    required this.sku,
    required this.statusOfPrimary,
    required this.statusOfSecondary,
    this.storageAccountSkuConversionStatus,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': accessTier,
      'accountMigrationInProgress': accountMigrationInProgress,
      'allowBlobPublicAccess': ?allowBlobPublicAccess,
      'allowCrossTenantReplication': ?allowCrossTenantReplication,
      'allowSharedKeyAccess': ?allowSharedKeyAccess,
      'allowedCopyScope': ?allowedCopyScope,
      'azureApiVersion': azureApiVersion,
      'azureFilesIdentityBasedAuthentication': ?azureFilesIdentityBasedAuthentication?.toMap(),
      'blobRestoreStatus': blobRestoreStatus.toMap(),
      'creationTime': creationTime,
      'customDomain': customDomain.toMap(),
      'defaultToOAuthAuthentication': ?defaultToOAuthAuthentication,
      'dnsEndpointType': ?dnsEndpointType,
      'enableExtendedGroups': ?enableExtendedGroups,
      'enableHttpsTrafficOnly': ?enableHttpsTrafficOnly,
      'enableNfsV3': ?enableNfsV3,
      'encryption': encryption.toMap(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'failoverInProgress': failoverInProgress,
      'geoReplicationStats': geoReplicationStats.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'immutableStorageWithVersioning': ?immutableStorageWithVersioning?.toMap(),
      'isHnsEnabled': ?isHnsEnabled,
      'isLocalUserEnabled': ?isLocalUserEnabled,
      'isSftpEnabled': ?isSftpEnabled,
      'isSkuConversionBlocked': isSkuConversionBlocked,
      'keyCreationTime': keyCreationTime.toMap(),
      'keyPolicy': keyPolicy.toMap(),
      'kind': kind,
      'largeFileSharesState': ?largeFileSharesState,
      'lastGeoFailoverTime': lastGeoFailoverTime,
      'location': location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': name,
      'networkRuleSet': networkRuleSet.toMap(),
      'primaryEndpoints': primaryEndpoints.toMap(),
      'primaryLocation': primaryLocation,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'routingPreference': ?routingPreference?.toMap(),
      'sasPolicy': sasPolicy.toMap(),
      'secondaryEndpoints': secondaryEndpoints.toMap(),
      'secondaryLocation': secondaryLocation,
      'sku': sku.toMap(),
      'statusOfPrimary': statusOfPrimary,
      'statusOfSecondary': statusOfSecondary,
      'storageAccountSkuConversionStatus': ?storageAccountSkuConversionStatus?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetStorageAccountResult.fromMap(Map<String, dynamic> map) {
    return GetStorageAccountResult(
      accessTier: map['accessTier'] as String,
      accountMigrationInProgress: map['accountMigrationInProgress'] as bool,
      allowBlobPublicAccess: (() { final guardedValue = map['allowBlobPublicAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowCrossTenantReplication: (() { final guardedValue = map['allowCrossTenantReplication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowSharedKeyAccess: (() { final guardedValue = map['allowSharedKeyAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowedCopyScope: (() { final guardedValue = map['allowedCopyScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      azureFilesIdentityBasedAuthentication: (() { final guardedValue = map['azureFilesIdentityBasedAuthentication']; if (guardedValue == null) return null; return AzureFilesIdentityBasedAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      blobRestoreStatus: BlobRestoreStatusResponse.fromMap((map['blobRestoreStatus']! as Map).cast<String, dynamic>()),
      creationTime: map['creationTime'] as String,
      customDomain: CustomDomainResponse.fromMap((map['customDomain']! as Map).cast<String, dynamic>()),
      defaultToOAuthAuthentication: (() { final guardedValue = map['defaultToOAuthAuthentication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsEndpointType: (() { final guardedValue = map['dnsEndpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableExtendedGroups: (() { final guardedValue = map['enableExtendedGroups']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableHttpsTrafficOnly: (() { final guardedValue = map['enableHttpsTrafficOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableNfsV3: (() { final guardedValue = map['enableNfsV3']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryption: EncryptionResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>()),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      failoverInProgress: map['failoverInProgress'] as bool,
      geoReplicationStats: GeoReplicationStatsResponse.fromMap((map['geoReplicationStats']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      immutableStorageWithVersioning: (() { final guardedValue = map['immutableStorageWithVersioning']; if (guardedValue == null) return null; return ImmutableStorageAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isHnsEnabled: (() { final guardedValue = map['isHnsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isLocalUserEnabled: (() { final guardedValue = map['isLocalUserEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSftpEnabled: (() { final guardedValue = map['isSftpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSkuConversionBlocked: map['isSkuConversionBlocked'] as bool,
      keyCreationTime: KeyCreationTimeResponse.fromMap((map['keyCreationTime']! as Map).cast<String, dynamic>()),
      keyPolicy: KeyPolicyResponse.fromMap((map['keyPolicy']! as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      largeFileSharesState: (() { final guardedValue = map['largeFileSharesState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastGeoFailoverTime: map['lastGeoFailoverTime'] as String,
      location: map['location'] as String,
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkRuleSet: NetworkRuleSetResponse.fromMap((map['networkRuleSet']! as Map).cast<String, dynamic>()),
      primaryEndpoints: EndpointsResponse.fromMap((map['primaryEndpoints']! as Map).cast<String, dynamic>()),
      primaryLocation: map['primaryLocation'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingPreference: (() { final guardedValue = map['routingPreference']; if (guardedValue == null) return null; return RoutingPreferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sasPolicy: SasPolicyResponse.fromMap((map['sasPolicy']! as Map).cast<String, dynamic>()),
      secondaryEndpoints: EndpointsResponse.fromMap((map['secondaryEndpoints']! as Map).cast<String, dynamic>()),
      secondaryLocation: map['secondaryLocation'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      statusOfPrimary: map['statusOfPrimary'] as String,
      statusOfSecondary: map['statusOfSecondary'] as String,
      storageAccountSkuConversionStatus: (() { final guardedValue = map['storageAccountSkuConversionStatus']; if (guardedValue == null) return null; return StorageAccountSkuConversionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}


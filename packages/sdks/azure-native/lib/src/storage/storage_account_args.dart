// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_tier.dart';
import 'azure_files_identity_based_authentication.dart';
import 'custom_domain.dart';
import 'encryption.dart';
import 'extended_location.dart';
import 'identity.dart';
import 'immutable_storage_account.dart';
import 'key_policy.dart';
import 'network_rule_set.dart';
import 'routing_preference.dart';
import 'sas_policy.dart';
import 'sku.dart';

/// {@template pulumi_storage_storage_account_args_doc}
/// The set of arguments for StorageAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_storage_account_args_doc}
class StorageAccountArgs {
  /// Required for storage accounts where kind = BlobStorage. The access tier is used for billing. The 'Premium' access tier is the default value for premium block blobs storage account type and it cannot be changed for the premium block blobs storage account type.
  final pulumi.Input<AccessTier?>? accessTier;
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String?>? accountName;
  /// Allow or disallow public access to all blobs or containers in the storage account. The default interpretation is false for this property.
  final pulumi.Input<bool?>? allowBlobPublicAccess;
  /// Allow or disallow cross AAD tenant object replication. Set this property to true for new or existing accounts only if object replication policies will involve storage accounts in different AAD tenants. The default interpretation is false for new accounts to follow best security practices by default.
  final pulumi.Input<bool?>? allowCrossTenantReplication;
  /// Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is null, which is equivalent to true.
  final pulumi.Input<bool?>? allowSharedKeyAccess;
  /// Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet.
  final pulumi.Input<dynamic>? allowedCopyScope;
  /// Provides the identity based authentication settings for Azure Files.
  final pulumi.Input<AzureFilesIdentityBasedAuthentication?>? azureFilesIdentityBasedAuthentication;
  /// User domain assigned to the storage account. Name is the CNAME source. Only one custom domain is supported per storage account at this time. To clear the existing custom domain, use an empty string for the custom domain name property.
  final pulumi.Input<CustomDomain?>? customDomain;
  /// A boolean flag which indicates whether the default authentication is OAuth or not. The default interpretation is false for this property.
  final pulumi.Input<bool?>? defaultToOAuthAuthentication;
  /// Allows you to specify the type of endpoint. Set this to AzureDNSZone to create a large number of accounts in a single subscription, which creates accounts in an Azure DNS Zone and the endpoint URL will have an alphanumeric DNS Zone identifier.
  final pulumi.Input<dynamic>? dnsEndpointType;
  /// Enables extended group support with local users feature, if set to true
  final pulumi.Input<bool?>? enableExtendedGroups;
  /// Allows https traffic only to storage service if sets to true. The default value is true since API version 2019-04-01.
  final pulumi.Input<bool?>? enableHttpsTrafficOnly;
  /// NFS 3.0 protocol support enabled if set to true.
  final pulumi.Input<bool?>? enableNfsV3;
  /// Encryption settings to be used for server-side encryption for the storage account.
  final pulumi.Input<Encryption?>? encryption;
  /// Optional. Set the extended location of the resource. If not set, the storage account will be created in Azure main region. Otherwise it will be created in the specified extended location
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// The identity of the resource.
  final pulumi.Input<Identity?>? identity;
  /// The property is immutable and can only be set to true at the account creation time. When set to true, it enables object level immutability for all the new containers in the account by default.
  final pulumi.Input<ImmutableStorageAccount?>? immutableStorageWithVersioning;
  /// Account HierarchicalNamespace enabled if sets to true.
  final pulumi.Input<bool?>? isHnsEnabled;
  /// Enables local users feature, if set to true
  final pulumi.Input<bool?>? isLocalUserEnabled;
  /// Enables Secure File Transfer Protocol, if set to true
  final pulumi.Input<bool?>? isSftpEnabled;
  /// KeyPolicy assigned to the storage account.
  final pulumi.Input<KeyPolicy?>? keyPolicy;
  /// Required. Indicates the type of storage account.
  final pulumi.Input<dynamic> kind;
  /// Allow large file shares if sets to Enabled. It cannot be disabled once it is enabled.
  final pulumi.Input<dynamic>? largeFileSharesState;
  /// Required. Gets or sets the location of the resource. This will be one of the supported and registered Azure Geo Regions (e.g. West US, East US, Southeast Asia, etc.). The geo region of a resource cannot be changed once it is created, but if an identical geo region is specified on update, the request will succeed.
  final pulumi.Input<String?>? location;
  /// Set the minimum TLS version to be permitted on requests to storage. The default interpretation is TLS 1.0 for this property. Minimum TLS version 1.3 version is not supported.
  final pulumi.Input<dynamic>? minimumTlsVersion;
  /// Network rule set
  final pulumi.Input<NetworkRuleSet?>? networkRuleSet;
  /// Allow, disallow, or let Network Security Perimeter configuration to evaluate public network access to Storage Account. Value is optional but if passed in, must be 'Enabled', 'Disabled' or 'SecuredByPerimeter'.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Maintains information about the network routing choice opted by the user for data transfer
  final pulumi.Input<RoutingPreference?>? routingPreference;
  /// SasPolicy assigned to the storage account.
  final pulumi.Input<SasPolicy?>? sasPolicy;
  /// Required. Gets or sets the SKU name.
  final pulumi.Input<Sku> sku;
  /// Gets or sets a list of key value pairs that describe the resource. These tags can be used for viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key with a length no greater than 128 characters and a value with a length no greater than 256 characters.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [StorageAccountArgs].
  /// [accessTier] Required for storage accounts where kind = BlobStorage. The access tier is used for billing. The 'Premium' access tier is the default value for premium block blobs storage account type and it cannot be changed for the premium block blobs storage account type.
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [allowBlobPublicAccess] Allow or disallow public access to all blobs or containers in the storage account. The default interpretation is false for this property.
  /// [allowCrossTenantReplication] Allow or disallow cross AAD tenant object replication. Set this property to true for new or existing accounts only if object replication policies will involve storage accounts in different AAD tenants. The default interpretation is false for new accounts to follow best security practices by default.
  /// [allowSharedKeyAccess] Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is null, which is equivalent to true.
  /// [allowedCopyScope] Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet.
  /// [azureFilesIdentityBasedAuthentication] Provides the identity based authentication settings for Azure Files.
  /// [customDomain] User domain assigned to the storage account. Name is the CNAME source. Only one custom domain is supported per storage account at this time. To clear the existing custom domain, use an empty string for the custom domain name property.
  /// [defaultToOAuthAuthentication] A boolean flag which indicates whether the default authentication is OAuth or not. The default interpretation is false for this property.
  /// [dnsEndpointType] Allows you to specify the type of endpoint. Set this to AzureDNSZone to create a large number of accounts in a single subscription, which creates accounts in an Azure DNS Zone and the endpoint URL will have an alphanumeric DNS Zone identifier.
  /// [enableExtendedGroups] Enables extended group support with local users feature, if set to true
  /// [enableHttpsTrafficOnly] Allows https traffic only to storage service if sets to true. The default value is true since API version 2019-04-01.
  /// [enableNfsV3] NFS 3.0 protocol support enabled if set to true.
  /// [encryption] Encryption settings to be used for server-side encryption for the storage account.
  /// [extendedLocation] Optional. Set the extended location of the resource. If not set, the storage account will be created in Azure main region. Otherwise it will be created in the specified extended location
  /// [identity] The identity of the resource.
  /// [immutableStorageWithVersioning] The property is immutable and can only be set to true at the account creation time. When set to true, it enables object level immutability for all the new containers in the account by default.
  /// [isHnsEnabled] Account HierarchicalNamespace enabled if sets to true.
  /// [isLocalUserEnabled] Enables local users feature, if set to true
  /// [isSftpEnabled] Enables Secure File Transfer Protocol, if set to true
  /// [keyPolicy] KeyPolicy assigned to the storage account.
  /// [kind] Required. Indicates the type of storage account.
  /// [largeFileSharesState] Allow large file shares if sets to Enabled. It cannot be disabled once it is enabled.
  /// [location] Required. Gets or sets the location of the resource. This will be one of the supported and registered Azure Geo Regions (e.g. West US, East US, Southeast Asia, etc.). The geo region of a resource cannot be changed once it is created, but if an identical geo region is specified on update, the request will succeed.
  /// [minimumTlsVersion] Set the minimum TLS version to be permitted on requests to storage. The default interpretation is TLS 1.0 for this property. Minimum TLS version 1.3 version is not supported.
  /// [networkRuleSet] Network rule set
  /// [publicNetworkAccess] Allow, disallow, or let Network Security Perimeter configuration to evaluate public network access to Storage Account. Value is optional but if passed in, must be 'Enabled', 'Disabled' or 'SecuredByPerimeter'.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [routingPreference] Maintains information about the network routing choice opted by the user for data transfer
  /// [sasPolicy] SasPolicy assigned to the storage account.
  /// [sku] Required. Gets or sets the SKU name.
  /// [tags] Gets or sets a list of key value pairs that describe the resource. These tags can be used for viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key with a length no greater than 128 characters and a value with a length no greater than 256 characters.
  const StorageAccountArgs({
    this.accessTier,
    this.accountName,
    this.allowBlobPublicAccess,
    this.allowCrossTenantReplication,
    this.allowSharedKeyAccess,
    this.allowedCopyScope,
    this.azureFilesIdentityBasedAuthentication,
    this.customDomain,
    this.defaultToOAuthAuthentication,
    this.dnsEndpointType,
    this.enableExtendedGroups,
    this.enableHttpsTrafficOnly,
    this.enableNfsV3,
    this.encryption,
    this.extendedLocation,
    this.identity,
    this.immutableStorageWithVersioning,
    this.isHnsEnabled,
    this.isLocalUserEnabled,
    this.isSftpEnabled,
    this.keyPolicy,
    required this.kind,
    this.largeFileSharesState,
    this.location,
    this.minimumTlsVersion,
    this.networkRuleSet,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.routingPreference,
    this.sasPolicy,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?pulumi.Input.mapOptionalInputValue<AccessTier, String>(accessTier, (value) => value.wireValue),
      'accountName': ?accountName,
      'allowBlobPublicAccess': ?allowBlobPublicAccess,
      'allowCrossTenantReplication': ?allowCrossTenantReplication,
      'allowSharedKeyAccess': ?allowSharedKeyAccess,
      'allowedCopyScope': ?allowedCopyScope,
      'azureFilesIdentityBasedAuthentication': ?pulumi.Input.mapOptionalInputValue<AzureFilesIdentityBasedAuthentication, Map<String, dynamic>>(azureFilesIdentityBasedAuthentication, (value) => value.toMap()),
      'customDomain': ?pulumi.Input.mapOptionalInputValue<CustomDomain, Map<String, dynamic>>(customDomain, (value) => value.toMap()),
      'defaultToOAuthAuthentication': ?defaultToOAuthAuthentication,
      'dnsEndpointType': ?dnsEndpointType,
      'enableExtendedGroups': ?enableExtendedGroups,
      'enableHttpsTrafficOnly': ?enableHttpsTrafficOnly,
      'enableNfsV3': ?enableNfsV3,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'immutableStorageWithVersioning': ?pulumi.Input.mapOptionalInputValue<ImmutableStorageAccount, Map<String, dynamic>>(immutableStorageWithVersioning, (value) => value.toMap()),
      'isHnsEnabled': ?isHnsEnabled,
      'isLocalUserEnabled': ?isLocalUserEnabled,
      'isSftpEnabled': ?isSftpEnabled,
      'keyPolicy': ?pulumi.Input.mapOptionalInputValue<KeyPolicy, Map<String, dynamic>>(keyPolicy, (value) => value.toMap()),
      'kind': kind,
      'largeFileSharesState': ?largeFileSharesState,
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'networkRuleSet': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSet, Map<String, dynamic>>(networkRuleSet, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'routingPreference': ?pulumi.Input.mapOptionalInputValue<RoutingPreference, Map<String, dynamic>>(routingPreference, (value) => value.toMap()),
      'sasPolicy': ?pulumi.Input.mapOptionalInputValue<SasPolicy, Map<String, dynamic>>(sasPolicy, (value) => value.toMap()),
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory StorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return StorageAccountArgs(
      accessTier: (() { final guardedValue = map['accessTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessTier.fromValue(guardedValue as String)); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowBlobPublicAccess: (() { final guardedValue = map['allowBlobPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowCrossTenantReplication: (() { final guardedValue = map['allowCrossTenantReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowSharedKeyAccess: (() { final guardedValue = map['allowSharedKeyAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedCopyScope: (() { final guardedValue = map['allowedCopyScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureFilesIdentityBasedAuthentication: (() { final guardedValue = map['azureFilesIdentityBasedAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFilesIdentityBasedAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customDomain: (() { final guardedValue = map['customDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultToOAuthAuthentication: (() { final guardedValue = map['defaultToOAuthAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsEndpointType: (() { final guardedValue = map['dnsEndpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      enableExtendedGroups: (() { final guardedValue = map['enableExtendedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableHttpsTrafficOnly: (() { final guardedValue = map['enableHttpsTrafficOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNfsV3: (() { final guardedValue = map['enableNfsV3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      immutableStorageWithVersioning: (() { final guardedValue = map['immutableStorageWithVersioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImmutableStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isHnsEnabled: (() { final guardedValue = map['isHnsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isLocalUserEnabled: (() { final guardedValue = map['isLocalUserEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSftpEnabled: (() { final guardedValue = map['isSftpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyPolicy: (() { final guardedValue = map['keyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind']),
      largeFileSharesState: (() { final guardedValue = map['largeFileSharesState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      networkRuleSet: (() { final guardedValue = map['networkRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routingPreference: (() { final guardedValue = map['routingPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingPreference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sasPolicy: (() { final guardedValue = map['sasPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SasPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

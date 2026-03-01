// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_azure_files_authentication.dart';
import 'account_blob_properties.dart';
import 'account_custom_domain.dart';
import 'account_customer_managed_key.dart';
import 'account_identity.dart';
import 'account_immutability_policy.dart';
import 'account_network_rules.dart';
import 'account_queue_properties.dart';
import 'account_routing.dart';
import 'account_sas_policy.dart';
import 'account_share_properties.dart';
import 'account_static_website.dart';

/// {@template pulumi_storage_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_storage_account_account_args_doc}
class AccountArgs {
  /// Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot`, `Cool`, `Cold` and `Premium`. Defaults to `Hot`.
  final pulumi.Input<String>? accessTier;
  /// Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Defaults to `StorageV2`.
  ///
  /// > **Note:** Changing the `account_kind` value from `Storage` to `StorageV2` will not trigger a force new on the storage account, it will only upgrade the existing storage account from `Storage` to `StorageV2` keeping the existing storage account in place.
  final pulumi.Input<String>? accountKind;
  /// Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. Changing this forces a new resource to be created when types `LRS`, `GRS` and `RAGRS` are changed to `ZRS`, `GZRS` or `RAGZRS` and vice versa.
  final pulumi.Input<String> accountReplicationType;
  /// Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Blobs with a tier of `Premium` are of account kind `StorageV2`.
  final pulumi.Input<String> accountTier;
  /// Allow or disallow nested items within this Account to opt into being public. Defaults to `true`.
  ///
  /// > **Note:** At this time `allow_nested_items_to_be_public` is only supported in the Public Cloud, China Cloud, and US Government Cloud.
  final pulumi.Input<bool>? allowNestedItemsToBePublic;
  /// Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet. Possible values are `AAD` and `PrivateLink`.
  final pulumi.Input<String>? allowedCopyScope;
  /// A `azure_files_authentication` block as defined below.
  final pulumi.Input<AccountAzureFilesAuthentication>? azureFilesAuthentication;
  /// A `blob_properties` block as defined below.
  final pulumi.Input<AccountBlobProperties>? blobProperties;
  /// Should cross Tenant replication be enabled? Defaults to `false`.
  final pulumi.Input<bool>? crossTenantReplicationEnabled;
  /// A `custom_domain` block as documented below.
  final pulumi.Input<AccountCustomDomain>? customDomain;
  /// A `customer_managed_key` block as documented below.
  ///
  /// > **Note:** It's possible to define a Customer Managed Key both within either the `customer_managed_key` block or by using the `azure.storage.CustomerManagedKey` resource. However, it's not possible to use both methods to manage a Customer Managed Key for a Storage Account, since these will conflict. When using the `azure.storage.CustomerManagedKey` resource, you will need to use `ignore_changes` on the `customer_managed_key` block.
  final pulumi.Input<AccountCustomerManagedKey>? customerManagedKey;
  /// Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is `false`
  final pulumi.Input<bool>? defaultToOauthAuthentication;
  /// Specifies which DNS endpoint type to use. Possible values are `Standard` and `AzureDnsZone`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Azure DNS zone support requires `PartitionedDns` feature to be enabled. To enable this feature for your subscription, use the following command: `az feature register --namespace "Microsoft.Storage" --name "PartitionedDns"`.
  final pulumi.Input<String>? dnsEndpointType;
  /// Specifies the Edge Zone within the Azure Region where this Storage Account should exist. Changing this forces a new Storage Account to be created.
  final pulumi.Input<String>? edgeZone;
  /// Boolean flag which forces HTTPS if enabled, see [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information. Defaults to `true`.
  final pulumi.Input<bool>? httpsTrafficOnlyEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<AccountIdentity>? identity;
  /// An `immutability_policy` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<AccountImmutabilityPolicy>? immutabilityPolicy;
  /// Is infrastructure encryption enabled? Changing this forces a new resource to be created. Defaults to `false`.
  ///
  /// > **Note:** This can only be `true` when `account_kind` is `StorageV2` or when `account_tier` is `Premium` *and* `account_kind` is one of `BlockBlobStorage` or `FileStorage`.
  final pulumi.Input<bool>? infrastructureEncryptionEnabled;
  /// Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can only be `true` when `account_tier` is `Standard` or when `account_tier` is `Premium` *and* `account_kind` is `BlockBlobStorage`
  final pulumi.Input<bool>? isHnsEnabled;
  /// Are Large File Shares Enabled? Defaults to `false`.
  ///
  /// > **Note:** Large File Shares are enabled by default when using an `account_kind` of `FileStorage`.
  final pulumi.Input<bool>? largeFileShareEnabled;
  /// Is Local User Enabled? Defaults to `true`.
  final pulumi.Input<bool>? localUserEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The minimum supported TLS version for the storage account. Possible values are `TLS1_0`, `TLS1_1`, `TLS1_2` and `TLS1_3`. Defaults to `TLS1_2` for new storage accounts.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  ///
  /// > **Note:** At this time `min_tls_version` is only supported in the Public Cloud, China Cloud, and US Government Cloud.
  final pulumi.Input<String>? minTlsVersion;
  /// Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group.
  final pulumi.Input<String>? name;
  /// A `network_rules` block as documented below.
  final pulumi.Input<AccountNetworkRules>? networkRules;
  /// Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to `false`.
  ///
  /// > **Note:** This can only be `true` when `account_tier` is `Standard` and `account_kind` is `StorageV2`, or `account_tier` is `Premium` and `account_kind` is `BlockBlobStorage`. Additionally, the `is_hns_enabled` is `true` and `account_replication_type` must be `LRS` or `RAGRS`.
  final pulumi.Input<bool>? nfsv3Enabled;
  /// Specifies the version of the **provisioned** billing model (e.g. when `account_kind = "FileStorage"` for Storage File). Possible value is `V2`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? provisionedBillingModelVersion;
  /// Whether the public network access is enabled? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The encryption type of the queue service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  final pulumi.Input<String>? queueEncryptionKeyType;
  /// A `queue_properties` block as defined below.
  ///
  /// > **Note:** `queue_properties` can only be configured when `account_tier` is set to `Standard` and `account_kind` is set to either `Storage` or `StorageV2`.
  final pulumi.Input<AccountQueueProperties>? queueProperties;
  /// The name of the resource group in which to create the storage account. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `routing` block as defined below.
  final pulumi.Input<AccountRouting>? routing;
  /// A `sas_policy` block as defined below.
  final pulumi.Input<AccountSasPolicy>? sasPolicy;
  /// Boolean, enable SFTP for the storage account
  ///
  /// > **Note:** SFTP support requires `is_hns_enabled` set to `true`. [More information on SFTP support can be found here](https://learn.microsoft.com/azure/storage/blobs/secure-file-transfer-protocol-support). Defaults to `false`
  final pulumi.Input<bool>? sftpEnabled;
  /// A `share_properties` block as defined below.
  ///
  /// > **Note:** `share_properties` can only be configured when either `account_tier` is `Standard` and `account_kind` is either `Storage` or `StorageV2` - or when `account_tier` is `Premium` and `account_kind` is `FileStorage`.
  final pulumi.Input<AccountShareProperties>? shareProperties;
  /// Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`.
  ///
  /// > **Note:** Terraform uses Shared Key Authorisation to provision Storage Containers, Blobs and other items - when Shared Key Access is disabled, you will need to enable the `storage_use_azuread` flag in the Provider block to use Azure AD for authentication, however not all Azure Storage services support Active Directory authentication.
  final pulumi.Input<bool>? sharedAccessKeyEnabled;
  /// A `static_website` block as defined below.
  ///
  /// > **Note:** `static_website` can only be set when the `account_kind` is set to `StorageV2` or `BlockBlobStorage`.
  ///
  /// > **Note:** If `static_website` is specified, the service will automatically create a `azure.storage.Container` named `$web`.
  final pulumi.Input<AccountStaticWebsite>? staticWebsite;
  /// The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  ///
  /// > **Note:** `queue_encryption_key_type` and `table_encryption_key_type` cannot be set to `Account` when `account_kind` is set `Storage`
  final pulumi.Input<String>? tableEncryptionKeyType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accessTier] Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot`, `Cool`, `Cold` and `Premium`. Defaults to `Hot`.
  /// [accountKind] Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Defaults to `StorageV2`.
  /// [accountReplicationType] Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. Changing this forces a new resource to be created when types `LRS`, `GRS` and `RAGRS` are changed to `ZRS`, `GZRS` or `RAGZRS` and vice versa.
  /// [accountTier] Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created.
  /// [allowNestedItemsToBePublic] Allow or disallow nested items within this Account to opt into being public. Defaults to `true`.
  /// [allowedCopyScope] Restrict copy to and from Storage Accounts within an AAD tenant or with Private Links to the same VNet. Possible values are `AAD` and `PrivateLink`.
  /// [azureFilesAuthentication] A `azure_files_authentication` block as defined below.
  /// [blobProperties] A `blob_properties` block as defined below.
  /// [crossTenantReplicationEnabled] Should cross Tenant replication be enabled? Defaults to `false`.
  /// [customDomain] A `custom_domain` block as documented below.
  /// [customerManagedKey] A `customer_managed_key` block as documented below.
  /// [defaultToOauthAuthentication] Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is `false`
  /// [dnsEndpointType] Specifies which DNS endpoint type to use. Possible values are `Standard` and `AzureDnsZone`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Storage Account should exist. Changing this forces a new Storage Account to be created.
  /// [httpsTrafficOnlyEnabled] Boolean flag which forces HTTPS if enabled, see [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information. Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [immutabilityPolicy] An `immutability_policy` block as defined below. Changing this forces a new resource to be created.
  /// [infrastructureEncryptionEnabled] Is infrastructure encryption enabled? Changing this forces a new resource to be created. Defaults to `false`.
  /// [isHnsEnabled] Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created.
  /// [largeFileShareEnabled] Are Large File Shares Enabled? Defaults to `false`.
  /// [localUserEnabled] Is Local User Enabled? Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [minTlsVersion] The minimum supported TLS version for the storage account. Possible values are `TLS1_0`, `TLS1_1`, `TLS1_2` and `TLS1_3`. Defaults to `TLS1_2` for new storage accounts.
  /// [name] Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group.
  /// [networkRules] A `network_rules` block as documented below.
  /// [nfsv3Enabled] Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to `false`.
  /// [provisionedBillingModelVersion] Specifies the version of the **provisioned** billing model (e.g. when `account_kind = "FileStorage"` for Storage File). Possible value is `V2`. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether the public network access is enabled? Defaults to `true`.
  /// [queueEncryptionKeyType] The encryption type of the queue service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  /// [queueProperties] A `queue_properties` block as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the storage account. Changing this forces a new resource to be created.
  /// [routing] A `routing` block as defined below.
  /// [sasPolicy] A `sas_policy` block as defined below.
  /// [sftpEnabled] Boolean, enable SFTP for the storage account
  /// [shareProperties] A `share_properties` block as defined below.
  /// [sharedAccessKeyEnabled] Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`.
  /// [staticWebsite] A `static_website` block as defined below.
  /// [tableEncryptionKeyType] The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  /// [tags] A mapping of tags to assign to the resource.
  AccountArgs({
    pulumi.Output<String>? accessTier,
    pulumi.Output<String>? accountKind,
    required pulumi.Output<String> accountReplicationType,
    required pulumi.Output<String> accountTier,
    pulumi.Output<bool>? allowNestedItemsToBePublic,
    pulumi.Output<String>? allowedCopyScope,
    pulumi.Output<AccountAzureFilesAuthentication>? azureFilesAuthentication,
    pulumi.Output<AccountBlobProperties>? blobProperties,
    pulumi.Output<bool>? crossTenantReplicationEnabled,
    pulumi.Output<AccountCustomDomain>? customDomain,
    pulumi.Output<AccountCustomerManagedKey>? customerManagedKey,
    pulumi.Output<bool>? defaultToOauthAuthentication,
    pulumi.Output<String>? dnsEndpointType,
    pulumi.Output<String>? edgeZone,
    pulumi.Output<bool>? httpsTrafficOnlyEnabled,
    pulumi.Output<AccountIdentity>? identity,
    pulumi.Output<AccountImmutabilityPolicy>? immutabilityPolicy,
    pulumi.Output<bool>? infrastructureEncryptionEnabled,
    pulumi.Output<bool>? isHnsEnabled,
    pulumi.Output<bool>? largeFileShareEnabled,
    pulumi.Output<bool>? localUserEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minTlsVersion,
    pulumi.Output<String>? name,
    pulumi.Output<AccountNetworkRules>? networkRules,
    pulumi.Output<bool>? nfsv3Enabled,
    pulumi.Output<String>? provisionedBillingModelVersion,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? queueEncryptionKeyType,
    pulumi.Output<AccountQueueProperties>? queueProperties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<AccountRouting>? routing,
    pulumi.Output<AccountSasPolicy>? sasPolicy,
    pulumi.Output<bool>? sftpEnabled,
    pulumi.Output<AccountShareProperties>? shareProperties,
    pulumi.Output<bool>? sharedAccessKeyEnabled,
    pulumi.Output<AccountStaticWebsite>? staticWebsite,
    pulumi.Output<String>? tableEncryptionKeyType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessTier = pulumi.Input.asOptionalInput<String>(accessTier),
      accountKind = pulumi.Input.asOptionalInput<String>(accountKind),
      accountReplicationType = pulumi.Input.asInput<String>(accountReplicationType),
      accountTier = pulumi.Input.asInput<String>(accountTier),
      allowNestedItemsToBePublic = pulumi.Input.asOptionalInput<bool>(allowNestedItemsToBePublic),
      allowedCopyScope = pulumi.Input.asOptionalInput<String>(allowedCopyScope),
      azureFilesAuthentication = pulumi.Input.asOptionalInput<AccountAzureFilesAuthentication>(azureFilesAuthentication),
      blobProperties = pulumi.Input.asOptionalInput<AccountBlobProperties>(blobProperties),
      crossTenantReplicationEnabled = pulumi.Input.asOptionalInput<bool>(crossTenantReplicationEnabled),
      customDomain = pulumi.Input.asOptionalInput<AccountCustomDomain>(customDomain),
      customerManagedKey = pulumi.Input.asOptionalInput<AccountCustomerManagedKey>(customerManagedKey),
      defaultToOauthAuthentication = pulumi.Input.asOptionalInput<bool>(defaultToOauthAuthentication),
      dnsEndpointType = pulumi.Input.asOptionalInput<String>(dnsEndpointType),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      httpsTrafficOnlyEnabled = pulumi.Input.asOptionalInput<bool>(httpsTrafficOnlyEnabled),
      identity = pulumi.Input.asOptionalInput<AccountIdentity>(identity),
      immutabilityPolicy = pulumi.Input.asOptionalInput<AccountImmutabilityPolicy>(immutabilityPolicy),
      infrastructureEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(infrastructureEncryptionEnabled),
      isHnsEnabled = pulumi.Input.asOptionalInput<bool>(isHnsEnabled),
      largeFileShareEnabled = pulumi.Input.asOptionalInput<bool>(largeFileShareEnabled),
      localUserEnabled = pulumi.Input.asOptionalInput<bool>(localUserEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      minTlsVersion = pulumi.Input.asOptionalInput<String>(minTlsVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkRules = pulumi.Input.asOptionalInput<AccountNetworkRules>(networkRules),
      nfsv3Enabled = pulumi.Input.asOptionalInput<bool>(nfsv3Enabled),
      provisionedBillingModelVersion = pulumi.Input.asOptionalInput<String>(provisionedBillingModelVersion),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      queueEncryptionKeyType = pulumi.Input.asOptionalInput<String>(queueEncryptionKeyType),
      queueProperties = pulumi.Input.asOptionalInput<AccountQueueProperties>(queueProperties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routing = pulumi.Input.asOptionalInput<AccountRouting>(routing),
      sasPolicy = pulumi.Input.asOptionalInput<AccountSasPolicy>(sasPolicy),
      sftpEnabled = pulumi.Input.asOptionalInput<bool>(sftpEnabled),
      shareProperties = pulumi.Input.asOptionalInput<AccountShareProperties>(shareProperties),
      sharedAccessKeyEnabled = pulumi.Input.asOptionalInput<bool>(sharedAccessKeyEnabled),
      staticWebsite = pulumi.Input.asOptionalInput<AccountStaticWebsite>(staticWebsite),
      tableEncryptionKeyType = pulumi.Input.asOptionalInput<String>(tableEncryptionKeyType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'accountKind': ?accountKind,
      'accountReplicationType': accountReplicationType,
      'accountTier': accountTier,
      'allowNestedItemsToBePublic': ?allowNestedItemsToBePublic,
      'allowedCopyScope': ?allowedCopyScope,
      'azureFilesAuthentication': ?pulumi.Input.mapOptionalInputValue<AccountAzureFilesAuthentication, Map<String, dynamic>>(azureFilesAuthentication, (value) => value.toMap()),
      'blobProperties': ?pulumi.Input.mapOptionalInputValue<AccountBlobProperties, Map<String, dynamic>>(blobProperties, (value) => value.toMap()),
      'crossTenantReplicationEnabled': ?crossTenantReplicationEnabled,
      'customDomain': ?pulumi.Input.mapOptionalInputValue<AccountCustomDomain, Map<String, dynamic>>(customDomain, (value) => value.toMap()),
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<AccountCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'defaultToOauthAuthentication': ?defaultToOauthAuthentication,
      'dnsEndpointType': ?dnsEndpointType,
      'edgeZone': ?edgeZone,
      'httpsTrafficOnlyEnabled': ?httpsTrafficOnlyEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'immutabilityPolicy': ?pulumi.Input.mapOptionalInputValue<AccountImmutabilityPolicy, Map<String, dynamic>>(immutabilityPolicy, (value) => value.toMap()),
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'isHnsEnabled': ?isHnsEnabled,
      'largeFileShareEnabled': ?largeFileShareEnabled,
      'localUserEnabled': ?localUserEnabled,
      'location': ?location,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'networkRules': ?pulumi.Input.mapOptionalInputValue<AccountNetworkRules, Map<String, dynamic>>(networkRules, (value) => value.toMap()),
      'nfsv3Enabled': ?nfsv3Enabled,
      'provisionedBillingModelVersion': ?provisionedBillingModelVersion,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'queueEncryptionKeyType': ?queueEncryptionKeyType,
      'queueProperties': ?pulumi.Input.mapOptionalInputValue<AccountQueueProperties, Map<String, dynamic>>(queueProperties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'routing': ?pulumi.Input.mapOptionalInputValue<AccountRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'sasPolicy': ?pulumi.Input.mapOptionalInputValue<AccountSasPolicy, Map<String, dynamic>>(sasPolicy, (value) => value.toMap()),
      'sftpEnabled': ?sftpEnabled,
      'shareProperties': ?pulumi.Input.mapOptionalInputValue<AccountShareProperties, Map<String, dynamic>>(shareProperties, (value) => value.toMap()),
      'sharedAccessKeyEnabled': ?sharedAccessKeyEnabled,
      'staticWebsite': ?pulumi.Input.mapOptionalInputValue<AccountStaticWebsite, Map<String, dynamic>>(staticWebsite, (value) => value.toMap()),
      'tableEncryptionKeyType': ?tableEncryptionKeyType,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accessTier: map['accessTier'] == null ? null : pulumi.Output.create<String>(map['accessTier'] as String),
      accountKind: map['accountKind'] == null ? null : pulumi.Output.create<String>(map['accountKind'] as String),
      accountReplicationType: pulumi.Output.create<String>(map['accountReplicationType'] as String),
      accountTier: pulumi.Output.create<String>(map['accountTier'] as String),
      allowNestedItemsToBePublic: map['allowNestedItemsToBePublic'] == null ? null : pulumi.Output.create<bool>(map['allowNestedItemsToBePublic'] as bool),
      allowedCopyScope: map['allowedCopyScope'] == null ? null : pulumi.Output.create<String>(map['allowedCopyScope'] as String),
      azureFilesAuthentication: map['azureFilesAuthentication'] == null ? null : pulumi.Output.create<AccountAzureFilesAuthentication>(AccountAzureFilesAuthentication.fromMap((map['azureFilesAuthentication'] as Map).cast<String, dynamic>())),
      blobProperties: map['blobProperties'] == null ? null : pulumi.Output.create<AccountBlobProperties>(AccountBlobProperties.fromMap((map['blobProperties'] as Map).cast<String, dynamic>())),
      crossTenantReplicationEnabled: map['crossTenantReplicationEnabled'] == null ? null : pulumi.Output.create<bool>(map['crossTenantReplicationEnabled'] as bool),
      customDomain: map['customDomain'] == null ? null : pulumi.Output.create<AccountCustomDomain>(AccountCustomDomain.fromMap((map['customDomain'] as Map).cast<String, dynamic>())),
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<AccountCustomerManagedKey>(AccountCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())),
      defaultToOauthAuthentication: map['defaultToOauthAuthentication'] == null ? null : pulumi.Output.create<bool>(map['defaultToOauthAuthentication'] as bool),
      dnsEndpointType: map['dnsEndpointType'] == null ? null : pulumi.Output.create<String>(map['dnsEndpointType'] as String),
      edgeZone: map['edgeZone'] == null ? null : pulumi.Output.create<String>(map['edgeZone'] as String),
      httpsTrafficOnlyEnabled: map['httpsTrafficOnlyEnabled'] == null ? null : pulumi.Output.create<bool>(map['httpsTrafficOnlyEnabled'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      immutabilityPolicy: map['immutabilityPolicy'] == null ? null : pulumi.Output.create<AccountImmutabilityPolicy>(AccountImmutabilityPolicy.fromMap((map['immutabilityPolicy'] as Map).cast<String, dynamic>())),
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['infrastructureEncryptionEnabled'] as bool),
      isHnsEnabled: map['isHnsEnabled'] == null ? null : pulumi.Output.create<bool>(map['isHnsEnabled'] as bool),
      largeFileShareEnabled: map['largeFileShareEnabled'] == null ? null : pulumi.Output.create<bool>(map['largeFileShareEnabled'] as bool),
      localUserEnabled: map['localUserEnabled'] == null ? null : pulumi.Output.create<bool>(map['localUserEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minTlsVersion: map['minTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minTlsVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkRules: map['networkRules'] == null ? null : pulumi.Output.create<AccountNetworkRules>(AccountNetworkRules.fromMap((map['networkRules'] as Map).cast<String, dynamic>())),
      nfsv3Enabled: map['nfsv3Enabled'] == null ? null : pulumi.Output.create<bool>(map['nfsv3Enabled'] as bool),
      provisionedBillingModelVersion: map['provisionedBillingModelVersion'] == null ? null : pulumi.Output.create<String>(map['provisionedBillingModelVersion'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      queueEncryptionKeyType: map['queueEncryptionKeyType'] == null ? null : pulumi.Output.create<String>(map['queueEncryptionKeyType'] as String),
      queueProperties: map['queueProperties'] == null ? null : pulumi.Output.create<AccountQueueProperties>(AccountQueueProperties.fromMap((map['queueProperties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routing: map['routing'] == null ? null : pulumi.Output.create<AccountRouting>(AccountRouting.fromMap((map['routing'] as Map).cast<String, dynamic>())),
      sasPolicy: map['sasPolicy'] == null ? null : pulumi.Output.create<AccountSasPolicy>(AccountSasPolicy.fromMap((map['sasPolicy'] as Map).cast<String, dynamic>())),
      sftpEnabled: map['sftpEnabled'] == null ? null : pulumi.Output.create<bool>(map['sftpEnabled'] as bool),
      shareProperties: map['shareProperties'] == null ? null : pulumi.Output.create<AccountShareProperties>(AccountShareProperties.fromMap((map['shareProperties'] as Map).cast<String, dynamic>())),
      sharedAccessKeyEnabled: map['sharedAccessKeyEnabled'] == null ? null : pulumi.Output.create<bool>(map['sharedAccessKeyEnabled'] as bool),
      staticWebsite: map['staticWebsite'] == null ? null : pulumi.Output.create<AccountStaticWebsite>(AccountStaticWebsite.fromMap((map['staticWebsite'] as Map).cast<String, dynamic>())),
      tableEncryptionKeyType: map['tableEncryptionKeyType'] == null ? null : pulumi.Output.create<String>(map['tableEncryptionKeyType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


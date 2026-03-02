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

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// Defines the access tier for `BlobStorage`, `FileStorage` and `StorageV2` accounts. Valid options are `Hot`, `Cool`, `Cold` and `Premium`. Defaults to `Hot`.
  final pulumi.Input<String>? accessTier;
  /// Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Defaults to `StorageV2`.
  ///
  /// > **Note:** Changing the `account_kind` value from `Storage` to `StorageV2` will not trigger a force new on the storage account, it will only upgrade the existing storage account from `Storage` to `StorageV2` keeping the existing storage account in place.
  final pulumi.Input<String>? accountKind;
  /// Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. Changing this forces a new resource to be created when types `LRS`, `GRS` and `RAGRS` are changed to `ZRS`, `GZRS` or `RAGZRS` and vice versa.
  final pulumi.Input<String>? accountReplicationType;
  /// Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Blobs with a tier of `Premium` are of account kind `StorageV2`.
  final pulumi.Input<String>? accountTier;
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
  /// The primary access key for the storage account.
  final pulumi.Input<String>? primaryAccessKey;
  /// The connection string associated with the primary blob location.
  final pulumi.Input<String>? primaryBlobConnectionString;
  /// The endpoint URL for blob storage in the primary location.
  final pulumi.Input<String>? primaryBlobEndpoint;
  /// The hostname with port if applicable for blob storage in the primary location.
  final pulumi.Input<String>? primaryBlobHost;
  /// The internet routing endpoint URL for blob storage in the primary location.
  final pulumi.Input<String>? primaryBlobInternetEndpoint;
  /// The internet routing hostname with port if applicable for blob storage in the primary location.
  final pulumi.Input<String>? primaryBlobInternetHost;
  /// The microsoft routing endpoint URL for blob storage in the primary location.
  final pulumi.Input<String>? primaryBlobMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for blob storage in the primary location.
  final pulumi.Input<String>? primaryBlobMicrosoftHost;
  /// The connection string associated with the primary location.
  final pulumi.Input<String>? primaryConnectionString;
  /// The endpoint URL for DFS storage in the primary location.
  final pulumi.Input<String>? primaryDfsEndpoint;
  /// The hostname with port if applicable for DFS storage in the primary location.
  final pulumi.Input<String>? primaryDfsHost;
  /// The internet routing endpoint URL for DFS storage in the primary location.
  final pulumi.Input<String>? primaryDfsInternetEndpoint;
  /// The internet routing hostname with port if applicable for DFS storage in the primary location.
  final pulumi.Input<String>? primaryDfsInternetHost;
  /// The microsoft routing endpoint URL for DFS storage in the primary location.
  final pulumi.Input<String>? primaryDfsMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for DFS storage in the primary location.
  final pulumi.Input<String>? primaryDfsMicrosoftHost;
  /// The endpoint URL for file storage in the primary location.
  final pulumi.Input<String>? primaryFileEndpoint;
  /// The hostname with port if applicable for file storage in the primary location.
  final pulumi.Input<String>? primaryFileHost;
  /// The internet routing endpoint URL for file storage in the primary location.
  final pulumi.Input<String>? primaryFileInternetEndpoint;
  /// The internet routing hostname with port if applicable for file storage in the primary location.
  final pulumi.Input<String>? primaryFileInternetHost;
  /// The microsoft routing endpoint URL for file storage in the primary location.
  final pulumi.Input<String>? primaryFileMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for file storage in the primary location.
  final pulumi.Input<String>? primaryFileMicrosoftHost;
  /// The primary location of the storage account.
  final pulumi.Input<String>? primaryLocation;
  /// The endpoint URL for queue storage in the primary location.
  final pulumi.Input<String>? primaryQueueEndpoint;
  /// The hostname with port if applicable for queue storage in the primary location.
  final pulumi.Input<String>? primaryQueueHost;
  /// The microsoft routing endpoint URL for queue storage in the primary location.
  final pulumi.Input<String>? primaryQueueMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for queue storage in the primary location.
  final pulumi.Input<String>? primaryQueueMicrosoftHost;
  /// The endpoint URL for table storage in the primary location.
  final pulumi.Input<String>? primaryTableEndpoint;
  /// The hostname with port if applicable for table storage in the primary location.
  final pulumi.Input<String>? primaryTableHost;
  /// The microsoft routing endpoint URL for table storage in the primary location.
  final pulumi.Input<String>? primaryTableMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for table storage in the primary location.
  final pulumi.Input<String>? primaryTableMicrosoftHost;
  /// The endpoint URL for web storage in the primary location.
  final pulumi.Input<String>? primaryWebEndpoint;
  /// The hostname with port if applicable for web storage in the primary location.
  final pulumi.Input<String>? primaryWebHost;
  /// The internet routing endpoint URL for web storage in the primary location.
  final pulumi.Input<String>? primaryWebInternetEndpoint;
  /// The internet routing hostname with port if applicable for web storage in the primary location.
  final pulumi.Input<String>? primaryWebInternetHost;
  /// The microsoft routing endpoint URL for web storage in the primary location.
  final pulumi.Input<String>? primaryWebMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for web storage in the primary location.
  final pulumi.Input<String>? primaryWebMicrosoftHost;
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
  final pulumi.Input<String>? resourceGroupName;
  /// A `routing` block as defined below.
  final pulumi.Input<AccountRouting>? routing;
  /// A `sas_policy` block as defined below.
  final pulumi.Input<AccountSasPolicy>? sasPolicy;
  /// The secondary access key for the storage account.
  final pulumi.Input<String>? secondaryAccessKey;
  /// The connection string associated with the secondary blob location.
  final pulumi.Input<String>? secondaryBlobConnectionString;
  /// The endpoint URL for blob storage in the secondary location.
  final pulumi.Input<String>? secondaryBlobEndpoint;
  /// The hostname with port if applicable for blob storage in the secondary location.
  final pulumi.Input<String>? secondaryBlobHost;
  /// The internet routing endpoint URL for blob storage in the secondary location.
  final pulumi.Input<String>? secondaryBlobInternetEndpoint;
  /// The internet routing hostname with port if applicable for blob storage in the secondary location.
  final pulumi.Input<String>? secondaryBlobInternetHost;
  /// The microsoft routing endpoint URL for blob storage in the secondary location.
  final pulumi.Input<String>? secondaryBlobMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for blob storage in the secondary location.
  final pulumi.Input<String>? secondaryBlobMicrosoftHost;
  /// The connection string associated with the secondary location.
  final pulumi.Input<String>? secondaryConnectionString;
  /// The endpoint URL for DFS storage in the secondary location.
  final pulumi.Input<String>? secondaryDfsEndpoint;
  /// The hostname with port if applicable for DFS storage in the secondary location.
  final pulumi.Input<String>? secondaryDfsHost;
  /// The internet routing endpoint URL for DFS storage in the secondary location.
  final pulumi.Input<String>? secondaryDfsInternetEndpoint;
  /// The internet routing hostname with port if applicable for DFS storage in the secondary location.
  final pulumi.Input<String>? secondaryDfsInternetHost;
  /// The microsoft routing endpoint URL for DFS storage in the secondary location.
  final pulumi.Input<String>? secondaryDfsMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for DFS storage in the secondary location.
  final pulumi.Input<String>? secondaryDfsMicrosoftHost;
  /// The endpoint URL for file storage in the secondary location.
  final pulumi.Input<String>? secondaryFileEndpoint;
  /// The hostname with port if applicable for file storage in the secondary location.
  final pulumi.Input<String>? secondaryFileHost;
  /// The internet routing endpoint URL for file storage in the secondary location.
  final pulumi.Input<String>? secondaryFileInternetEndpoint;
  /// The internet routing hostname with port if applicable for file storage in the secondary location.
  final pulumi.Input<String>? secondaryFileInternetHost;
  /// The microsoft routing endpoint URL for file storage in the secondary location.
  final pulumi.Input<String>? secondaryFileMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for file storage in the secondary location.
  final pulumi.Input<String>? secondaryFileMicrosoftHost;
  /// The secondary location of the storage account.
  final pulumi.Input<String>? secondaryLocation;
  /// The endpoint URL for queue storage in the secondary location.
  final pulumi.Input<String>? secondaryQueueEndpoint;
  /// The hostname with port if applicable for queue storage in the secondary location.
  final pulumi.Input<String>? secondaryQueueHost;
  /// The microsoft routing endpoint URL for queue storage in the secondary location.
  final pulumi.Input<String>? secondaryQueueMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for queue storage in the secondary location.
  final pulumi.Input<String>? secondaryQueueMicrosoftHost;
  /// The endpoint URL for table storage in the secondary location.
  final pulumi.Input<String>? secondaryTableEndpoint;
  /// The hostname with port if applicable for table storage in the secondary location.
  final pulumi.Input<String>? secondaryTableHost;
  /// The microsoft routing endpoint URL for table storage in the secondary location.
  final pulumi.Input<String>? secondaryTableMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for table storage in the secondary location.
  final pulumi.Input<String>? secondaryTableMicrosoftHost;
  /// The endpoint URL for web storage in the secondary location.
  final pulumi.Input<String>? secondaryWebEndpoint;
  /// The hostname with port if applicable for web storage in the secondary location.
  final pulumi.Input<String>? secondaryWebHost;
  /// The internet routing endpoint URL for web storage in the secondary location.
  final pulumi.Input<String>? secondaryWebInternetEndpoint;
  /// The internet routing hostname with port if applicable for web storage in the secondary location.
  final pulumi.Input<String>? secondaryWebInternetHost;
  /// The microsoft routing endpoint URL for web storage in the secondary location.
  final pulumi.Input<String>? secondaryWebMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for web storage in the secondary location.
  final pulumi.Input<String>? secondaryWebMicrosoftHost;
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

  /// Creates a new [AccountState].
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
  /// [primaryAccessKey] The primary access key for the storage account.
  /// [primaryBlobConnectionString] The connection string associated with the primary blob location.
  /// [primaryBlobEndpoint] The endpoint URL for blob storage in the primary location.
  /// [primaryBlobHost] The hostname with port if applicable for blob storage in the primary location.
  /// [primaryBlobInternetEndpoint] The internet routing endpoint URL for blob storage in the primary location.
  /// [primaryBlobInternetHost] The internet routing hostname with port if applicable for blob storage in the primary location.
  /// [primaryBlobMicrosoftEndpoint] The microsoft routing endpoint URL for blob storage in the primary location.
  /// [primaryBlobMicrosoftHost] The microsoft routing hostname with port if applicable for blob storage in the primary location.
  /// [primaryConnectionString] The connection string associated with the primary location.
  /// [primaryDfsEndpoint] The endpoint URL for DFS storage in the primary location.
  /// [primaryDfsHost] The hostname with port if applicable for DFS storage in the primary location.
  /// [primaryDfsInternetEndpoint] The internet routing endpoint URL for DFS storage in the primary location.
  /// [primaryDfsInternetHost] The internet routing hostname with port if applicable for DFS storage in the primary location.
  /// [primaryDfsMicrosoftEndpoint] The microsoft routing endpoint URL for DFS storage in the primary location.
  /// [primaryDfsMicrosoftHost] The microsoft routing hostname with port if applicable for DFS storage in the primary location.
  /// [primaryFileEndpoint] The endpoint URL for file storage in the primary location.
  /// [primaryFileHost] The hostname with port if applicable for file storage in the primary location.
  /// [primaryFileInternetEndpoint] The internet routing endpoint URL for file storage in the primary location.
  /// [primaryFileInternetHost] The internet routing hostname with port if applicable for file storage in the primary location.
  /// [primaryFileMicrosoftEndpoint] The microsoft routing endpoint URL for file storage in the primary location.
  /// [primaryFileMicrosoftHost] The microsoft routing hostname with port if applicable for file storage in the primary location.
  /// [primaryLocation] The primary location of the storage account.
  /// [primaryQueueEndpoint] The endpoint URL for queue storage in the primary location.
  /// [primaryQueueHost] The hostname with port if applicable for queue storage in the primary location.
  /// [primaryQueueMicrosoftEndpoint] The microsoft routing endpoint URL for queue storage in the primary location.
  /// [primaryQueueMicrosoftHost] The microsoft routing hostname with port if applicable for queue storage in the primary location.
  /// [primaryTableEndpoint] The endpoint URL for table storage in the primary location.
  /// [primaryTableHost] The hostname with port if applicable for table storage in the primary location.
  /// [primaryTableMicrosoftEndpoint] The microsoft routing endpoint URL for table storage in the primary location.
  /// [primaryTableMicrosoftHost] The microsoft routing hostname with port if applicable for table storage in the primary location.
  /// [primaryWebEndpoint] The endpoint URL for web storage in the primary location.
  /// [primaryWebHost] The hostname with port if applicable for web storage in the primary location.
  /// [primaryWebInternetEndpoint] The internet routing endpoint URL for web storage in the primary location.
  /// [primaryWebInternetHost] The internet routing hostname with port if applicable for web storage in the primary location.
  /// [primaryWebMicrosoftEndpoint] The microsoft routing endpoint URL for web storage in the primary location.
  /// [primaryWebMicrosoftHost] The microsoft routing hostname with port if applicable for web storage in the primary location.
  /// [provisionedBillingModelVersion] Specifies the version of the **provisioned** billing model (e.g. when `account_kind = "FileStorage"` for Storage File). Possible value is `V2`. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether the public network access is enabled? Defaults to `true`.
  /// [queueEncryptionKeyType] The encryption type of the queue service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  /// [queueProperties] A `queue_properties` block as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the storage account. Changing this forces a new resource to be created.
  /// [routing] A `routing` block as defined below.
  /// [sasPolicy] A `sas_policy` block as defined below.
  /// [secondaryAccessKey] The secondary access key for the storage account.
  /// [secondaryBlobConnectionString] The connection string associated with the secondary blob location.
  /// [secondaryBlobEndpoint] The endpoint URL for blob storage in the secondary location.
  /// [secondaryBlobHost] The hostname with port if applicable for blob storage in the secondary location.
  /// [secondaryBlobInternetEndpoint] The internet routing endpoint URL for blob storage in the secondary location.
  /// [secondaryBlobInternetHost] The internet routing hostname with port if applicable for blob storage in the secondary location.
  /// [secondaryBlobMicrosoftEndpoint] The microsoft routing endpoint URL for blob storage in the secondary location.
  /// [secondaryBlobMicrosoftHost] The microsoft routing hostname with port if applicable for blob storage in the secondary location.
  /// [secondaryConnectionString] The connection string associated with the secondary location.
  /// [secondaryDfsEndpoint] The endpoint URL for DFS storage in the secondary location.
  /// [secondaryDfsHost] The hostname with port if applicable for DFS storage in the secondary location.
  /// [secondaryDfsInternetEndpoint] The internet routing endpoint URL for DFS storage in the secondary location.
  /// [secondaryDfsInternetHost] The internet routing hostname with port if applicable for DFS storage in the secondary location.
  /// [secondaryDfsMicrosoftEndpoint] The microsoft routing endpoint URL for DFS storage in the secondary location.
  /// [secondaryDfsMicrosoftHost] The microsoft routing hostname with port if applicable for DFS storage in the secondary location.
  /// [secondaryFileEndpoint] The endpoint URL for file storage in the secondary location.
  /// [secondaryFileHost] The hostname with port if applicable for file storage in the secondary location.
  /// [secondaryFileInternetEndpoint] The internet routing endpoint URL for file storage in the secondary location.
  /// [secondaryFileInternetHost] The internet routing hostname with port if applicable for file storage in the secondary location.
  /// [secondaryFileMicrosoftEndpoint] The microsoft routing endpoint URL for file storage in the secondary location.
  /// [secondaryFileMicrosoftHost] The microsoft routing hostname with port if applicable for file storage in the secondary location.
  /// [secondaryLocation] The secondary location of the storage account.
  /// [secondaryQueueEndpoint] The endpoint URL for queue storage in the secondary location.
  /// [secondaryQueueHost] The hostname with port if applicable for queue storage in the secondary location.
  /// [secondaryQueueMicrosoftEndpoint] The microsoft routing endpoint URL for queue storage in the secondary location.
  /// [secondaryQueueMicrosoftHost] The microsoft routing hostname with port if applicable for queue storage in the secondary location.
  /// [secondaryTableEndpoint] The endpoint URL for table storage in the secondary location.
  /// [secondaryTableHost] The hostname with port if applicable for table storage in the secondary location.
  /// [secondaryTableMicrosoftEndpoint] The microsoft routing endpoint URL for table storage in the secondary location.
  /// [secondaryTableMicrosoftHost] The microsoft routing hostname with port if applicable for table storage in the secondary location.
  /// [secondaryWebEndpoint] The endpoint URL for web storage in the secondary location.
  /// [secondaryWebHost] The hostname with port if applicable for web storage in the secondary location.
  /// [secondaryWebInternetEndpoint] The internet routing endpoint URL for web storage in the secondary location.
  /// [secondaryWebInternetHost] The internet routing hostname with port if applicable for web storage in the secondary location.
  /// [secondaryWebMicrosoftEndpoint] The microsoft routing endpoint URL for web storage in the secondary location.
  /// [secondaryWebMicrosoftHost] The microsoft routing hostname with port if applicable for web storage in the secondary location.
  /// [sftpEnabled] Boolean, enable SFTP for the storage account
  /// [shareProperties] A `share_properties` block as defined below.
  /// [sharedAccessKeyEnabled] Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`.
  /// [staticWebsite] A `static_website` block as defined below.
  /// [tableEncryptionKeyType] The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  /// [tags] A mapping of tags to assign to the resource.
  AccountState({
    this.accessTier,
    this.accountKind,
    this.accountReplicationType,
    this.accountTier,
    this.allowNestedItemsToBePublic,
    this.allowedCopyScope,
    this.azureFilesAuthentication,
    this.blobProperties,
    this.crossTenantReplicationEnabled,
    this.customDomain,
    this.customerManagedKey,
    this.defaultToOauthAuthentication,
    this.dnsEndpointType,
    this.edgeZone,
    this.httpsTrafficOnlyEnabled,
    this.identity,
    this.immutabilityPolicy,
    this.infrastructureEncryptionEnabled,
    this.isHnsEnabled,
    this.largeFileShareEnabled,
    this.localUserEnabled,
    this.location,
    this.minTlsVersion,
    this.name,
    this.networkRules,
    this.nfsv3Enabled,
    this.primaryAccessKey,
    this.primaryBlobConnectionString,
    this.primaryBlobEndpoint,
    this.primaryBlobHost,
    this.primaryBlobInternetEndpoint,
    this.primaryBlobInternetHost,
    this.primaryBlobMicrosoftEndpoint,
    this.primaryBlobMicrosoftHost,
    this.primaryConnectionString,
    this.primaryDfsEndpoint,
    this.primaryDfsHost,
    this.primaryDfsInternetEndpoint,
    this.primaryDfsInternetHost,
    this.primaryDfsMicrosoftEndpoint,
    this.primaryDfsMicrosoftHost,
    this.primaryFileEndpoint,
    this.primaryFileHost,
    this.primaryFileInternetEndpoint,
    this.primaryFileInternetHost,
    this.primaryFileMicrosoftEndpoint,
    this.primaryFileMicrosoftHost,
    this.primaryLocation,
    this.primaryQueueEndpoint,
    this.primaryQueueHost,
    this.primaryQueueMicrosoftEndpoint,
    this.primaryQueueMicrosoftHost,
    this.primaryTableEndpoint,
    this.primaryTableHost,
    this.primaryTableMicrosoftEndpoint,
    this.primaryTableMicrosoftHost,
    this.primaryWebEndpoint,
    this.primaryWebHost,
    this.primaryWebInternetEndpoint,
    this.primaryWebInternetHost,
    this.primaryWebMicrosoftEndpoint,
    this.primaryWebMicrosoftHost,
    this.provisionedBillingModelVersion,
    this.publicNetworkAccessEnabled,
    this.queueEncryptionKeyType,
    this.queueProperties,
    this.resourceGroupName,
    this.routing,
    this.sasPolicy,
    this.secondaryAccessKey,
    this.secondaryBlobConnectionString,
    this.secondaryBlobEndpoint,
    this.secondaryBlobHost,
    this.secondaryBlobInternetEndpoint,
    this.secondaryBlobInternetHost,
    this.secondaryBlobMicrosoftEndpoint,
    this.secondaryBlobMicrosoftHost,
    this.secondaryConnectionString,
    this.secondaryDfsEndpoint,
    this.secondaryDfsHost,
    this.secondaryDfsInternetEndpoint,
    this.secondaryDfsInternetHost,
    this.secondaryDfsMicrosoftEndpoint,
    this.secondaryDfsMicrosoftHost,
    this.secondaryFileEndpoint,
    this.secondaryFileHost,
    this.secondaryFileInternetEndpoint,
    this.secondaryFileInternetHost,
    this.secondaryFileMicrosoftEndpoint,
    this.secondaryFileMicrosoftHost,
    this.secondaryLocation,
    this.secondaryQueueEndpoint,
    this.secondaryQueueHost,
    this.secondaryQueueMicrosoftEndpoint,
    this.secondaryQueueMicrosoftHost,
    this.secondaryTableEndpoint,
    this.secondaryTableHost,
    this.secondaryTableMicrosoftEndpoint,
    this.secondaryTableMicrosoftHost,
    this.secondaryWebEndpoint,
    this.secondaryWebHost,
    this.secondaryWebInternetEndpoint,
    this.secondaryWebInternetHost,
    this.secondaryWebMicrosoftEndpoint,
    this.secondaryWebMicrosoftHost,
    this.sftpEnabled,
    this.shareProperties,
    this.sharedAccessKeyEnabled,
    this.staticWebsite,
    this.tableEncryptionKeyType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'accountKind': ?accountKind,
      'accountReplicationType': ?accountReplicationType,
      'accountTier': ?accountTier,
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
      'primaryAccessKey': ?primaryAccessKey,
      'primaryBlobConnectionString': ?primaryBlobConnectionString,
      'primaryBlobEndpoint': ?primaryBlobEndpoint,
      'primaryBlobHost': ?primaryBlobHost,
      'primaryBlobInternetEndpoint': ?primaryBlobInternetEndpoint,
      'primaryBlobInternetHost': ?primaryBlobInternetHost,
      'primaryBlobMicrosoftEndpoint': ?primaryBlobMicrosoftEndpoint,
      'primaryBlobMicrosoftHost': ?primaryBlobMicrosoftHost,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryDfsEndpoint': ?primaryDfsEndpoint,
      'primaryDfsHost': ?primaryDfsHost,
      'primaryDfsInternetEndpoint': ?primaryDfsInternetEndpoint,
      'primaryDfsInternetHost': ?primaryDfsInternetHost,
      'primaryDfsMicrosoftEndpoint': ?primaryDfsMicrosoftEndpoint,
      'primaryDfsMicrosoftHost': ?primaryDfsMicrosoftHost,
      'primaryFileEndpoint': ?primaryFileEndpoint,
      'primaryFileHost': ?primaryFileHost,
      'primaryFileInternetEndpoint': ?primaryFileInternetEndpoint,
      'primaryFileInternetHost': ?primaryFileInternetHost,
      'primaryFileMicrosoftEndpoint': ?primaryFileMicrosoftEndpoint,
      'primaryFileMicrosoftHost': ?primaryFileMicrosoftHost,
      'primaryLocation': ?primaryLocation,
      'primaryQueueEndpoint': ?primaryQueueEndpoint,
      'primaryQueueHost': ?primaryQueueHost,
      'primaryQueueMicrosoftEndpoint': ?primaryQueueMicrosoftEndpoint,
      'primaryQueueMicrosoftHost': ?primaryQueueMicrosoftHost,
      'primaryTableEndpoint': ?primaryTableEndpoint,
      'primaryTableHost': ?primaryTableHost,
      'primaryTableMicrosoftEndpoint': ?primaryTableMicrosoftEndpoint,
      'primaryTableMicrosoftHost': ?primaryTableMicrosoftHost,
      'primaryWebEndpoint': ?primaryWebEndpoint,
      'primaryWebHost': ?primaryWebHost,
      'primaryWebInternetEndpoint': ?primaryWebInternetEndpoint,
      'primaryWebInternetHost': ?primaryWebInternetHost,
      'primaryWebMicrosoftEndpoint': ?primaryWebMicrosoftEndpoint,
      'primaryWebMicrosoftHost': ?primaryWebMicrosoftHost,
      'provisionedBillingModelVersion': ?provisionedBillingModelVersion,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'queueEncryptionKeyType': ?queueEncryptionKeyType,
      'queueProperties': ?pulumi.Input.mapOptionalInputValue<AccountQueueProperties, Map<String, dynamic>>(queueProperties, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'routing': ?pulumi.Input.mapOptionalInputValue<AccountRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'sasPolicy': ?pulumi.Input.mapOptionalInputValue<AccountSasPolicy, Map<String, dynamic>>(sasPolicy, (value) => value.toMap()),
      'secondaryAccessKey': ?secondaryAccessKey,
      'secondaryBlobConnectionString': ?secondaryBlobConnectionString,
      'secondaryBlobEndpoint': ?secondaryBlobEndpoint,
      'secondaryBlobHost': ?secondaryBlobHost,
      'secondaryBlobInternetEndpoint': ?secondaryBlobInternetEndpoint,
      'secondaryBlobInternetHost': ?secondaryBlobInternetHost,
      'secondaryBlobMicrosoftEndpoint': ?secondaryBlobMicrosoftEndpoint,
      'secondaryBlobMicrosoftHost': ?secondaryBlobMicrosoftHost,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryDfsEndpoint': ?secondaryDfsEndpoint,
      'secondaryDfsHost': ?secondaryDfsHost,
      'secondaryDfsInternetEndpoint': ?secondaryDfsInternetEndpoint,
      'secondaryDfsInternetHost': ?secondaryDfsInternetHost,
      'secondaryDfsMicrosoftEndpoint': ?secondaryDfsMicrosoftEndpoint,
      'secondaryDfsMicrosoftHost': ?secondaryDfsMicrosoftHost,
      'secondaryFileEndpoint': ?secondaryFileEndpoint,
      'secondaryFileHost': ?secondaryFileHost,
      'secondaryFileInternetEndpoint': ?secondaryFileInternetEndpoint,
      'secondaryFileInternetHost': ?secondaryFileInternetHost,
      'secondaryFileMicrosoftEndpoint': ?secondaryFileMicrosoftEndpoint,
      'secondaryFileMicrosoftHost': ?secondaryFileMicrosoftHost,
      'secondaryLocation': ?secondaryLocation,
      'secondaryQueueEndpoint': ?secondaryQueueEndpoint,
      'secondaryQueueHost': ?secondaryQueueHost,
      'secondaryQueueMicrosoftEndpoint': ?secondaryQueueMicrosoftEndpoint,
      'secondaryQueueMicrosoftHost': ?secondaryQueueMicrosoftHost,
      'secondaryTableEndpoint': ?secondaryTableEndpoint,
      'secondaryTableHost': ?secondaryTableHost,
      'secondaryTableMicrosoftEndpoint': ?secondaryTableMicrosoftEndpoint,
      'secondaryTableMicrosoftHost': ?secondaryTableMicrosoftHost,
      'secondaryWebEndpoint': ?secondaryWebEndpoint,
      'secondaryWebHost': ?secondaryWebHost,
      'secondaryWebInternetEndpoint': ?secondaryWebInternetEndpoint,
      'secondaryWebInternetHost': ?secondaryWebInternetHost,
      'secondaryWebMicrosoftEndpoint': ?secondaryWebMicrosoftEndpoint,
      'secondaryWebMicrosoftHost': ?secondaryWebMicrosoftHost,
      'sftpEnabled': ?sftpEnabled,
      'shareProperties': ?pulumi.Input.mapOptionalInputValue<AccountShareProperties, Map<String, dynamic>>(shareProperties, (value) => value.toMap()),
      'sharedAccessKeyEnabled': ?sharedAccessKeyEnabled,
      'staticWebsite': ?pulumi.Input.mapOptionalInputValue<AccountStaticWebsite, Map<String, dynamic>>(staticWebsite, (value) => value.toMap()),
      'tableEncryptionKeyType': ?tableEncryptionKeyType,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accessTier: map['accessTier'] == null ? null : (map['accessTier']! as String).input(),
      accountKind: map['accountKind'] == null ? null : (map['accountKind']! as String).input(),
      accountReplicationType: map['accountReplicationType'] == null ? null : (map['accountReplicationType']! as String).input(),
      accountTier: map['accountTier'] == null ? null : (map['accountTier']! as String).input(),
      allowNestedItemsToBePublic: map['allowNestedItemsToBePublic'] == null ? null : (map['allowNestedItemsToBePublic']! as bool).input(),
      allowedCopyScope: map['allowedCopyScope'] == null ? null : (map['allowedCopyScope']! as String).input(),
      azureFilesAuthentication: map['azureFilesAuthentication'] == null ? null : (AccountAzureFilesAuthentication.fromMap((map['azureFilesAuthentication']! as Map).cast<String, dynamic>())).input(),
      blobProperties: map['blobProperties'] == null ? null : (AccountBlobProperties.fromMap((map['blobProperties']! as Map).cast<String, dynamic>())).input(),
      crossTenantReplicationEnabled: map['crossTenantReplicationEnabled'] == null ? null : (map['crossTenantReplicationEnabled']! as bool).input(),
      customDomain: map['customDomain'] == null ? null : (AccountCustomDomain.fromMap((map['customDomain']! as Map).cast<String, dynamic>())).input(),
      customerManagedKey: map['customerManagedKey'] == null ? null : (AccountCustomerManagedKey.fromMap((map['customerManagedKey']! as Map).cast<String, dynamic>())).input(),
      defaultToOauthAuthentication: map['defaultToOauthAuthentication'] == null ? null : (map['defaultToOauthAuthentication']! as bool).input(),
      dnsEndpointType: map['dnsEndpointType'] == null ? null : (map['dnsEndpointType']! as String).input(),
      edgeZone: map['edgeZone'] == null ? null : (map['edgeZone']! as String).input(),
      httpsTrafficOnlyEnabled: map['httpsTrafficOnlyEnabled'] == null ? null : (map['httpsTrafficOnlyEnabled']! as bool).input(),
      identity: map['identity'] == null ? null : (AccountIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      immutabilityPolicy: map['immutabilityPolicy'] == null ? null : (AccountImmutabilityPolicy.fromMap((map['immutabilityPolicy']! as Map).cast<String, dynamic>())).input(),
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] == null ? null : (map['infrastructureEncryptionEnabled']! as bool).input(),
      isHnsEnabled: map['isHnsEnabled'] == null ? null : (map['isHnsEnabled']! as bool).input(),
      largeFileShareEnabled: map['largeFileShareEnabled'] == null ? null : (map['largeFileShareEnabled']! as bool).input(),
      localUserEnabled: map['localUserEnabled'] == null ? null : (map['localUserEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkRules: map['networkRules'] == null ? null : (AccountNetworkRules.fromMap((map['networkRules']! as Map).cast<String, dynamic>())).input(),
      nfsv3Enabled: map['nfsv3Enabled'] == null ? null : (map['nfsv3Enabled']! as bool).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey']! as String).input(),
      primaryBlobConnectionString: map['primaryBlobConnectionString'] == null ? null : (map['primaryBlobConnectionString']! as String).input(),
      primaryBlobEndpoint: map['primaryBlobEndpoint'] == null ? null : (map['primaryBlobEndpoint']! as String).input(),
      primaryBlobHost: map['primaryBlobHost'] == null ? null : (map['primaryBlobHost']! as String).input(),
      primaryBlobInternetEndpoint: map['primaryBlobInternetEndpoint'] == null ? null : (map['primaryBlobInternetEndpoint']! as String).input(),
      primaryBlobInternetHost: map['primaryBlobInternetHost'] == null ? null : (map['primaryBlobInternetHost']! as String).input(),
      primaryBlobMicrosoftEndpoint: map['primaryBlobMicrosoftEndpoint'] == null ? null : (map['primaryBlobMicrosoftEndpoint']! as String).input(),
      primaryBlobMicrosoftHost: map['primaryBlobMicrosoftHost'] == null ? null : (map['primaryBlobMicrosoftHost']! as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString']! as String).input(),
      primaryDfsEndpoint: map['primaryDfsEndpoint'] == null ? null : (map['primaryDfsEndpoint']! as String).input(),
      primaryDfsHost: map['primaryDfsHost'] == null ? null : (map['primaryDfsHost']! as String).input(),
      primaryDfsInternetEndpoint: map['primaryDfsInternetEndpoint'] == null ? null : (map['primaryDfsInternetEndpoint']! as String).input(),
      primaryDfsInternetHost: map['primaryDfsInternetHost'] == null ? null : (map['primaryDfsInternetHost']! as String).input(),
      primaryDfsMicrosoftEndpoint: map['primaryDfsMicrosoftEndpoint'] == null ? null : (map['primaryDfsMicrosoftEndpoint']! as String).input(),
      primaryDfsMicrosoftHost: map['primaryDfsMicrosoftHost'] == null ? null : (map['primaryDfsMicrosoftHost']! as String).input(),
      primaryFileEndpoint: map['primaryFileEndpoint'] == null ? null : (map['primaryFileEndpoint']! as String).input(),
      primaryFileHost: map['primaryFileHost'] == null ? null : (map['primaryFileHost']! as String).input(),
      primaryFileInternetEndpoint: map['primaryFileInternetEndpoint'] == null ? null : (map['primaryFileInternetEndpoint']! as String).input(),
      primaryFileInternetHost: map['primaryFileInternetHost'] == null ? null : (map['primaryFileInternetHost']! as String).input(),
      primaryFileMicrosoftEndpoint: map['primaryFileMicrosoftEndpoint'] == null ? null : (map['primaryFileMicrosoftEndpoint']! as String).input(),
      primaryFileMicrosoftHost: map['primaryFileMicrosoftHost'] == null ? null : (map['primaryFileMicrosoftHost']! as String).input(),
      primaryLocation: map['primaryLocation'] == null ? null : (map['primaryLocation']! as String).input(),
      primaryQueueEndpoint: map['primaryQueueEndpoint'] == null ? null : (map['primaryQueueEndpoint']! as String).input(),
      primaryQueueHost: map['primaryQueueHost'] == null ? null : (map['primaryQueueHost']! as String).input(),
      primaryQueueMicrosoftEndpoint: map['primaryQueueMicrosoftEndpoint'] == null ? null : (map['primaryQueueMicrosoftEndpoint']! as String).input(),
      primaryQueueMicrosoftHost: map['primaryQueueMicrosoftHost'] == null ? null : (map['primaryQueueMicrosoftHost']! as String).input(),
      primaryTableEndpoint: map['primaryTableEndpoint'] == null ? null : (map['primaryTableEndpoint']! as String).input(),
      primaryTableHost: map['primaryTableHost'] == null ? null : (map['primaryTableHost']! as String).input(),
      primaryTableMicrosoftEndpoint: map['primaryTableMicrosoftEndpoint'] == null ? null : (map['primaryTableMicrosoftEndpoint']! as String).input(),
      primaryTableMicrosoftHost: map['primaryTableMicrosoftHost'] == null ? null : (map['primaryTableMicrosoftHost']! as String).input(),
      primaryWebEndpoint: map['primaryWebEndpoint'] == null ? null : (map['primaryWebEndpoint']! as String).input(),
      primaryWebHost: map['primaryWebHost'] == null ? null : (map['primaryWebHost']! as String).input(),
      primaryWebInternetEndpoint: map['primaryWebInternetEndpoint'] == null ? null : (map['primaryWebInternetEndpoint']! as String).input(),
      primaryWebInternetHost: map['primaryWebInternetHost'] == null ? null : (map['primaryWebInternetHost']! as String).input(),
      primaryWebMicrosoftEndpoint: map['primaryWebMicrosoftEndpoint'] == null ? null : (map['primaryWebMicrosoftEndpoint']! as String).input(),
      primaryWebMicrosoftHost: map['primaryWebMicrosoftHost'] == null ? null : (map['primaryWebMicrosoftHost']! as String).input(),
      provisionedBillingModelVersion: map['provisionedBillingModelVersion'] == null ? null : (map['provisionedBillingModelVersion']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      queueEncryptionKeyType: map['queueEncryptionKeyType'] == null ? null : (map['queueEncryptionKeyType']! as String).input(),
      queueProperties: map['queueProperties'] == null ? null : (AccountQueueProperties.fromMap((map['queueProperties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      routing: map['routing'] == null ? null : (AccountRouting.fromMap((map['routing']! as Map).cast<String, dynamic>())).input(),
      sasPolicy: map['sasPolicy'] == null ? null : (AccountSasPolicy.fromMap((map['sasPolicy']! as Map).cast<String, dynamic>())).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey']! as String).input(),
      secondaryBlobConnectionString: map['secondaryBlobConnectionString'] == null ? null : (map['secondaryBlobConnectionString']! as String).input(),
      secondaryBlobEndpoint: map['secondaryBlobEndpoint'] == null ? null : (map['secondaryBlobEndpoint']! as String).input(),
      secondaryBlobHost: map['secondaryBlobHost'] == null ? null : (map['secondaryBlobHost']! as String).input(),
      secondaryBlobInternetEndpoint: map['secondaryBlobInternetEndpoint'] == null ? null : (map['secondaryBlobInternetEndpoint']! as String).input(),
      secondaryBlobInternetHost: map['secondaryBlobInternetHost'] == null ? null : (map['secondaryBlobInternetHost']! as String).input(),
      secondaryBlobMicrosoftEndpoint: map['secondaryBlobMicrosoftEndpoint'] == null ? null : (map['secondaryBlobMicrosoftEndpoint']! as String).input(),
      secondaryBlobMicrosoftHost: map['secondaryBlobMicrosoftHost'] == null ? null : (map['secondaryBlobMicrosoftHost']! as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString']! as String).input(),
      secondaryDfsEndpoint: map['secondaryDfsEndpoint'] == null ? null : (map['secondaryDfsEndpoint']! as String).input(),
      secondaryDfsHost: map['secondaryDfsHost'] == null ? null : (map['secondaryDfsHost']! as String).input(),
      secondaryDfsInternetEndpoint: map['secondaryDfsInternetEndpoint'] == null ? null : (map['secondaryDfsInternetEndpoint']! as String).input(),
      secondaryDfsInternetHost: map['secondaryDfsInternetHost'] == null ? null : (map['secondaryDfsInternetHost']! as String).input(),
      secondaryDfsMicrosoftEndpoint: map['secondaryDfsMicrosoftEndpoint'] == null ? null : (map['secondaryDfsMicrosoftEndpoint']! as String).input(),
      secondaryDfsMicrosoftHost: map['secondaryDfsMicrosoftHost'] == null ? null : (map['secondaryDfsMicrosoftHost']! as String).input(),
      secondaryFileEndpoint: map['secondaryFileEndpoint'] == null ? null : (map['secondaryFileEndpoint']! as String).input(),
      secondaryFileHost: map['secondaryFileHost'] == null ? null : (map['secondaryFileHost']! as String).input(),
      secondaryFileInternetEndpoint: map['secondaryFileInternetEndpoint'] == null ? null : (map['secondaryFileInternetEndpoint']! as String).input(),
      secondaryFileInternetHost: map['secondaryFileInternetHost'] == null ? null : (map['secondaryFileInternetHost']! as String).input(),
      secondaryFileMicrosoftEndpoint: map['secondaryFileMicrosoftEndpoint'] == null ? null : (map['secondaryFileMicrosoftEndpoint']! as String).input(),
      secondaryFileMicrosoftHost: map['secondaryFileMicrosoftHost'] == null ? null : (map['secondaryFileMicrosoftHost']! as String).input(),
      secondaryLocation: map['secondaryLocation'] == null ? null : (map['secondaryLocation']! as String).input(),
      secondaryQueueEndpoint: map['secondaryQueueEndpoint'] == null ? null : (map['secondaryQueueEndpoint']! as String).input(),
      secondaryQueueHost: map['secondaryQueueHost'] == null ? null : (map['secondaryQueueHost']! as String).input(),
      secondaryQueueMicrosoftEndpoint: map['secondaryQueueMicrosoftEndpoint'] == null ? null : (map['secondaryQueueMicrosoftEndpoint']! as String).input(),
      secondaryQueueMicrosoftHost: map['secondaryQueueMicrosoftHost'] == null ? null : (map['secondaryQueueMicrosoftHost']! as String).input(),
      secondaryTableEndpoint: map['secondaryTableEndpoint'] == null ? null : (map['secondaryTableEndpoint']! as String).input(),
      secondaryTableHost: map['secondaryTableHost'] == null ? null : (map['secondaryTableHost']! as String).input(),
      secondaryTableMicrosoftEndpoint: map['secondaryTableMicrosoftEndpoint'] == null ? null : (map['secondaryTableMicrosoftEndpoint']! as String).input(),
      secondaryTableMicrosoftHost: map['secondaryTableMicrosoftHost'] == null ? null : (map['secondaryTableMicrosoftHost']! as String).input(),
      secondaryWebEndpoint: map['secondaryWebEndpoint'] == null ? null : (map['secondaryWebEndpoint']! as String).input(),
      secondaryWebHost: map['secondaryWebHost'] == null ? null : (map['secondaryWebHost']! as String).input(),
      secondaryWebInternetEndpoint: map['secondaryWebInternetEndpoint'] == null ? null : (map['secondaryWebInternetEndpoint']! as String).input(),
      secondaryWebInternetHost: map['secondaryWebInternetHost'] == null ? null : (map['secondaryWebInternetHost']! as String).input(),
      secondaryWebMicrosoftEndpoint: map['secondaryWebMicrosoftEndpoint'] == null ? null : (map['secondaryWebMicrosoftEndpoint']! as String).input(),
      secondaryWebMicrosoftHost: map['secondaryWebMicrosoftHost'] == null ? null : (map['secondaryWebMicrosoftHost']! as String).input(),
      sftpEnabled: map['sftpEnabled'] == null ? null : (map['sftpEnabled']! as bool).input(),
      shareProperties: map['shareProperties'] == null ? null : (AccountShareProperties.fromMap((map['shareProperties']! as Map).cast<String, dynamic>())).input(),
      sharedAccessKeyEnabled: map['sharedAccessKeyEnabled'] == null ? null : (map['sharedAccessKeyEnabled']! as bool).input(),
      staticWebsite: map['staticWebsite'] == null ? null : (AccountStaticWebsite.fromMap((map['staticWebsite']! as Map).cast<String, dynamic>())).input(),
      tableEncryptionKeyType: map['tableEncryptionKeyType'] == null ? null : (map['tableEncryptionKeyType']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}


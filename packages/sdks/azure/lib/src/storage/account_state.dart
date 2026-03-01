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
    pulumi.Output<String>? accessTier,
    pulumi.Output<String>? accountKind,
    pulumi.Output<String>? accountReplicationType,
    pulumi.Output<String>? accountTier,
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
    pulumi.Output<String>? primaryAccessKey,
    pulumi.Output<String>? primaryBlobConnectionString,
    pulumi.Output<String>? primaryBlobEndpoint,
    pulumi.Output<String>? primaryBlobHost,
    pulumi.Output<String>? primaryBlobInternetEndpoint,
    pulumi.Output<String>? primaryBlobInternetHost,
    pulumi.Output<String>? primaryBlobMicrosoftEndpoint,
    pulumi.Output<String>? primaryBlobMicrosoftHost,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? primaryDfsEndpoint,
    pulumi.Output<String>? primaryDfsHost,
    pulumi.Output<String>? primaryDfsInternetEndpoint,
    pulumi.Output<String>? primaryDfsInternetHost,
    pulumi.Output<String>? primaryDfsMicrosoftEndpoint,
    pulumi.Output<String>? primaryDfsMicrosoftHost,
    pulumi.Output<String>? primaryFileEndpoint,
    pulumi.Output<String>? primaryFileHost,
    pulumi.Output<String>? primaryFileInternetEndpoint,
    pulumi.Output<String>? primaryFileInternetHost,
    pulumi.Output<String>? primaryFileMicrosoftEndpoint,
    pulumi.Output<String>? primaryFileMicrosoftHost,
    pulumi.Output<String>? primaryLocation,
    pulumi.Output<String>? primaryQueueEndpoint,
    pulumi.Output<String>? primaryQueueHost,
    pulumi.Output<String>? primaryQueueMicrosoftEndpoint,
    pulumi.Output<String>? primaryQueueMicrosoftHost,
    pulumi.Output<String>? primaryTableEndpoint,
    pulumi.Output<String>? primaryTableHost,
    pulumi.Output<String>? primaryTableMicrosoftEndpoint,
    pulumi.Output<String>? primaryTableMicrosoftHost,
    pulumi.Output<String>? primaryWebEndpoint,
    pulumi.Output<String>? primaryWebHost,
    pulumi.Output<String>? primaryWebInternetEndpoint,
    pulumi.Output<String>? primaryWebInternetHost,
    pulumi.Output<String>? primaryWebMicrosoftEndpoint,
    pulumi.Output<String>? primaryWebMicrosoftHost,
    pulumi.Output<String>? provisionedBillingModelVersion,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? queueEncryptionKeyType,
    pulumi.Output<AccountQueueProperties>? queueProperties,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<AccountRouting>? routing,
    pulumi.Output<AccountSasPolicy>? sasPolicy,
    pulumi.Output<String>? secondaryAccessKey,
    pulumi.Output<String>? secondaryBlobConnectionString,
    pulumi.Output<String>? secondaryBlobEndpoint,
    pulumi.Output<String>? secondaryBlobHost,
    pulumi.Output<String>? secondaryBlobInternetEndpoint,
    pulumi.Output<String>? secondaryBlobInternetHost,
    pulumi.Output<String>? secondaryBlobMicrosoftEndpoint,
    pulumi.Output<String>? secondaryBlobMicrosoftHost,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<String>? secondaryDfsEndpoint,
    pulumi.Output<String>? secondaryDfsHost,
    pulumi.Output<String>? secondaryDfsInternetEndpoint,
    pulumi.Output<String>? secondaryDfsInternetHost,
    pulumi.Output<String>? secondaryDfsMicrosoftEndpoint,
    pulumi.Output<String>? secondaryDfsMicrosoftHost,
    pulumi.Output<String>? secondaryFileEndpoint,
    pulumi.Output<String>? secondaryFileHost,
    pulumi.Output<String>? secondaryFileInternetEndpoint,
    pulumi.Output<String>? secondaryFileInternetHost,
    pulumi.Output<String>? secondaryFileMicrosoftEndpoint,
    pulumi.Output<String>? secondaryFileMicrosoftHost,
    pulumi.Output<String>? secondaryLocation,
    pulumi.Output<String>? secondaryQueueEndpoint,
    pulumi.Output<String>? secondaryQueueHost,
    pulumi.Output<String>? secondaryQueueMicrosoftEndpoint,
    pulumi.Output<String>? secondaryQueueMicrosoftHost,
    pulumi.Output<String>? secondaryTableEndpoint,
    pulumi.Output<String>? secondaryTableHost,
    pulumi.Output<String>? secondaryTableMicrosoftEndpoint,
    pulumi.Output<String>? secondaryTableMicrosoftHost,
    pulumi.Output<String>? secondaryWebEndpoint,
    pulumi.Output<String>? secondaryWebHost,
    pulumi.Output<String>? secondaryWebInternetEndpoint,
    pulumi.Output<String>? secondaryWebInternetHost,
    pulumi.Output<String>? secondaryWebMicrosoftEndpoint,
    pulumi.Output<String>? secondaryWebMicrosoftHost,
    pulumi.Output<bool>? sftpEnabled,
    pulumi.Output<AccountShareProperties>? shareProperties,
    pulumi.Output<bool>? sharedAccessKeyEnabled,
    pulumi.Output<AccountStaticWebsite>? staticWebsite,
    pulumi.Output<String>? tableEncryptionKeyType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessTier = pulumi.Input.asOptionalInput<String>(accessTier),
      accountKind = pulumi.Input.asOptionalInput<String>(accountKind),
      accountReplicationType = pulumi.Input.asOptionalInput<String>(accountReplicationType),
      accountTier = pulumi.Input.asOptionalInput<String>(accountTier),
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
      primaryAccessKey = pulumi.Input.asOptionalInput<String>(primaryAccessKey),
      primaryBlobConnectionString = pulumi.Input.asOptionalInput<String>(primaryBlobConnectionString),
      primaryBlobEndpoint = pulumi.Input.asOptionalInput<String>(primaryBlobEndpoint),
      primaryBlobHost = pulumi.Input.asOptionalInput<String>(primaryBlobHost),
      primaryBlobInternetEndpoint = pulumi.Input.asOptionalInput<String>(primaryBlobInternetEndpoint),
      primaryBlobInternetHost = pulumi.Input.asOptionalInput<String>(primaryBlobInternetHost),
      primaryBlobMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(primaryBlobMicrosoftEndpoint),
      primaryBlobMicrosoftHost = pulumi.Input.asOptionalInput<String>(primaryBlobMicrosoftHost),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      primaryDfsEndpoint = pulumi.Input.asOptionalInput<String>(primaryDfsEndpoint),
      primaryDfsHost = pulumi.Input.asOptionalInput<String>(primaryDfsHost),
      primaryDfsInternetEndpoint = pulumi.Input.asOptionalInput<String>(primaryDfsInternetEndpoint),
      primaryDfsInternetHost = pulumi.Input.asOptionalInput<String>(primaryDfsInternetHost),
      primaryDfsMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(primaryDfsMicrosoftEndpoint),
      primaryDfsMicrosoftHost = pulumi.Input.asOptionalInput<String>(primaryDfsMicrosoftHost),
      primaryFileEndpoint = pulumi.Input.asOptionalInput<String>(primaryFileEndpoint),
      primaryFileHost = pulumi.Input.asOptionalInput<String>(primaryFileHost),
      primaryFileInternetEndpoint = pulumi.Input.asOptionalInput<String>(primaryFileInternetEndpoint),
      primaryFileInternetHost = pulumi.Input.asOptionalInput<String>(primaryFileInternetHost),
      primaryFileMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(primaryFileMicrosoftEndpoint),
      primaryFileMicrosoftHost = pulumi.Input.asOptionalInput<String>(primaryFileMicrosoftHost),
      primaryLocation = pulumi.Input.asOptionalInput<String>(primaryLocation),
      primaryQueueEndpoint = pulumi.Input.asOptionalInput<String>(primaryQueueEndpoint),
      primaryQueueHost = pulumi.Input.asOptionalInput<String>(primaryQueueHost),
      primaryQueueMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(primaryQueueMicrosoftEndpoint),
      primaryQueueMicrosoftHost = pulumi.Input.asOptionalInput<String>(primaryQueueMicrosoftHost),
      primaryTableEndpoint = pulumi.Input.asOptionalInput<String>(primaryTableEndpoint),
      primaryTableHost = pulumi.Input.asOptionalInput<String>(primaryTableHost),
      primaryTableMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(primaryTableMicrosoftEndpoint),
      primaryTableMicrosoftHost = pulumi.Input.asOptionalInput<String>(primaryTableMicrosoftHost),
      primaryWebEndpoint = pulumi.Input.asOptionalInput<String>(primaryWebEndpoint),
      primaryWebHost = pulumi.Input.asOptionalInput<String>(primaryWebHost),
      primaryWebInternetEndpoint = pulumi.Input.asOptionalInput<String>(primaryWebInternetEndpoint),
      primaryWebInternetHost = pulumi.Input.asOptionalInput<String>(primaryWebInternetHost),
      primaryWebMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(primaryWebMicrosoftEndpoint),
      primaryWebMicrosoftHost = pulumi.Input.asOptionalInput<String>(primaryWebMicrosoftHost),
      provisionedBillingModelVersion = pulumi.Input.asOptionalInput<String>(provisionedBillingModelVersion),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      queueEncryptionKeyType = pulumi.Input.asOptionalInput<String>(queueEncryptionKeyType),
      queueProperties = pulumi.Input.asOptionalInput<AccountQueueProperties>(queueProperties),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routing = pulumi.Input.asOptionalInput<AccountRouting>(routing),
      sasPolicy = pulumi.Input.asOptionalInput<AccountSasPolicy>(sasPolicy),
      secondaryAccessKey = pulumi.Input.asOptionalInput<String>(secondaryAccessKey),
      secondaryBlobConnectionString = pulumi.Input.asOptionalInput<String>(secondaryBlobConnectionString),
      secondaryBlobEndpoint = pulumi.Input.asOptionalInput<String>(secondaryBlobEndpoint),
      secondaryBlobHost = pulumi.Input.asOptionalInput<String>(secondaryBlobHost),
      secondaryBlobInternetEndpoint = pulumi.Input.asOptionalInput<String>(secondaryBlobInternetEndpoint),
      secondaryBlobInternetHost = pulumi.Input.asOptionalInput<String>(secondaryBlobInternetHost),
      secondaryBlobMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(secondaryBlobMicrosoftEndpoint),
      secondaryBlobMicrosoftHost = pulumi.Input.asOptionalInput<String>(secondaryBlobMicrosoftHost),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      secondaryDfsEndpoint = pulumi.Input.asOptionalInput<String>(secondaryDfsEndpoint),
      secondaryDfsHost = pulumi.Input.asOptionalInput<String>(secondaryDfsHost),
      secondaryDfsInternetEndpoint = pulumi.Input.asOptionalInput<String>(secondaryDfsInternetEndpoint),
      secondaryDfsInternetHost = pulumi.Input.asOptionalInput<String>(secondaryDfsInternetHost),
      secondaryDfsMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(secondaryDfsMicrosoftEndpoint),
      secondaryDfsMicrosoftHost = pulumi.Input.asOptionalInput<String>(secondaryDfsMicrosoftHost),
      secondaryFileEndpoint = pulumi.Input.asOptionalInput<String>(secondaryFileEndpoint),
      secondaryFileHost = pulumi.Input.asOptionalInput<String>(secondaryFileHost),
      secondaryFileInternetEndpoint = pulumi.Input.asOptionalInput<String>(secondaryFileInternetEndpoint),
      secondaryFileInternetHost = pulumi.Input.asOptionalInput<String>(secondaryFileInternetHost),
      secondaryFileMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(secondaryFileMicrosoftEndpoint),
      secondaryFileMicrosoftHost = pulumi.Input.asOptionalInput<String>(secondaryFileMicrosoftHost),
      secondaryLocation = pulumi.Input.asOptionalInput<String>(secondaryLocation),
      secondaryQueueEndpoint = pulumi.Input.asOptionalInput<String>(secondaryQueueEndpoint),
      secondaryQueueHost = pulumi.Input.asOptionalInput<String>(secondaryQueueHost),
      secondaryQueueMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(secondaryQueueMicrosoftEndpoint),
      secondaryQueueMicrosoftHost = pulumi.Input.asOptionalInput<String>(secondaryQueueMicrosoftHost),
      secondaryTableEndpoint = pulumi.Input.asOptionalInput<String>(secondaryTableEndpoint),
      secondaryTableHost = pulumi.Input.asOptionalInput<String>(secondaryTableHost),
      secondaryTableMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(secondaryTableMicrosoftEndpoint),
      secondaryTableMicrosoftHost = pulumi.Input.asOptionalInput<String>(secondaryTableMicrosoftHost),
      secondaryWebEndpoint = pulumi.Input.asOptionalInput<String>(secondaryWebEndpoint),
      secondaryWebHost = pulumi.Input.asOptionalInput<String>(secondaryWebHost),
      secondaryWebInternetEndpoint = pulumi.Input.asOptionalInput<String>(secondaryWebInternetEndpoint),
      secondaryWebInternetHost = pulumi.Input.asOptionalInput<String>(secondaryWebInternetHost),
      secondaryWebMicrosoftEndpoint = pulumi.Input.asOptionalInput<String>(secondaryWebMicrosoftEndpoint),
      secondaryWebMicrosoftHost = pulumi.Input.asOptionalInput<String>(secondaryWebMicrosoftHost),
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
      accessTier: map['accessTier'] == null ? null : pulumi.Output.create<String>(map['accessTier'] as String),
      accountKind: map['accountKind'] == null ? null : pulumi.Output.create<String>(map['accountKind'] as String),
      accountReplicationType: map['accountReplicationType'] == null ? null : pulumi.Output.create<String>(map['accountReplicationType'] as String),
      accountTier: map['accountTier'] == null ? null : pulumi.Output.create<String>(map['accountTier'] as String),
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
      primaryAccessKey: map['primaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['primaryAccessKey'] as String),
      primaryBlobConnectionString: map['primaryBlobConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryBlobConnectionString'] as String),
      primaryBlobEndpoint: map['primaryBlobEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryBlobEndpoint'] as String),
      primaryBlobHost: map['primaryBlobHost'] == null ? null : pulumi.Output.create<String>(map['primaryBlobHost'] as String),
      primaryBlobInternetEndpoint: map['primaryBlobInternetEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryBlobInternetEndpoint'] as String),
      primaryBlobInternetHost: map['primaryBlobInternetHost'] == null ? null : pulumi.Output.create<String>(map['primaryBlobInternetHost'] as String),
      primaryBlobMicrosoftEndpoint: map['primaryBlobMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryBlobMicrosoftEndpoint'] as String),
      primaryBlobMicrosoftHost: map['primaryBlobMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['primaryBlobMicrosoftHost'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      primaryDfsEndpoint: map['primaryDfsEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryDfsEndpoint'] as String),
      primaryDfsHost: map['primaryDfsHost'] == null ? null : pulumi.Output.create<String>(map['primaryDfsHost'] as String),
      primaryDfsInternetEndpoint: map['primaryDfsInternetEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryDfsInternetEndpoint'] as String),
      primaryDfsInternetHost: map['primaryDfsInternetHost'] == null ? null : pulumi.Output.create<String>(map['primaryDfsInternetHost'] as String),
      primaryDfsMicrosoftEndpoint: map['primaryDfsMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryDfsMicrosoftEndpoint'] as String),
      primaryDfsMicrosoftHost: map['primaryDfsMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['primaryDfsMicrosoftHost'] as String),
      primaryFileEndpoint: map['primaryFileEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryFileEndpoint'] as String),
      primaryFileHost: map['primaryFileHost'] == null ? null : pulumi.Output.create<String>(map['primaryFileHost'] as String),
      primaryFileInternetEndpoint: map['primaryFileInternetEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryFileInternetEndpoint'] as String),
      primaryFileInternetHost: map['primaryFileInternetHost'] == null ? null : pulumi.Output.create<String>(map['primaryFileInternetHost'] as String),
      primaryFileMicrosoftEndpoint: map['primaryFileMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryFileMicrosoftEndpoint'] as String),
      primaryFileMicrosoftHost: map['primaryFileMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['primaryFileMicrosoftHost'] as String),
      primaryLocation: map['primaryLocation'] == null ? null : pulumi.Output.create<String>(map['primaryLocation'] as String),
      primaryQueueEndpoint: map['primaryQueueEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryQueueEndpoint'] as String),
      primaryQueueHost: map['primaryQueueHost'] == null ? null : pulumi.Output.create<String>(map['primaryQueueHost'] as String),
      primaryQueueMicrosoftEndpoint: map['primaryQueueMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryQueueMicrosoftEndpoint'] as String),
      primaryQueueMicrosoftHost: map['primaryQueueMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['primaryQueueMicrosoftHost'] as String),
      primaryTableEndpoint: map['primaryTableEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryTableEndpoint'] as String),
      primaryTableHost: map['primaryTableHost'] == null ? null : pulumi.Output.create<String>(map['primaryTableHost'] as String),
      primaryTableMicrosoftEndpoint: map['primaryTableMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryTableMicrosoftEndpoint'] as String),
      primaryTableMicrosoftHost: map['primaryTableMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['primaryTableMicrosoftHost'] as String),
      primaryWebEndpoint: map['primaryWebEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryWebEndpoint'] as String),
      primaryWebHost: map['primaryWebHost'] == null ? null : pulumi.Output.create<String>(map['primaryWebHost'] as String),
      primaryWebInternetEndpoint: map['primaryWebInternetEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryWebInternetEndpoint'] as String),
      primaryWebInternetHost: map['primaryWebInternetHost'] == null ? null : pulumi.Output.create<String>(map['primaryWebInternetHost'] as String),
      primaryWebMicrosoftEndpoint: map['primaryWebMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['primaryWebMicrosoftEndpoint'] as String),
      primaryWebMicrosoftHost: map['primaryWebMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['primaryWebMicrosoftHost'] as String),
      provisionedBillingModelVersion: map['provisionedBillingModelVersion'] == null ? null : pulumi.Output.create<String>(map['provisionedBillingModelVersion'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      queueEncryptionKeyType: map['queueEncryptionKeyType'] == null ? null : pulumi.Output.create<String>(map['queueEncryptionKeyType'] as String),
      queueProperties: map['queueProperties'] == null ? null : pulumi.Output.create<AccountQueueProperties>(AccountQueueProperties.fromMap((map['queueProperties'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routing: map['routing'] == null ? null : pulumi.Output.create<AccountRouting>(AccountRouting.fromMap((map['routing'] as Map).cast<String, dynamic>())),
      sasPolicy: map['sasPolicy'] == null ? null : pulumi.Output.create<AccountSasPolicy>(AccountSasPolicy.fromMap((map['sasPolicy'] as Map).cast<String, dynamic>())),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['secondaryAccessKey'] as String),
      secondaryBlobConnectionString: map['secondaryBlobConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryBlobConnectionString'] as String),
      secondaryBlobEndpoint: map['secondaryBlobEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryBlobEndpoint'] as String),
      secondaryBlobHost: map['secondaryBlobHost'] == null ? null : pulumi.Output.create<String>(map['secondaryBlobHost'] as String),
      secondaryBlobInternetEndpoint: map['secondaryBlobInternetEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryBlobInternetEndpoint'] as String),
      secondaryBlobInternetHost: map['secondaryBlobInternetHost'] == null ? null : pulumi.Output.create<String>(map['secondaryBlobInternetHost'] as String),
      secondaryBlobMicrosoftEndpoint: map['secondaryBlobMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryBlobMicrosoftEndpoint'] as String),
      secondaryBlobMicrosoftHost: map['secondaryBlobMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['secondaryBlobMicrosoftHost'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      secondaryDfsEndpoint: map['secondaryDfsEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryDfsEndpoint'] as String),
      secondaryDfsHost: map['secondaryDfsHost'] == null ? null : pulumi.Output.create<String>(map['secondaryDfsHost'] as String),
      secondaryDfsInternetEndpoint: map['secondaryDfsInternetEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryDfsInternetEndpoint'] as String),
      secondaryDfsInternetHost: map['secondaryDfsInternetHost'] == null ? null : pulumi.Output.create<String>(map['secondaryDfsInternetHost'] as String),
      secondaryDfsMicrosoftEndpoint: map['secondaryDfsMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryDfsMicrosoftEndpoint'] as String),
      secondaryDfsMicrosoftHost: map['secondaryDfsMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['secondaryDfsMicrosoftHost'] as String),
      secondaryFileEndpoint: map['secondaryFileEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryFileEndpoint'] as String),
      secondaryFileHost: map['secondaryFileHost'] == null ? null : pulumi.Output.create<String>(map['secondaryFileHost'] as String),
      secondaryFileInternetEndpoint: map['secondaryFileInternetEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryFileInternetEndpoint'] as String),
      secondaryFileInternetHost: map['secondaryFileInternetHost'] == null ? null : pulumi.Output.create<String>(map['secondaryFileInternetHost'] as String),
      secondaryFileMicrosoftEndpoint: map['secondaryFileMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryFileMicrosoftEndpoint'] as String),
      secondaryFileMicrosoftHost: map['secondaryFileMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['secondaryFileMicrosoftHost'] as String),
      secondaryLocation: map['secondaryLocation'] == null ? null : pulumi.Output.create<String>(map['secondaryLocation'] as String),
      secondaryQueueEndpoint: map['secondaryQueueEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryQueueEndpoint'] as String),
      secondaryQueueHost: map['secondaryQueueHost'] == null ? null : pulumi.Output.create<String>(map['secondaryQueueHost'] as String),
      secondaryQueueMicrosoftEndpoint: map['secondaryQueueMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryQueueMicrosoftEndpoint'] as String),
      secondaryQueueMicrosoftHost: map['secondaryQueueMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['secondaryQueueMicrosoftHost'] as String),
      secondaryTableEndpoint: map['secondaryTableEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryTableEndpoint'] as String),
      secondaryTableHost: map['secondaryTableHost'] == null ? null : pulumi.Output.create<String>(map['secondaryTableHost'] as String),
      secondaryTableMicrosoftEndpoint: map['secondaryTableMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryTableMicrosoftEndpoint'] as String),
      secondaryTableMicrosoftHost: map['secondaryTableMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['secondaryTableMicrosoftHost'] as String),
      secondaryWebEndpoint: map['secondaryWebEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryWebEndpoint'] as String),
      secondaryWebHost: map['secondaryWebHost'] == null ? null : pulumi.Output.create<String>(map['secondaryWebHost'] as String),
      secondaryWebInternetEndpoint: map['secondaryWebInternetEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryWebInternetEndpoint'] as String),
      secondaryWebInternetHost: map['secondaryWebInternetHost'] == null ? null : pulumi.Output.create<String>(map['secondaryWebInternetHost'] as String),
      secondaryWebMicrosoftEndpoint: map['secondaryWebMicrosoftEndpoint'] == null ? null : pulumi.Output.create<String>(map['secondaryWebMicrosoftEndpoint'] as String),
      secondaryWebMicrosoftHost: map['secondaryWebMicrosoftHost'] == null ? null : pulumi.Output.create<String>(map['secondaryWebMicrosoftHost'] as String),
      sftpEnabled: map['sftpEnabled'] == null ? null : pulumi.Output.create<bool>(map['sftpEnabled'] as bool),
      shareProperties: map['shareProperties'] == null ? null : pulumi.Output.create<AccountShareProperties>(AccountShareProperties.fromMap((map['shareProperties'] as Map).cast<String, dynamic>())),
      sharedAccessKeyEnabled: map['sharedAccessKeyEnabled'] == null ? null : pulumi.Output.create<bool>(map['sharedAccessKeyEnabled'] as bool),
      staticWebsite: map['staticWebsite'] == null ? null : pulumi.Output.create<AccountStaticWebsite>(AccountStaticWebsite.fromMap((map['staticWebsite'] as Map).cast<String, dynamic>())),
      tableEncryptionKeyType: map['tableEncryptionKeyType'] == null ? null : pulumi.Output.create<String>(map['tableEncryptionKeyType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


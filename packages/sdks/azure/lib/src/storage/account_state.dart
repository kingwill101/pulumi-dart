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
  /// &gt; **Note:** Changing the `account_kind` value from `Storage` to `StorageV2` will not trigger a force new on the storage account, it will only upgrade the existing storage account from `Storage` to `StorageV2` keeping the existing storage account in place.
  final pulumi.Input<String>? accountKind;

  /// Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. Changing this forces a new resource to be created when types `LRS`, `GRS` and `RAGRS` are changed to `ZRS`, `GZRS` or `RAGZRS` and vice versa.
  final pulumi.Input<String>? accountReplicationType;

  /// Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Blobs with a tier of `Premium` are of account kind `StorageV2`.
  final pulumi.Input<String>? accountTier;

  /// Allow or disallow nested items within this Account to opt into being public. Defaults to `true`.
  ///
  /// &gt; **Note:** At this time `allow_nested_items_to_be_public` is only supported in the Public Cloud, China Cloud, and US Government Cloud.
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
  /// &gt; **Note:** It's possible to define a Customer Managed Key both within either the `customer_managed_key` block or by using the `azure.storage.CustomerManagedKey` resource. However, it's not possible to use both methods to manage a Customer Managed Key for a Storage Account, since these will conflict. When using the `azure.storage.CustomerManagedKey` resource, you will need to use `ignore_changes` on the `customer_managed_key` block.
  final pulumi.Input<AccountCustomerManagedKey>? customerManagedKey;

  /// Default to Azure Active Directory authorization in the Azure portal when accessing the Storage Account. The default value is `false`
  final pulumi.Input<bool>? defaultToOauthAuthentication;

  /// Specifies which DNS endpoint type to use. Possible values are `Standard` and `AzureDnsZone`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Azure DNS zone support requires `PartitionedDns` feature to be enabled. To enable this feature for your subscription, use the following command: `az feature register --namespace "Microsoft.Storage" --name "PartitionedDns"`.
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
  /// &gt; **Note:** This can only be `true` when `account_kind` is `StorageV2` or when `account_tier` is `Premium` *and* `account_kind` is one of `BlockBlobStorage` or `FileStorage`.
  final pulumi.Input<bool>? infrastructureEncryptionEnabled;

  /// Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 ([see here for more information](https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-quickstart-create-account/)). Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can only be `true` when `account_tier` is `Standard` or when `account_tier` is `Premium` *and* `account_kind` is `BlockBlobStorage`
  final pulumi.Input<bool>? isHnsEnabled;

  /// Are Large File Shares Enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** Large File Shares are enabled by default when using an `account_kind` of `FileStorage`.
  final pulumi.Input<bool>? largeFileShareEnabled;

  /// Is Local User Enabled? Defaults to `true`.
  final pulumi.Input<bool>? localUserEnabled;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// The minimum supported TLS version for the storage account. Possible values are `TLS1_0`, `TLS1_1`, `TLS1_2` and `TLS1_3`. Defaults to `TLS1_2` for new storage accounts.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  ///
  /// &gt; **Note:** At this time `min_tls_version` is only supported in the Public Cloud, China Cloud, and US Government Cloud.
  final pulumi.Input<String>? minTlsVersion;

  /// Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group.
  final pulumi.Input<String>? name;

  /// A `network_rules` block as documented below.
  final pulumi.Input<AccountNetworkRules>? networkRules;

  /// Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to `false`.
  ///
  /// &gt; **Note:** This can only be `true` when `account_tier` is `Standard` and `account_kind` is `StorageV2`, or `account_tier` is `Premium` and `account_kind` is `BlockBlobStorage`. Additionally, the `is_hns_enabled` is `true` and `account_replication_type` must be `LRS` or `RAGRS`.
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
  /// &gt; **Note:** `queue_properties` can only be configured when `account_tier` is set to `Standard` and `account_kind` is set to either `Storage` or `StorageV2`.
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
  /// &gt; **Note:** SFTP support requires `is_hns_enabled` set to `true`. [More information on SFTP support can be found here](https://learn.microsoft.com/azure/storage/blobs/secure-file-transfer-protocol-support). Defaults to `false`
  final pulumi.Input<bool>? sftpEnabled;

  /// A `share_properties` block as defined below.
  ///
  /// &gt; **Note:** `share_properties` can only be configured when either `account_tier` is `Standard` and `account_kind` is either `Storage` or `StorageV2` - or when `account_tier` is `Premium` and `account_kind` is `FileStorage`.
  final pulumi.Input<AccountShareProperties>? shareProperties;

  /// Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). Defaults to `true`.
  ///
  /// &gt; **Note:** Terraform uses Shared Key Authorisation to provision Storage Containers, Blobs and other items - when Shared Key Access is disabled, you will need to enable the `storage_use_azuread` flag in the Provider block to use Azure AD for authentication, however not all Azure Storage services support Active Directory authentication.
  final pulumi.Input<bool>? sharedAccessKeyEnabled;

  /// A `static_website` block as defined below.
  ///
  /// &gt; **Note:** `static_website` can only be set when the `account_kind` is set to `StorageV2` or `BlockBlobStorage`.
  ///
  /// &gt; **Note:** If `static_website` is specified, the service will automatically create a `azure.storage.Container` named `$web`.
  final pulumi.Input<AccountStaticWebsite>? staticWebsite;

  /// The encryption type of the table service. Possible values are `Service` and `Account`. Changing this forces a new resource to be created. Default value is `Service`.
  ///
  /// &gt; **Note:** `queue_encryption_key_type` and `table_encryption_key_type` cannot be set to `Account` when `account_kind` is set `Storage`
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
      'azureFilesAuthentication':
          ?pulumi.Input.mapOptionalInputValue<
            AccountAzureFilesAuthentication,
            Map<String, dynamic>
          >(azureFilesAuthentication, (value) => value.toMap()),
      'blobProperties':
          ?pulumi.Input.mapOptionalInputValue<
            AccountBlobProperties,
            Map<String, dynamic>
          >(blobProperties, (value) => value.toMap()),
      'crossTenantReplicationEnabled': ?crossTenantReplicationEnabled,
      'customDomain':
          ?pulumi.Input.mapOptionalInputValue<
            AccountCustomDomain,
            Map<String, dynamic>
          >(customDomain, (value) => value.toMap()),
      'customerManagedKey':
          ?pulumi.Input.mapOptionalInputValue<
            AccountCustomerManagedKey,
            Map<String, dynamic>
          >(customerManagedKey, (value) => value.toMap()),
      'defaultToOauthAuthentication': ?defaultToOauthAuthentication,
      'dnsEndpointType': ?dnsEndpointType,
      'edgeZone': ?edgeZone,
      'httpsTrafficOnlyEnabled': ?httpsTrafficOnlyEnabled,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            AccountIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'immutabilityPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            AccountImmutabilityPolicy,
            Map<String, dynamic>
          >(immutabilityPolicy, (value) => value.toMap()),
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'isHnsEnabled': ?isHnsEnabled,
      'largeFileShareEnabled': ?largeFileShareEnabled,
      'localUserEnabled': ?localUserEnabled,
      'location': ?location,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'networkRules':
          ?pulumi.Input.mapOptionalInputValue<
            AccountNetworkRules,
            Map<String, dynamic>
          >(networkRules, (value) => value.toMap()),
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
      'queueProperties':
          ?pulumi.Input.mapOptionalInputValue<
            AccountQueueProperties,
            Map<String, dynamic>
          >(queueProperties, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'routing':
          ?pulumi.Input.mapOptionalInputValue<
            AccountRouting,
            Map<String, dynamic>
          >(routing, (value) => value.toMap()),
      'sasPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            AccountSasPolicy,
            Map<String, dynamic>
          >(sasPolicy, (value) => value.toMap()),
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
      'shareProperties':
          ?pulumi.Input.mapOptionalInputValue<
            AccountShareProperties,
            Map<String, dynamic>
          >(shareProperties, (value) => value.toMap()),
      'sharedAccessKeyEnabled': ?sharedAccessKeyEnabled,
      'staticWebsite':
          ?pulumi.Input.mapOptionalInputValue<
            AccountStaticWebsite,
            Map<String, dynamic>
          >(staticWebsite, (value) => value.toMap()),
      'tableEncryptionKeyType': ?tableEncryptionKeyType,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accessTier: (() {
        final guardedValue = map['accessTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountKind: (() {
        final guardedValue = map['accountKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountReplicationType: (() {
        final guardedValue = map['accountReplicationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountTier: (() {
        final guardedValue = map['accountTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allowNestedItemsToBePublic: (() {
        final guardedValue = map['allowNestedItemsToBePublic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowedCopyScope: (() {
        final guardedValue = map['allowedCopyScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureFilesAuthentication: (() {
        final guardedValue = map['azureFilesAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountAzureFilesAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      blobProperties: (() {
        final guardedValue = map['blobProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountBlobProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      crossTenantReplicationEnabled: (() {
        final guardedValue = map['crossTenantReplicationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      customDomain: (() {
        final guardedValue = map['customDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountCustomDomain.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customerManagedKey: (() {
        final guardedValue = map['customerManagedKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountCustomerManagedKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultToOauthAuthentication: (() {
        final guardedValue = map['defaultToOauthAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dnsEndpointType: (() {
        final guardedValue = map['dnsEndpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edgeZone: (() {
        final guardedValue = map['edgeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      httpsTrafficOnlyEnabled: (() {
        final guardedValue = map['httpsTrafficOnlyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      immutabilityPolicy: (() {
        final guardedValue = map['immutabilityPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountImmutabilityPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      infrastructureEncryptionEnabled: (() {
        final guardedValue = map['infrastructureEncryptionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isHnsEnabled: (() {
        final guardedValue = map['isHnsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      largeFileShareEnabled: (() {
        final guardedValue = map['largeFileShareEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      localUserEnabled: (() {
        final guardedValue = map['localUserEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minTlsVersion: (() {
        final guardedValue = map['minTlsVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkRules: (() {
        final guardedValue = map['networkRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountNetworkRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nfsv3Enabled: (() {
        final guardedValue = map['nfsv3Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      primaryAccessKey: (() {
        final guardedValue = map['primaryAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryBlobConnectionString: (() {
        final guardedValue = map['primaryBlobConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryBlobEndpoint: (() {
        final guardedValue = map['primaryBlobEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryBlobHost: (() {
        final guardedValue = map['primaryBlobHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryBlobInternetEndpoint: (() {
        final guardedValue = map['primaryBlobInternetEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryBlobInternetHost: (() {
        final guardedValue = map['primaryBlobInternetHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryBlobMicrosoftEndpoint: (() {
        final guardedValue = map['primaryBlobMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryBlobMicrosoftHost: (() {
        final guardedValue = map['primaryBlobMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryConnectionString: (() {
        final guardedValue = map['primaryConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryDfsEndpoint: (() {
        final guardedValue = map['primaryDfsEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryDfsHost: (() {
        final guardedValue = map['primaryDfsHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryDfsInternetEndpoint: (() {
        final guardedValue = map['primaryDfsInternetEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryDfsInternetHost: (() {
        final guardedValue = map['primaryDfsInternetHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryDfsMicrosoftEndpoint: (() {
        final guardedValue = map['primaryDfsMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryDfsMicrosoftHost: (() {
        final guardedValue = map['primaryDfsMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryFileEndpoint: (() {
        final guardedValue = map['primaryFileEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryFileHost: (() {
        final guardedValue = map['primaryFileHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryFileInternetEndpoint: (() {
        final guardedValue = map['primaryFileInternetEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryFileInternetHost: (() {
        final guardedValue = map['primaryFileInternetHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryFileMicrosoftEndpoint: (() {
        final guardedValue = map['primaryFileMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryFileMicrosoftHost: (() {
        final guardedValue = map['primaryFileMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryLocation: (() {
        final guardedValue = map['primaryLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryQueueEndpoint: (() {
        final guardedValue = map['primaryQueueEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryQueueHost: (() {
        final guardedValue = map['primaryQueueHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryQueueMicrosoftEndpoint: (() {
        final guardedValue = map['primaryQueueMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryQueueMicrosoftHost: (() {
        final guardedValue = map['primaryQueueMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryTableEndpoint: (() {
        final guardedValue = map['primaryTableEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryTableHost: (() {
        final guardedValue = map['primaryTableHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryTableMicrosoftEndpoint: (() {
        final guardedValue = map['primaryTableMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryTableMicrosoftHost: (() {
        final guardedValue = map['primaryTableMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryWebEndpoint: (() {
        final guardedValue = map['primaryWebEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryWebHost: (() {
        final guardedValue = map['primaryWebHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryWebInternetEndpoint: (() {
        final guardedValue = map['primaryWebInternetEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryWebInternetHost: (() {
        final guardedValue = map['primaryWebInternetHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryWebMicrosoftEndpoint: (() {
        final guardedValue = map['primaryWebMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryWebMicrosoftHost: (() {
        final guardedValue = map['primaryWebMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisionedBillingModelVersion: (() {
        final guardedValue = map['provisionedBillingModelVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      queueEncryptionKeyType: (() {
        final guardedValue = map['queueEncryptionKeyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queueProperties: (() {
        final guardedValue = map['queueProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountQueueProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routing: (() {
        final guardedValue = map['routing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountRouting.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sasPolicy: (() {
        final guardedValue = map['sasPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountSasPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secondaryAccessKey: (() {
        final guardedValue = map['secondaryAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryBlobConnectionString: (() {
        final guardedValue = map['secondaryBlobConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryBlobEndpoint: (() {
        final guardedValue = map['secondaryBlobEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryBlobHost: (() {
        final guardedValue = map['secondaryBlobHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryBlobInternetEndpoint: (() {
        final guardedValue = map['secondaryBlobInternetEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryBlobInternetHost: (() {
        final guardedValue = map['secondaryBlobInternetHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryBlobMicrosoftEndpoint: (() {
        final guardedValue = map['secondaryBlobMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryBlobMicrosoftHost: (() {
        final guardedValue = map['secondaryBlobMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryConnectionString: (() {
        final guardedValue = map['secondaryConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryDfsEndpoint: (() {
        final guardedValue = map['secondaryDfsEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryDfsHost: (() {
        final guardedValue = map['secondaryDfsHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryDfsInternetEndpoint: (() {
        final guardedValue = map['secondaryDfsInternetEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryDfsInternetHost: (() {
        final guardedValue = map['secondaryDfsInternetHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryDfsMicrosoftEndpoint: (() {
        final guardedValue = map['secondaryDfsMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryDfsMicrosoftHost: (() {
        final guardedValue = map['secondaryDfsMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryFileEndpoint: (() {
        final guardedValue = map['secondaryFileEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryFileHost: (() {
        final guardedValue = map['secondaryFileHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryFileInternetEndpoint: (() {
        final guardedValue = map['secondaryFileInternetEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryFileInternetHost: (() {
        final guardedValue = map['secondaryFileInternetHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryFileMicrosoftEndpoint: (() {
        final guardedValue = map['secondaryFileMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryFileMicrosoftHost: (() {
        final guardedValue = map['secondaryFileMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryLocation: (() {
        final guardedValue = map['secondaryLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryQueueEndpoint: (() {
        final guardedValue = map['secondaryQueueEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryQueueHost: (() {
        final guardedValue = map['secondaryQueueHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryQueueMicrosoftEndpoint: (() {
        final guardedValue = map['secondaryQueueMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryQueueMicrosoftHost: (() {
        final guardedValue = map['secondaryQueueMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryTableEndpoint: (() {
        final guardedValue = map['secondaryTableEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryTableHost: (() {
        final guardedValue = map['secondaryTableHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryTableMicrosoftEndpoint: (() {
        final guardedValue = map['secondaryTableMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryTableMicrosoftHost: (() {
        final guardedValue = map['secondaryTableMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryWebEndpoint: (() {
        final guardedValue = map['secondaryWebEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryWebHost: (() {
        final guardedValue = map['secondaryWebHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryWebInternetEndpoint: (() {
        final guardedValue = map['secondaryWebInternetEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryWebInternetHost: (() {
        final guardedValue = map['secondaryWebInternetHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryWebMicrosoftEndpoint: (() {
        final guardedValue = map['secondaryWebMicrosoftEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryWebMicrosoftHost: (() {
        final guardedValue = map['secondaryWebMicrosoftHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sftpEnabled: (() {
        final guardedValue = map['sftpEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      shareProperties: (() {
        final guardedValue = map['shareProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountShareProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sharedAccessKeyEnabled: (() {
        final guardedValue = map['sharedAccessKeyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      staticWebsite: (() {
        final guardedValue = map['staticWebsite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccountStaticWebsite.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tableEncryptionKeyType: (() {
        final guardedValue = map['tableEncryptionKeyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

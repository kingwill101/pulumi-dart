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
  /// &gt; **Note:** Changing the `account_kind` value from `Storage` to `StorageV2` will not trigger a force new on the storage account, it will only upgrade the existing storage account from `Storage` to `StorageV2` keeping the existing storage account in place.
  final pulumi.Input<String>? accountKind;

  /// Defines the type of replication to use for this storage account. Valid options are `LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS` and `RAGZRS`. Changing this forces a new resource to be created when types `LRS`, `GRS` and `RAGRS` are changed to `ZRS`, `GZRS` or `RAGZRS` and vice versa.
  final pulumi.Input<String> accountReplicationType;

  /// Defines the Tier to use for this storage account. Valid options are `Standard` and `Premium`. For `BlockBlobStorage` and `FileStorage` accounts only `Premium` is valid. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Blobs with a tier of `Premium` are of account kind `StorageV2`.
  final pulumi.Input<String> accountTier;

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
  final pulumi.Input<String> resourceGroupName;

  /// A `routing` block as defined below.
  final pulumi.Input<AccountRouting>? routing;

  /// A `sas_policy` block as defined below.
  final pulumi.Input<AccountSasPolicy>? sasPolicy;

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
    this.accessTier,
    this.accountKind,
    required this.accountReplicationType,
    required this.accountTier,
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
    this.provisionedBillingModelVersion,
    this.publicNetworkAccessEnabled,
    this.queueEncryptionKeyType,
    this.queueProperties,
    required this.resourceGroupName,
    this.routing,
    this.sasPolicy,
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
      'accountReplicationType': accountReplicationType,
      'accountTier': accountTier,
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
      'provisionedBillingModelVersion': ?provisionedBillingModelVersion,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'queueEncryptionKeyType': ?queueEncryptionKeyType,
      'queueProperties':
          ?pulumi.Input.mapOptionalInputValue<
            AccountQueueProperties,
            Map<String, dynamic>
          >(queueProperties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
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

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
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
      accountReplicationType: pulumi.Input.fromValue(
        map['accountReplicationType'] as String,
      ),
      accountTier: pulumi.Input.fromValue(map['accountTier'] as String),
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
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
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

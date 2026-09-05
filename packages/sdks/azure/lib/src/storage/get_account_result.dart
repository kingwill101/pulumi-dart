// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_azure_files_authentication.dart';
import 'get_account_custom_domain.dart';
import 'get_account_identity.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The access tier for `BlobStorage` accounts.
  final String? accessTier;
  /// The Kind of account.
  final String? accountKind;
  /// The type of replication used for this storage account.
  final String? accountReplicationType;
  /// The Tier of this storage account.
  final String? accountTier;
  /// Can nested items in the storage account opt into allowing public access?
  final bool? allowNestedItemsToBePublic;
  /// A `azureFilesAuthentication` block as documented below.
  final List<GetAccountAzureFilesAuthentication>? azureFilesAuthentications;
  /// supports the following:
  final List<GetAccountCustomDomain>? customDomains;
  /// Which DNS endpoint type is used - either `Standard` or `AzureDnsZone`.
  final String? dnsEndpointType;
  /// Is traffic only allowed via HTTPS? See [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information.
  final bool? httpsTrafficOnlyEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as documented below.
  final List<GetAccountIdentity>? identities;
  /// Is infrastructure encryption enabled? See [here](https://docs.microsoft.com/azure/storage/common/infrastructure-encryption-enable/)
  /// for more information.
  final bool? infrastructureEncryptionEnabled;
  /// Is Hierarchical Namespace enabled?
  final bool? isHnsEnabled;
  /// The Azure location where the Storage Account exists
  final String? location;
  /// The minimum supported TLS version for this storage account.
  final String? minTlsVersion;
  /// The Custom Domain Name used for the Storage Account.
  final String? name;
  /// Is NFSv3 protocol enabled?
  final bool? nfsv3Enabled;
  /// The primary access key for the Storage Account.
  final String? primaryAccessKey;
  /// The connection string associated with the primary blob location
  final String? primaryBlobConnectionString;
  /// The endpoint URL for blob storage in the primary location.
  final String? primaryBlobEndpoint;
  /// The hostname with port if applicable for blob storage in the primary location.
  final String? primaryBlobHost;
  /// The internet routing endpoint URL for blob storage in the primary location.
  final String? primaryBlobInternetEndpoint;
  /// The internet routing hostname with port if applicable for blob storage in the primary location.
  final String? primaryBlobInternetHost;
  /// The microsoft routing endpoint URL for blob storage in the primary location.
  final String? primaryBlobMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for blob storage in the primary location.
  final String? primaryBlobMicrosoftHost;
  /// The connection string associated with the primary location
  final String? primaryConnectionString;
  /// The endpoint URL for DFS storage in the primary location.
  final String? primaryDfsEndpoint;
  /// The hostname with port if applicable for DFS storage in the primary location.
  final String? primaryDfsHost;
  /// The internet routing endpoint URL for DFS storage in the primary location.
  final String? primaryDfsInternetEndpoint;
  /// The internet routing hostname with port if applicable for DFS storage in the primary location.
  final String? primaryDfsInternetHost;
  /// The microsoft routing endpoint URL for DFS storage in the primary location.
  final String? primaryDfsMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for DFS storage in the primary location.
  final String? primaryDfsMicrosoftHost;
  /// The endpoint URL for file storage in the primary location.
  final String? primaryFileEndpoint;
  /// The hostname with port if applicable for file storage in the primary location.
  final String? primaryFileHost;
  /// The internet routing endpoint URL for file storage in the primary location.
  final String? primaryFileInternetEndpoint;
  /// The internet routing hostname with port if applicable for file storage in the primary location.
  final String? primaryFileInternetHost;
  /// The microsoft routing endpoint URL for file storage in the primary location.
  final String? primaryFileMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for file storage in the primary location.
  final String? primaryFileMicrosoftHost;
  /// The primary location of the Storage Account.
  final String? primaryLocation;
  /// The endpoint URL for queue storage in the primary location.
  final String? primaryQueueEndpoint;
  /// The hostname with port if applicable for queue storage in the primary location.
  final String? primaryQueueHost;
  /// The microsoft routing endpoint URL for queue storage in the primary location.
  final String? primaryQueueMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for queue storage in the primary location.
  final String? primaryQueueMicrosoftHost;
  /// The endpoint URL for table storage in the primary location.
  final String? primaryTableEndpoint;
  /// The hostname with port if applicable for table storage in the primary location.
  final String? primaryTableHost;
  /// The microsoft routing endpoint URL for table storage in the primary location.
  final String? primaryTableMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for table storage in the primary location.
  final String? primaryTableMicrosoftHost;
  /// The endpoint URL for web storage in the primary location.
  final String? primaryWebEndpoint;
  /// The hostname with port if applicable for web storage in the primary location.
  final String? primaryWebHost;
  /// The internet routing endpoint URL for web storage in the primary location.
  final String? primaryWebInternetEndpoint;
  /// The internet routing hostname with port if applicable for web storage in the primary location.
  final String? primaryWebInternetHost;
  /// The microsoft routing endpoint URL for web storage in the primary location.
  final String? primaryWebMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for web storage in the primary location.
  final String? primaryWebMicrosoftHost;
  /// The encryption key type of the queue.
  final String? queueEncryptionKeyType;
  final String? resourceGroupName;
  /// The secondary access key for the Storage Account.
  final String? secondaryAccessKey;
  /// The connection string associated with the secondary blob location
  final String? secondaryBlobConnectionString;
  /// The endpoint URL for blob storage in the secondary location.
  final String? secondaryBlobEndpoint;
  /// The hostname with port if applicable for blob storage in the secondary location.
  final String? secondaryBlobHost;
  /// The internet routing endpoint URL for blob storage in the secondary location.
  final String? secondaryBlobInternetEndpoint;
  /// The internet routing hostname with port if applicable for blob storage in the secondary location.
  final String? secondaryBlobInternetHost;
  /// The microsoft routing endpoint URL for blob storage in the secondary location.
  final String? secondaryBlobMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for blob storage in the secondary location.
  final String? secondaryBlobMicrosoftHost;
  /// The connection string associated with the secondary location
  final String? secondaryConnectionString;
  /// The endpoint URL for DFS storage in the secondary location.
  final String? secondaryDfsEndpoint;
  /// The hostname with port if applicable for DFS storage in the secondary location.
  final String? secondaryDfsHost;
  /// The internet routing endpoint URL for DFS storage in the secondary location.
  final String? secondaryDfsInternetEndpoint;
  /// The internet routing hostname with port if applicable for DFS storage in the secondary location.
  final String? secondaryDfsInternetHost;
  /// The microsoft routing endpoint URL for DFS storage in the secondary location.
  final String? secondaryDfsMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for DFS storage in the secondary location.
  final String? secondaryDfsMicrosoftHost;
  /// The endpoint URL for file storage in the secondary location.
  final String? secondaryFileEndpoint;
  /// The hostname with port if applicable for file storage in the secondary location.
  final String? secondaryFileHost;
  /// The internet routing endpoint URL for file storage in the secondary location.
  final String? secondaryFileInternetEndpoint;
  /// The internet routing hostname with port if applicable for file storage in the secondary location.
  final String? secondaryFileInternetHost;
  /// The microsoft routing endpoint URL for file storage in the secondary location.
  final String? secondaryFileMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for file storage in the secondary location.
  final String? secondaryFileMicrosoftHost;
  /// The secondary location of the Storage Account.
  final String? secondaryLocation;
  /// The endpoint URL for queue storage in the secondary location.
  final String? secondaryQueueEndpoint;
  /// The hostname with port if applicable for queue storage in the secondary location.
  final String? secondaryQueueHost;
  /// The microsoft routing endpoint URL for queue storage in the secondary location.
  final String? secondaryQueueMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for queue storage in the secondary location.
  final String? secondaryQueueMicrosoftHost;
  /// The endpoint URL for table storage in the secondary location.
  final String? secondaryTableEndpoint;
  /// The hostname with port if applicable for table storage in the secondary location.
  final String? secondaryTableHost;
  /// The microsoft routing endpoint URL for table storage in the secondary location.
  final String? secondaryTableMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for table storage in the secondary location.
  final String? secondaryTableMicrosoftHost;
  /// The endpoint URL for web storage in the secondary location.
  final String? secondaryWebEndpoint;
  /// The hostname with port if applicable for web storage in the secondary location.
  final String? secondaryWebHost;
  /// The internet routing endpoint URL for web storage in the secondary location.
  final String? secondaryWebInternetEndpoint;
  /// The internet routing hostname with port if applicable for web storage in the secondary location.
  final String? secondaryWebInternetHost;
  /// The microsoft routing endpoint URL for web storage in the secondary location.
  final String? secondaryWebMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for web storage in the secondary location.
  final String? secondaryWebMicrosoftHost;
  /// The encryption key type of the table.
  final String? tableEncryptionKeyType;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountResult].
  /// [accessTier] The access tier for `BlobStorage` accounts.
  /// [accountKind] The Kind of account.
  /// [accountReplicationType] The type of replication used for this storage account.
  /// [accountTier] The Tier of this storage account.
  /// [allowNestedItemsToBePublic] Can nested items in the storage account opt into allowing public access?
  /// [azureFilesAuthentications] A `azureFilesAuthentication` block as documented below.
  /// [customDomains] supports the following:
  /// [dnsEndpointType] Which DNS endpoint type is used - either `Standard` or `AzureDnsZone`.
  /// [httpsTrafficOnlyEnabled] Is traffic only allowed via HTTPS? See [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as documented below.
  /// [infrastructureEncryptionEnabled] Is infrastructure encryption enabled? See [here](https://docs.microsoft.com/azure/storage/common/infrastructure-encryption-enable/)
  /// [isHnsEnabled] Is Hierarchical Namespace enabled?
  /// [location] The Azure location where the Storage Account exists
  /// [minTlsVersion] The minimum supported TLS version for this storage account.
  /// [name] The Custom Domain Name used for the Storage Account.
  /// [nfsv3Enabled] Is NFSv3 protocol enabled?
  /// [primaryAccessKey] The primary access key for the Storage Account.
  /// [primaryBlobConnectionString] The connection string associated with the primary blob location
  /// [primaryBlobEndpoint] The endpoint URL for blob storage in the primary location.
  /// [primaryBlobHost] The hostname with port if applicable for blob storage in the primary location.
  /// [primaryBlobInternetEndpoint] The internet routing endpoint URL for blob storage in the primary location.
  /// [primaryBlobInternetHost] The internet routing hostname with port if applicable for blob storage in the primary location.
  /// [primaryBlobMicrosoftEndpoint] The microsoft routing endpoint URL for blob storage in the primary location.
  /// [primaryBlobMicrosoftHost] The microsoft routing hostname with port if applicable for blob storage in the primary location.
  /// [primaryConnectionString] The connection string associated with the primary location
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
  /// [primaryLocation] The primary location of the Storage Account.
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
  /// [queueEncryptionKeyType] The encryption key type of the queue.
  /// [resourceGroupName] Optional.
  /// [secondaryAccessKey] The secondary access key for the Storage Account.
  /// [secondaryBlobConnectionString] The connection string associated with the secondary blob location
  /// [secondaryBlobEndpoint] The endpoint URL for blob storage in the secondary location.
  /// [secondaryBlobHost] The hostname with port if applicable for blob storage in the secondary location.
  /// [secondaryBlobInternetEndpoint] The internet routing endpoint URL for blob storage in the secondary location.
  /// [secondaryBlobInternetHost] The internet routing hostname with port if applicable for blob storage in the secondary location.
  /// [secondaryBlobMicrosoftEndpoint] The microsoft routing endpoint URL for blob storage in the secondary location.
  /// [secondaryBlobMicrosoftHost] The microsoft routing hostname with port if applicable for blob storage in the secondary location.
  /// [secondaryConnectionString] The connection string associated with the secondary location
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
  /// [secondaryLocation] The secondary location of the Storage Account.
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
  /// [tableEncryptionKeyType] The encryption key type of the table.
  /// [tags] A mapping of tags to assigned to the resource.
  const GetAccountResult({
    this.accessTier,
    this.accountKind,
    this.accountReplicationType,
    this.accountTier,
    this.allowNestedItemsToBePublic,
    this.azureFilesAuthentications,
    this.customDomains,
    this.dnsEndpointType,
    this.httpsTrafficOnlyEnabled,
    this.id,
    this.identities,
    this.infrastructureEncryptionEnabled,
    this.isHnsEnabled,
    this.location,
    this.minTlsVersion,
    this.name,
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
    this.queueEncryptionKeyType,
    this.resourceGroupName,
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
      'azureFilesAuthentications': ?(() { final guardedValue = azureFilesAuthentications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountAzureFilesAuthentication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customDomains': ?(() { final guardedValue = customDomains; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountCustomDomain, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dnsEndpointType': ?dnsEndpointType,
      'httpsTrafficOnlyEnabled': ?httpsTrafficOnlyEnabled,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'isHnsEnabled': ?isHnsEnabled,
      'location': ?location,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
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
      'queueEncryptionKeyType': ?queueEncryptionKeyType,
      'resourceGroupName': ?resourceGroupName,
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
      'tableEncryptionKeyType': ?tableEncryptionKeyType,
      'tags': ?tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accessTier: (() { final guardedValue = map['accessTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountKind: (() { final guardedValue = map['accountKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountReplicationType: (() { final guardedValue = map['accountReplicationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountTier: (() { final guardedValue = map['accountTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowNestedItemsToBePublic: (() { final guardedValue = map['allowNestedItemsToBePublic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureFilesAuthentications: (() { final guardedValue = map['azureFilesAuthentications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountAzureFilesAuthentication>(guardedValue, (value) => GetAccountAzureFilesAuthentication.fromMap((value as Map).cast<String, dynamic>())); })(),
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountCustomDomain>(guardedValue, (value) => GetAccountCustomDomain.fromMap((value as Map).cast<String, dynamic>())); })(),
      dnsEndpointType: (() { final guardedValue = map['dnsEndpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpsTrafficOnlyEnabled: (() { final guardedValue = map['httpsTrafficOnlyEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountIdentity>(guardedValue, (value) => GetAccountIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      infrastructureEncryptionEnabled: (() { final guardedValue = map['infrastructureEncryptionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isHnsEnabled: (() { final guardedValue = map['isHnsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nfsv3Enabled: (() { final guardedValue = map['nfsv3Enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryBlobConnectionString: (() { final guardedValue = map['primaryBlobConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryBlobEndpoint: (() { final guardedValue = map['primaryBlobEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryBlobHost: (() { final guardedValue = map['primaryBlobHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryBlobInternetEndpoint: (() { final guardedValue = map['primaryBlobInternetEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryBlobInternetHost: (() { final guardedValue = map['primaryBlobInternetHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryBlobMicrosoftEndpoint: (() { final guardedValue = map['primaryBlobMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryBlobMicrosoftHost: (() { final guardedValue = map['primaryBlobMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryDfsEndpoint: (() { final guardedValue = map['primaryDfsEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryDfsHost: (() { final guardedValue = map['primaryDfsHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryDfsInternetEndpoint: (() { final guardedValue = map['primaryDfsInternetEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryDfsInternetHost: (() { final guardedValue = map['primaryDfsInternetHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryDfsMicrosoftEndpoint: (() { final guardedValue = map['primaryDfsMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryDfsMicrosoftHost: (() { final guardedValue = map['primaryDfsMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryFileEndpoint: (() { final guardedValue = map['primaryFileEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryFileHost: (() { final guardedValue = map['primaryFileHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryFileInternetEndpoint: (() { final guardedValue = map['primaryFileInternetEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryFileInternetHost: (() { final guardedValue = map['primaryFileInternetHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryFileMicrosoftEndpoint: (() { final guardedValue = map['primaryFileMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryFileMicrosoftHost: (() { final guardedValue = map['primaryFileMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryLocation: (() { final guardedValue = map['primaryLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryQueueEndpoint: (() { final guardedValue = map['primaryQueueEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryQueueHost: (() { final guardedValue = map['primaryQueueHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryQueueMicrosoftEndpoint: (() { final guardedValue = map['primaryQueueMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryQueueMicrosoftHost: (() { final guardedValue = map['primaryQueueMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryTableEndpoint: (() { final guardedValue = map['primaryTableEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryTableHost: (() { final guardedValue = map['primaryTableHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryTableMicrosoftEndpoint: (() { final guardedValue = map['primaryTableMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryTableMicrosoftHost: (() { final guardedValue = map['primaryTableMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryWebEndpoint: (() { final guardedValue = map['primaryWebEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryWebHost: (() { final guardedValue = map['primaryWebHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryWebInternetEndpoint: (() { final guardedValue = map['primaryWebInternetEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryWebInternetHost: (() { final guardedValue = map['primaryWebInternetHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryWebMicrosoftEndpoint: (() { final guardedValue = map['primaryWebMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryWebMicrosoftHost: (() { final guardedValue = map['primaryWebMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueEncryptionKeyType: (() { final guardedValue = map['queueEncryptionKeyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryBlobConnectionString: (() { final guardedValue = map['secondaryBlobConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryBlobEndpoint: (() { final guardedValue = map['secondaryBlobEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryBlobHost: (() { final guardedValue = map['secondaryBlobHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryBlobInternetEndpoint: (() { final guardedValue = map['secondaryBlobInternetEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryBlobInternetHost: (() { final guardedValue = map['secondaryBlobInternetHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryBlobMicrosoftEndpoint: (() { final guardedValue = map['secondaryBlobMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryBlobMicrosoftHost: (() { final guardedValue = map['secondaryBlobMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryDfsEndpoint: (() { final guardedValue = map['secondaryDfsEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryDfsHost: (() { final guardedValue = map['secondaryDfsHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryDfsInternetEndpoint: (() { final guardedValue = map['secondaryDfsInternetEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryDfsInternetHost: (() { final guardedValue = map['secondaryDfsInternetHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryDfsMicrosoftEndpoint: (() { final guardedValue = map['secondaryDfsMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryDfsMicrosoftHost: (() { final guardedValue = map['secondaryDfsMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryFileEndpoint: (() { final guardedValue = map['secondaryFileEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryFileHost: (() { final guardedValue = map['secondaryFileHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryFileInternetEndpoint: (() { final guardedValue = map['secondaryFileInternetEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryFileInternetHost: (() { final guardedValue = map['secondaryFileInternetHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryFileMicrosoftEndpoint: (() { final guardedValue = map['secondaryFileMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryFileMicrosoftHost: (() { final guardedValue = map['secondaryFileMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryLocation: (() { final guardedValue = map['secondaryLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryQueueEndpoint: (() { final guardedValue = map['secondaryQueueEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryQueueHost: (() { final guardedValue = map['secondaryQueueHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryQueueMicrosoftEndpoint: (() { final guardedValue = map['secondaryQueueMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryQueueMicrosoftHost: (() { final guardedValue = map['secondaryQueueMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryTableEndpoint: (() { final guardedValue = map['secondaryTableEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryTableHost: (() { final guardedValue = map['secondaryTableHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryTableMicrosoftEndpoint: (() { final guardedValue = map['secondaryTableMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryTableMicrosoftHost: (() { final guardedValue = map['secondaryTableMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryWebEndpoint: (() { final guardedValue = map['secondaryWebEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryWebHost: (() { final guardedValue = map['secondaryWebHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryWebInternetEndpoint: (() { final guardedValue = map['secondaryWebInternetEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryWebInternetHost: (() { final guardedValue = map['secondaryWebInternetHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryWebMicrosoftEndpoint: (() { final guardedValue = map['secondaryWebMicrosoftEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryWebMicrosoftHost: (() { final guardedValue = map['secondaryWebMicrosoftHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableEncryptionKeyType: (() { final guardedValue = map['tableEncryptionKeyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_azure_files_authentication.dart';
import 'get_account_custom_domain.dart';
import 'get_account_identity.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The access tier for `BlobStorage` accounts.
  final String accessTier;
  /// The Kind of account.
  final String accountKind;
  /// The type of replication used for this storage account.
  final String accountReplicationType;
  /// The Tier of this storage account.
  final String accountTier;
  /// Can nested items in the storage account opt into allowing public access?
  final bool allowNestedItemsToBePublic;
  /// A `azure_files_authentication` block as documented below.
  final List<GetAccountAzureFilesAuthentication> azureFilesAuthentications;
  /// supports the following:
  final List<GetAccountCustomDomain> customDomains;
  /// Which DNS endpoint type is used - either `Standard` or `AzureDnsZone`.
  final String dnsEndpointType;
  /// Is traffic only allowed via HTTPS? See [here](https://docs.microsoft.com/azure/storage/storage-require-secure-transfer/) for more information.
  final bool httpsTrafficOnlyEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as documented below.
  final List<GetAccountIdentity> identities;
  /// Is infrastructure encryption enabled? See [here](https://docs.microsoft.com/azure/storage/common/infrastructure-encryption-enable/)
  /// for more information.
  final bool infrastructureEncryptionEnabled;
  /// Is Hierarchical Namespace enabled?
  final bool isHnsEnabled;
  /// The Azure location where the Storage Account exists
  final String location;
  /// The minimum supported TLS version for this storage account.
  final String? minTlsVersion;
  /// The Custom Domain Name used for the Storage Account.
  final String name;
  /// Is NFSv3 protocol enabled?
  final bool nfsv3Enabled;
  /// The primary access key for the Storage Account.
  final String primaryAccessKey;
  /// The connection string associated with the primary blob location
  final String primaryBlobConnectionString;
  /// The endpoint URL for blob storage in the primary location.
  final String primaryBlobEndpoint;
  /// The hostname with port if applicable for blob storage in the primary location.
  final String primaryBlobHost;
  /// The internet routing endpoint URL for blob storage in the primary location.
  final String primaryBlobInternetEndpoint;
  /// The internet routing hostname with port if applicable for blob storage in the primary location.
  final String primaryBlobInternetHost;
  /// The microsoft routing endpoint URL for blob storage in the primary location.
  final String primaryBlobMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for blob storage in the primary location.
  final String primaryBlobMicrosoftHost;
  /// The connection string associated with the primary location
  final String primaryConnectionString;
  /// The endpoint URL for DFS storage in the primary location.
  final String primaryDfsEndpoint;
  /// The hostname with port if applicable for DFS storage in the primary location.
  final String primaryDfsHost;
  /// The internet routing endpoint URL for DFS storage in the primary location.
  final String primaryDfsInternetEndpoint;
  /// The internet routing hostname with port if applicable for DFS storage in the primary location.
  final String primaryDfsInternetHost;
  /// The microsoft routing endpoint URL for DFS storage in the primary location.
  final String primaryDfsMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for DFS storage in the primary location.
  final String primaryDfsMicrosoftHost;
  /// The endpoint URL for file storage in the primary location.
  final String primaryFileEndpoint;
  /// The hostname with port if applicable for file storage in the primary location.
  final String primaryFileHost;
  /// The internet routing endpoint URL for file storage in the primary location.
  final String primaryFileInternetEndpoint;
  /// The internet routing hostname with port if applicable for file storage in the primary location.
  final String primaryFileInternetHost;
  /// The microsoft routing endpoint URL for file storage in the primary location.
  final String primaryFileMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for file storage in the primary location.
  final String primaryFileMicrosoftHost;
  /// The primary location of the Storage Account.
  final String primaryLocation;
  /// The endpoint URL for queue storage in the primary location.
  final String primaryQueueEndpoint;
  /// The hostname with port if applicable for queue storage in the primary location.
  final String primaryQueueHost;
  /// The microsoft routing endpoint URL for queue storage in the primary location.
  final String primaryQueueMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for queue storage in the primary location.
  final String primaryQueueMicrosoftHost;
  /// The endpoint URL for table storage in the primary location.
  final String primaryTableEndpoint;
  /// The hostname with port if applicable for table storage in the primary location.
  final String primaryTableHost;
  /// The microsoft routing endpoint URL for table storage in the primary location.
  final String primaryTableMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for table storage in the primary location.
  final String primaryTableMicrosoftHost;
  /// The endpoint URL for web storage in the primary location.
  final String primaryWebEndpoint;
  /// The hostname with port if applicable for web storage in the primary location.
  final String primaryWebHost;
  /// The internet routing endpoint URL for web storage in the primary location.
  final String primaryWebInternetEndpoint;
  /// The internet routing hostname with port if applicable for web storage in the primary location.
  final String primaryWebInternetHost;
  /// The microsoft routing endpoint URL for web storage in the primary location.
  final String primaryWebMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for web storage in the primary location.
  final String primaryWebMicrosoftHost;
  /// The encryption key type of the queue.
  final String queueEncryptionKeyType;
  final String? resourceGroupName;
  /// The secondary access key for the Storage Account.
  final String secondaryAccessKey;
  /// The connection string associated with the secondary blob location
  final String secondaryBlobConnectionString;
  /// The endpoint URL for blob storage in the secondary location.
  final String secondaryBlobEndpoint;
  /// The hostname with port if applicable for blob storage in the secondary location.
  final String secondaryBlobHost;
  /// The internet routing endpoint URL for blob storage in the secondary location.
  final String secondaryBlobInternetEndpoint;
  /// The internet routing hostname with port if applicable for blob storage in the secondary location.
  final String secondaryBlobInternetHost;
  /// The microsoft routing endpoint URL for blob storage in the secondary location.
  final String secondaryBlobMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for blob storage in the secondary location.
  final String secondaryBlobMicrosoftHost;
  /// The connection string associated with the secondary location
  final String secondaryConnectionString;
  /// The endpoint URL for DFS storage in the secondary location.
  final String secondaryDfsEndpoint;
  /// The hostname with port if applicable for DFS storage in the secondary location.
  final String secondaryDfsHost;
  /// The internet routing endpoint URL for DFS storage in the secondary location.
  final String secondaryDfsInternetEndpoint;
  /// The internet routing hostname with port if applicable for DFS storage in the secondary location.
  final String secondaryDfsInternetHost;
  /// The microsoft routing endpoint URL for DFS storage in the secondary location.
  final String secondaryDfsMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for DFS storage in the secondary location.
  final String secondaryDfsMicrosoftHost;
  /// The endpoint URL for file storage in the secondary location.
  final String secondaryFileEndpoint;
  /// The hostname with port if applicable for file storage in the secondary location.
  final String secondaryFileHost;
  /// The internet routing endpoint URL for file storage in the secondary location.
  final String secondaryFileInternetEndpoint;
  /// The internet routing hostname with port if applicable for file storage in the secondary location.
  final String secondaryFileInternetHost;
  /// The microsoft routing endpoint URL for file storage in the secondary location.
  final String secondaryFileMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for file storage in the secondary location.
  final String secondaryFileMicrosoftHost;
  /// The secondary location of the Storage Account.
  final String secondaryLocation;
  /// The endpoint URL for queue storage in the secondary location.
  final String secondaryQueueEndpoint;
  /// The hostname with port if applicable for queue storage in the secondary location.
  final String secondaryQueueHost;
  /// The microsoft routing endpoint URL for queue storage in the secondary location.
  final String secondaryQueueMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for queue storage in the secondary location.
  final String secondaryQueueMicrosoftHost;
  /// The endpoint URL for table storage in the secondary location.
  final String secondaryTableEndpoint;
  /// The hostname with port if applicable for table storage in the secondary location.
  final String secondaryTableHost;
  /// The microsoft routing endpoint URL for table storage in the secondary location.
  final String secondaryTableMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for table storage in the secondary location.
  final String secondaryTableMicrosoftHost;
  /// The endpoint URL for web storage in the secondary location.
  final String secondaryWebEndpoint;
  /// The hostname with port if applicable for web storage in the secondary location.
  final String secondaryWebHost;
  /// The internet routing endpoint URL for web storage in the secondary location.
  final String secondaryWebInternetEndpoint;
  /// The internet routing hostname with port if applicable for web storage in the secondary location.
  final String secondaryWebInternetHost;
  /// The microsoft routing endpoint URL for web storage in the secondary location.
  final String secondaryWebMicrosoftEndpoint;
  /// The microsoft routing hostname with port if applicable for web storage in the secondary location.
  final String secondaryWebMicrosoftHost;
  /// The encryption key type of the table.
  final String tableEncryptionKeyType;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetAccountResult].
  /// [accessTier] The access tier for `BlobStorage` accounts.
  /// [accountKind] The Kind of account.
  /// [accountReplicationType] The type of replication used for this storage account.
  /// [accountTier] The Tier of this storage account.
  /// [allowNestedItemsToBePublic] Can nested items in the storage account opt into allowing public access?
  /// [azureFilesAuthentications] A `azure_files_authentication` block as documented below.
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
  GetAccountResult({
    required this.accessTier,
    required this.accountKind,
    required this.accountReplicationType,
    required this.accountTier,
    required this.allowNestedItemsToBePublic,
    required this.azureFilesAuthentications,
    required this.customDomains,
    required this.dnsEndpointType,
    required this.httpsTrafficOnlyEnabled,
    required this.id,
    required this.identities,
    required this.infrastructureEncryptionEnabled,
    required this.isHnsEnabled,
    required this.location,
    this.minTlsVersion,
    required this.name,
    required this.nfsv3Enabled,
    required this.primaryAccessKey,
    required this.primaryBlobConnectionString,
    required this.primaryBlobEndpoint,
    required this.primaryBlobHost,
    required this.primaryBlobInternetEndpoint,
    required this.primaryBlobInternetHost,
    required this.primaryBlobMicrosoftEndpoint,
    required this.primaryBlobMicrosoftHost,
    required this.primaryConnectionString,
    required this.primaryDfsEndpoint,
    required this.primaryDfsHost,
    required this.primaryDfsInternetEndpoint,
    required this.primaryDfsInternetHost,
    required this.primaryDfsMicrosoftEndpoint,
    required this.primaryDfsMicrosoftHost,
    required this.primaryFileEndpoint,
    required this.primaryFileHost,
    required this.primaryFileInternetEndpoint,
    required this.primaryFileInternetHost,
    required this.primaryFileMicrosoftEndpoint,
    required this.primaryFileMicrosoftHost,
    required this.primaryLocation,
    required this.primaryQueueEndpoint,
    required this.primaryQueueHost,
    required this.primaryQueueMicrosoftEndpoint,
    required this.primaryQueueMicrosoftHost,
    required this.primaryTableEndpoint,
    required this.primaryTableHost,
    required this.primaryTableMicrosoftEndpoint,
    required this.primaryTableMicrosoftHost,
    required this.primaryWebEndpoint,
    required this.primaryWebHost,
    required this.primaryWebInternetEndpoint,
    required this.primaryWebInternetHost,
    required this.primaryWebMicrosoftEndpoint,
    required this.primaryWebMicrosoftHost,
    required this.queueEncryptionKeyType,
    this.resourceGroupName,
    required this.secondaryAccessKey,
    required this.secondaryBlobConnectionString,
    required this.secondaryBlobEndpoint,
    required this.secondaryBlobHost,
    required this.secondaryBlobInternetEndpoint,
    required this.secondaryBlobInternetHost,
    required this.secondaryBlobMicrosoftEndpoint,
    required this.secondaryBlobMicrosoftHost,
    required this.secondaryConnectionString,
    required this.secondaryDfsEndpoint,
    required this.secondaryDfsHost,
    required this.secondaryDfsInternetEndpoint,
    required this.secondaryDfsInternetHost,
    required this.secondaryDfsMicrosoftEndpoint,
    required this.secondaryDfsMicrosoftHost,
    required this.secondaryFileEndpoint,
    required this.secondaryFileHost,
    required this.secondaryFileInternetEndpoint,
    required this.secondaryFileInternetHost,
    required this.secondaryFileMicrosoftEndpoint,
    required this.secondaryFileMicrosoftHost,
    required this.secondaryLocation,
    required this.secondaryQueueEndpoint,
    required this.secondaryQueueHost,
    required this.secondaryQueueMicrosoftEndpoint,
    required this.secondaryQueueMicrosoftHost,
    required this.secondaryTableEndpoint,
    required this.secondaryTableHost,
    required this.secondaryTableMicrosoftEndpoint,
    required this.secondaryTableMicrosoftHost,
    required this.secondaryWebEndpoint,
    required this.secondaryWebHost,
    required this.secondaryWebInternetEndpoint,
    required this.secondaryWebInternetHost,
    required this.secondaryWebMicrosoftEndpoint,
    required this.secondaryWebMicrosoftHost,
    required this.tableEncryptionKeyType,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': accessTier,
      'accountKind': accountKind,
      'accountReplicationType': accountReplicationType,
      'accountTier': accountTier,
      'allowNestedItemsToBePublic': allowNestedItemsToBePublic,
      'azureFilesAuthentications': pulumi.Input.encodeList<GetAccountAzureFilesAuthentication, Map<String, dynamic>>(azureFilesAuthentications, (value) => value.toMap()),
      'customDomains': pulumi.Input.encodeList<GetAccountCustomDomain, Map<String, dynamic>>(customDomains, (value) => value.toMap()),
      'dnsEndpointType': dnsEndpointType,
      'httpsTrafficOnlyEnabled': httpsTrafficOnlyEnabled,
      'id': id,
      'identities': pulumi.Input.encodeList<GetAccountIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'infrastructureEncryptionEnabled': infrastructureEncryptionEnabled,
      'isHnsEnabled': isHnsEnabled,
      'location': location,
      'minTlsVersion': ?minTlsVersion,
      'name': name,
      'nfsv3Enabled': nfsv3Enabled,
      'primaryAccessKey': primaryAccessKey,
      'primaryBlobConnectionString': primaryBlobConnectionString,
      'primaryBlobEndpoint': primaryBlobEndpoint,
      'primaryBlobHost': primaryBlobHost,
      'primaryBlobInternetEndpoint': primaryBlobInternetEndpoint,
      'primaryBlobInternetHost': primaryBlobInternetHost,
      'primaryBlobMicrosoftEndpoint': primaryBlobMicrosoftEndpoint,
      'primaryBlobMicrosoftHost': primaryBlobMicrosoftHost,
      'primaryConnectionString': primaryConnectionString,
      'primaryDfsEndpoint': primaryDfsEndpoint,
      'primaryDfsHost': primaryDfsHost,
      'primaryDfsInternetEndpoint': primaryDfsInternetEndpoint,
      'primaryDfsInternetHost': primaryDfsInternetHost,
      'primaryDfsMicrosoftEndpoint': primaryDfsMicrosoftEndpoint,
      'primaryDfsMicrosoftHost': primaryDfsMicrosoftHost,
      'primaryFileEndpoint': primaryFileEndpoint,
      'primaryFileHost': primaryFileHost,
      'primaryFileInternetEndpoint': primaryFileInternetEndpoint,
      'primaryFileInternetHost': primaryFileInternetHost,
      'primaryFileMicrosoftEndpoint': primaryFileMicrosoftEndpoint,
      'primaryFileMicrosoftHost': primaryFileMicrosoftHost,
      'primaryLocation': primaryLocation,
      'primaryQueueEndpoint': primaryQueueEndpoint,
      'primaryQueueHost': primaryQueueHost,
      'primaryQueueMicrosoftEndpoint': primaryQueueMicrosoftEndpoint,
      'primaryQueueMicrosoftHost': primaryQueueMicrosoftHost,
      'primaryTableEndpoint': primaryTableEndpoint,
      'primaryTableHost': primaryTableHost,
      'primaryTableMicrosoftEndpoint': primaryTableMicrosoftEndpoint,
      'primaryTableMicrosoftHost': primaryTableMicrosoftHost,
      'primaryWebEndpoint': primaryWebEndpoint,
      'primaryWebHost': primaryWebHost,
      'primaryWebInternetEndpoint': primaryWebInternetEndpoint,
      'primaryWebInternetHost': primaryWebInternetHost,
      'primaryWebMicrosoftEndpoint': primaryWebMicrosoftEndpoint,
      'primaryWebMicrosoftHost': primaryWebMicrosoftHost,
      'queueEncryptionKeyType': queueEncryptionKeyType,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': secondaryAccessKey,
      'secondaryBlobConnectionString': secondaryBlobConnectionString,
      'secondaryBlobEndpoint': secondaryBlobEndpoint,
      'secondaryBlobHost': secondaryBlobHost,
      'secondaryBlobInternetEndpoint': secondaryBlobInternetEndpoint,
      'secondaryBlobInternetHost': secondaryBlobInternetHost,
      'secondaryBlobMicrosoftEndpoint': secondaryBlobMicrosoftEndpoint,
      'secondaryBlobMicrosoftHost': secondaryBlobMicrosoftHost,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryDfsEndpoint': secondaryDfsEndpoint,
      'secondaryDfsHost': secondaryDfsHost,
      'secondaryDfsInternetEndpoint': secondaryDfsInternetEndpoint,
      'secondaryDfsInternetHost': secondaryDfsInternetHost,
      'secondaryDfsMicrosoftEndpoint': secondaryDfsMicrosoftEndpoint,
      'secondaryDfsMicrosoftHost': secondaryDfsMicrosoftHost,
      'secondaryFileEndpoint': secondaryFileEndpoint,
      'secondaryFileHost': secondaryFileHost,
      'secondaryFileInternetEndpoint': secondaryFileInternetEndpoint,
      'secondaryFileInternetHost': secondaryFileInternetHost,
      'secondaryFileMicrosoftEndpoint': secondaryFileMicrosoftEndpoint,
      'secondaryFileMicrosoftHost': secondaryFileMicrosoftHost,
      'secondaryLocation': secondaryLocation,
      'secondaryQueueEndpoint': secondaryQueueEndpoint,
      'secondaryQueueHost': secondaryQueueHost,
      'secondaryQueueMicrosoftEndpoint': secondaryQueueMicrosoftEndpoint,
      'secondaryQueueMicrosoftHost': secondaryQueueMicrosoftHost,
      'secondaryTableEndpoint': secondaryTableEndpoint,
      'secondaryTableHost': secondaryTableHost,
      'secondaryTableMicrosoftEndpoint': secondaryTableMicrosoftEndpoint,
      'secondaryTableMicrosoftHost': secondaryTableMicrosoftHost,
      'secondaryWebEndpoint': secondaryWebEndpoint,
      'secondaryWebHost': secondaryWebHost,
      'secondaryWebInternetEndpoint': secondaryWebInternetEndpoint,
      'secondaryWebInternetHost': secondaryWebInternetHost,
      'secondaryWebMicrosoftEndpoint': secondaryWebMicrosoftEndpoint,
      'secondaryWebMicrosoftHost': secondaryWebMicrosoftHost,
      'tableEncryptionKeyType': tableEncryptionKeyType,
      'tags': tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accessTier: map['accessTier'] as String,
      accountKind: map['accountKind'] as String,
      accountReplicationType: map['accountReplicationType'] as String,
      accountTier: map['accountTier'] as String,
      allowNestedItemsToBePublic: map['allowNestedItemsToBePublic'] as bool,
      azureFilesAuthentications: pulumi.Input.decodeList<GetAccountAzureFilesAuthentication>(map['azureFilesAuthentications'], (value) => GetAccountAzureFilesAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      customDomains: pulumi.Input.decodeList<GetAccountCustomDomain>(map['customDomains'], (value) => GetAccountCustomDomain.fromMap((value as Map).cast<String, dynamic>())),
      dnsEndpointType: map['dnsEndpointType'] as String,
      httpsTrafficOnlyEnabled: map['httpsTrafficOnlyEnabled'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetAccountIdentity>(map['identities'], (value) => GetAccountIdentity.fromMap((value as Map).cast<String, dynamic>())),
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] as bool,
      isHnsEnabled: map['isHnsEnabled'] as bool,
      location: map['location'] as String,
      minTlsVersion: map['minTlsVersion'] == null ? null : map['minTlsVersion'] as String,
      name: map['name'] as String,
      nfsv3Enabled: map['nfsv3Enabled'] as bool,
      primaryAccessKey: map['primaryAccessKey'] as String,
      primaryBlobConnectionString: map['primaryBlobConnectionString'] as String,
      primaryBlobEndpoint: map['primaryBlobEndpoint'] as String,
      primaryBlobHost: map['primaryBlobHost'] as String,
      primaryBlobInternetEndpoint: map['primaryBlobInternetEndpoint'] as String,
      primaryBlobInternetHost: map['primaryBlobInternetHost'] as String,
      primaryBlobMicrosoftEndpoint: map['primaryBlobMicrosoftEndpoint'] as String,
      primaryBlobMicrosoftHost: map['primaryBlobMicrosoftHost'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryDfsEndpoint: map['primaryDfsEndpoint'] as String,
      primaryDfsHost: map['primaryDfsHost'] as String,
      primaryDfsInternetEndpoint: map['primaryDfsInternetEndpoint'] as String,
      primaryDfsInternetHost: map['primaryDfsInternetHost'] as String,
      primaryDfsMicrosoftEndpoint: map['primaryDfsMicrosoftEndpoint'] as String,
      primaryDfsMicrosoftHost: map['primaryDfsMicrosoftHost'] as String,
      primaryFileEndpoint: map['primaryFileEndpoint'] as String,
      primaryFileHost: map['primaryFileHost'] as String,
      primaryFileInternetEndpoint: map['primaryFileInternetEndpoint'] as String,
      primaryFileInternetHost: map['primaryFileInternetHost'] as String,
      primaryFileMicrosoftEndpoint: map['primaryFileMicrosoftEndpoint'] as String,
      primaryFileMicrosoftHost: map['primaryFileMicrosoftHost'] as String,
      primaryLocation: map['primaryLocation'] as String,
      primaryQueueEndpoint: map['primaryQueueEndpoint'] as String,
      primaryQueueHost: map['primaryQueueHost'] as String,
      primaryQueueMicrosoftEndpoint: map['primaryQueueMicrosoftEndpoint'] as String,
      primaryQueueMicrosoftHost: map['primaryQueueMicrosoftHost'] as String,
      primaryTableEndpoint: map['primaryTableEndpoint'] as String,
      primaryTableHost: map['primaryTableHost'] as String,
      primaryTableMicrosoftEndpoint: map['primaryTableMicrosoftEndpoint'] as String,
      primaryTableMicrosoftHost: map['primaryTableMicrosoftHost'] as String,
      primaryWebEndpoint: map['primaryWebEndpoint'] as String,
      primaryWebHost: map['primaryWebHost'] as String,
      primaryWebInternetEndpoint: map['primaryWebInternetEndpoint'] as String,
      primaryWebInternetHost: map['primaryWebInternetHost'] as String,
      primaryWebMicrosoftEndpoint: map['primaryWebMicrosoftEndpoint'] as String,
      primaryWebMicrosoftHost: map['primaryWebMicrosoftHost'] as String,
      queueEncryptionKeyType: map['queueEncryptionKeyType'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
      secondaryBlobConnectionString: map['secondaryBlobConnectionString'] as String,
      secondaryBlobEndpoint: map['secondaryBlobEndpoint'] as String,
      secondaryBlobHost: map['secondaryBlobHost'] as String,
      secondaryBlobInternetEndpoint: map['secondaryBlobInternetEndpoint'] as String,
      secondaryBlobInternetHost: map['secondaryBlobInternetHost'] as String,
      secondaryBlobMicrosoftEndpoint: map['secondaryBlobMicrosoftEndpoint'] as String,
      secondaryBlobMicrosoftHost: map['secondaryBlobMicrosoftHost'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryDfsEndpoint: map['secondaryDfsEndpoint'] as String,
      secondaryDfsHost: map['secondaryDfsHost'] as String,
      secondaryDfsInternetEndpoint: map['secondaryDfsInternetEndpoint'] as String,
      secondaryDfsInternetHost: map['secondaryDfsInternetHost'] as String,
      secondaryDfsMicrosoftEndpoint: map['secondaryDfsMicrosoftEndpoint'] as String,
      secondaryDfsMicrosoftHost: map['secondaryDfsMicrosoftHost'] as String,
      secondaryFileEndpoint: map['secondaryFileEndpoint'] as String,
      secondaryFileHost: map['secondaryFileHost'] as String,
      secondaryFileInternetEndpoint: map['secondaryFileInternetEndpoint'] as String,
      secondaryFileInternetHost: map['secondaryFileInternetHost'] as String,
      secondaryFileMicrosoftEndpoint: map['secondaryFileMicrosoftEndpoint'] as String,
      secondaryFileMicrosoftHost: map['secondaryFileMicrosoftHost'] as String,
      secondaryLocation: map['secondaryLocation'] as String,
      secondaryQueueEndpoint: map['secondaryQueueEndpoint'] as String,
      secondaryQueueHost: map['secondaryQueueHost'] as String,
      secondaryQueueMicrosoftEndpoint: map['secondaryQueueMicrosoftEndpoint'] as String,
      secondaryQueueMicrosoftHost: map['secondaryQueueMicrosoftHost'] as String,
      secondaryTableEndpoint: map['secondaryTableEndpoint'] as String,
      secondaryTableHost: map['secondaryTableHost'] as String,
      secondaryTableMicrosoftEndpoint: map['secondaryTableMicrosoftEndpoint'] as String,
      secondaryTableMicrosoftHost: map['secondaryTableMicrosoftHost'] as String,
      secondaryWebEndpoint: map['secondaryWebEndpoint'] as String,
      secondaryWebHost: map['secondaryWebHost'] as String,
      secondaryWebInternetEndpoint: map['secondaryWebInternetEndpoint'] as String,
      secondaryWebInternetHost: map['secondaryWebInternetHost'] as String,
      secondaryWebMicrosoftEndpoint: map['secondaryWebMicrosoftEndpoint'] as String,
      secondaryWebMicrosoftHost: map['secondaryWebMicrosoftHost'] as String,
      tableEncryptionKeyType: map['tableEncryptionKeyType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_analytical_storage.dart';
import 'account_backup.dart';
import 'account_capability.dart';
import 'account_capacity.dart';
import 'account_consistency_policy.dart';
import 'account_cors_rule.dart';
import 'account_geo_location.dart';
import 'account_identity.dart';
import 'account_restore.dart';
import 'account_virtual_network_rule.dart';

/// {@template pulumi_cosmosdb_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_account_account_args_doc}
class AccountArgs {
  final pulumi.Input<bool>? accessKeyMetadataWritesEnabled;
  /// An `analytical_storage` block as defined below.
  final pulumi.Input<AccountAnalyticalStorage>? analyticalStorage;
  final pulumi.Input<bool>? analyticalStorageEnabled;
  final pulumi.Input<bool>? automaticFailoverEnabled;
  final pulumi.Input<AccountBackup>? backup;
  final pulumi.Input<bool>? burstCapacityEnabled;
  final pulumi.Input<List<AccountCapability>>? capabilities;
  /// A `capacity` block as defined below.
  final pulumi.Input<AccountCapacity>? capacity;
  final pulumi.Input<AccountConsistencyPolicy> consistencyPolicy;
  final pulumi.Input<AccountCorsRule>? corsRule;
  /// The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `create_mode` can only be defined when the `backup.type` is set to `Continuous`.
  final pulumi.Input<String>? createMode;
  /// The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`.
  final pulumi.Input<String>? defaultIdentityType;
  final pulumi.Input<bool>? freeTierEnabled;
  final pulumi.Input<List<AccountGeoLocation>> geoLocations;
  final pulumi.Input<AccountIdentity>? identity;
  final pulumi.Input<List<String>>? ipRangeFilters;
  final pulumi.Input<bool>? isVirtualNetworkFilterEnabled;
  final pulumi.Input<String>? keyVaultKeyId;
  final pulumi.Input<String>? kind;
  final pulumi.Input<bool>? localAuthenticationDisabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? managedHsmKeyId;
  /// Specifies the minimal TLS version for the CosmosDB account. Possible values are: `Tls`, `Tls11`, and `Tls12`. Defaults to `Tls12`.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more details.
  final pulumi.Input<String>? minimalTlsVersion;
  final pulumi.Input<String>? mongoServerVersion;
  final pulumi.Input<bool>? multipleWriteLocationsEnabled;
  /// Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<bool>? networkAclBypassForAzureServices;
  final pulumi.Input<List<String>>? networkAclBypassIds;
  /// Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to `Standard`.
  final pulumi.Input<String> offerType;
  final pulumi.Input<bool>? partitionMergeEnabled;
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<AccountRestore>? restore;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<List<AccountVirtualNetworkRule>>? virtualNetworkRules;

  /// Creates a new [AccountArgs].
  /// [accessKeyMetadataWritesEnabled] Optional.
  /// [analyticalStorage] An `analytical_storage` block as defined below.
  /// [analyticalStorageEnabled] Optional.
  /// [automaticFailoverEnabled] Optional.
  /// [backup] Optional.
  /// [burstCapacityEnabled] Optional.
  /// [capabilities] Optional.
  /// [capacity] A `capacity` block as defined below.
  /// [consistencyPolicy] Required.
  /// [corsRule] Optional.
  /// [createMode] The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created.
  /// [defaultIdentityType] The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`.
  /// [freeTierEnabled] Optional.
  /// [geoLocations] Required.
  /// [identity] Optional.
  /// [ipRangeFilters] Optional.
  /// [isVirtualNetworkFilterEnabled] Optional.
  /// [keyVaultKeyId] Optional.
  /// [kind] Optional.
  /// [localAuthenticationDisabled] Optional.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [managedHsmKeyId] Optional.
  /// [minimalTlsVersion] Specifies the minimal TLS version for the CosmosDB account. Possible values are: `Tls`, `Tls11`, and `Tls12`. Defaults to `Tls12`.
  /// [mongoServerVersion] Optional.
  /// [multipleWriteLocationsEnabled] Optional.
  /// [name] Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created.
  /// [networkAclBypassForAzureServices] Optional.
  /// [networkAclBypassIds] Optional.
  /// [offerType] Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to `Standard`.
  /// [partitionMergeEnabled] Optional.
  /// [publicNetworkAccessEnabled] Optional.
  /// [resourceGroupName] The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created.
  /// [restore] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualNetworkRules] Optional.
  AccountArgs({
    this.accessKeyMetadataWritesEnabled,
    this.analyticalStorage,
    this.analyticalStorageEnabled,
    this.automaticFailoverEnabled,
    this.backup,
    this.burstCapacityEnabled,
    this.capabilities,
    this.capacity,
    required this.consistencyPolicy,
    this.corsRule,
    this.createMode,
    this.defaultIdentityType,
    this.freeTierEnabled,
    required this.geoLocations,
    this.identity,
    this.ipRangeFilters,
    this.isVirtualNetworkFilterEnabled,
    this.keyVaultKeyId,
    this.kind,
    this.localAuthenticationDisabled,
    this.location,
    this.managedHsmKeyId,
    this.minimalTlsVersion,
    this.mongoServerVersion,
    this.multipleWriteLocationsEnabled,
    this.name,
    this.networkAclBypassForAzureServices,
    this.networkAclBypassIds,
    required this.offerType,
    this.partitionMergeEnabled,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    this.restore,
    this.tags,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyMetadataWritesEnabled': ?accessKeyMetadataWritesEnabled,
      'analyticalStorage': ?pulumi.Input.mapOptionalInputValue<AccountAnalyticalStorage, Map<String, dynamic>>(analyticalStorage, (value) => value.toMap()),
      'analyticalStorageEnabled': ?analyticalStorageEnabled,
      'automaticFailoverEnabled': ?automaticFailoverEnabled,
      'backup': ?pulumi.Input.mapOptionalInputValue<AccountBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'burstCapacityEnabled': ?burstCapacityEnabled,
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<AccountCapability>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<AccountCapability, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacity': ?pulumi.Input.mapOptionalInputValue<AccountCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'consistencyPolicy': pulumi.Input.mapInputValue<AccountConsistencyPolicy, Map<String, dynamic>>(consistencyPolicy, (value) => value.toMap()),
      'corsRule': ?pulumi.Input.mapOptionalInputValue<AccountCorsRule, Map<String, dynamic>>(corsRule, (value) => value.toMap()),
      'createMode': ?createMode,
      'defaultIdentityType': ?defaultIdentityType,
      'freeTierEnabled': ?freeTierEnabled,
      'geoLocations': pulumi.Input.mapInputValue<List<AccountGeoLocation>, List<Map<String, dynamic>>>(geoLocations, (value) => pulumi.Input.encodeList<AccountGeoLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ipRangeFilters': ?ipRangeFilters,
      'isVirtualNetworkFilterEnabled': ?isVirtualNetworkFilterEnabled,
      'keyVaultKeyId': ?keyVaultKeyId,
      'kind': ?kind,
      'localAuthenticationDisabled': ?localAuthenticationDisabled,
      'location': ?location,
      'managedHsmKeyId': ?managedHsmKeyId,
      'minimalTlsVersion': ?minimalTlsVersion,
      'mongoServerVersion': ?mongoServerVersion,
      'multipleWriteLocationsEnabled': ?multipleWriteLocationsEnabled,
      'name': ?name,
      'networkAclBypassForAzureServices': ?networkAclBypassForAzureServices,
      'networkAclBypassIds': ?networkAclBypassIds,
      'offerType': offerType,
      'partitionMergeEnabled': ?partitionMergeEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'restore': ?pulumi.Input.mapOptionalInputValue<AccountRestore, Map<String, dynamic>>(restore, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<AccountVirtualNetworkRule>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<AccountVirtualNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accessKeyMetadataWritesEnabled: map['accessKeyMetadataWritesEnabled'] == null ? null : (map['accessKeyMetadataWritesEnabled']! as bool).input(),
      analyticalStorage: map['analyticalStorage'] == null ? null : (AccountAnalyticalStorage.fromMap((map['analyticalStorage']! as Map).cast<String, dynamic>())).input(),
      analyticalStorageEnabled: map['analyticalStorageEnabled'] == null ? null : (map['analyticalStorageEnabled']! as bool).input(),
      automaticFailoverEnabled: map['automaticFailoverEnabled'] == null ? null : (map['automaticFailoverEnabled']! as bool).input(),
      backup: map['backup'] == null ? null : (AccountBackup.fromMap((map['backup']! as Map).cast<String, dynamic>())).input(),
      burstCapacityEnabled: map['burstCapacityEnabled'] == null ? null : (map['burstCapacityEnabled']! as bool).input(),
      capabilities: map['capabilities'] == null ? null : (pulumi.Input.decodeList<AccountCapability>(map['capabilities']!, (value) => AccountCapability.fromMap((value as Map).cast<String, dynamic>()))).input(),
      capacity: map['capacity'] == null ? null : (AccountCapacity.fromMap((map['capacity']! as Map).cast<String, dynamic>())).input(),
      consistencyPolicy: (AccountConsistencyPolicy.fromMap((map['consistencyPolicy'] as Map).cast<String, dynamic>())).input(),
      corsRule: map['corsRule'] == null ? null : (AccountCorsRule.fromMap((map['corsRule']! as Map).cast<String, dynamic>())).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      defaultIdentityType: map['defaultIdentityType'] == null ? null : (map['defaultIdentityType']! as String).input(),
      freeTierEnabled: map['freeTierEnabled'] == null ? null : (map['freeTierEnabled']! as bool).input(),
      geoLocations: (pulumi.Input.decodeList<AccountGeoLocation>(map['geoLocations'], (value) => AccountGeoLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (AccountIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      ipRangeFilters: map['ipRangeFilters'] == null ? null : ((map['ipRangeFilters']! as List).cast<String>()).input(),
      isVirtualNetworkFilterEnabled: map['isVirtualNetworkFilterEnabled'] == null ? null : (map['isVirtualNetworkFilterEnabled']! as bool).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      localAuthenticationDisabled: map['localAuthenticationDisabled'] == null ? null : (map['localAuthenticationDisabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : (map['managedHsmKeyId']! as String).input(),
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : (map['minimalTlsVersion']! as String).input(),
      mongoServerVersion: map['mongoServerVersion'] == null ? null : (map['mongoServerVersion']! as String).input(),
      multipleWriteLocationsEnabled: map['multipleWriteLocationsEnabled'] == null ? null : (map['multipleWriteLocationsEnabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkAclBypassForAzureServices: map['networkAclBypassForAzureServices'] == null ? null : (map['networkAclBypassForAzureServices']! as bool).input(),
      networkAclBypassIds: map['networkAclBypassIds'] == null ? null : ((map['networkAclBypassIds']! as List).cast<String>()).input(),
      offerType: (map['offerType'] as String).input(),
      partitionMergeEnabled: map['partitionMergeEnabled'] == null ? null : (map['partitionMergeEnabled']! as bool).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restore: map['restore'] == null ? null : (AccountRestore.fromMap((map['restore']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : (pulumi.Input.decodeList<AccountVirtualNetworkRule>(map['virtualNetworkRules']!, (value) => AccountVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


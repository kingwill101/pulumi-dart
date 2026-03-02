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

/// Input properties used for looking up and filtering Account resources.
class AccountState {
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
  final pulumi.Input<AccountConsistencyPolicy>? consistencyPolicy;
  final pulumi.Input<AccountCorsRule>? corsRule;
  /// The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `create_mode` can only be defined when the `backup.type` is set to `Continuous`.
  final pulumi.Input<String>? createMode;
  /// The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`.
  final pulumi.Input<String>? defaultIdentityType;
  /// The endpoint used to connect to the CosmosDB account.
  final pulumi.Input<String>? endpoint;
  final pulumi.Input<bool>? freeTierEnabled;
  final pulumi.Input<List<AccountGeoLocation>>? geoLocations;
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
  final pulumi.Input<String>? offerType;
  final pulumi.Input<bool>? partitionMergeEnabled;
  /// The Primary key for the CosmosDB Account.
  final pulumi.Input<String>? primaryKey;
  /// Primary Mongodb connection string for the CosmosDB Account.
  final pulumi.Input<String>? primaryMongodbConnectionString;
  /// The Primary read-only Key for the CosmosDB Account.
  final pulumi.Input<String>? primaryReadonlyKey;
  /// Primary readonly Mongodb connection string for the CosmosDB Account.
  final pulumi.Input<String>? primaryReadonlyMongodbConnectionString;
  /// Primary readonly SQL connection string for the CosmosDB Account.
  final pulumi.Input<String>? primaryReadonlySqlConnectionString;
  /// Primary SQL connection string for the CosmosDB Account.
  final pulumi.Input<String>? primarySqlConnectionString;
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// A list of read endpoints available for this CosmosDB account.
  final pulumi.Input<List<String>>? readEndpoints;
  /// The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  final pulumi.Input<AccountRestore>? restore;
  /// The Secondary key for the CosmosDB Account.
  final pulumi.Input<String>? secondaryKey;
  /// Secondary Mongodb connection string for the CosmosDB Account.
  final pulumi.Input<String>? secondaryMongodbConnectionString;
  /// The Secondary read-only key for the CosmosDB Account.
  final pulumi.Input<String>? secondaryReadonlyKey;
  /// Secondary readonly Mongodb connection string for the CosmosDB Account.
  final pulumi.Input<String>? secondaryReadonlyMongodbConnectionString;
  /// Secondary readonly SQL connection string for the CosmosDB Account.
  final pulumi.Input<String>? secondaryReadonlySqlConnectionString;
  /// Secondary SQL connection string for the CosmosDB Account.
  final pulumi.Input<String>? secondarySqlConnectionString;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<List<AccountVirtualNetworkRule>>? virtualNetworkRules;
  /// A list of write endpoints available for this CosmosDB account.
  final pulumi.Input<List<String>>? writeEndpoints;

  /// Creates a new [AccountState].
  /// [accessKeyMetadataWritesEnabled] Optional.
  /// [analyticalStorage] An `analytical_storage` block as defined below.
  /// [analyticalStorageEnabled] Optional.
  /// [automaticFailoverEnabled] Optional.
  /// [backup] Optional.
  /// [burstCapacityEnabled] Optional.
  /// [capabilities] Optional.
  /// [capacity] A `capacity` block as defined below.
  /// [consistencyPolicy] Optional.
  /// [corsRule] Optional.
  /// [createMode] The creation mode for the CosmosDB Account. Possible values are `Default` and `Restore`. Changing this forces a new resource to be created.
  /// [defaultIdentityType] The default identity for accessing Key Vault. Possible values are `FirstPartyIdentity`, `SystemAssignedIdentity` or `UserAssignedIdentity`. Defaults to `FirstPartyIdentity`.
  /// [endpoint] The endpoint used to connect to the CosmosDB account.
  /// [freeTierEnabled] Optional.
  /// [geoLocations] Optional.
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
  /// [primaryKey] The Primary key for the CosmosDB Account.
  /// [primaryMongodbConnectionString] Primary Mongodb connection string for the CosmosDB Account.
  /// [primaryReadonlyKey] The Primary read-only Key for the CosmosDB Account.
  /// [primaryReadonlyMongodbConnectionString] Primary readonly Mongodb connection string for the CosmosDB Account.
  /// [primaryReadonlySqlConnectionString] Primary readonly SQL connection string for the CosmosDB Account.
  /// [primarySqlConnectionString] Primary SQL connection string for the CosmosDB Account.
  /// [publicNetworkAccessEnabled] Optional.
  /// [readEndpoints] A list of read endpoints available for this CosmosDB account.
  /// [resourceGroupName] The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created.
  /// [restore] Optional.
  /// [secondaryKey] The Secondary key for the CosmosDB Account.
  /// [secondaryMongodbConnectionString] Secondary Mongodb connection string for the CosmosDB Account.
  /// [secondaryReadonlyKey] The Secondary read-only key for the CosmosDB Account.
  /// [secondaryReadonlyMongodbConnectionString] Secondary readonly Mongodb connection string for the CosmosDB Account.
  /// [secondaryReadonlySqlConnectionString] Secondary readonly SQL connection string for the CosmosDB Account.
  /// [secondarySqlConnectionString] Secondary SQL connection string for the CosmosDB Account.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualNetworkRules] Optional.
  /// [writeEndpoints] A list of write endpoints available for this CosmosDB account.
  AccountState({
    this.accessKeyMetadataWritesEnabled,
    this.analyticalStorage,
    this.analyticalStorageEnabled,
    this.automaticFailoverEnabled,
    this.backup,
    this.burstCapacityEnabled,
    this.capabilities,
    this.capacity,
    this.consistencyPolicy,
    this.corsRule,
    this.createMode,
    this.defaultIdentityType,
    this.endpoint,
    this.freeTierEnabled,
    this.geoLocations,
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
    this.offerType,
    this.partitionMergeEnabled,
    this.primaryKey,
    this.primaryMongodbConnectionString,
    this.primaryReadonlyKey,
    this.primaryReadonlyMongodbConnectionString,
    this.primaryReadonlySqlConnectionString,
    this.primarySqlConnectionString,
    this.publicNetworkAccessEnabled,
    this.readEndpoints,
    this.resourceGroupName,
    this.restore,
    this.secondaryKey,
    this.secondaryMongodbConnectionString,
    this.secondaryReadonlyKey,
    this.secondaryReadonlyMongodbConnectionString,
    this.secondaryReadonlySqlConnectionString,
    this.secondarySqlConnectionString,
    this.tags,
    this.virtualNetworkRules,
    this.writeEndpoints,
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
      'consistencyPolicy': ?pulumi.Input.mapOptionalInputValue<AccountConsistencyPolicy, Map<String, dynamic>>(consistencyPolicy, (value) => value.toMap()),
      'corsRule': ?pulumi.Input.mapOptionalInputValue<AccountCorsRule, Map<String, dynamic>>(corsRule, (value) => value.toMap()),
      'createMode': ?createMode,
      'defaultIdentityType': ?defaultIdentityType,
      'endpoint': ?endpoint,
      'freeTierEnabled': ?freeTierEnabled,
      'geoLocations': ?pulumi.Input.mapOptionalInputValue<List<AccountGeoLocation>, List<Map<String, dynamic>>>(geoLocations, (value) => pulumi.Input.encodeList<AccountGeoLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'offerType': ?offerType,
      'partitionMergeEnabled': ?partitionMergeEnabled,
      'primaryKey': ?primaryKey,
      'primaryMongodbConnectionString': ?primaryMongodbConnectionString,
      'primaryReadonlyKey': ?primaryReadonlyKey,
      'primaryReadonlyMongodbConnectionString': ?primaryReadonlyMongodbConnectionString,
      'primaryReadonlySqlConnectionString': ?primaryReadonlySqlConnectionString,
      'primarySqlConnectionString': ?primarySqlConnectionString,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'readEndpoints': ?readEndpoints,
      'resourceGroupName': ?resourceGroupName,
      'restore': ?pulumi.Input.mapOptionalInputValue<AccountRestore, Map<String, dynamic>>(restore, (value) => value.toMap()),
      'secondaryKey': ?secondaryKey,
      'secondaryMongodbConnectionString': ?secondaryMongodbConnectionString,
      'secondaryReadonlyKey': ?secondaryReadonlyKey,
      'secondaryReadonlyMongodbConnectionString': ?secondaryReadonlyMongodbConnectionString,
      'secondaryReadonlySqlConnectionString': ?secondaryReadonlySqlConnectionString,
      'secondarySqlConnectionString': ?secondarySqlConnectionString,
      'tags': ?tags,
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<AccountVirtualNetworkRule>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<AccountVirtualNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writeEndpoints': ?writeEndpoints,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accessKeyMetadataWritesEnabled: map['accessKeyMetadataWritesEnabled'] == null ? null : (map['accessKeyMetadataWritesEnabled']! as bool).input(),
      analyticalStorage: map['analyticalStorage'] == null ? null : (AccountAnalyticalStorage.fromMap((map['analyticalStorage']! as Map).cast<String, dynamic>())).input(),
      analyticalStorageEnabled: map['analyticalStorageEnabled'] == null ? null : (map['analyticalStorageEnabled']! as bool).input(),
      automaticFailoverEnabled: map['automaticFailoverEnabled'] == null ? null : (map['automaticFailoverEnabled']! as bool).input(),
      backup: map['backup'] == null ? null : (AccountBackup.fromMap((map['backup']! as Map).cast<String, dynamic>())).input(),
      burstCapacityEnabled: map['burstCapacityEnabled'] == null ? null : (map['burstCapacityEnabled']! as bool).input(),
      capabilities: map['capabilities'] == null ? null : (pulumi.Input.decodeList<AccountCapability>(map['capabilities']!, (value) => AccountCapability.fromMap((value as Map).cast<String, dynamic>()))).input(),
      capacity: map['capacity'] == null ? null : (AccountCapacity.fromMap((map['capacity']! as Map).cast<String, dynamic>())).input(),
      consistencyPolicy: map['consistencyPolicy'] == null ? null : (AccountConsistencyPolicy.fromMap((map['consistencyPolicy']! as Map).cast<String, dynamic>())).input(),
      corsRule: map['corsRule'] == null ? null : (AccountCorsRule.fromMap((map['corsRule']! as Map).cast<String, dynamic>())).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      defaultIdentityType: map['defaultIdentityType'] == null ? null : (map['defaultIdentityType']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      freeTierEnabled: map['freeTierEnabled'] == null ? null : (map['freeTierEnabled']! as bool).input(),
      geoLocations: map['geoLocations'] == null ? null : (pulumi.Input.decodeList<AccountGeoLocation>(map['geoLocations']!, (value) => AccountGeoLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
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
      offerType: map['offerType'] == null ? null : (map['offerType']! as String).input(),
      partitionMergeEnabled: map['partitionMergeEnabled'] == null ? null : (map['partitionMergeEnabled']! as bool).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      primaryMongodbConnectionString: map['primaryMongodbConnectionString'] == null ? null : (map['primaryMongodbConnectionString']! as String).input(),
      primaryReadonlyKey: map['primaryReadonlyKey'] == null ? null : (map['primaryReadonlyKey']! as String).input(),
      primaryReadonlyMongodbConnectionString: map['primaryReadonlyMongodbConnectionString'] == null ? null : (map['primaryReadonlyMongodbConnectionString']! as String).input(),
      primaryReadonlySqlConnectionString: map['primaryReadonlySqlConnectionString'] == null ? null : (map['primaryReadonlySqlConnectionString']! as String).input(),
      primarySqlConnectionString: map['primarySqlConnectionString'] == null ? null : (map['primarySqlConnectionString']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      readEndpoints: map['readEndpoints'] == null ? null : ((map['readEndpoints']! as List).cast<String>()).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      restore: map['restore'] == null ? null : (AccountRestore.fromMap((map['restore']! as Map).cast<String, dynamic>())).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      secondaryMongodbConnectionString: map['secondaryMongodbConnectionString'] == null ? null : (map['secondaryMongodbConnectionString']! as String).input(),
      secondaryReadonlyKey: map['secondaryReadonlyKey'] == null ? null : (map['secondaryReadonlyKey']! as String).input(),
      secondaryReadonlyMongodbConnectionString: map['secondaryReadonlyMongodbConnectionString'] == null ? null : (map['secondaryReadonlyMongodbConnectionString']! as String).input(),
      secondaryReadonlySqlConnectionString: map['secondaryReadonlySqlConnectionString'] == null ? null : (map['secondaryReadonlySqlConnectionString']! as String).input(),
      secondarySqlConnectionString: map['secondarySqlConnectionString'] == null ? null : (map['secondarySqlConnectionString']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : (pulumi.Input.decodeList<AccountVirtualNetworkRule>(map['virtualNetworkRules']!, (value) => AccountVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      writeEndpoints: map['writeEndpoints'] == null ? null : ((map['writeEndpoints']! as List).cast<String>()).input(),
    );
  }
}


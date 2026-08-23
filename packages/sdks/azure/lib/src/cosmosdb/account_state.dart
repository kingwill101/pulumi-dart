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
  /// An `analyticalStorage` block as defined below.
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
  /// &gt; **Note:** `createMode` can only be defined when the `backup.type` is set to `Continuous`.
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
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? managedHsmKeyId;
  /// Specifies the minimal TLS version for the CosmosDB account. Possible values are: `Tls`, `Tls11`, and `Tls12`. Defaults to `Tls12`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more details.
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
  /// [analyticalStorage] An `analyticalStorage` block as defined below.
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
  /// [localAuthenticationEnabled] Optional.
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
  const AccountState({
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
    this.localAuthenticationEnabled,
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
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
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
      accessKeyMetadataWritesEnabled: (() { final guardedValue = map['accessKeyMetadataWritesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      analyticalStorage: (() { final guardedValue = map['analyticalStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountAnalyticalStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      analyticalStorageEnabled: (() { final guardedValue = map['analyticalStorageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticFailoverEnabled: (() { final guardedValue = map['automaticFailoverEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountBackup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      burstCapacityEnabled: (() { final guardedValue = map['burstCapacityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountCapability>(guardedValue, (value) => AccountCapability.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      consistencyPolicy: (() { final guardedValue = map['consistencyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountConsistencyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      corsRule: (() { final guardedValue = map['corsRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountCorsRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultIdentityType: (() { final guardedValue = map['defaultIdentityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      freeTierEnabled: (() { final guardedValue = map['freeTierEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      geoLocations: (() { final guardedValue = map['geoLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountGeoLocation>(guardedValue, (value) => AccountGeoLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipRangeFilters: (() { final guardedValue = map['ipRangeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isVirtualNetworkFilterEnabled: (() { final guardedValue = map['isVirtualNetworkFilterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localAuthenticationDisabled: (() { final guardedValue = map['localAuthenticationDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedHsmKeyId: (() { final guardedValue = map['managedHsmKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mongoServerVersion: (() { final guardedValue = map['mongoServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multipleWriteLocationsEnabled: (() { final guardedValue = map['multipleWriteLocationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAclBypassForAzureServices: (() { final guardedValue = map['networkAclBypassForAzureServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkAclBypassIds: (() { final guardedValue = map['networkAclBypassIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      offerType: (() { final guardedValue = map['offerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionMergeEnabled: (() { final guardedValue = map['partitionMergeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryMongodbConnectionString: (() { final guardedValue = map['primaryMongodbConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryReadonlyKey: (() { final guardedValue = map['primaryReadonlyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryReadonlyMongodbConnectionString: (() { final guardedValue = map['primaryReadonlyMongodbConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryReadonlySqlConnectionString: (() { final guardedValue = map['primaryReadonlySqlConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primarySqlConnectionString: (() { final guardedValue = map['primarySqlConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readEndpoints: (() { final guardedValue = map['readEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restore: (() { final guardedValue = map['restore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountRestore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryMongodbConnectionString: (() { final guardedValue = map['secondaryMongodbConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryReadonlyKey: (() { final guardedValue = map['secondaryReadonlyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryReadonlyMongodbConnectionString: (() { final guardedValue = map['secondaryReadonlyMongodbConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryReadonlySqlConnectionString: (() { final guardedValue = map['secondaryReadonlySqlConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondarySqlConnectionString: (() { final guardedValue = map['secondarySqlConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountVirtualNetworkRule>(guardedValue, (value) => AccountVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      writeEndpoints: (() { final guardedValue = map['writeEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

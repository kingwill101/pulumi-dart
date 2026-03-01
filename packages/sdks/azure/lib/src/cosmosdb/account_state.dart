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
    pulumi.Output<bool>? accessKeyMetadataWritesEnabled,
    pulumi.Output<AccountAnalyticalStorage>? analyticalStorage,
    pulumi.Output<bool>? analyticalStorageEnabled,
    pulumi.Output<bool>? automaticFailoverEnabled,
    pulumi.Output<AccountBackup>? backup,
    pulumi.Output<bool>? burstCapacityEnabled,
    pulumi.Output<List<AccountCapability>>? capabilities,
    pulumi.Output<AccountCapacity>? capacity,
    pulumi.Output<AccountConsistencyPolicy>? consistencyPolicy,
    pulumi.Output<AccountCorsRule>? corsRule,
    pulumi.Output<String>? createMode,
    pulumi.Output<String>? defaultIdentityType,
    pulumi.Output<String>? endpoint,
    pulumi.Output<bool>? freeTierEnabled,
    pulumi.Output<List<AccountGeoLocation>>? geoLocations,
    pulumi.Output<AccountIdentity>? identity,
    pulumi.Output<List<String>>? ipRangeFilters,
    pulumi.Output<bool>? isVirtualNetworkFilterEnabled,
    pulumi.Output<String>? keyVaultKeyId,
    pulumi.Output<String>? kind,
    pulumi.Output<bool>? localAuthenticationDisabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedHsmKeyId,
    pulumi.Output<String>? minimalTlsVersion,
    pulumi.Output<String>? mongoServerVersion,
    pulumi.Output<bool>? multipleWriteLocationsEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? networkAclBypassForAzureServices,
    pulumi.Output<List<String>>? networkAclBypassIds,
    pulumi.Output<String>? offerType,
    pulumi.Output<bool>? partitionMergeEnabled,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? primaryMongodbConnectionString,
    pulumi.Output<String>? primaryReadonlyKey,
    pulumi.Output<String>? primaryReadonlyMongodbConnectionString,
    pulumi.Output<String>? primaryReadonlySqlConnectionString,
    pulumi.Output<String>? primarySqlConnectionString,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<List<String>>? readEndpoints,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<AccountRestore>? restore,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<String>? secondaryMongodbConnectionString,
    pulumi.Output<String>? secondaryReadonlyKey,
    pulumi.Output<String>? secondaryReadonlyMongodbConnectionString,
    pulumi.Output<String>? secondaryReadonlySqlConnectionString,
    pulumi.Output<String>? secondarySqlConnectionString,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<AccountVirtualNetworkRule>>? virtualNetworkRules,
    pulumi.Output<List<String>>? writeEndpoints,
  }) :
      accessKeyMetadataWritesEnabled = pulumi.Input.asOptionalInput<bool>(accessKeyMetadataWritesEnabled),
      analyticalStorage = pulumi.Input.asOptionalInput<AccountAnalyticalStorage>(analyticalStorage),
      analyticalStorageEnabled = pulumi.Input.asOptionalInput<bool>(analyticalStorageEnabled),
      automaticFailoverEnabled = pulumi.Input.asOptionalInput<bool>(automaticFailoverEnabled),
      backup = pulumi.Input.asOptionalInput<AccountBackup>(backup),
      burstCapacityEnabled = pulumi.Input.asOptionalInput<bool>(burstCapacityEnabled),
      capabilities = pulumi.Input.asOptionalInput<List<AccountCapability>>(capabilities),
      capacity = pulumi.Input.asOptionalInput<AccountCapacity>(capacity),
      consistencyPolicy = pulumi.Input.asOptionalInput<AccountConsistencyPolicy>(consistencyPolicy),
      corsRule = pulumi.Input.asOptionalInput<AccountCorsRule>(corsRule),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      defaultIdentityType = pulumi.Input.asOptionalInput<String>(defaultIdentityType),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      freeTierEnabled = pulumi.Input.asOptionalInput<bool>(freeTierEnabled),
      geoLocations = pulumi.Input.asOptionalInput<List<AccountGeoLocation>>(geoLocations),
      identity = pulumi.Input.asOptionalInput<AccountIdentity>(identity),
      ipRangeFilters = pulumi.Input.asOptionalInput<List<String>>(ipRangeFilters),
      isVirtualNetworkFilterEnabled = pulumi.Input.asOptionalInput<bool>(isVirtualNetworkFilterEnabled),
      keyVaultKeyId = pulumi.Input.asOptionalInput<String>(keyVaultKeyId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      localAuthenticationDisabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationDisabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedHsmKeyId = pulumi.Input.asOptionalInput<String>(managedHsmKeyId),
      minimalTlsVersion = pulumi.Input.asOptionalInput<String>(minimalTlsVersion),
      mongoServerVersion = pulumi.Input.asOptionalInput<String>(mongoServerVersion),
      multipleWriteLocationsEnabled = pulumi.Input.asOptionalInput<bool>(multipleWriteLocationsEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkAclBypassForAzureServices = pulumi.Input.asOptionalInput<bool>(networkAclBypassForAzureServices),
      networkAclBypassIds = pulumi.Input.asOptionalInput<List<String>>(networkAclBypassIds),
      offerType = pulumi.Input.asOptionalInput<String>(offerType),
      partitionMergeEnabled = pulumi.Input.asOptionalInput<bool>(partitionMergeEnabled),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      primaryMongodbConnectionString = pulumi.Input.asOptionalInput<String>(primaryMongodbConnectionString),
      primaryReadonlyKey = pulumi.Input.asOptionalInput<String>(primaryReadonlyKey),
      primaryReadonlyMongodbConnectionString = pulumi.Input.asOptionalInput<String>(primaryReadonlyMongodbConnectionString),
      primaryReadonlySqlConnectionString = pulumi.Input.asOptionalInput<String>(primaryReadonlySqlConnectionString),
      primarySqlConnectionString = pulumi.Input.asOptionalInput<String>(primarySqlConnectionString),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      readEndpoints = pulumi.Input.asOptionalInput<List<String>>(readEndpoints),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      restore = pulumi.Input.asOptionalInput<AccountRestore>(restore),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      secondaryMongodbConnectionString = pulumi.Input.asOptionalInput<String>(secondaryMongodbConnectionString),
      secondaryReadonlyKey = pulumi.Input.asOptionalInput<String>(secondaryReadonlyKey),
      secondaryReadonlyMongodbConnectionString = pulumi.Input.asOptionalInput<String>(secondaryReadonlyMongodbConnectionString),
      secondaryReadonlySqlConnectionString = pulumi.Input.asOptionalInput<String>(secondaryReadonlySqlConnectionString),
      secondarySqlConnectionString = pulumi.Input.asOptionalInput<String>(secondarySqlConnectionString),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkRules = pulumi.Input.asOptionalInput<List<AccountVirtualNetworkRule>>(virtualNetworkRules),
      writeEndpoints = pulumi.Input.asOptionalInput<List<String>>(writeEndpoints);

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
      accessKeyMetadataWritesEnabled: map['accessKeyMetadataWritesEnabled'] == null ? null : pulumi.Output.create<bool>(map['accessKeyMetadataWritesEnabled'] as bool),
      analyticalStorage: map['analyticalStorage'] == null ? null : pulumi.Output.create<AccountAnalyticalStorage>(AccountAnalyticalStorage.fromMap((map['analyticalStorage'] as Map).cast<String, dynamic>())),
      analyticalStorageEnabled: map['analyticalStorageEnabled'] == null ? null : pulumi.Output.create<bool>(map['analyticalStorageEnabled'] as bool),
      automaticFailoverEnabled: map['automaticFailoverEnabled'] == null ? null : pulumi.Output.create<bool>(map['automaticFailoverEnabled'] as bool),
      backup: map['backup'] == null ? null : pulumi.Output.create<AccountBackup>(AccountBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      burstCapacityEnabled: map['burstCapacityEnabled'] == null ? null : pulumi.Output.create<bool>(map['burstCapacityEnabled'] as bool),
      capabilities: map['capabilities'] == null ? null : pulumi.Output.create<List<AccountCapability>>(pulumi.Input.decodeList<AccountCapability>(map['capabilities'], (value) => AccountCapability.fromMap((value as Map).cast<String, dynamic>()))),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<AccountCapacity>(AccountCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>())),
      consistencyPolicy: map['consistencyPolicy'] == null ? null : pulumi.Output.create<AccountConsistencyPolicy>(AccountConsistencyPolicy.fromMap((map['consistencyPolicy'] as Map).cast<String, dynamic>())),
      corsRule: map['corsRule'] == null ? null : pulumi.Output.create<AccountCorsRule>(AccountCorsRule.fromMap((map['corsRule'] as Map).cast<String, dynamic>())),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      defaultIdentityType: map['defaultIdentityType'] == null ? null : pulumi.Output.create<String>(map['defaultIdentityType'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      freeTierEnabled: map['freeTierEnabled'] == null ? null : pulumi.Output.create<bool>(map['freeTierEnabled'] as bool),
      geoLocations: map['geoLocations'] == null ? null : pulumi.Output.create<List<AccountGeoLocation>>(pulumi.Input.decodeList<AccountGeoLocation>(map['geoLocations'], (value) => AccountGeoLocation.fromMap((value as Map).cast<String, dynamic>()))),
      identity: map['identity'] == null ? null : pulumi.Output.create<AccountIdentity>(AccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      ipRangeFilters: map['ipRangeFilters'] == null ? null : pulumi.Output.create<List<String>>((map['ipRangeFilters'] as List).cast<String>()),
      isVirtualNetworkFilterEnabled: map['isVirtualNetworkFilterEnabled'] == null ? null : pulumi.Output.create<bool>(map['isVirtualNetworkFilterEnabled'] as bool),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      localAuthenticationDisabled: map['localAuthenticationDisabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationDisabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : pulumi.Output.create<String>(map['managedHsmKeyId'] as String),
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minimalTlsVersion'] as String),
      mongoServerVersion: map['mongoServerVersion'] == null ? null : pulumi.Output.create<String>(map['mongoServerVersion'] as String),
      multipleWriteLocationsEnabled: map['multipleWriteLocationsEnabled'] == null ? null : pulumi.Output.create<bool>(map['multipleWriteLocationsEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkAclBypassForAzureServices: map['networkAclBypassForAzureServices'] == null ? null : pulumi.Output.create<bool>(map['networkAclBypassForAzureServices'] as bool),
      networkAclBypassIds: map['networkAclBypassIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkAclBypassIds'] as List).cast<String>()),
      offerType: map['offerType'] == null ? null : pulumi.Output.create<String>(map['offerType'] as String),
      partitionMergeEnabled: map['partitionMergeEnabled'] == null ? null : pulumi.Output.create<bool>(map['partitionMergeEnabled'] as bool),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      primaryMongodbConnectionString: map['primaryMongodbConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryMongodbConnectionString'] as String),
      primaryReadonlyKey: map['primaryReadonlyKey'] == null ? null : pulumi.Output.create<String>(map['primaryReadonlyKey'] as String),
      primaryReadonlyMongodbConnectionString: map['primaryReadonlyMongodbConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryReadonlyMongodbConnectionString'] as String),
      primaryReadonlySqlConnectionString: map['primaryReadonlySqlConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryReadonlySqlConnectionString'] as String),
      primarySqlConnectionString: map['primarySqlConnectionString'] == null ? null : pulumi.Output.create<String>(map['primarySqlConnectionString'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      readEndpoints: map['readEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['readEndpoints'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restore: map['restore'] == null ? null : pulumi.Output.create<AccountRestore>(AccountRestore.fromMap((map['restore'] as Map).cast<String, dynamic>())),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      secondaryMongodbConnectionString: map['secondaryMongodbConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryMongodbConnectionString'] as String),
      secondaryReadonlyKey: map['secondaryReadonlyKey'] == null ? null : pulumi.Output.create<String>(map['secondaryReadonlyKey'] as String),
      secondaryReadonlyMongodbConnectionString: map['secondaryReadonlyMongodbConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryReadonlyMongodbConnectionString'] as String),
      secondaryReadonlySqlConnectionString: map['secondaryReadonlySqlConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryReadonlySqlConnectionString'] as String),
      secondarySqlConnectionString: map['secondarySqlConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondarySqlConnectionString'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Output.create<List<AccountVirtualNetworkRule>>(pulumi.Input.decodeList<AccountVirtualNetworkRule>(map['virtualNetworkRules'], (value) => AccountVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>()))),
      writeEndpoints: map['writeEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['writeEndpoints'] as List).cast<String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_capability.dart';
import 'get_account_consistency_policy.dart';
import 'get_account_geo_location.dart';
import 'get_account_virtual_network_rule.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// If automatic failover is enabled for this CosmosDB Account.
  final bool automaticFailoverEnabled;
  /// Capabilities enabled on this Cosmos DB account.
  final List<GetAccountCapability> capabilities;
  final List<GetAccountConsistencyPolicy> consistencyPolicies;
  /// The endpoint used to connect to the CosmosDB account.
  final String endpoint;
  /// If Free Tier pricing option is enabled for this CosmosDB Account. You can have up to one free tier Azure Cosmos DB account per Azure subscription.
  final bool freeTierEnabled;
  final List<GetAccountGeoLocation> geoLocations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The current IP Filter for this CosmosDB account
  final String ipRangeFilter;
  /// If virtual network filtering is enabled for this Cosmos DB account.
  final bool isVirtualNetworkFilterEnabled;
  /// The Key Vault key URI for CMK encryption.
  final String keyVaultKeyId;
  /// The Kind of the CosmosDB account.
  final String kind;
  /// The name of the Azure region hosting replicated data.
  final String location;
  /// If multiple write locations are enabled for this Cosmos DB account.
  final bool multipleWriteLocationsEnabled;
  final String name;
  /// The Offer Type to used by this CosmosDB Account.
  final String offerType;
  /// The primary key for the CosmosDB account.
  final String primaryKey;
  /// The primary Mongodb connection string for the CosmosDB account.
  final String primaryMongodbConnectionString;
  /// The primary read-only Key for the CosmosDB account.
  final String primaryReadonlyKey;
  /// The primary readonly Mongodb connection string for the CosmosDB account.
  final String primaryReadonlyMongodbConnectionString;
  /// The primary read-only SQL connection string for the CosmosDB account.
  final String primaryReadonlySqlConnectionString;
  /// The primary SQL connection string for the CosmosDB Account.
  final String primarySqlConnectionString;
  /// A list of read endpoints available for this CosmosDB account.
  final List<String> readEndpoints;
  final String resourceGroupName;
  /// The secondary key for the CosmosDB account.
  final String secondaryKey;
  /// The secondary Mongodb connection string for the CosmosDB account.
  final String secondaryMongodbConnectionString;
  /// The secondary read-only key for the CosmosDB account.
  final String secondaryReadonlyKey;
  /// The secondary readonly Mongodb connection string for the CosmosDB account.
  final String secondaryReadonlyMongodbConnectionString;
  /// The secondary read-only SQL connection string for the CosmosDB account.
  final String secondaryReadonlySqlConnectionString;
  /// The secondary SQL connection string for the CosmosDB Account.
  final String secondarySqlConnectionString;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// Subnets that are allowed to access this CosmosDB account.
  final List<GetAccountVirtualNetworkRule> virtualNetworkRules;
  /// A list of write endpoints available for this CosmosDB account.
  final List<String> writeEndpoints;

  /// Creates a new [GetAccountResult].
  /// [automaticFailoverEnabled] If automatic failover is enabled for this CosmosDB Account.
  /// [capabilities] Capabilities enabled on this Cosmos DB account.
  /// [consistencyPolicies] Required.
  /// [endpoint] The endpoint used to connect to the CosmosDB account.
  /// [freeTierEnabled] If Free Tier pricing option is enabled for this CosmosDB Account. You can have up to one free tier Azure Cosmos DB account per Azure subscription.
  /// [geoLocations] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipRangeFilter] The current IP Filter for this CosmosDB account
  /// [isVirtualNetworkFilterEnabled] If virtual network filtering is enabled for this Cosmos DB account.
  /// [keyVaultKeyId] The Key Vault key URI for CMK encryption.
  /// [kind] The Kind of the CosmosDB account.
  /// [location] The name of the Azure region hosting replicated data.
  /// [multipleWriteLocationsEnabled] If multiple write locations are enabled for this Cosmos DB account.
  /// [name] Required.
  /// [offerType] The Offer Type to used by this CosmosDB Account.
  /// [primaryKey] The primary key for the CosmosDB account.
  /// [primaryMongodbConnectionString] The primary Mongodb connection string for the CosmosDB account.
  /// [primaryReadonlyKey] The primary read-only Key for the CosmosDB account.
  /// [primaryReadonlyMongodbConnectionString] The primary readonly Mongodb connection string for the CosmosDB account.
  /// [primaryReadonlySqlConnectionString] The primary read-only SQL connection string for the CosmosDB account.
  /// [primarySqlConnectionString] The primary SQL connection string for the CosmosDB Account.
  /// [readEndpoints] A list of read endpoints available for this CosmosDB account.
  /// [resourceGroupName] Required.
  /// [secondaryKey] The secondary key for the CosmosDB account.
  /// [secondaryMongodbConnectionString] The secondary Mongodb connection string for the CosmosDB account.
  /// [secondaryReadonlyKey] The secondary read-only key for the CosmosDB account.
  /// [secondaryReadonlyMongodbConnectionString] The secondary readonly Mongodb connection string for the CosmosDB account.
  /// [secondaryReadonlySqlConnectionString] The secondary read-only SQL connection string for the CosmosDB account.
  /// [secondarySqlConnectionString] The secondary SQL connection string for the CosmosDB Account.
  /// [tags] A mapping of tags assigned to the resource.
  /// [virtualNetworkRules] Subnets that are allowed to access this CosmosDB account.
  /// [writeEndpoints] A list of write endpoints available for this CosmosDB account.
  GetAccountResult({
    required this.automaticFailoverEnabled,
    required this.capabilities,
    required this.consistencyPolicies,
    required this.endpoint,
    required this.freeTierEnabled,
    required this.geoLocations,
    required this.id,
    required this.ipRangeFilter,
    required this.isVirtualNetworkFilterEnabled,
    required this.keyVaultKeyId,
    required this.kind,
    required this.location,
    required this.multipleWriteLocationsEnabled,
    required this.name,
    required this.offerType,
    required this.primaryKey,
    required this.primaryMongodbConnectionString,
    required this.primaryReadonlyKey,
    required this.primaryReadonlyMongodbConnectionString,
    required this.primaryReadonlySqlConnectionString,
    required this.primarySqlConnectionString,
    required this.readEndpoints,
    required this.resourceGroupName,
    required this.secondaryKey,
    required this.secondaryMongodbConnectionString,
    required this.secondaryReadonlyKey,
    required this.secondaryReadonlyMongodbConnectionString,
    required this.secondaryReadonlySqlConnectionString,
    required this.secondarySqlConnectionString,
    required this.tags,
    required this.virtualNetworkRules,
    required this.writeEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticFailoverEnabled': automaticFailoverEnabled,
      'capabilities': pulumi.Input.encodeList<GetAccountCapability, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'consistencyPolicies': pulumi.Input.encodeList<GetAccountConsistencyPolicy, Map<String, dynamic>>(consistencyPolicies, (value) => value.toMap()),
      'endpoint': endpoint,
      'freeTierEnabled': freeTierEnabled,
      'geoLocations': pulumi.Input.encodeList<GetAccountGeoLocation, Map<String, dynamic>>(geoLocations, (value) => value.toMap()),
      'id': id,
      'ipRangeFilter': ipRangeFilter,
      'isVirtualNetworkFilterEnabled': isVirtualNetworkFilterEnabled,
      'keyVaultKeyId': keyVaultKeyId,
      'kind': kind,
      'location': location,
      'multipleWriteLocationsEnabled': multipleWriteLocationsEnabled,
      'name': name,
      'offerType': offerType,
      'primaryKey': primaryKey,
      'primaryMongodbConnectionString': primaryMongodbConnectionString,
      'primaryReadonlyKey': primaryReadonlyKey,
      'primaryReadonlyMongodbConnectionString': primaryReadonlyMongodbConnectionString,
      'primaryReadonlySqlConnectionString': primaryReadonlySqlConnectionString,
      'primarySqlConnectionString': primarySqlConnectionString,
      'readEndpoints': readEndpoints,
      'resourceGroupName': resourceGroupName,
      'secondaryKey': secondaryKey,
      'secondaryMongodbConnectionString': secondaryMongodbConnectionString,
      'secondaryReadonlyKey': secondaryReadonlyKey,
      'secondaryReadonlyMongodbConnectionString': secondaryReadonlyMongodbConnectionString,
      'secondaryReadonlySqlConnectionString': secondaryReadonlySqlConnectionString,
      'secondarySqlConnectionString': secondarySqlConnectionString,
      'tags': tags,
      'virtualNetworkRules': pulumi.Input.encodeList<GetAccountVirtualNetworkRule, Map<String, dynamic>>(virtualNetworkRules, (value) => value.toMap()),
      'writeEndpoints': writeEndpoints,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      automaticFailoverEnabled: map['automaticFailoverEnabled'] as bool,
      capabilities: pulumi.Input.decodeList<GetAccountCapability>(map['capabilities']!, (value) => GetAccountCapability.fromMap((value as Map).cast<String, dynamic>())),
      consistencyPolicies: pulumi.Input.decodeList<GetAccountConsistencyPolicy>(map['consistencyPolicies']!, (value) => GetAccountConsistencyPolicy.fromMap((value as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] as String,
      freeTierEnabled: map['freeTierEnabled'] as bool,
      geoLocations: pulumi.Input.decodeList<GetAccountGeoLocation>(map['geoLocations']!, (value) => GetAccountGeoLocation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipRangeFilter: map['ipRangeFilter'] as String,
      isVirtualNetworkFilterEnabled: map['isVirtualNetworkFilterEnabled'] as bool,
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      multipleWriteLocationsEnabled: map['multipleWriteLocationsEnabled'] as bool,
      name: map['name'] as String,
      offerType: map['offerType'] as String,
      primaryKey: map['primaryKey'] as String,
      primaryMongodbConnectionString: map['primaryMongodbConnectionString'] as String,
      primaryReadonlyKey: map['primaryReadonlyKey'] as String,
      primaryReadonlyMongodbConnectionString: map['primaryReadonlyMongodbConnectionString'] as String,
      primaryReadonlySqlConnectionString: map['primaryReadonlySqlConnectionString'] as String,
      primarySqlConnectionString: map['primarySqlConnectionString'] as String,
      readEndpoints: (map['readEndpoints'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryKey: map['secondaryKey'] as String,
      secondaryMongodbConnectionString: map['secondaryMongodbConnectionString'] as String,
      secondaryReadonlyKey: map['secondaryReadonlyKey'] as String,
      secondaryReadonlyMongodbConnectionString: map['secondaryReadonlyMongodbConnectionString'] as String,
      secondaryReadonlySqlConnectionString: map['secondaryReadonlySqlConnectionString'] as String,
      secondarySqlConnectionString: map['secondarySqlConnectionString'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualNetworkRules: pulumi.Input.decodeList<GetAccountVirtualNetworkRule>(map['virtualNetworkRules']!, (value) => GetAccountVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
      writeEndpoints: (map['writeEndpoints'] as List).cast<String>(),
    );
  }
}


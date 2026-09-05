// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_capability.dart';
import 'get_account_consistency_policy.dart';
import 'get_account_geo_location.dart';
import 'get_account_virtual_network_rule.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// If automatic failover is enabled for this CosmosDB Account.
  final bool? automaticFailoverEnabled;
  /// Capabilities enabled on this Cosmos DB account.
  final List<GetAccountCapability>? capabilities;
  final List<GetAccountConsistencyPolicy>? consistencyPolicies;
  /// The endpoint used to connect to the CosmosDB account.
  final String? endpoint;
  /// If Free Tier pricing option is enabled for this CosmosDB Account. You can have up to one free tier Azure Cosmos DB account per Azure subscription.
  final bool? freeTierEnabled;
  final List<GetAccountGeoLocation>? geoLocations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The current IP Filter for this CosmosDB account
  final String? ipRangeFilter;
  /// If virtual network filtering is enabled for this Cosmos DB account.
  final bool? isVirtualNetworkFilterEnabled;
  /// The Key Vault key URI for CMK encryption.
  final String? keyVaultKeyId;
  /// The Kind of the CosmosDB account.
  final String? kind;
  /// The name of the Azure region hosting replicated data.
  final String? location;
  /// If multiple write locations are enabled for this Cosmos DB account.
  final bool? multipleWriteLocationsEnabled;
  final String? name;
  /// The Offer Type to used by this CosmosDB Account.
  final String? offerType;
  /// The primary key for the CosmosDB account.
  final String? primaryKey;
  /// The primary Mongodb connection string for the CosmosDB account.
  final String? primaryMongodbConnectionString;
  /// The primary read-only Key for the CosmosDB account.
  final String? primaryReadonlyKey;
  /// The primary readonly Mongodb connection string for the CosmosDB account.
  final String? primaryReadonlyMongodbConnectionString;
  /// The primary read-only SQL connection string for the CosmosDB account.
  final String? primaryReadonlySqlConnectionString;
  /// The primary SQL connection string for the CosmosDB Account.
  final String? primarySqlConnectionString;
  /// A list of read endpoints available for this CosmosDB account.
  final List<String>? readEndpoints;
  final String? resourceGroupName;
  /// The secondary key for the CosmosDB account.
  final String? secondaryKey;
  /// The secondary Mongodb connection string for the CosmosDB account.
  final String? secondaryMongodbConnectionString;
  /// The secondary read-only key for the CosmosDB account.
  final String? secondaryReadonlyKey;
  /// The secondary readonly Mongodb connection string for the CosmosDB account.
  final String? secondaryReadonlyMongodbConnectionString;
  /// The secondary read-only SQL connection string for the CosmosDB account.
  final String? secondaryReadonlySqlConnectionString;
  /// The secondary SQL connection string for the CosmosDB Account.
  final String? secondarySqlConnectionString;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Subnets that are allowed to access this CosmosDB account.
  final List<GetAccountVirtualNetworkRule>? virtualNetworkRules;
  /// A list of write endpoints available for this CosmosDB account.
  final List<String>? writeEndpoints;

  /// Creates a new [GetAccountResult].
  /// [automaticFailoverEnabled] If automatic failover is enabled for this CosmosDB Account.
  /// [capabilities] Capabilities enabled on this Cosmos DB account.
  /// [consistencyPolicies] Optional.
  /// [endpoint] The endpoint used to connect to the CosmosDB account.
  /// [freeTierEnabled] If Free Tier pricing option is enabled for this CosmosDB Account. You can have up to one free tier Azure Cosmos DB account per Azure subscription.
  /// [geoLocations] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipRangeFilter] The current IP Filter for this CosmosDB account
  /// [isVirtualNetworkFilterEnabled] If virtual network filtering is enabled for this Cosmos DB account.
  /// [keyVaultKeyId] The Key Vault key URI for CMK encryption.
  /// [kind] The Kind of the CosmosDB account.
  /// [location] The name of the Azure region hosting replicated data.
  /// [multipleWriteLocationsEnabled] If multiple write locations are enabled for this Cosmos DB account.
  /// [name] Optional.
  /// [offerType] The Offer Type to used by this CosmosDB Account.
  /// [primaryKey] The primary key for the CosmosDB account.
  /// [primaryMongodbConnectionString] The primary Mongodb connection string for the CosmosDB account.
  /// [primaryReadonlyKey] The primary read-only Key for the CosmosDB account.
  /// [primaryReadonlyMongodbConnectionString] The primary readonly Mongodb connection string for the CosmosDB account.
  /// [primaryReadonlySqlConnectionString] The primary read-only SQL connection string for the CosmosDB account.
  /// [primarySqlConnectionString] The primary SQL connection string for the CosmosDB Account.
  /// [readEndpoints] A list of read endpoints available for this CosmosDB account.
  /// [resourceGroupName] Optional.
  /// [secondaryKey] The secondary key for the CosmosDB account.
  /// [secondaryMongodbConnectionString] The secondary Mongodb connection string for the CosmosDB account.
  /// [secondaryReadonlyKey] The secondary read-only key for the CosmosDB account.
  /// [secondaryReadonlyMongodbConnectionString] The secondary readonly Mongodb connection string for the CosmosDB account.
  /// [secondaryReadonlySqlConnectionString] The secondary read-only SQL connection string for the CosmosDB account.
  /// [secondarySqlConnectionString] The secondary SQL connection string for the CosmosDB Account.
  /// [tags] A mapping of tags assigned to the resource.
  /// [virtualNetworkRules] Subnets that are allowed to access this CosmosDB account.
  /// [writeEndpoints] A list of write endpoints available for this CosmosDB account.
  const GetAccountResult({
    this.automaticFailoverEnabled,
    this.capabilities,
    this.consistencyPolicies,
    this.endpoint,
    this.freeTierEnabled,
    this.geoLocations,
    this.id,
    this.ipRangeFilter,
    this.isVirtualNetworkFilterEnabled,
    this.keyVaultKeyId,
    this.kind,
    this.location,
    this.multipleWriteLocationsEnabled,
    this.name,
    this.offerType,
    this.primaryKey,
    this.primaryMongodbConnectionString,
    this.primaryReadonlyKey,
    this.primaryReadonlyMongodbConnectionString,
    this.primaryReadonlySqlConnectionString,
    this.primarySqlConnectionString,
    this.readEndpoints,
    this.resourceGroupName,
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
      'automaticFailoverEnabled': ?automaticFailoverEnabled,
      'capabilities': ?(() { final guardedValue = capabilities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountCapability, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consistencyPolicies': ?(() { final guardedValue = consistencyPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountConsistencyPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'endpoint': ?endpoint,
      'freeTierEnabled': ?freeTierEnabled,
      'geoLocations': ?(() { final guardedValue = geoLocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountGeoLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipRangeFilter': ?ipRangeFilter,
      'isVirtualNetworkFilterEnabled': ?isVirtualNetworkFilterEnabled,
      'keyVaultKeyId': ?keyVaultKeyId,
      'kind': ?kind,
      'location': ?location,
      'multipleWriteLocationsEnabled': ?multipleWriteLocationsEnabled,
      'name': ?name,
      'offerType': ?offerType,
      'primaryKey': ?primaryKey,
      'primaryMongodbConnectionString': ?primaryMongodbConnectionString,
      'primaryReadonlyKey': ?primaryReadonlyKey,
      'primaryReadonlyMongodbConnectionString': ?primaryReadonlyMongodbConnectionString,
      'primaryReadonlySqlConnectionString': ?primaryReadonlySqlConnectionString,
      'primarySqlConnectionString': ?primarySqlConnectionString,
      'readEndpoints': ?readEndpoints,
      'resourceGroupName': ?resourceGroupName,
      'secondaryKey': ?secondaryKey,
      'secondaryMongodbConnectionString': ?secondaryMongodbConnectionString,
      'secondaryReadonlyKey': ?secondaryReadonlyKey,
      'secondaryReadonlyMongodbConnectionString': ?secondaryReadonlyMongodbConnectionString,
      'secondaryReadonlySqlConnectionString': ?secondaryReadonlySqlConnectionString,
      'secondarySqlConnectionString': ?secondarySqlConnectionString,
      'tags': ?tags,
      'virtualNetworkRules': ?(() { final guardedValue = virtualNetworkRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountVirtualNetworkRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'writeEndpoints': ?writeEndpoints,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      automaticFailoverEnabled: (() { final guardedValue = map['automaticFailoverEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountCapability>(guardedValue, (value) => GetAccountCapability.fromMap((value as Map).cast<String, dynamic>())); })(),
      consistencyPolicies: (() { final guardedValue = map['consistencyPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountConsistencyPolicy>(guardedValue, (value) => GetAccountConsistencyPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      freeTierEnabled: (() { final guardedValue = map['freeTierEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      geoLocations: (() { final guardedValue = map['geoLocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountGeoLocation>(guardedValue, (value) => GetAccountGeoLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipRangeFilter: (() { final guardedValue = map['ipRangeFilter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isVirtualNetworkFilterEnabled: (() { final guardedValue = map['isVirtualNetworkFilterEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multipleWriteLocationsEnabled: (() { final guardedValue = map['multipleWriteLocationsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offerType: (() { final guardedValue = map['offerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryMongodbConnectionString: (() { final guardedValue = map['primaryMongodbConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryReadonlyKey: (() { final guardedValue = map['primaryReadonlyKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryReadonlyMongodbConnectionString: (() { final guardedValue = map['primaryReadonlyMongodbConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryReadonlySqlConnectionString: (() { final guardedValue = map['primaryReadonlySqlConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primarySqlConnectionString: (() { final guardedValue = map['primarySqlConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readEndpoints: (() { final guardedValue = map['readEndpoints']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryMongodbConnectionString: (() { final guardedValue = map['secondaryMongodbConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryReadonlyKey: (() { final guardedValue = map['secondaryReadonlyKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryReadonlyMongodbConnectionString: (() { final guardedValue = map['secondaryReadonlyMongodbConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryReadonlySqlConnectionString: (() { final guardedValue = map['secondaryReadonlySqlConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondarySqlConnectionString: (() { final guardedValue = map['secondarySqlConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountVirtualNetworkRule>(guardedValue, (value) => GetAccountVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      writeEndpoints: (() { final guardedValue = map['writeEndpoints']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

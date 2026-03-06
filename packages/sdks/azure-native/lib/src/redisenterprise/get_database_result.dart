// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_properties_response_geo_replication.dart';
import 'module_response.dart';
import 'persistence_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// This property can be Enabled/Disabled to allow or deny access with the current access keys. Can be updated even after database is created.
  final String? accessKeysAuthentication;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
  final String? clientProtocol;
  /// Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
  final String? clusteringPolicy;
  /// Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
  final String? deferUpgrade;
  /// Redis eviction policy - default is VolatileLRU
  final String? evictionPolicy;
  /// Optional set of properties to configure geo replication for this database.
  final DatabasePropertiesResponseGeoReplication? geoReplication;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Optional set of redis modules to enable in this database - modules can only be added at creation time.
  final List<ModuleResponse>? modules;
  /// The name of the resource
  final String name;
  /// Persistence settings
  final PersistenceResponse? persistence;
  /// TCP port of the database endpoint. Specified at create time. Defaults to an available port.
  final int? port;
  /// Current provisioning status of the database
  final String provisioningState;
  /// Version of Redis the database is running on, e.g. '6.0'
  final String redisVersion;
  /// Current resource status of the database
  final String resourceState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDatabaseResult].
  /// [accessKeysAuthentication] This property can be Enabled/Disabled to allow or deny access with the current access keys. Can be updated even after database is created.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientProtocol] Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
  /// [clusteringPolicy] Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
  /// [deferUpgrade] Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
  /// [evictionPolicy] Redis eviction policy - default is VolatileLRU
  /// [geoReplication] Optional set of properties to configure geo replication for this database.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [modules] Optional set of redis modules to enable in this database - modules can only be added at creation time.
  /// [name] The name of the resource
  /// [persistence] Persistence settings
  /// [port] TCP port of the database endpoint. Specified at create time. Defaults to an available port.
  /// [provisioningState] Current provisioning status of the database
  /// [redisVersion] Version of Redis the database is running on, e.g. '6.0'
  /// [resourceState] Current resource status of the database
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDatabaseResult({
    this.accessKeysAuthentication,
    required this.azureApiVersion,
    this.clientProtocol,
    this.clusteringPolicy,
    this.deferUpgrade,
    this.evictionPolicy,
    this.geoReplication,
    required this.id,
    this.modules,
    required this.name,
    this.persistence,
    this.port,
    required this.provisioningState,
    required this.redisVersion,
    required this.resourceState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeysAuthentication': ?accessKeysAuthentication,
      'azureApiVersion': azureApiVersion,
      'clientProtocol': ?clientProtocol,
      'clusteringPolicy': ?clusteringPolicy,
      'deferUpgrade': ?deferUpgrade,
      'evictionPolicy': ?evictionPolicy,
      'geoReplication': ?geoReplication?.toMap(),
      'id': id,
      'modules': ?(() { final guardedValue = modules; if (guardedValue == null) return null; return pulumi.Input.encodeList<ModuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'persistence': ?persistence?.toMap(),
      'port': ?port,
      'provisioningState': provisioningState,
      'redisVersion': redisVersion,
      'resourceState': resourceState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      accessKeysAuthentication: (() { final guardedValue = map['accessKeysAuthentication']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      clientProtocol: (() { final guardedValue = map['clientProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusteringPolicy: (() { final guardedValue = map['clusteringPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deferUpgrade: (() { final guardedValue = map['deferUpgrade']; if (guardedValue == null) return null; return guardedValue as String; })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      geoReplication: (() { final guardedValue = map['geoReplication']; if (guardedValue == null) return null; return DatabasePropertiesResponseGeoReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      modules: (() { final guardedValue = map['modules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ModuleResponse>(guardedValue, (value) => ModuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      persistence: (() { final guardedValue = map['persistence']; if (guardedValue == null) return null; return PersistenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as int; })(),
      provisioningState: map['provisioningState'] as String,
      redisVersion: map['redisVersion'] as String,
      resourceState: map['resourceState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


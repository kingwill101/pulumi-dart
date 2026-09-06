// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_properties_geo_replication.dart';
import 'module.dart';
import 'persistence.dart';

/// {@template pulumi_redisenterprise_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_redisenterprise_database_args_doc}
class DatabaseArgs {
  /// This property can be Enabled/Disabled to allow or deny access with the current access keys. Can be updated even after database is created.
  final pulumi.Input<dynamic>? accessKeysAuthentication;
  /// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
  final pulumi.Input<dynamic>? clientProtocol;
  /// The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  final pulumi.Input<String> clusterName;
  /// Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
  final pulumi.Input<dynamic>? clusteringPolicy;
  /// The name of the Redis Enterprise database.
  final pulumi.Input<String?>? databaseName;
  /// Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
  final pulumi.Input<dynamic>? deferUpgrade;
  /// Redis eviction policy - default is VolatileLRU
  final pulumi.Input<dynamic>? evictionPolicy;
  /// Optional set of properties to configure geo replication for this database.
  final pulumi.Input<DatabasePropertiesGeoReplication?>? geoReplication;
  /// Optional set of redis modules to enable in this database - modules can only be added at creation time.
  final pulumi.Input<List<Module>?>? modules;
  /// Persistence settings
  final pulumi.Input<Persistence?>? persistence;
  /// TCP port of the database endpoint. Specified at create time. Defaults to an available port.
  final pulumi.Input<int?>? port;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseArgs].
  /// [accessKeysAuthentication] This property can be Enabled/Disabled to allow or deny access with the current access keys. Can be updated even after database is created.
  /// [clientProtocol] Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
  /// [clusterName] The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  /// [clusteringPolicy] Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
  /// [databaseName] The name of the Redis Enterprise database.
  /// [deferUpgrade] Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
  /// [evictionPolicy] Redis eviction policy - default is VolatileLRU
  /// [geoReplication] Optional set of properties to configure geo replication for this database.
  /// [modules] Optional set of redis modules to enable in this database - modules can only be added at creation time.
  /// [persistence] Persistence settings
  /// [port] TCP port of the database endpoint. Specified at create time. Defaults to an available port.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const DatabaseArgs({
    this.accessKeysAuthentication,
    this.clientProtocol,
    required this.clusterName,
    this.clusteringPolicy,
    this.databaseName,
    this.deferUpgrade,
    this.evictionPolicy,
    this.geoReplication,
    this.modules,
    this.persistence,
    this.port,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeysAuthentication': ?accessKeysAuthentication,
      'clientProtocol': ?clientProtocol,
      'clusterName': clusterName,
      'clusteringPolicy': ?clusteringPolicy,
      'databaseName': ?databaseName,
      'deferUpgrade': ?deferUpgrade,
      'evictionPolicy': ?evictionPolicy,
      'geoReplication': ?pulumi.Input.mapOptionalInputValue<DatabasePropertiesGeoReplication, Map<String, dynamic>>(geoReplication, (value) => value.toMap()),
      'modules': ?pulumi.Input.mapOptionalInputValue<List<Module>, List<Map<String, dynamic>>>(modules, (value) => pulumi.Input.encodeList<Module, Map<String, dynamic>>(value, (value) => value.toMap())),
      'persistence': ?pulumi.Input.mapOptionalInputValue<Persistence, Map<String, dynamic>>(persistence, (value) => value.toMap()),
      'port': ?port,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      accessKeysAuthentication: (() { final guardedValue = map['accessKeysAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clientProtocol: (() { final guardedValue = map['clientProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusteringPolicy: (() { final guardedValue = map['clusteringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferUpgrade: (() { final guardedValue = map['deferUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      geoReplication: (() { final guardedValue = map['geoReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabasePropertiesGeoReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modules: (() { final guardedValue = map['modules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Module>(guardedValue, (value) => Module.fromMap((value as Map).cast<String, dynamic>()))); })(),
      persistence: (() { final guardedValue = map['persistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Persistence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

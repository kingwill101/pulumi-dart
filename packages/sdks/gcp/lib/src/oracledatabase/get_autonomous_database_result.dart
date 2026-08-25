// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_property.dart';
import 'get_autonomous_database_source_config.dart';

/// Result data returned by getAutonomousDatabase.
class GetAutonomousDatabaseResult {
  final String? adminPassword;
  final String? autonomousDatabaseId;
  final String? cidr;
  final String? createTime;
  final String? database;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final List<String>? disasterRecoverySupportedLocations;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  final String? entitlementId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? network;
  final String? odbNetwork;
  final String? odbSubnet;
  final List<String>? peerAutonomousDatabases;
  final String? project;
  final List<GetAutonomousDatabaseProperty>? properties;
  final Map<String, String>? pulumiLabels;
  final List<GetAutonomousDatabaseSourceConfig>? sourceConfigs;

  /// Creates a new [GetAutonomousDatabaseResult].
  /// [adminPassword] Optional.
  /// [autonomousDatabaseId] Optional.
  /// [cidr] Optional.
  /// [createTime] Optional.
  /// [database] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [disasterRecoverySupportedLocations] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [entitlementId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [odbNetwork] Optional.
  /// [odbSubnet] Optional.
  /// [peerAutonomousDatabases] Optional.
  /// [project] Optional.
  /// [properties] Optional.
  /// [pulumiLabels] Optional.
  /// [sourceConfigs] Optional.
  const GetAutonomousDatabaseResult({
    this.adminPassword,
    this.autonomousDatabaseId,
    this.cidr,
    this.createTime,
    this.database,
    this.deletionPolicy,
    this.deletionProtection,
    this.disasterRecoverySupportedLocations,
    this.displayName,
    this.effectiveLabels,
    this.entitlementId,
    this.id,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.odbNetwork,
    this.odbSubnet,
    this.peerAutonomousDatabases,
    this.project,
    this.properties,
    this.pulumiLabels,
    this.sourceConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'autonomousDatabaseId': ?autonomousDatabaseId,
      'cidr': ?cidr,
      'createTime': ?createTime,
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'disasterRecoverySupportedLocations': ?disasterRecoverySupportedLocations,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'peerAutonomousDatabases': ?peerAutonomousDatabases,
      'project': ?project,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
      'sourceConfigs': ?(() { final guardedValue = sourceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseSourceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAutonomousDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseResult(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autonomousDatabaseId: (() { final guardedValue = map['autonomousDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disasterRecoverySupportedLocations: (() { final guardedValue = map['disasterRecoverySupportedLocations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetwork: (() { final guardedValue = map['odbNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbSubnet: (() { final guardedValue = map['odbSubnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerAutonomousDatabases: (() { final guardedValue = map['peerAutonomousDatabases']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseProperty>(guardedValue, (value) => GetAutonomousDatabaseProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      sourceConfigs: (() { final guardedValue = map['sourceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseSourceConfig>(guardedValue, (value) => GetAutonomousDatabaseSourceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

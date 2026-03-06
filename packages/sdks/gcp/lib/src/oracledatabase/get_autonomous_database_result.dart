// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_property.dart';
import 'get_autonomous_database_source_config.dart';

/// Result data returned by getAutonomousDatabase.
class GetAutonomousDatabaseResult {
  final String adminPassword;
  final String autonomousDatabaseId;
  final String cidr;
  final String createTime;
  final String database;
  final bool deletionProtection;
  final List<String> disasterRecoverySupportedLocations;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final String entitlementId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String network;
  final String odbNetwork;
  final String odbSubnet;
  final List<String> peerAutonomousDatabases;
  final String? project;
  final List<GetAutonomousDatabaseProperty> properties;
  final Map<String, String> pulumiLabels;
  final List<GetAutonomousDatabaseSourceConfig> sourceConfigs;

  /// Creates a new [GetAutonomousDatabaseResult].
  /// [adminPassword] Required.
  /// [autonomousDatabaseId] Required.
  /// [cidr] Required.
  /// [createTime] Required.
  /// [database] Required.
  /// [deletionProtection] Required.
  /// [disasterRecoverySupportedLocations] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [entitlementId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [network] Required.
  /// [odbNetwork] Required.
  /// [odbSubnet] Required.
  /// [peerAutonomousDatabases] Required.
  /// [project] Optional.
  /// [properties] Required.
  /// [pulumiLabels] Required.
  /// [sourceConfigs] Required.
  const GetAutonomousDatabaseResult({
    required this.adminPassword,
    required this.autonomousDatabaseId,
    required this.cidr,
    required this.createTime,
    required this.database,
    required this.deletionProtection,
    required this.disasterRecoverySupportedLocations,
    required this.displayName,
    required this.effectiveLabels,
    required this.entitlementId,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    required this.network,
    required this.odbNetwork,
    required this.odbSubnet,
    required this.peerAutonomousDatabases,
    this.project,
    required this.properties,
    required this.pulumiLabels,
    required this.sourceConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'autonomousDatabaseId': autonomousDatabaseId,
      'cidr': cidr,
      'createTime': createTime,
      'database': database,
      'deletionProtection': deletionProtection,
      'disasterRecoverySupportedLocations': disasterRecoverySupportedLocations,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'entitlementId': entitlementId,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'network': network,
      'odbNetwork': odbNetwork,
      'odbSubnet': odbSubnet,
      'peerAutonomousDatabases': peerAutonomousDatabases,
      'project': ?project,
      'properties': pulumi.Input.encodeList<GetAutonomousDatabaseProperty, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
      'sourceConfigs': pulumi.Input.encodeList<GetAutonomousDatabaseSourceConfig, Map<String, dynamic>>(sourceConfigs, (value) => value.toMap()),
    };
  }

  factory GetAutonomousDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseResult(
      adminPassword: map['adminPassword'] as String,
      autonomousDatabaseId: map['autonomousDatabaseId'] as String,
      cidr: map['cidr'] as String,
      createTime: map['createTime'] as String,
      database: map['database'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      disasterRecoverySupportedLocations: (map['disasterRecoverySupportedLocations'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      entitlementId: map['entitlementId'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      odbNetwork: map['odbNetwork'] as String,
      odbSubnet: map['odbSubnet'] as String,
      peerAutonomousDatabases: (map['peerAutonomousDatabases'] as List).cast<String>(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: pulumi.Input.decodeList<GetAutonomousDatabaseProperty>(map['properties']!, (value) => GetAutonomousDatabaseProperty.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      sourceConfigs: pulumi.Input.decodeList<GetAutonomousDatabaseSourceConfig>(map['sourceConfigs']!, (value) => GetAutonomousDatabaseSourceConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


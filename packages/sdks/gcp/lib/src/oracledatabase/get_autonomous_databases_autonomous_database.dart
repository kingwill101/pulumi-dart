// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_databases_autonomous_database_property.dart';
import 'get_autonomous_databases_autonomous_database_source_config.dart';

class GetAutonomousDatabasesAutonomousDatabase {
  /// The password for the default ADMIN user.
  final pulumi.Input<String> adminPassword;
  /// The ID of the Autonomous Database to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> autonomousDatabaseId;
  /// The subnet CIDR range for the Autonmous Database.
  final pulumi.Input<String> cidr;
  /// The date and time that the Autonomous Database was created.
  final pulumi.Input<String> createTime;
  /// The name of the Autonomous Database. The database name must be unique in
  /// the project. The name must begin with a letter and can
  /// contain a maximum of 30 alphanumeric characters.
  final pulumi.Input<String> database;
  final pulumi.Input<bool> deletionProtection;
  /// List of supported GCP region to clone the Autonomous Database for disaster recovery.
  final pulumi.Input<List<String>> disasterRecoverySupportedLocations;
  /// The display name for the Autonomous Database. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String> displayName;
  final pulumi.Input<Map<String, String>> effectiveLabels;
  /// The ID of the subscription entitlement associated with the Autonomous
  /// Database.
  final pulumi.Input<String> entitlementId;
  /// The labels or tags associated with the Autonomous Database.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// Identifier. The name of the Autonomous Database resource in the following format:
  /// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
  final pulumi.Input<String> name;
  /// The name of the VPC network used by the Autonomous Database.
  /// Format: projects/{project}/global/networks/{network}
  final pulumi.Input<String> network;
  /// The name of the OdbNetwork associated with the Autonomous Database.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  final pulumi.Input<String> odbNetwork;
  /// The name of the OdbSubnet associated with the Autonomous Database for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String> odbSubnet;
  /// The peer Autonomous Database names of the given Autonomous Database.
  final pulumi.Input<List<String>> peerAutonomousDatabases;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// The properties of an Autonomous Database.
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabaseProperty>> properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;
  /// The source Autonomous Database configuration for the standby Autonomous Database.
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabaseSourceConfig>> sourceConfigs;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabase].
  /// [adminPassword] The password for the default ADMIN user.
  /// [autonomousDatabaseId] The ID of the Autonomous Database to create. This value is restricted
  /// [cidr] The subnet CIDR range for the Autonmous Database.
  /// [createTime] The date and time that the Autonomous Database was created.
  /// [database] The name of the Autonomous Database. The database name must be unique in
  /// [deletionProtection] Required.
  /// [disasterRecoverySupportedLocations] List of supported GCP region to clone the Autonomous Database for disaster recovery.
  /// [displayName] The display name for the Autonomous Database. The name does not have to
  /// [effectiveLabels] Required.
  /// [entitlementId] The ID of the subscription entitlement associated with the Autonomous
  /// [labels] The labels or tags associated with the Autonomous Database.
  /// [location] The location of the resource.
  /// [name] Identifier. The name of the Autonomous Database resource in the following format:
  /// [network] The name of the VPC network used by the Autonomous Database.
  /// [odbNetwork] The name of the OdbNetwork associated with the Autonomous Database.
  /// [odbSubnet] The name of the OdbSubnet associated with the Autonomous Database for
  /// [peerAutonomousDatabases] The peer Autonomous Database names of the given Autonomous Database.
  /// [project] The project to which the resource belongs. If it
  /// [properties] The properties of an Autonomous Database.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sourceConfigs] The source Autonomous Database configuration for the standby Autonomous Database.
  GetAutonomousDatabasesAutonomousDatabase({
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
    required this.labels,
    required this.location,
    required this.name,
    required this.network,
    required this.odbNetwork,
    required this.odbSubnet,
    required this.peerAutonomousDatabases,
    required this.project,
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
      'labels': labels,
      'location': location,
      'name': name,
      'network': network,
      'odbNetwork': odbNetwork,
      'odbSubnet': odbSubnet,
      'peerAutonomousDatabases': peerAutonomousDatabases,
      'project': project,
      'properties': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabaseProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabaseProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': pulumiLabels,
      'sourceConfigs': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabaseSourceConfig>, List<Map<String, dynamic>>>(sourceConfigs, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabaseSourceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabase.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabase(
      adminPassword: pulumi.Input.fromValue(map['adminPassword'] as String),
      autonomousDatabaseId: pulumi.Input.fromValue(map['autonomousDatabaseId'] as String),
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      database: pulumi.Input.fromValue(map['database'] as String),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      disasterRecoverySupportedLocations: pulumi.Input.fromValue((map['disasterRecoverySupportedLocations'] as List).cast<String>()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      effectiveLabels: pulumi.Input.fromValue((map['effectiveLabels'] as Map).cast<String, String>()),
      entitlementId: pulumi.Input.fromValue(map['entitlementId'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      odbNetwork: pulumi.Input.fromValue(map['odbNetwork'] as String),
      odbSubnet: pulumi.Input.fromValue(map['odbSubnet'] as String),
      peerAutonomousDatabases: pulumi.Input.fromValue((map['peerAutonomousDatabases'] as List).cast<String>()),
      project: pulumi.Input.fromValue(map['project'] as String),
      properties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabaseProperty>(map['properties']!, (value) => GetAutonomousDatabasesAutonomousDatabaseProperty.fromMap((value as Map).cast<String, dynamic>()))),
      pulumiLabels: pulumi.Input.fromValue((map['pulumiLabels'] as Map).cast<String, String>()),
      sourceConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabaseSourceConfig>(map['sourceConfigs']!, (value) => GetAutonomousDatabasesAutonomousDatabaseSourceConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


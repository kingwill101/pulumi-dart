// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_properties.dart';
import 'autonomous_database_source_config.dart';

/// {@template pulumi_oracledatabase_autonomous_database_autonomous_database_args_doc}
/// The set of arguments for AutonomousDatabase.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_autonomous_database_autonomous_database_args_doc}
class AutonomousDatabaseArgs {
  /// The password for the default ADMIN user.
  final pulumi.Input<String>? adminPassword;
  /// The ID of the Autonomous Database to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> autonomousDatabaseId;
  /// The subnet CIDR range for the Autonmous Database.
  final pulumi.Input<String>? cidr;
  /// The name of the Autonomous Database. The database name must be unique in
  /// the project. The name must begin with a letter and can
  /// contain a maximum of 30 alphanumeric characters.
  final pulumi.Input<String>? database;
  final pulumi.Input<bool>? deletionProtection;
  /// The display name for the Autonomous Database. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String>? displayName;
  /// The labels or tags associated with the Autonomous Database.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/AutonomousDatabaseBackup`.
  final pulumi.Input<String> location;
  /// The name of the VPC network used by the Autonomous Database.
  /// Format: projects/{project}/global/networks/{network}
  final pulumi.Input<String>? network;
  /// The name of the OdbNetwork associated with the Autonomous Database.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  final pulumi.Input<String>? odbNetwork;
  /// The name of the OdbSubnet associated with the Autonomous Database for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of an Autonomous Database.
  /// Structure is documented below.
  final pulumi.Input<AutonomousDatabaseProperties>? properties;
  /// The source Autonomous Database configuration for the standby Autonomous Database.
  /// Structure is documented below.
  final pulumi.Input<AutonomousDatabaseSourceConfig>? sourceConfig;

  /// Creates a new [AutonomousDatabaseArgs].
  /// [adminPassword] The password for the default ADMIN user.
  /// [autonomousDatabaseId] The ID of the Autonomous Database to create. This value is restricted
  /// [cidr] The subnet CIDR range for the Autonmous Database.
  /// [database] The name of the Autonomous Database. The database name must be unique in
  /// [deletionProtection] Optional.
  /// [displayName] The display name for the Autonomous Database. The name does not have to
  /// [labels] The labels or tags associated with the Autonomous Database.
  /// [location] Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/AutonomousDatabaseBackup`.
  /// [network] The name of the VPC network used by the Autonomous Database.
  /// [odbNetwork] The name of the OdbNetwork associated with the Autonomous Database.
  /// [odbSubnet] The name of the OdbSubnet associated with the Autonomous Database for
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of an Autonomous Database.
  /// [sourceConfig] The source Autonomous Database configuration for the standby Autonomous Database.
  AutonomousDatabaseArgs({
    this.adminPassword,
    required this.autonomousDatabaseId,
    this.cidr,
    this.database,
    this.deletionProtection,
    this.displayName,
    this.labels,
    required this.location,
    this.network,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    this.properties,
    this.sourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'autonomousDatabaseId': autonomousDatabaseId,
      'cidr': ?cidr,
      'database': ?database,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'sourceConfig': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfig, Map<String, dynamic>>(sourceConfig, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseArgs(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword'] as String).input(),
      autonomousDatabaseId: (map['autonomousDatabaseId'] as String).input(),
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      odbNetwork: map['odbNetwork'] == null ? null : (map['odbNetwork'] as String).input(),
      odbSubnet: map['odbSubnet'] == null ? null : (map['odbSubnet'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      properties: map['properties'] == null ? null : (AutonomousDatabaseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      sourceConfig: map['sourceConfig'] == null ? null : (AutonomousDatabaseSourceConfig.fromMap((map['sourceConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


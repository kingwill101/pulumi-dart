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
    pulumi.Output<String>? adminPassword,
    required pulumi.Output<String> autonomousDatabaseId,
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? database,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? network,
    pulumi.Output<String>? odbNetwork,
    pulumi.Output<String>? odbSubnet,
    pulumi.Output<String>? project,
    pulumi.Output<AutonomousDatabaseProperties>? properties,
    pulumi.Output<AutonomousDatabaseSourceConfig>? sourceConfig,
  }) :
      adminPassword = pulumi.Input.asOptionalInput<String>(adminPassword),
      autonomousDatabaseId = pulumi.Input.asInput<String>(autonomousDatabaseId),
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      database = pulumi.Input.asOptionalInput<String>(database),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      network = pulumi.Input.asOptionalInput<String>(network),
      odbNetwork = pulumi.Input.asOptionalInput<String>(odbNetwork),
      odbSubnet = pulumi.Input.asOptionalInput<String>(odbSubnet),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<AutonomousDatabaseProperties>(properties),
      sourceConfig = pulumi.Input.asOptionalInput<AutonomousDatabaseSourceConfig>(sourceConfig);

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
      adminPassword: map['adminPassword'] == null ? null : pulumi.Output.create<String>(map['adminPassword'] as String),
      autonomousDatabaseId: pulumi.Output.create<String>(map['autonomousDatabaseId'] as String),
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      odbNetwork: map['odbNetwork'] == null ? null : pulumi.Output.create<String>(map['odbNetwork'] as String),
      odbSubnet: map['odbSubnet'] == null ? null : pulumi.Output.create<String>(map['odbSubnet'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AutonomousDatabaseProperties>(AutonomousDatabaseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      sourceConfig: map['sourceConfig'] == null ? null : pulumi.Output.create<AutonomousDatabaseSourceConfig>(AutonomousDatabaseSourceConfig.fromMap((map['sourceConfig'] as Map).cast<String, dynamic>())),
    );
  }
}


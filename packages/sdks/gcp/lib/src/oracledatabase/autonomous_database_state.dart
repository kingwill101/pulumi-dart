// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_properties.dart';
import 'autonomous_database_source_config.dart';

/// Input properties used for looking up and filtering AutonomousDatabase resources.
class AutonomousDatabaseState {
  /// The password for the default ADMIN user.
  final pulumi.Input<String>? adminPassword;
  /// The ID of the Autonomous Database to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String>? autonomousDatabaseId;
  /// The subnet CIDR range for the Autonmous Database.
  final pulumi.Input<String>? cidr;
  /// The date and time that the Autonomous Database was created.
  final pulumi.Input<String>? createTime;
  /// The name of the Autonomous Database. The database name must be unique in
  /// the project. The name must begin with a letter and can
  /// contain a maximum of 30 alphanumeric characters.
  final pulumi.Input<String>? database;
  final pulumi.Input<bool>? deletionProtection;
  /// List of supported GCP region to clone the Autonomous Database for disaster recovery.
  final pulumi.Input<List<String>>? disasterRecoverySupportedLocations;
  /// The display name for the Autonomous Database. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ID of the subscription entitlement associated with the Autonomous
  /// Database.
  final pulumi.Input<String>? entitlementId;
  /// The labels or tags associated with the Autonomous Database.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/AutonomousDatabaseBackup`.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the Autonomous Database resource in the following format:
  /// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
  final pulumi.Input<String>? name;
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
  /// The peer Autonomous Database names of the given Autonomous Database.
  final pulumi.Input<List<String>>? peerAutonomousDatabases;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of an Autonomous Database.
  /// Structure is documented below.
  final pulumi.Input<AutonomousDatabaseProperties>? properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The source Autonomous Database configuration for the standby Autonomous Database.
  /// Structure is documented below.
  final pulumi.Input<AutonomousDatabaseSourceConfig>? sourceConfig;

  /// Creates a new [AutonomousDatabaseState].
  /// [adminPassword] The password for the default ADMIN user.
  /// [autonomousDatabaseId] The ID of the Autonomous Database to create. This value is restricted
  /// [cidr] The subnet CIDR range for the Autonmous Database.
  /// [createTime] The date and time that the Autonomous Database was created.
  /// [database] The name of the Autonomous Database. The database name must be unique in
  /// [deletionProtection] Optional.
  /// [disasterRecoverySupportedLocations] List of supported GCP region to clone the Autonomous Database for disaster recovery.
  /// [displayName] The display name for the Autonomous Database. The name does not have to
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entitlementId] The ID of the subscription entitlement associated with the Autonomous
  /// [labels] The labels or tags associated with the Autonomous Database.
  /// [location] Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/AutonomousDatabaseBackup`.
  /// [name] Identifier. The name of the Autonomous Database resource in the following format:
  /// [network] The name of the VPC network used by the Autonomous Database.
  /// [odbNetwork] The name of the OdbNetwork associated with the Autonomous Database.
  /// [odbSubnet] The name of the OdbSubnet associated with the Autonomous Database for
  /// [peerAutonomousDatabases] The peer Autonomous Database names of the given Autonomous Database.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of an Autonomous Database.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sourceConfig] The source Autonomous Database configuration for the standby Autonomous Database.
  AutonomousDatabaseState({
    this.adminPassword,
    this.autonomousDatabaseId,
    this.cidr,
    this.createTime,
    this.database,
    this.deletionProtection,
    this.disasterRecoverySupportedLocations,
    this.displayName,
    this.effectiveLabels,
    this.entitlementId,
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
    this.sourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'autonomousDatabaseId': ?autonomousDatabaseId,
      'cidr': ?cidr,
      'createTime': ?createTime,
      'database': ?database,
      'deletionProtection': ?deletionProtection,
      'disasterRecoverySupportedLocations': ?disasterRecoverySupportedLocations,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'peerAutonomousDatabases': ?peerAutonomousDatabases,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'sourceConfig': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseSourceConfig, Map<String, dynamic>>(sourceConfig, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabaseState.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseState(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword']! as String).input(),
      autonomousDatabaseId: map['autonomousDatabaseId'] == null ? null : (map['autonomousDatabaseId']! as String).input(),
      cidr: map['cidr'] == null ? null : (map['cidr']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      database: map['database'] == null ? null : (map['database']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      disasterRecoverySupportedLocations: map['disasterRecoverySupportedLocations'] == null ? null : ((map['disasterRecoverySupportedLocations']! as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      entitlementId: map['entitlementId'] == null ? null : (map['entitlementId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      odbNetwork: map['odbNetwork'] == null ? null : (map['odbNetwork']! as String).input(),
      odbSubnet: map['odbSubnet'] == null ? null : (map['odbSubnet']! as String).input(),
      peerAutonomousDatabases: map['peerAutonomousDatabases'] == null ? null : ((map['peerAutonomousDatabases']! as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      properties: map['properties'] == null ? null : (AutonomousDatabaseProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      sourceConfig: map['sourceConfig'] == null ? null : (AutonomousDatabaseSourceConfig.fromMap((map['sourceConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


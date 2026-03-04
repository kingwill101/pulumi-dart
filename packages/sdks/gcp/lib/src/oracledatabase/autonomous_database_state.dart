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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            AutonomousDatabaseProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'sourceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AutonomousDatabaseSourceConfig,
            Map<String, dynamic>
          >(sourceConfig, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabaseState.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseState(
      adminPassword: (() {
        final guardedValue = map['adminPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autonomousDatabaseId: (() {
        final guardedValue = map['autonomousDatabaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cidr: (() {
        final guardedValue = map['cidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disasterRecoverySupportedLocations: (() {
        final guardedValue = map['disasterRecoverySupportedLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      entitlementId: (() {
        final guardedValue = map['entitlementId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      odbNetwork: (() {
        final guardedValue = map['odbNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      odbSubnet: (() {
        final guardedValue = map['odbSubnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerAutonomousDatabases: (() {
        final guardedValue = map['peerAutonomousDatabases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutonomousDatabaseProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      sourceConfig: (() {
        final guardedValue = map['sourceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutonomousDatabaseSourceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

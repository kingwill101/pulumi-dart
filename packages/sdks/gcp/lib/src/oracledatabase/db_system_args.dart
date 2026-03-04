// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_system_properties.dart';

/// {@template pulumi_oracledatabase_db_system_db_system_args_doc}
/// The set of arguments for DbSystem.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_db_system_db_system_args_doc}
class DbSystemArgs {
  /// The ID of the DbSystem to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String> dbSystemId;
  final pulumi.Input<bool>? deletionProtection;

  /// The display name for the System db. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String> displayName;

  /// The GCP Oracle zone where Oracle DbSystem is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;

  /// The labels or tags associated with the DbSystem.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The name of the OdbNetwork associated with the DbSystem.
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the OdbSubnet.
  final pulumi.Input<String>? odbNetwork;

  /// The name of the OdbSubnet associated with the DbSystem for IP
  /// allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String> odbSubnet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The properties of a DbSystem.
  /// Structure is documented below.
  final pulumi.Input<DbSystemProperties>? properties;

  /// Creates a new [DbSystemArgs].
  /// [dbSystemId] The ID of the DbSystem to create. This value is
  /// [deletionProtection] Optional.
  /// [displayName] The display name for the System db. The name does not have to
  /// [gcpOracleZone] The GCP Oracle zone where Oracle DbSystem is hosted.
  /// [labels] The labels or tags associated with the DbSystem.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [odbNetwork] The name of the OdbNetwork associated with the DbSystem.
  /// [odbSubnet] The name of the OdbSubnet associated with the DbSystem for IP
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of a DbSystem.
  DbSystemArgs({
    required this.dbSystemId,
    this.deletionProtection,
    required this.displayName,
    this.gcpOracleZone,
    this.labels,
    required this.location,
    this.odbNetwork,
    required this.odbSubnet,
    this.project,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbSystemId': dbSystemId,
      'deletionProtection': ?deletionProtection,
      'displayName': displayName,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': location,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': odbSubnet,
      'project': ?project,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            DbSystemProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory DbSystemArgs.fromMap(Map<String, dynamic> map) {
    return DbSystemArgs(
      dbSystemId: pulumi.Input.fromValue(map['dbSystemId'] as String),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      gcpOracleZone: (() {
        final guardedValue = map['gcpOracleZone'];
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
      location: pulumi.Input.fromValue(map['location'] as String),
      odbNetwork: (() {
        final guardedValue = map['odbNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      odbSubnet: pulumi.Input.fromValue(map['odbSubnet'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DbSystemProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

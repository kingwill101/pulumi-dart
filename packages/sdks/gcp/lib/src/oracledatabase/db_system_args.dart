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
    required pulumi.Output<String> dbSystemId,
    pulumi.Output<bool>? deletionProtection,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? gcpOracleZone,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? odbNetwork,
    required pulumi.Output<String> odbSubnet,
    pulumi.Output<String>? project,
    pulumi.Output<DbSystemProperties>? properties,
  }) :
      dbSystemId = pulumi.Input.asInput<String>(dbSystemId),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asInput<String>(displayName),
      gcpOracleZone = pulumi.Input.asOptionalInput<String>(gcpOracleZone),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      odbNetwork = pulumi.Input.asOptionalInput<String>(odbNetwork),
      odbSubnet = pulumi.Input.asInput<String>(odbSubnet),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<DbSystemProperties>(properties);

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
      'properties': ?pulumi.Input.mapOptionalInputValue<DbSystemProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory DbSystemArgs.fromMap(Map<String, dynamic> map) {
    return DbSystemArgs(
      dbSystemId: pulumi.Output.create<String>(map['dbSystemId'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : pulumi.Output.create<String>(map['gcpOracleZone'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      odbNetwork: map['odbNetwork'] == null ? null : pulumi.Output.create<String>(map['odbNetwork'] as String),
      odbSubnet: pulumi.Output.create<String>(map['odbSubnet'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DbSystemProperties>(DbSystemProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
    );
  }
}


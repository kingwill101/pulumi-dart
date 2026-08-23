// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties.dart';

/// {@template pulumi_oracledatabase_goldengate_connection_goldengate_connection_args_doc}
/// The set of arguments for GoldengateConnection.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_goldengate_connection_goldengate_connection_args_doc}
class GoldengateConnectionArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  final pulumi.Input<bool>? deletionProtection;
  /// The GCP Oracle zone where Oracle GoldengateConnection is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;
  /// The ID of the GoldengateConnection to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String> goldengateConnectionId;
  /// The labels or tags associated with the GoldengateConnection.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The name of the OdbNetwork associated with the GoldengateConnection.
  /// The format is
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}.
  /// It is optional but if specified, this should match the parent ODBNetwork
  /// of the OdbSubnet.
  final pulumi.Input<String>? odbNetwork;
  /// The name of the OdbSubnet associated with the GoldengateConnection for IP
  /// allocation.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of a GoldengateConnection.
  /// Structure is documented below.
  final pulumi.Input<GoldengateConnectionProperties> properties;

  /// Creates a new [GoldengateConnectionArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  /// [gcpOracleZone] The GCP Oracle zone where Oracle GoldengateConnection is hosted.
  /// [goldengateConnectionId] The ID of the GoldengateConnection to create. This value is
  /// [labels] The labels or tags associated with the GoldengateConnection.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [odbNetwork] The name of the OdbNetwork associated with the GoldengateConnection.
  /// [odbSubnet] The name of the OdbSubnet associated with the GoldengateConnection for IP
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of a GoldengateConnection.
  const GoldengateConnectionArgs({
    this.deletionPolicy,
    this.deletionProtection,
    this.gcpOracleZone,
    required this.goldengateConnectionId,
    this.labels,
    required this.location,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'gcpOracleZone': ?gcpOracleZone,
      'goldengateConnectionId': goldengateConnectionId,
      'labels': ?labels,
      'location': location,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': pulumi.Input.mapInputValue<GoldengateConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory GoldengateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goldengateConnectionId: pulumi.Input.fromValue(map['goldengateConnectionId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      odbNetwork: (() { final guardedValue = map['odbNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbSubnet: (() { final guardedValue = map['odbSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(GoldengateConnectionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

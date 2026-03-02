// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_system_properties.dart';

/// Input properties used for looking up and filtering DbSystem resources.
class DbSystemState {
  /// The date and time that the DbSystem was created.
  final pulumi.Input<String>? createTime;
  /// The ID of the DbSystem to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String>? dbSystemId;
  final pulumi.Input<bool>? deletionProtection;
  /// The display name for the System db. The name does not have to
  /// be unique within your project.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ID of the subscription entitlement associated with the DbSystem
  final pulumi.Input<String>? entitlementId;
  /// The GCP Oracle zone where Oracle DbSystem is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;
  /// The labels or tags associated with the DbSystem.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the DbSystem resource in the following format:
  /// projects/{project}/locations/{region}/dbSystems/{db_system}
  final pulumi.Input<String>? name;
  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  final pulumi.Input<String>? ociUrl;
  /// The name of the OdbNetwork associated with the DbSystem.
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the OdbSubnet.
  final pulumi.Input<String>? odbNetwork;
  /// The name of the OdbSubnet associated with the DbSystem for IP
  /// allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? odbSubnet;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of a DbSystem.
  /// Structure is documented below.
  final pulumi.Input<DbSystemProperties>? properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [DbSystemState].
  /// [createTime] The date and time that the DbSystem was created.
  /// [dbSystemId] The ID of the DbSystem to create. This value is
  /// [deletionProtection] Optional.
  /// [displayName] The display name for the System db. The name does not have to
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entitlementId] The ID of the subscription entitlement associated with the DbSystem
  /// [gcpOracleZone] The GCP Oracle zone where Oracle DbSystem is hosted.
  /// [labels] The labels or tags associated with the DbSystem.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the DbSystem resource in the following format:
  /// [ociUrl] HTTPS link to OCI resources exposed to Customer via UI Interface.
  /// [odbNetwork] The name of the OdbNetwork associated with the DbSystem.
  /// [odbSubnet] The name of the OdbSubnet associated with the DbSystem for IP
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of a DbSystem.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  DbSystemState({
    this.createTime,
    this.dbSystemId,
    this.deletionProtection,
    this.displayName,
    this.effectiveLabels,
    this.entitlementId,
    this.gcpOracleZone,
    this.labels,
    this.location,
    this.name,
    this.ociUrl,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    this.properties,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dbSystemId': ?dbSystemId,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'ociUrl': ?ociUrl,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<DbSystemProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory DbSystemState.fromMap(Map<String, dynamic> map) {
    return DbSystemState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dbSystemId: map['dbSystemId'] == null ? null : (map['dbSystemId'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      entitlementId: map['entitlementId'] == null ? null : (map['entitlementId'] as String).input(),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : (map['gcpOracleZone'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ociUrl: map['ociUrl'] == null ? null : (map['ociUrl'] as String).input(),
      odbNetwork: map['odbNetwork'] == null ? null : (map['odbNetwork'] as String).input(),
      odbSubnet: map['odbSubnet'] == null ? null : (map['odbSubnet'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      properties: map['properties'] == null ? null : (DbSystemProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
    );
  }
}


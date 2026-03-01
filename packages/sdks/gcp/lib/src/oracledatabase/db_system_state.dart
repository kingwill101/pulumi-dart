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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dbSystemId,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? entitlementId,
    pulumi.Output<String>? gcpOracleZone,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ociUrl,
    pulumi.Output<String>? odbNetwork,
    pulumi.Output<String>? odbSubnet,
    pulumi.Output<String>? project,
    pulumi.Output<DbSystemProperties>? properties,
    pulumi.Output<Map<String, String>>? pulumiLabels,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dbSystemId = pulumi.Input.asOptionalInput<String>(dbSystemId),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      entitlementId = pulumi.Input.asOptionalInput<String>(entitlementId),
      gcpOracleZone = pulumi.Input.asOptionalInput<String>(gcpOracleZone),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      ociUrl = pulumi.Input.asOptionalInput<String>(ociUrl),
      odbNetwork = pulumi.Input.asOptionalInput<String>(odbNetwork),
      odbSubnet = pulumi.Input.asOptionalInput<String>(odbSubnet),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<DbSystemProperties>(properties),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dbSystemId: map['dbSystemId'] == null ? null : pulumi.Output.create<String>(map['dbSystemId'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      entitlementId: map['entitlementId'] == null ? null : pulumi.Output.create<String>(map['entitlementId'] as String),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : pulumi.Output.create<String>(map['gcpOracleZone'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ociUrl: map['ociUrl'] == null ? null : pulumi.Output.create<String>(map['ociUrl'] as String),
      odbNetwork: map['odbNetwork'] == null ? null : pulumi.Output.create<String>(map['odbNetwork'] as String),
      odbSubnet: map['odbSubnet'] == null ? null : pulumi.Output.create<String>(map['odbSubnet'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DbSystemProperties>(DbSystemProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}


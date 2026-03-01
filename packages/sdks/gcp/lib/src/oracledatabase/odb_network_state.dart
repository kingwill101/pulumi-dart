// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OdbNetwork resources.
class OdbNetworkState {
  /// The date and time that the OdbNetwork was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deletionProtection;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ID of the subscription entitlement associated with the OdbNetwork.
  final pulumi.Input<String>? entitlementId;
  /// The GCP Oracle zone where OdbNetwork is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;
  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the OdbNetwork resource in the following format:
  /// projects/{project}/locations/{region}/odbNetworks/{odb_network}
  final pulumi.Input<String>? name;
  /// The name of the VPC network in the following format:
  /// projects/{project}/global/networks/{network}
  final pulumi.Input<String>? network;
  /// The ID of the OdbNetwork to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String>? odbNetworkId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// State of the ODB Network.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// TERMINATING
  /// FAILED
  final pulumi.Input<String>? state;

  /// Creates a new [OdbNetworkState].
  /// [createTime] The date and time that the OdbNetwork was created.
  /// [deletionProtection] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entitlementId] The ID of the subscription entitlement associated with the OdbNetwork.
  /// [gcpOracleZone] The GCP Oracle zone where OdbNetwork is hosted.
  /// [labels] Labels or tags associated with the resource.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the OdbNetwork resource in the following format:
  /// [network] The name of the VPC network in the following format:
  /// [odbNetworkId] The ID of the OdbNetwork to create. This value is restricted
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] State of the ODB Network.
  OdbNetworkState({
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? entitlementId,
    pulumi.Output<String>? gcpOracleZone,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? odbNetworkId,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      entitlementId = pulumi.Input.asOptionalInput<String>(entitlementId),
      gcpOracleZone = pulumi.Input.asOptionalInput<String>(gcpOracleZone),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      odbNetworkId = pulumi.Input.asOptionalInput<String>(odbNetworkId),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'odbNetworkId': ?odbNetworkId,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
    };
  }

  factory OdbNetworkState.fromMap(Map<String, dynamic> map) {
    return OdbNetworkState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      entitlementId: map['entitlementId'] == null ? null : pulumi.Output.create<String>(map['entitlementId'] as String),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : pulumi.Output.create<String>(map['gcpOracleZone'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      odbNetworkId: map['odbNetworkId'] == null ? null : pulumi.Output.create<String>(map['odbNetworkId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OdbSubnet resources.
class OdbSubnetState {
  /// The CIDR range of the subnet.
  final pulumi.Input<String>? cidrRange;
  /// The date and time that the OdbNetwork was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deletionProtection;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the OdbSubnet resource in the following format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? name;
  /// The ID of the OdbSubnet to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String>? odbSubnetId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? odbnetwork;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Purpose of the subnet.
  /// Possible values:
  /// CLIENT_SUBNET
  /// BACKUP_SUBNET
  final pulumi.Input<String>? purpose;
  /// State of the ODB Subnet.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// TERMINATING
  /// FAILED
  final pulumi.Input<String>? state;

  /// Creates a new [OdbSubnetState].
  /// [cidrRange] The CIDR range of the subnet.
  /// [createTime] The date and time that the OdbNetwork was created.
  /// [deletionProtection] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels or tags associated with the resource.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the OdbSubnet resource in the following format:
  /// [odbSubnetId] The ID of the OdbSubnet to create. This value is restricted
  /// [odbnetwork] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [purpose] Purpose of the subnet.
  /// [state] State of the ODB Subnet.
  OdbSubnetState({
    pulumi.Output<String>? cidrRange,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? odbSubnetId,
    pulumi.Output<String>? odbnetwork,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? purpose,
    pulumi.Output<String>? state,
  }) :
      cidrRange = pulumi.Input.asOptionalInput<String>(cidrRange),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      odbSubnetId = pulumi.Input.asOptionalInput<String>(odbSubnetId),
      odbnetwork = pulumi.Input.asOptionalInput<String>(odbnetwork),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      purpose = pulumi.Input.asOptionalInput<String>(purpose),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRange': ?cidrRange,
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'odbSubnetId': ?odbSubnetId,
      'odbnetwork': ?odbnetwork,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'purpose': ?purpose,
      'state': ?state,
    };
  }

  factory OdbSubnetState.fromMap(Map<String, dynamic> map) {
    return OdbSubnetState(
      cidrRange: map['cidrRange'] == null ? null : pulumi.Output.create<String>(map['cidrRange'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      odbSubnetId: map['odbSubnetId'] == null ? null : pulumi.Output.create<String>(map['odbSubnetId'] as String),
      odbnetwork: map['odbnetwork'] == null ? null : pulumi.Output.create<String>(map['odbnetwork'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      purpose: map['purpose'] == null ? null : pulumi.Output.create<String>(map['purpose'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}


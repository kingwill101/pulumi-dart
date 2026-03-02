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
    this.cidrRange,
    this.createTime,
    this.deletionProtection,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.odbSubnetId,
    this.odbnetwork,
    this.project,
    this.pulumiLabels,
    this.purpose,
    this.state,
  });

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
      cidrRange: map['cidrRange'] == null ? null : (map['cidrRange']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      odbSubnetId: map['odbSubnetId'] == null ? null : (map['odbSubnetId']! as String).input(),
      odbnetwork: map['odbnetwork'] == null ? null : (map['odbnetwork']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      purpose: map['purpose'] == null ? null : (map['purpose']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}


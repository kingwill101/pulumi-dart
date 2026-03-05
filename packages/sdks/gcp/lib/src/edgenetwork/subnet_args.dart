// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgenetwork_subnet_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_edgenetwork_subnet_subnet_args_doc}
class SubnetArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  final pulumi.Input<List<String>>? ipv4Cidrs;
  /// The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  final pulumi.Input<List<String>>? ipv6Cidrs;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String> location;
  /// The ID of the network to which this router belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A unique ID that identifies this subnet.
  final pulumi.Input<String> subnetId;
  /// VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  final pulumi.Input<int>? vlanId;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String> zone;

  /// Creates a new [SubnetArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [ipv4Cidrs] The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  /// [ipv6Cidrs] The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [network] The ID of the network to which this router belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [subnetId] A unique ID that identifies this subnet.
  /// [vlanId] VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  SubnetArgs({
    this.description,
    this.ipv4Cidrs,
    this.ipv6Cidrs,
    this.labels,
    required this.location,
    required this.network,
    this.project,
    required this.subnetId,
    this.vlanId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipv4Cidrs': ?ipv4Cidrs,
      'ipv6Cidrs': ?ipv6Cidrs,
      'labels': ?labels,
      'location': location,
      'network': network,
      'project': ?project,
      'subnetId': subnetId,
      'vlanId': ?vlanId,
      'zone': zone,
    };
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Cidrs: (() { final guardedValue = map['ipv4Cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6Cidrs: (() { final guardedValue = map['ipv6Cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}


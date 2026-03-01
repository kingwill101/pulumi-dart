// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgenetwork_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_edgenetwork_network_network_args_doc}
class NetworkArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String> location;
  /// IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  final pulumi.Input<int>? mtu;
  /// A unique ID that identifies this network.
  final pulumi.Input<String> networkId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String> zone;

  /// Creates a new [NetworkArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [mtu] IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  /// [networkId] A unique ID that identifies this network.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  NetworkArgs({
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<int>? mtu,
    required pulumi.Output<String> networkId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      networkId = pulumi.Input.asInput<String>(networkId),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'mtu': ?mtu,
      'networkId': networkId,
      'project': ?project,
      'zone': zone,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      networkId: pulumi.Output.create<String>(map['networkId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}


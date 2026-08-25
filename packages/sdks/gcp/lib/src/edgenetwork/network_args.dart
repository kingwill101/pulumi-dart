// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgenetwork_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_edgenetwork_network_network_args_doc}
class NetworkArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String?>? description;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String> location;
  /// IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  final pulumi.Input<int?>? mtu;
  /// A unique ID that identifies this network.
  final pulumi.Input<String> networkId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String> zone;

  /// Creates a new [NetworkArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [mtu] IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  /// [networkId] A unique ID that identifies this network.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  const NetworkArgs({
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.mtu,
    required this.networkId,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

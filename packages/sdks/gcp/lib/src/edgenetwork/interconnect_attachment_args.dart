// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgenetwork_interconnect_attachment_interconnect_attachment_args_doc}
/// The set of arguments for InterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_edgenetwork_interconnect_attachment_interconnect_attachment_args_doc}
class InterconnectAttachmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// The ID of the underlying interconnect that this attachment's traffic will traverse through.
  final pulumi.Input<String> interconnect;
  /// A unique ID that identifies this interconnect attachment.
  final pulumi.Input<String> interconnectAttachmentId;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String> location;
  /// IP (L3) MTU value of the virtual edge cloud. Default value is `1500`. Possible values are: `1500`, `9000`.
  final pulumi.Input<int>? mtu;
  /// The ID of the network to which this interconnect attachment belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// VLAN ID provided by user. Must be site-wise unique.
  final pulumi.Input<int> vlanId;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String> zone;

  /// Creates a new [InterconnectAttachmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [interconnect] The ID of the underlying interconnect that this attachment's traffic will traverse through.
  /// [interconnectAttachmentId] A unique ID that identifies this interconnect attachment.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [mtu] IP (L3) MTU value of the virtual edge cloud. Default value is `1500`. Possible values are: `1500`, `9000`.
  /// [network] The ID of the network to which this interconnect attachment belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [vlanId] VLAN ID provided by user. Must be site-wise unique.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  const InterconnectAttachmentArgs({
    this.deletionPolicy,
    this.description,
    required this.interconnect,
    required this.interconnectAttachmentId,
    this.labels,
    required this.location,
    this.mtu,
    required this.network,
    this.project,
    required this.vlanId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'interconnect': interconnect,
      'interconnectAttachmentId': interconnectAttachmentId,
      'labels': ?labels,
      'location': location,
      'mtu': ?mtu,
      'network': network,
      'project': ?project,
      'vlanId': vlanId,
      'zone': zone,
    };
  }

  factory InterconnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interconnect: pulumi.Input.fromValue(map['interconnect'] as String),
      interconnectAttachmentId: pulumi.Input.fromValue(map['interconnectAttachmentId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as int),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

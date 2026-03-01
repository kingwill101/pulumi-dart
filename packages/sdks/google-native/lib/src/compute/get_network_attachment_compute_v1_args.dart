// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_network_attachment_compute_v1_args_doc}
/// Arguments for getNetworkAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_network_attachment_compute_v1_args_doc}
class GetNetworkAttachmentComputeV1Args {
  final pulumi.Input<String> networkAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNetworkAttachmentComputeV1Args].
  /// [networkAttachment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetNetworkAttachmentComputeV1Args({
    required pulumi.Output<String> networkAttachment,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      networkAttachment = pulumi.Input.asInput<String>(networkAttachment),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetNetworkAttachmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentComputeV1Args(
      networkAttachment: pulumi.Output.create<String>(map['networkAttachment'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


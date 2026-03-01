// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_interconnect_attachment_compute_beta_args_doc}
/// Arguments for getInterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_interconnect_attachment_compute_beta_args_doc}
class GetInterconnectAttachmentComputeBetaArgs {
  final pulumi.Input<String> interconnectAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetInterconnectAttachmentComputeBetaArgs].
  /// [interconnectAttachment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetInterconnectAttachmentComputeBetaArgs({
    required pulumi.Output<String> interconnectAttachment,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      interconnectAttachment = pulumi.Input.asInput<String>(interconnectAttachment),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': interconnectAttachment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetInterconnectAttachmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectAttachmentComputeBetaArgs(
      interconnectAttachment: pulumi.Output.create<String>(map['interconnectAttachment'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


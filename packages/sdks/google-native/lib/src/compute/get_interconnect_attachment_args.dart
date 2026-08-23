// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_interconnect_attachment_args_doc}
/// Arguments for getInterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_interconnect_attachment_args_doc}
class GetInterconnectAttachmentArgs {
  final pulumi.Input<String> interconnectAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetInterconnectAttachmentArgs].
  /// [interconnectAttachment] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetInterconnectAttachmentArgs({
    required this.interconnectAttachment,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': interconnectAttachment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetInterconnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectAttachmentArgs(
      interconnectAttachment: pulumi.Input.fromValue(map['interconnectAttachment'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

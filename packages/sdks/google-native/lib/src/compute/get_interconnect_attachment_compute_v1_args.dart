// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_interconnect_attachment_compute_v1_args_doc}
/// Arguments for getInterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_interconnect_attachment_compute_v1_args_doc}
class GetInterconnectAttachmentComputeV1Args {
  final pulumi.Input<String> interconnectAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetInterconnectAttachmentComputeV1Args].
  /// [interconnectAttachment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetInterconnectAttachmentComputeV1Args({
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

  factory GetInterconnectAttachmentComputeV1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInterconnectAttachmentComputeV1Args(
      interconnectAttachment: pulumi.Input.fromValue(
        map['interconnectAttachment'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

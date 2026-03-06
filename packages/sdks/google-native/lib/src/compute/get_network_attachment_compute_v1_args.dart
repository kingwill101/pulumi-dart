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
  const GetNetworkAttachmentComputeV1Args({
    required this.networkAttachment,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkAttachment': networkAttachment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetNetworkAttachmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentComputeV1Args(
      networkAttachment: pulumi.Input.fromValue(map['networkAttachment'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}


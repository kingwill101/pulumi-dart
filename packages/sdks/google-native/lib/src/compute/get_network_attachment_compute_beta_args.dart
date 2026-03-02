// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_network_attachment_compute_beta_args_doc}
/// Arguments for getNetworkAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_network_attachment_compute_beta_args_doc}
class GetNetworkAttachmentComputeBetaArgs {
  final pulumi.Input<String> networkAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNetworkAttachmentComputeBetaArgs].
  /// [networkAttachment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetNetworkAttachmentComputeBetaArgs({
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

  factory GetNetworkAttachmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentComputeBetaArgs(
      networkAttachment: (map['networkAttachment'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}


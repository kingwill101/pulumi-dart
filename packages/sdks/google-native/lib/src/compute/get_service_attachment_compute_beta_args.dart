// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_service_attachment_compute_beta_args_doc}
/// Arguments for getServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_service_attachment_compute_beta_args_doc}
class GetServiceAttachmentComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [GetServiceAttachmentComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [serviceAttachment] Required.
  GetServiceAttachmentComputeBetaArgs({
    this.project,
    required this.region,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GetServiceAttachmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentComputeBetaArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      serviceAttachment: (map['serviceAttachment'] as String).input(),
    );
  }
}


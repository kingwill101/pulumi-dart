// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_service_attachment_args_doc}
/// Arguments for getServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_service_attachment_args_doc}
class GetServiceAttachmentArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [GetServiceAttachmentArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [serviceAttachment] Required.
  GetServiceAttachmentArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> serviceAttachment,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      serviceAttachment = pulumi.Input.asInput<String>(serviceAttachment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GetServiceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      serviceAttachment: pulumi.Output.create<String>(map['serviceAttachment'] as String),
    );
  }
}


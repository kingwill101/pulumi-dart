// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_service_attachment_get_service_attachment_args_doc}
/// Arguments for getServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_get_service_attachment_get_service_attachment_args_doc}
class GetServiceAttachmentArgs {
  /// The name of the service attachment to retrieve.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the service attachment resides.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetServiceAttachmentArgs].
  /// [name] The name of the service attachment to retrieve.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region in which the service attachment resides.
  const GetServiceAttachmentArgs({
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetServiceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

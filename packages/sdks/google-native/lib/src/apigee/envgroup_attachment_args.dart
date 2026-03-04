// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_envgroup_attachment_args_doc}
/// The set of arguments for EnvgroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_envgroup_attachment_args_doc}
class EnvgroupAttachmentArgs {
  final pulumi.Input<String> envgroupId;

  /// ID of the attached environment.
  final pulumi.Input<String> environment;

  /// ID of the environment group attachment.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [EnvgroupAttachmentArgs].
  /// [envgroupId] Required.
  /// [environment] ID of the attached environment.
  /// [name] ID of the environment group attachment.
  /// [organizationId] Required.
  EnvgroupAttachmentArgs({
    required this.envgroupId,
    required this.environment,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envgroupId': envgroupId,
      'environment': environment,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory EnvgroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvgroupAttachmentArgs(
      envgroupId: pulumi.Input.fromValue(map['envgroupId'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

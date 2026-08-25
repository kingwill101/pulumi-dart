// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_env_group_attachment_env_group_attachment_args_doc}
/// The set of arguments for EnvGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_env_group_attachment_env_group_attachment_args_doc}
class EnvGroupAttachmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/envgroups/{{envgroup_name}}`.
  final pulumi.Input<String> envgroupId;
  /// The resource ID of the environment.
  final pulumi.Input<String> environment;

  /// Creates a new [EnvGroupAttachmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [envgroupId] The Apigee environment group associated with the Apigee environment,
  /// [environment] The resource ID of the environment.
  const EnvGroupAttachmentArgs({
    this.deletionPolicy,
    required this.envgroupId,
    required this.environment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'envgroupId': envgroupId,
      'environment': environment,
    };
  }

  factory EnvGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvGroupAttachmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envgroupId: pulumi.Input.fromValue(map['envgroupId'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
    );
  }
}

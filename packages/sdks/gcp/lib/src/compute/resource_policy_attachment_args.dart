// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_resource_policy_attachment_resource_policy_attachment_args_doc}
/// The set of arguments for ResourcePolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_resource_policy_attachment_resource_policy_attachment_args_doc}
class ResourcePolicyAttachmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name of the instance in which the resource policies are attached to.
  final pulumi.Input<String> instance;
  /// The resource policy to be attached to the instance for scheduling start/stop
  /// operations. Do not specify the self link.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the zone where the instance resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [ResourcePolicyAttachmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] The name of the instance in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the instance for scheduling start/stop
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the instance resides.
  const ResourcePolicyAttachmentArgs({
    this.deletionPolicy,
    required this.instance,
    this.name,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'instance': instance,
      'name': ?name,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory ResourcePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAttachmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

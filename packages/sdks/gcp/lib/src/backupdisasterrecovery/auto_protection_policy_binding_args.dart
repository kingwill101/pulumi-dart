// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_auto_protection_policy_binding_auto_protection_policy_binding_args_doc}
/// The set of arguments for AutoProtectionPolicyBinding.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_auto_protection_policy_binding_auto_protection_policy_binding_args_doc}
class AutoProtectionPolicyBindingArgs {
  /// The ID of the binding. This becomes the final component of the binding's resource name.
  final pulumi.Input<String> autoProtectionPolicyBindingId;
  /// The ID of the auto protection policy to bind.
  final pulumi.Input<String> autoProtectionPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The location of the auto protection policy.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The container that the policy is applied to, in the format `projects/{project}`.
  final pulumi.Input<String> scope;
  /// Whether Terraform should wait for the binding and all associated background resource
  /// unprotection operations to be completely deleted before returning. Setting
  /// `waitForDelete = true` will block the Terraform script/execution until all resources
  /// are unprotected and the binding is fully removed.
  final pulumi.Input<bool?>? waitForDelete;

  /// Creates a new [AutoProtectionPolicyBindingArgs].
  /// [autoProtectionPolicyBindingId] The ID of the binding. This becomes the final component of the binding's resource name.
  /// [autoProtectionPolicyId] The ID of the auto protection policy to bind.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location of the auto protection policy.
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] The container that the policy is applied to, in the format `projects/{project}`.
  /// [waitForDelete] Whether Terraform should wait for the binding and all associated background resource
  const AutoProtectionPolicyBindingArgs({
    required this.autoProtectionPolicyBindingId,
    required this.autoProtectionPolicyId,
    this.deletionPolicy,
    required this.location,
    this.project,
    required this.scope,
    this.waitForDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProtectionPolicyBindingId': autoProtectionPolicyBindingId,
      'autoProtectionPolicyId': autoProtectionPolicyId,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
      'scope': scope,
      'waitForDelete': ?waitForDelete,
    };
  }

  factory AutoProtectionPolicyBindingArgs.fromMap(Map<String, dynamic> map) {
    return AutoProtectionPolicyBindingArgs(
      autoProtectionPolicyBindingId: pulumi.Input.fromValue(map['autoProtectionPolicyBindingId'] as String),
      autoProtectionPolicyId: pulumi.Input.fromValue(map['autoProtectionPolicyId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      waitForDelete: (() { final guardedValue = map['waitForDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

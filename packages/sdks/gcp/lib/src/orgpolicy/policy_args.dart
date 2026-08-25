// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_dry_run_spec.dart';
import 'policy_spec.dart';

/// {@template pulumi_orgpolicy_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_policy_policy_args_doc}
class PolicyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// Structure is documented below.
  final pulumi.Input<PolicyDryRunSpec?>? dryRunSpec;
  /// Immutable. The resource name of the Policy. Must be one of the following forms, where constraintName is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, "projects/123/policies/compute.disableSerialPortAccess". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  final pulumi.Input<String?>? name;
  /// The parent of the resource.
  final pulumi.Input<String> parent;
  /// Basic information about the Organization Policy.
  /// Structure is documented below.
  final pulumi.Input<PolicySpec?>? spec;

  /// Creates a new [PolicyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dryRunSpec] Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// [name] Immutable. The resource name of the Policy. Must be one of the following forms, where constraintName is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, "projects/123/policies/compute.disableSerialPortAccess". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  /// [parent] The parent of the resource.
  /// [spec] Basic information about the Organization Policy.
  const PolicyArgs({
    this.deletionPolicy,
    this.dryRunSpec,
    this.name,
    required this.parent,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'dryRunSpec': ?pulumi.Input.mapOptionalInputValue<PolicyDryRunSpec, Map<String, dynamic>>(dryRunSpec, (value) => value.toMap()),
      'name': ?name,
      'parent': parent,
      'spec': ?pulumi.Input.mapOptionalInputValue<PolicySpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRunSpec: (() { final guardedValue = map['dryRunSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyDryRunSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

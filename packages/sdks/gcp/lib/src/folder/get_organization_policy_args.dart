// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_folder_get_organization_policy_get_organization_policy_args_doc}
/// Arguments for getOrganizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_folder_get_organization_policy_get_organization_policy_args_doc}
class GetOrganizationPolicyArgs {
  /// (Required) The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  final pulumi.Input<String> constraint;
  /// The resource name of the folder to set the policy for. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;

  /// Creates a new [GetOrganizationPolicyArgs].
  /// [constraint] (Required) The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  /// [folder] The resource name of the folder to set the policy for. Its format is folders/{folder_id}.
  GetOrganizationPolicyArgs({
    required pulumi.Output<String> constraint,
    required pulumi.Output<String> folder,
  }) :
      constraint = pulumi.Input.asInput<String>(constraint),
      folder = pulumi.Input.asInput<String>(folder);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraint': constraint,
      'folder': folder,
    };
  }

  factory GetOrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyArgs(
      constraint: pulumi.Output.create<String>(map['constraint'] as String),
      folder: pulumi.Output.create<String>(map['folder'] as String),
    );
  }
}


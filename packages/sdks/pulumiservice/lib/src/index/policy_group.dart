import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_args.dart';
import 'policy_group_policy_pack_reference.dart';
import 'policy_group_stack_reference.dart';

/// A Policy Group allows you to apply policy packs to a set of stacks in your organization.
class PolicyGroup extends pulumi.CustomResource {
  /// List of accounts that belong to this policy group.
  late final pulumi.Output<List<String>?> accounts;
  /// The entity type for the policy group. Valid values are 'stacks' or 'accounts'. Defaults to 'stacks'.
  late final pulumi.Output<String> entityType;
  /// The mode for the policy group. Valid values are 'audit' (reports violations) or 'preventative' (blocks operations). Defaults to 'audit'.
  late final pulumi.Output<String> mode;
  /// The name of the policy group.
  late final pulumi.Output<String> name;
  /// The name of the Pulumi organization the policy group belongs to.
  late final pulumi.Output<String> organizationName;
  /// List of policy packs applied to this policy group.
  late final pulumi.Output<List<PolicyGroupPolicyPackReference>?> policyPacks;
  /// List of stack references that belong to this policy group.
  late final pulumi.Output<List<PolicyGroupStackReference>?> stacks;

  /// Creates a new [PolicyGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyGroup]. {@macro pulumi_index_policy_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyGroup(
    String name, {
    PolicyGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:PolicyGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accounts = registerOutput<List<String>?>('accounts');
    this.entityType = registerOutput<String>('entityType');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.organizationName = registerOutput<String>('organizationName');
    this.policyPacks = registerOutput<List<PolicyGroupPolicyPackReference>?>('policyPacks');
    this.stacks = registerOutput<List<PolicyGroupStackReference>?>('stacks');
  }
}

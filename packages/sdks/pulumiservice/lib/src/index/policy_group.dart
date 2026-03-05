import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_args.dart';

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
  late final pulumi.Output<List<Map<String, dynamic>>?> policyPacks;
  /// List of stack references that belong to this policy group.
  late final pulumi.Output<List<Map<String, dynamic>>?> stacks;

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
    accounts = registerOutput<List<String>?>('accounts');
    entityType = registerOutput<String>('entityType');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    policyPacks = registerOutput<List<Map<String, dynamic>>?>('policyPacks');
    stacks = registerOutput<List<Map<String, dynamic>>?>('stacks');
  }
}

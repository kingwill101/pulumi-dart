import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_args.dart';

/// Creates a new Policy Group for an organization. Policy Groups define which Policy Packs are enforced on which stacks or cloud accounts, with configurable enforcement levels (advisory, mandatory, or disabled) per pack. This allows different policy strictness for different environments, such as advisory-only in development and mandatory in production.
class PolicyGroup extends pulumi.CustomResource {
  /// List of Insights account names that are members of this policy group.
  late final pulumi.Output<List<String>> accounts;
  /// Agent pool ID for audit policy evaluation. Defaults to Pulumi hosted pool if not specified.
  late final pulumi.Output<String?> agentPoolId;
  /// List of policy packs that are applied to this policy group.
  late final pulumi.Output<List<Map<String, dynamic>>> appliedPolicyPacks;
  /// The type of entities this policy group applies to (stacks or accounts).
  late final pulumi.Output<String> entityType;
  /// True if this is either the default stacks or default accounts policy group for the organization.
  late final pulumi.Output<bool> isOrgDefault;
  /// The enforcement mode for the policy group (audit or preventative).
  late final pulumi.Output<String> mode;
  /// The name of the policy group.
  late final pulumi.Output<String> name;
  /// List of stacks that are members of this policy group.
  late final pulumi.Output<List<Map<String, dynamic>>> stacks;

  /// Creates a new [PolicyGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyGroup]. {@macro pulumi_api_policy_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyGroup(
    String name, {
    PolicyGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:PolicyGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accounts = registerOutput<List<String>>('accounts');
    agentPoolId = registerOutput<String?>('agentPoolId');
    appliedPolicyPacks = registerOutput<List<Map<String, dynamic>>>('appliedPolicyPacks');
    entityType = registerOutput<String>('entityType');
    isOrgDefault = registerOutput<bool>('isOrgDefault');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    stacks = registerOutput<List<Map<String, dynamic>>>('stacks');
  }
}

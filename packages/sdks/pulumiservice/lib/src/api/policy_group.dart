import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_args.dart';

/// Creates a new Policy Group for an organization. Policy Groups define which Policy Packs are enforced on which stacks or cloud accounts, with configurable enforcement levels (advisory, mandatory, or disabled) per pack. This allows different policy strictness for different environments, such as advisory-only in development and mandatory in production.
class PolicyGroup extends pulumi.CustomResource {
  /// Preview: the account match rule, a boolean expression over Insights account tags. Accounts whose tags satisfy it are members of the group alongside the accounts added individually. Absent when the group has no rule.
  late final pulumi.Output<dynamic> accountMatchRule;
  /// The Insights accounts added to this policy group individually, with `addInsightsAccount`.
  late final pulumi.Output<List<String>> accounts;
  /// Agent pool ID for audit policy evaluation. Defaults to Pulumi hosted pool if not specified.
  late final pulumi.Output<String?> agentPoolId;
  /// List of policy packs that are applied to this policy group.
  late final pulumi.Output<List<dynamic>> appliedPolicyPacks;
  /// Deprecated: a legacy label set when the policy group was created. It does not restrict which entities the group holds; `mode` does.
  late final pulumi.Output<String> entityType;
  /// True if this is either the default stacks or default accounts policy group for the organization.
  late final pulumi.Output<bool> isOrgDefault;
  /// The enforcement mode for the policy group (audit or preventative).
  late final pulumi.Output<String> mode;
  /// The name of the policy group.
  late final pulumi.Output<String> name;
  /// Preview: the stack match rule, a boolean expression over stack tags. Stacks whose tags satisfy it are members of the group alongside the stacks added individually. Absent when the group has no rule.
  late final pulumi.Output<dynamic> stackMatchRule;
  /// The stacks added to this policy group individually, with `addStack`.
  late final pulumi.Output<List<dynamic>> stacks;

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
    accountMatchRule = registerOutput<dynamic>('accountMatchRule');
    accounts = registerOutput<List<String>>('accounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    agentPoolId = registerOutput<String?>('agentPoolId');
    appliedPolicyPacks = registerOutput<List<dynamic>>('appliedPolicyPacks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    entityType = registerOutput<String>('entityType');
    isOrgDefault = registerOutput<bool>('isOrgDefault');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    stackMatchRule = registerOutput<dynamic>('stackMatchRule');
    stacks = registerOutput<List<dynamic>>('stacks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }

  /// Creates a typed reference to an existing [PolicyGroup] resource.
  PolicyGroup.reference(String urn)
    : super(
        'pulumiservice:api:PolicyGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountMatchRule = registerOutput<dynamic>('accountMatchRule');
    accounts = registerOutput<List<String>>('accounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    agentPoolId = registerOutput<String?>('agentPoolId');
    appliedPolicyPacks = registerOutput<List<dynamic>>('appliedPolicyPacks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    entityType = registerOutput<String>('entityType');
    isOrgDefault = registerOutput<bool>('isOrgDefault');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    stackMatchRule = registerOutput<dynamic>('stackMatchRule');
    stacks = registerOutput<List<dynamic>>('stacks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }
}

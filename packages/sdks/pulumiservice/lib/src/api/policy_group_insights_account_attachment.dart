import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_insights_account_attachment_args.dart';

/// Manages a single membership edge through UpdatePolicyGroup (addInsightsAccount / removeInsightsAccount).
class PolicyGroupInsightsAccountAttachment extends pulumi.CustomResource {
  late final pulumi.Output<String> name;
  /// The organization name
  late final pulumi.Output<String> orgName;
  /// The policy group name
  late final pulumi.Output<String> policyGroup;

  /// Creates a new [PolicyGroupInsightsAccountAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyGroupInsightsAccountAttachment]. {@macro pulumi_api_policy_group_insights_account_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyGroupInsightsAccountAttachment(
    String name, {
    PolicyGroupInsightsAccountAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:PolicyGroupInsightsAccountAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    orgName = registerOutput<String>('orgName');
    policyGroup = registerOutput<String>('policyGroup');
  }
}

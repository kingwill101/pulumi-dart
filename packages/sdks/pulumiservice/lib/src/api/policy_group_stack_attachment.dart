import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_group_stack_attachment_args.dart';

/// Manages a single membership edge through UpdatePolicyGroup (addStack / removeStack).
class PolicyGroupStackAttachment extends pulumi.CustomResource {
  /// The name
  late final pulumi.Output<String> name;
  /// The organization name
  late final pulumi.Output<String> orgName;
  /// The policy group name
  late final pulumi.Output<String> policyGroup;
  /// The routing project
  late final pulumi.Output<String> routingProject;

  /// Creates a new [PolicyGroupStackAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyGroupStackAttachment]. {@macro pulumi_api_policy_group_stack_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyGroupStackAttachment(
    String name, {
    PolicyGroupStackAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:PolicyGroupStackAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    orgName = registerOutput<String>('orgName');
    policyGroup = registerOutput<String>('policyGroup');
    routingProject = registerOutput<String>('routingProject');
  }
}

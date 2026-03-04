import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_orgpolicy_v2_alternate_policy_spec_response.dart';
import 'google_cloud_orgpolicy_v2_policy_spec_response.dart';
import 'policy_args.dart';

/// Creates a policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given Google Cloud resource.
class Policy extends pulumi.CustomResource {
  /// Deprecated.
  late final pulumi.Output<GoogleCloudOrgpolicyV2AlternatePolicySpecResponse>
  alternate;

  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  late final pulumi.Output<GoogleCloudOrgpolicyV2PolicySpecResponse> dryRunSpec;

  /// Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Basic information about the Organization Policy.
  late final pulumi.Output<GoogleCloudOrgpolicyV2PolicySpecResponse> spec;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_orgpolicy_v2_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(String name, {PolicyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:orgpolicy/v2:Policy',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    alternate =
        registerOutput<GoogleCloudOrgpolicyV2AlternatePolicySpecResponse>(
          'alternate',
        );
    dryRunSpec = registerOutput<GoogleCloudOrgpolicyV2PolicySpecResponse>(
      'dryRunSpec',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spec = registerOutput<GoogleCloudOrgpolicyV2PolicySpecResponse>('spec');
  }
}

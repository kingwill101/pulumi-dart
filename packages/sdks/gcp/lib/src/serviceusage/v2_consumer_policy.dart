import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_consumer_policy_args.dart';
import 'v2_consumer_policy_enable_rule.dart';
import 'v2_consumer_policy_state.dart';

/// Consumer Policy is a set of rules that define what services or service groups can be used for a cloud resource hierarchy.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about ConsumerPolicy, see:
///
/// * [API documentation](https://docs.cloud.google.com/service-usage/docs/reference/rest/v2beta/consumerPolicies)
/// * How-to Guides
/// * [Enabling and Disabling Services](https://cloud.google.com/service-usage/docs/enable-disable)
///
/// ## Import
///
/// ConsumerPolicy can be imported using any of these accepted formats:
///
/// * `{{parent}}/consumerPolicies/{{name}}`
///
///
/// When using the `pulumi import` command, ConsumerPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:serviceusage/v2ConsumerPolicy:V2ConsumerPolicy default {{parent}}/consumerPolicies/{{name}}
/// ```
class V2ConsumerPolicy extends pulumi.CustomResource {
  /// (Optional) Default value is false. If true, the usage of the service to be removed will be checked. If the service has been used within the past 30 days or was enabled in the last 3 days, an error will be thrown.
  late final pulumi.Output<bool?> checkUsageOnRemove;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The consumer policy rule that defines enabled services. The structure is documented below.
  /// Structure is documented below.
  late final pulumi.Output<List<V2ConsumerPolicyEnableRule>> enableRules;
  /// Entity tag (ETag) used for optimistic concurrency control as a way to help prevent simultaneous updates from overwriting each other.
  /// Used internally during updates.
  late final pulumi.Output<String> etag;
  /// The name of the policy. Currently only the “default” policy name is supported.
  late final pulumi.Output<String> name;
  /// The name of the parent. It can be a project, folder or organization in the format of  projects/&lt;project_id or project_number&gt;, folders/&lt;folder_number&gt; or organizations/&lt;org_number&gt; .
  late final pulumi.Output<String> parent;
  /// (Optional) Default value is true. If true, this flag enforces dependency management within the consumer policy. When adding a new service, it verifies that all its dependencies are already present/added in the policy. Conversely, when removing a service, it ensures that no other services within the policy depend on the service to be removed. If the validation fails, a comprehensive message will be presented, outlining the missing dependencies and providing instructions on how to address the issue.
  late final pulumi.Output<bool?> validateDependencies;

  /// Creates a new [V2ConsumerPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2ConsumerPolicy]. {@macro pulumi_serviceusage_v2_consumer_policy_v2_consumer_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2ConsumerPolicy(
    String name, {
    V2ConsumerPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceusage/v2ConsumerPolicy:V2ConsumerPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    checkUsageOnRemove = registerOutput<bool?>('checkUsageOnRemove');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enableRules = registerOutput<List<V2ConsumerPolicyEnableRule>>('enableRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2ConsumerPolicyEnableRule>(guardedValue, (value) => V2ConsumerPolicyEnableRule.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    validateDependencies = registerOutput<bool?>('validateDependencies');
  }

  /// Gets an existing [V2ConsumerPolicy] resource's state with the given [name] and [id].
  static V2ConsumerPolicy get(
    String name,
    pulumi.Input<String> id, {
    V2ConsumerPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2ConsumerPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2ConsumerPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceusage/v2ConsumerPolicy:V2ConsumerPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkUsageOnRemove = registerOutput<bool?>('checkUsageOnRemove');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enableRules = registerOutput<List<V2ConsumerPolicyEnableRule>>('enableRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2ConsumerPolicyEnableRule>(guardedValue, (value) => V2ConsumerPolicyEnableRule.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    validateDependencies = registerOutput<bool?>('validateDependencies');
  }

  /// Creates a typed reference to an existing [V2ConsumerPolicy] resource.
  V2ConsumerPolicy.reference(String urn)
    : super(
        'gcp:serviceusage/v2ConsumerPolicy:V2ConsumerPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    checkUsageOnRemove = registerOutput<bool?>('checkUsageOnRemove');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    enableRules = registerOutput<List<V2ConsumerPolicyEnableRule>>('enableRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<V2ConsumerPolicyEnableRule>(guardedValue, (value) => V2ConsumerPolicyEnableRule.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    validateDependencies = registerOutput<bool?>('validateDependencies');
  }
}

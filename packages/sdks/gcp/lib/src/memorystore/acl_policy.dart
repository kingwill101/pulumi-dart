import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_policy_args.dart';
import 'acl_policy_rule.dart';
import 'acl_policy_state.dart';

/// A Google Cloud Memorystore ACL policy.
///
/// ## Import
///
/// AclPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/aclPolicies/{{acl_policy_id}}`
/// * `{{project}}/{{location}}/{{acl_policy_id}}`
/// * `{{location}}/{{acl_policy_id}}`
///
///
/// When using the `pulumi import` command, AclPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:memorystore/aclPolicy:AclPolicy default projects/{{project}}/locations/{{location}}/aclPolicies/{{acl_policy_id}}
/// $ pulumi import gcp:memorystore/aclPolicy:AclPolicy default {{project}}/{{location}}/{{acl_policy_id}}
/// $ pulumi import gcp:memorystore/aclPolicy:AclPolicy default {{location}}/{{acl_policy_id}}
/// ```
class AclPolicy extends pulumi.CustomResource {
  /// The logical name of the ACL policy in the customer project
  /// with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project / location
  late final pulumi.Output<String> aclPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Etag of the ACL policy.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. Full resource path of the ACL policy.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The ACL rules within the ACL policy.
  /// Structure is documented below.
  late final pulumi.Output<List<AclPolicyRule>> rules;
  /// The state of the ACL policy.
  /// Possible values:
  /// ACTIVE
  /// UPDATING
  /// DELETING
  late final pulumi.Output<String> state;

  /// Creates a new [AclPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclPolicy]. {@macro pulumi_memorystore_acl_policy_acl_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclPolicy(
    String name, {
    AclPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:memorystore/aclPolicy:AclPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    aclPolicyId = registerOutput<String>('aclPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<AclPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AclPolicyRule>(guardedValue, (value) => AclPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }

  /// Gets an existing [AclPolicy] resource's state with the given [name] and [id].
  static AclPolicy get(
    String name,
    pulumi.Input<String> id, {
    AclPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AclPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AclPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:memorystore/aclPolicy:AclPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclPolicyId = registerOutput<String>('aclPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<AclPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AclPolicyRule>(guardedValue, (value) => AclPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [AclPolicy] resource.
  AclPolicy.reference(String urn)
    : super(
        'gcp:memorystore/aclPolicy:AclPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aclPolicyId = registerOutput<String>('aclPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<AclPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AclPolicyRule>(guardedValue, (value) => AclPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }
}

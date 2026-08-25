import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_policy_args.dart';
import 'ingress_policy_state.dart';

/// This resource has been deprecated, please refer to ServicePerimeterIngressPolicy.
///
///
/// To get more information about IngressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#ingresspolicy)
///
/// ## Import
///
/// IngressPolicy can be imported using any of these accepted formats:
///
/// * `{{ingress_policy_name}}/{{resource}}`
///
///
/// When using the `pulumi import` command, IngressPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/ingressPolicy:IngressPolicy default {{ingress_policy_name}}/{{resource}}
/// ```
class IngressPolicy extends pulumi.CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name of the Service Perimeter to add this resource to.
  late final pulumi.Output<String> ingressPolicyName;
  /// A GCP resource that is inside of the service perimeter.
  late final pulumi.Output<String> resource;

  /// Creates a new [IngressPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngressPolicy]. {@macro pulumi_accesscontextmanager_ingress_policy_ingress_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngressPolicy(
    String name, {
    IngressPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/ingressPolicy:IngressPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    ingressPolicyName = registerOutput<String>('ingressPolicyName');
    resource = registerOutput<String>('resource');
  }

  /// Gets an existing [IngressPolicy] resource's state with the given [name] and [id].
  static IngressPolicy get(
    String name,
    pulumi.Input<String> id, {
    IngressPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IngressPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IngressPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/ingressPolicy:IngressPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    ingressPolicyName = registerOutput<String>('ingressPolicyName');
    resource = registerOutput<String>('resource');
  }

  /// Creates a typed reference to an existing [IngressPolicy] resource.
  IngressPolicy.reference(String urn)
    : super(
        'gcp:accesscontextmanager/ingressPolicy:IngressPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    ingressPolicyName = registerOutput<String>('ingressPolicyName');
    resource = registerOutput<String>('resource');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_ingress_policy_args.dart';
import 'service_perimeter_dry_run_ingress_policy_ingress_from.dart';
import 'service_perimeter_dry_run_ingress_policy_ingress_to.dart';
import 'service_perimeter_dry_run_ingress_policy_state.dart';

/// Manage a single IngressPolicy in the spec (dry-run) configuration for a service perimeter.
/// IngressPolicies match requests based on ingressFrom and ingressTo stanzas. For an ingress policy to match,
/// both the ingressFrom and ingressTo stanzas must be matched. If an IngressPolicy matches a request,
/// the request is allowed through the perimeter boundary from outside the perimeter.
/// For example, access from the internet can be allowed either based on an AccessLevel or,
/// for traffic hosted on Google Cloud, the project of the source network.
/// For access from private networks, using the project of the hosting network is required.
/// Individual ingress policies can be limited by restricting which services and/
/// or actions they match using the ingressTo field.
///
/// &gt; **Note:** If this resource is used alongside a `gcp.accesscontextmanager.ServicePerimeter` resource,
/// the service perimeter resource must have a `lifecycle` block with `ignoreChanges = [spec[0].ingress_policies]` so
/// they don't fight over which ingress rules should be in the policy.
///
///
/// To get more information about ServicePerimeterDryRunIngressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#ingresspolicy)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
class ServicePerimeterDryRunIngressPolicy extends pulumi.CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  late final pulumi.Output<String> etag;
  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  late final pulumi.Output<ServicePerimeterDryRunIngressPolicyIngressFrom?> ingressFrom;
  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  late final pulumi.Output<ServicePerimeterDryRunIngressPolicyIngressTo?> ingressTo;
  /// The name of the Service Perimeter to add this resource to.
  late final pulumi.Output<String> perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  late final pulumi.Output<String?> title;

  /// Creates a new [ServicePerimeterDryRunIngressPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePerimeterDryRunIngressPolicy]. {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_ingress_policy_service_perimeter_dry_run_ingress_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePerimeterDryRunIngressPolicy(
    String name, {
    ServicePerimeterDryRunIngressPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterDryRunIngressPolicy:ServicePerimeterDryRunIngressPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    ingressFrom = registerOutput<ServicePerimeterDryRunIngressPolicyIngressFrom?>('ingressFrom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunIngressPolicyIngressFrom.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingressTo = registerOutput<ServicePerimeterDryRunIngressPolicyIngressTo?>('ingressTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunIngressPolicyIngressTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    perimeter = registerOutput<String>('perimeter');
    title = registerOutput<String?>('title');
  }

  /// Gets an existing [ServicePerimeterDryRunIngressPolicy] resource's state with the given [name] and [id].
  static ServicePerimeterDryRunIngressPolicy get(
    String name,
    pulumi.Input<String> id, {
    ServicePerimeterDryRunIngressPolicyState? state,
  }) {
    return ServicePerimeterDryRunIngressPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicePerimeterDryRunIngressPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterDryRunIngressPolicy:ServicePerimeterDryRunIngressPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    ingressFrom = registerOutput<ServicePerimeterDryRunIngressPolicyIngressFrom?>('ingressFrom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunIngressPolicyIngressFrom.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingressTo = registerOutput<ServicePerimeterDryRunIngressPolicyIngressTo?>('ingressTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunIngressPolicyIngressTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    perimeter = registerOutput<String>('perimeter');
    title = registerOutput<String?>('title');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_egress_policy_args.dart';
import 'service_perimeter_dry_run_egress_policy_egress_from.dart';
import 'service_perimeter_dry_run_egress_policy_egress_to.dart';
import 'service_perimeter_dry_run_egress_policy_state.dart';

/// Manage a single EgressPolicy in the spec (dry-run) configuration for a service perimeter.
/// EgressPolicies match requests based on egressFrom and egressTo stanzas.
/// For an EgressPolicy to match, both egressFrom and egressTo stanzas must be matched.
/// If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter
/// boundary. For example, an EgressPolicy can be used to allow VMs on networks
/// within the ServicePerimeter to access a defined set of projects outside the
/// perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket
/// or query against a BigQuery dataset).
///
/// &gt; **Note:** If this resource is used alongside a `gcp.accesscontextmanager.ServicePerimeter` resource,
/// the service perimeter resource must have a `lifecycle` block with `ignoreChanges = [spec[0].egress_policies]` so
/// they don't fight over which egress rules should be in the policy.
///
///
/// To get more information about ServicePerimeterDryRunEgressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#egresspolicy)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
class ServicePerimeterDryRunEgressPolicy extends pulumi.CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  late final pulumi.Output<ServicePerimeterDryRunEgressPolicyEgressFrom?> egressFrom;
  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  late final pulumi.Output<ServicePerimeterDryRunEgressPolicyEgressTo?> egressTo;
  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  late final pulumi.Output<String> etag;
  /// The name of the Service Perimeter to add this resource to.
  late final pulumi.Output<String> perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  late final pulumi.Output<String?> title;

  /// Creates a new [ServicePerimeterDryRunEgressPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePerimeterDryRunEgressPolicy]. {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_egress_policy_service_perimeter_dry_run_egress_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePerimeterDryRunEgressPolicy(
    String name, {
    ServicePerimeterDryRunEgressPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterDryRunEgressPolicy:ServicePerimeterDryRunEgressPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    egressFrom = registerOutput<ServicePerimeterDryRunEgressPolicyEgressFrom?>('egressFrom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunEgressPolicyEgressFrom.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    egressTo = registerOutput<ServicePerimeterDryRunEgressPolicyEgressTo?>('egressTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunEgressPolicyEgressTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    perimeter = registerOutput<String>('perimeter');
    title = registerOutput<String?>('title');
  }

  /// Gets an existing [ServicePerimeterDryRunEgressPolicy] resource's state with the given [name] and [id].
  static ServicePerimeterDryRunEgressPolicy get(
    String name,
    pulumi.Input<String> id, {
    ServicePerimeterDryRunEgressPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServicePerimeterDryRunEgressPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ServicePerimeterDryRunEgressPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterDryRunEgressPolicy:ServicePerimeterDryRunEgressPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    egressFrom = registerOutput<ServicePerimeterDryRunEgressPolicyEgressFrom?>('egressFrom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunEgressPolicyEgressFrom.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    egressTo = registerOutput<ServicePerimeterDryRunEgressPolicyEgressTo?>('egressTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunEgressPolicyEgressTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    perimeter = registerOutput<String>('perimeter');
    title = registerOutput<String?>('title');
  }

  /// Creates a typed reference to an existing [ServicePerimeterDryRunEgressPolicy] resource.
  ServicePerimeterDryRunEgressPolicy.reference(String urn)
    : super(
        'gcp:accesscontextmanager/servicePerimeterDryRunEgressPolicy:ServicePerimeterDryRunEgressPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    egressFrom = registerOutput<ServicePerimeterDryRunEgressPolicyEgressFrom?>('egressFrom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunEgressPolicyEgressFrom.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    egressTo = registerOutput<ServicePerimeterDryRunEgressPolicyEgressTo?>('egressTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServicePerimeterDryRunEgressPolicyEgressTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    perimeter = registerOutput<String>('perimeter');
    title = registerOutput<String?>('title');
  }
}

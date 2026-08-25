import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_address_args.dart';
import 'router_nat_address_state.dart';

/// A resource used to set the list of IP addresses to be used in a NAT service and manage the draining of destroyed IPs.
///
/// &gt; **Note:** This resource is to be used alongside a `gcp.compute.RouterNat` resource,
/// the router nat resource must have no defined `natIps` or `drainNatIps` parameters,
/// instead using the `initialNatIps` parameter to set at least one IP for the creation of the resource.
///
///
/// To get more information about RouterNatAddress, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ## Import
///
/// RouterNatAddress can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/routers/{{router}}/{{router_nat}}`
/// * `{{project}}/{{region}}/{{router}}/{{router_nat}}`
/// * `{{region}}/{{router}}/{{router_nat}}`
/// * `{{router}}/{{router_nat}}`
///
///
/// When using the `pulumi import` command, RouterNatAddress can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerNatAddress:RouterNatAddress default projects/{{project}}/regions/{{region}}/routers/{{router}}/{{router_nat}}
/// $ pulumi import gcp:compute/routerNatAddress:RouterNatAddress default {{project}}/{{region}}/{{router}}/{{router_nat}}
/// $ pulumi import gcp:compute/routerNatAddress:RouterNatAddress default {{region}}/{{router}}/{{router_nat}}
/// $ pulumi import gcp:compute/routerNatAddress:RouterNatAddress default {{router}}/{{router_nat}}
/// ```
class RouterNatAddress extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  late final pulumi.Output<List<String>?> drainNatIps;
  /// Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// natIpAllocateOption is set to MANUAL_ONLY.
  late final pulumi.Output<List<String>> natIps;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where the NAT service reside.
  late final pulumi.Output<String> region;
  /// The name of the Cloud Router in which the referenced NAT service is configured.
  late final pulumi.Output<String> router;
  /// The name of the Nat service in which this address will be configured.
  late final pulumi.Output<String> routerNat;

  /// Creates a new [RouterNatAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterNatAddress]. {@macro pulumi_compute_router_nat_address_router_nat_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterNatAddress(
    String name, {
    RouterNatAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerNatAddress:RouterNatAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    drainNatIps = registerOutput<List<String>?>('drainNatIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    natIps = registerOutput<List<String>>('natIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    routerNat = registerOutput<String>('routerNat');
  }

  /// Gets an existing [RouterNatAddress] resource's state with the given [name] and [id].
  static RouterNatAddress get(
    String name,
    pulumi.Input<String> id, {
    RouterNatAddressState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RouterNatAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RouterNatAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerNatAddress:RouterNatAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    drainNatIps = registerOutput<List<String>?>('drainNatIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    natIps = registerOutput<List<String>>('natIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    routerNat = registerOutput<String>('routerNat');
  }

  /// Creates a typed reference to an existing [RouterNatAddress] resource.
  RouterNatAddress.reference(String urn)
    : super(
        'gcp:compute/routerNatAddress:RouterNatAddress',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    drainNatIps = registerOutput<List<String>?>('drainNatIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    natIps = registerOutput<List<String>>('natIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    routerNat = registerOutput<String>('routerNat');
  }
}

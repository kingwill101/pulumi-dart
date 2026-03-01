import 'package:pulumi/pulumi.dart' as pulumi;
import 'floating_ip_args.dart';
import 'floating_ip_state.dart';

/// ## Import
///
/// Floating IPs can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/floatingIp:FloatingIp floatip_1 2c7f39f3-702b-48d1-940c-b50384177ee1
/// ```
class FloatingIp extends pulumi.CustomResource {
  /// The actual/specific floating IP to obtain. By default,
  /// non-admin users are not able to specify a floating IP, so you must either be
  /// an admin user or have had a custom policy or role applied to your OpenStack
  /// user or project.
  late final pulumi.Output<String> address;
  /// The collection of tags assigned on the floating IP, which have
  /// been explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;
  /// Human-readable description for the floating IP.
  late final pulumi.Output<String?> description;
  /// The floating IP DNS domain. Available, when Neutron
  /// DNS extension is enabled. The data in this attribute will be published in an
  /// external DNS service when Neutron is configured to integrate with such a
  /// service. Changing this creates a new floating IP.
  late final pulumi.Output<String> dnsDomain;
  /// The floating IP DNS name. Available, when Neutron DNS
  /// extension is enabled. The data in this attribute will be published in an
  /// external DNS service when Neutron is configured to integrate with such a
  /// service. Changing this creates a new floating IP.
  late final pulumi.Output<String> dnsName;
  /// Fixed IP of the port to associate with this floating IP. Required if
  /// the port has multiple fixed IPs.
  late final pulumi.Output<String> fixedIp;
  /// The name of the pool from which to obtain the floating
  /// IP. Changing this creates a new floating IP.
  late final pulumi.Output<String> pool;
  /// ID of an existing port with at least one IP address to
  /// associate with this floating IP.
  late final pulumi.Output<String> portId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a floating IP that can be used with
  /// another networking resource, such as a load balancer. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// floating IP (which may or may not have a different address).
  late final pulumi.Output<String> region;
  /// The subnet ID of the floating IP pool. Specify this if
  /// the floating IP network has multiple subnets.
  late final pulumi.Output<String> subnetId;
  /// A list of external subnet IDs to try over each to
  /// allocate a floating IP address. If a subnet ID in a list has exhausted
  /// floating IP pool, the next subnet ID will be tried. This argument is used only
  /// during the resource creation. Conflicts with a `subnet_id` argument.
  late final pulumi.Output<List<String>?> subnetIds;
  /// A set of string tags for the floating IP.
  late final pulumi.Output<List<String>?> tags;
  /// The target tenant ID in which to allocate the floating
  /// IP, if you specify this together with a port_id, make sure the target port
  /// belongs to the same tenant. Changing this creates a new floating IP (which
  /// may or may not have a different address)
  late final pulumi.Output<String> tenantId;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [FloatingIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FloatingIp]. {@macro pulumi_networking_floating_ip_floating_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FloatingIp(
    String name, {
    FloatingIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/floatingIp:FloatingIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.allTags = registerOutput<List<String>>('allTags');
    this.description = registerOutput<String?>('description');
    this.dnsDomain = registerOutput<String>('dnsDomain');
    this.dnsName = registerOutput<String>('dnsName');
    this.fixedIp = registerOutput<String>('fixedIp');
    this.pool = registerOutput<String>('pool');
    this.portId = registerOutput<String>('portId');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
    this.subnetIds = registerOutput<List<String>?>('subnetIds');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [FloatingIp] resource's state with the given [name] and [id].
  static FloatingIp get(
    String name,
    pulumi.Input<String> id, {
    FloatingIpState? state,
  }) {
    return FloatingIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FloatingIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/floatingIp:FloatingIp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.allTags = registerOutput<List<String>>('allTags');
    this.description = registerOutput<String?>('description');
    this.dnsDomain = registerOutput<String>('dnsDomain');
    this.dnsName = registerOutput<String>('dnsName');
    this.fixedIp = registerOutput<String>('fixedIp');
    this.pool = registerOutput<String>('pool');
    this.portId = registerOutput<String>('portId');
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
    this.subnetIds = registerOutput<List<String>?>('subnetIds');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}

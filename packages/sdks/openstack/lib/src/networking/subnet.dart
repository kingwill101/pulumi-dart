import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_args.dart';
import 'subnet_state.dart';

/// Manages a V2 Neutron subnet resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "tf_test_network",
///     adminStateUp: true,
/// });
/// const subnet1 = new openstack.networking.Subnet("subnet_1", {
///     networkId: network1.id,
///     cidr: "192.168.199.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="tf_test_network",
///     admin_state_up=True)
/// subnet1 = openstack.networking.Subnet("subnet_1",
///     network_id=network1.id,
///     cidr="192.168.199.0/24")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "tf_test_network",
///         AdminStateUp = true,
///     });
///
///     var subnet1 = new OpenStack.Networking.Subnet("subnet_1", new()
///     {
///         NetworkId = network1.Id,
///         Cidr = "192.168.199.0/24",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("tf_test_network"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewSubnet(ctx, "subnet_1", &networking.SubnetArgs{
/// 			NetworkId: network1.ID(),
/// 			Cidr:      pulumi.String("192.168.199.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Subnet;
/// import com.pulumi.openstack.networking.SubnetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("tf_test_network")
///             .adminStateUp(true)
///             .build());
///
///         var subnet1 = new Subnet("subnet1", SubnetArgs.builder()
///             .networkId(network1.id())
///             .cidr("192.168.199.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: tf_test_network
///       adminStateUp: 'true'
///   subnet1:
///     type: openstack:networking:Subnet
///     name: subnet_1
///     properties:
///       networkId: ${network1.id}
///       cidr: 192.168.199.0/24
/// ```
///
///
/// ## Import
///
/// Subnets can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/subnet:Subnet subnet_1 da4faf16-5546-41e4-8330-4d0002b74048
/// ```
class Subnet extends pulumi.CustomResource {
  /// The collection of ags assigned on the subnet, which have been
  /// explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;

  /// A block declaring the start and end range of
  /// the IP addresses available for use with DHCP in this subnet. Multiple
  /// `allocation_pool` blocks can be declared, providing the subnet with more
  /// than one range of IP addresses to use with DHCP. However, each IP range
  /// must be from the same CIDR that the subnet is part of.
  /// The `allocation_pool` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> allocationPools;

  /// CIDR representing IP range for this subnet, based on IP
  /// version. You can omit this option if you are creating a subnet from a
  /// subnet pool.
  late final pulumi.Output<String> cidr;

  /// Human-readable description of the subnet. Changing this
  /// updates the name of the existing subnet.
  late final pulumi.Output<String?> description;

  /// An array of DNS name server names used by hosts
  /// in this subnet. Changing this updates the DNS name servers for the existing
  /// subnet.
  late final pulumi.Output<List<String>?> dnsNameservers;

  /// Whether to publish DNS records for IPs
  /// from this subnet. Defaults is false.
  late final pulumi.Output<bool?> dnsPublishFixedIp;

  /// The administrative state of the network.
  /// Acceptable values are "true" and "false". Changing this value enables or
  /// disables the DHCP capabilities of the existing subnet. Defaults to true.
  late final pulumi.Output<bool?> enableDhcp;

  /// Default gateway used by devices in this subnet.
  /// Leaving this blank and not setting `no_gateway` will cause a default
  /// gateway of `.1` to be used. Changing this updates the gateway IP of the
  /// existing subnet.
  late final pulumi.Output<String> gatewayIp;

  /// IP version, either 4 (default) or 6. Changing this creates a
  /// new subnet.
  late final pulumi.Output<int?> ipVersion;

  /// The IPv6 address mode. Valid values are
  /// `dhcpv6-stateful`, `dhcpv6-stateless`, or `slaac`.
  late final pulumi.Output<String> ipv6AddressMode;

  /// The IPv6 Router Advertisement mode. Valid values
  /// are `dhcpv6-stateful`, `dhcpv6-stateless`, or `slaac`.
  late final pulumi.Output<String> ipv6RaMode;

  /// The name of the subnet. Changing this updates the name of
  /// the existing subnet.
  late final pulumi.Output<String> name;

  /// The UUID of the parent network. Changing this
  /// creates a new subnet.
  late final pulumi.Output<String> networkId;

  /// Do not set a gateway IP on this subnet. Changing
  /// this removes or adds a default gateway IP of the existing subnet.
  late final pulumi.Output<bool?> noGateway;

  /// The prefix length to use when creating a subnet
  /// from a subnet pool. The default subnet pool prefix length that was defined
  /// when creating the subnet pool will be used if not provided. Changing this
  /// creates a new subnet.
  late final pulumi.Output<int?> prefixLength;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron subnet. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// subnet.
  late final pulumi.Output<String> region;

  /// The segment ID of the subnet. This is used to
  /// specify which segment the subnet belongs to when using Neutron's routed
  /// provider networks. Available when neutron segment extension is enabled.
  late final pulumi.Output<String?> segmentId;

  /// An array of service types used by the subnet.
  /// Changing this updates the service types for the existing subnet.
  late final pulumi.Output<List<String>> serviceTypes;

  /// The ID of the subnetpool associated with the subnet.
  late final pulumi.Output<String?> subnetpoolId;

  /// A set of string tags for the subnet.
  late final pulumi.Output<List<String>?> tags;

  /// The owner of the subnet. Required if admin wants to
  /// create a subnet for another tenant. Changing this creates a new subnet.
  late final pulumi.Output<String> tenantId;

  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [Subnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnet]. {@macro pulumi_networking_subnet_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnet(String name, {SubnetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'openstack:networking/subnet:Subnet',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    allTags = registerOutput<List<String>>('allTags');
    allocationPools = registerOutput<List<Map<String, dynamic>>>(
      'allocationPools',
    );
    cidr = registerOutput<String>('cidr');
    description = registerOutput<String?>('description');
    dnsNameservers = registerOutput<List<String>?>('dnsNameservers');
    dnsPublishFixedIp = registerOutput<bool?>('dnsPublishFixedIp');
    enableDhcp = registerOutput<bool?>('enableDhcp');
    gatewayIp = registerOutput<String>('gatewayIp');
    ipVersion = registerOutput<int?>('ipVersion');
    ipv6AddressMode = registerOutput<String>('ipv6AddressMode');
    ipv6RaMode = registerOutput<String>('ipv6RaMode');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    noGateway = registerOutput<bool?>('noGateway');
    prefixLength = registerOutput<int?>('prefixLength');
    region = registerOutput<String>('region');
    segmentId = registerOutput<String?>('segmentId');
    serviceTypes = registerOutput<List<String>>('serviceTypes');
    subnetpoolId = registerOutput<String?>('subnetpoolId');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [Subnet] resource's state with the given [name] and [id].
  static Subnet get(
    String name,
    pulumi.Input<String> id, {
    SubnetState? state,
  }) {
    return Subnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Subnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/subnet:Subnet',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allTags = registerOutput<List<String>>('allTags');
    allocationPools = registerOutput<List<Map<String, dynamic>>>(
      'allocationPools',
    );
    cidr = registerOutput<String>('cidr');
    description = registerOutput<String?>('description');
    dnsNameservers = registerOutput<List<String>?>('dnsNameservers');
    dnsPublishFixedIp = registerOutput<bool?>('dnsPublishFixedIp');
    enableDhcp = registerOutput<bool?>('enableDhcp');
    gatewayIp = registerOutput<String>('gatewayIp');
    ipVersion = registerOutput<int?>('ipVersion');
    ipv6AddressMode = registerOutput<String>('ipv6AddressMode');
    ipv6RaMode = registerOutput<String>('ipv6RaMode');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    noGateway = registerOutput<bool?>('noGateway');
    prefixLength = registerOutput<int?>('prefixLength');
    region = registerOutput<String>('region');
    segmentId = registerOutput<String?>('segmentId');
    serviceTypes = registerOutput<List<String>>('serviceTypes');
    subnetpoolId = registerOutput<String?>('subnetpoolId');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}

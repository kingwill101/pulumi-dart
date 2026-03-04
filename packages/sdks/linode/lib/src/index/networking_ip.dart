import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_ip_args.dart';
import 'networking_ip_state.dart';
import 'networking_ip_vpc_nat11.dart';

/// Manages allocation of reserved IPv4 address in a region and optionally assigning the reserved address to a Linode instance.
///
/// For more information, see the corresponding [API documentation](https://techdocs.akamai.com/linode-api/reference/post-allocate-ip).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const testIp = new linode.NetworkingIp("test_ip", {
///     type: "ipv4",
///     linodeId: 12345,
///     "public": true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test_ip = linode.NetworkingIp("test_ip",
///     type="ipv4",
///     linode_id=12345,
///     public=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testIp = new Linode.NetworkingIp("test_ip", new()
///     {
///         Type = "ipv4",
///         LinodeId = 12345,
///         Public = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewNetworkingIp(ctx, "test_ip", &linode.NetworkingIpArgs{
/// 			Type:     pulumi.String("ipv4"),
/// 			LinodeId: pulumi.Int(12345),
/// 			Public:   pulumi.Bool(true),
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
/// import com.pulumi.linode.NetworkingIp;
/// import com.pulumi.linode.NetworkingIpArgs;
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
///         var testIp = new NetworkingIp("testIp", NetworkingIpArgs.builder()
///             .type("ipv4")
///             .linodeId(12345)
///             .public_(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testIp:
///     type: linode:NetworkingIp
///     name: test_ip
///     properties:
///       type: ipv4
///       linodeId: 12345
///       public: true
/// ```
///
///
/// ## Import
///
/// IP addresses can be imported using the IP address ID, e.g.
///
/// ```sh
/// $ pulumi import linode:index/networkingIp:NetworkingIp example_ip 172.104.30.209
/// ```
class NetworkingIp extends pulumi.CustomResource {
  /// The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  late final pulumi.Output<String> address;

  /// The default gateway for this address.
  late final pulumi.Output<String> gateway;

  /// The ID of the Linode to allocate an IPv4 address for. **Required** when `reserved` is `false` or not set. Updating this field on an ephemeral IP will trigger a recreation. Conflicts with `region`.
  late final pulumi.Output<int> linodeId;

  /// The number of bits set in the subnet mask.
  late final pulumi.Output<int> prefix;

  /// Whether the IP address is public. Defaults to true.
  late final pulumi.Output<bool> public;

  /// The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set.
  late final pulumi.Output<String> rdns;

  /// The region for the reserved IPv4 address. Required when reserved is true and linode_id is not set.
  late final pulumi.Output<String> region;

  /// Whether the IPv4 address should be reserved.
  late final pulumi.Output<bool> reserved;

  /// The mask that separates host bits from network bits for this address.
  late final pulumi.Output<String> subnetMask;

  /// The type of IP address. (ipv4, ipv6, etc.)
  late final pulumi.Output<String> type;

  /// Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  late final pulumi.Output<NetworkingIpVpcNat11> vpcNat11;

  /// Creates a new [NetworkingIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkingIp]. {@macro pulumi_index_networking_ip_networking_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkingIp(
    String name, {
    NetworkingIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/networkingIp:NetworkingIp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    address = registerOutput<String>('address');
    gateway = registerOutput<String>('gateway');
    linodeId = registerOutput<int>('linodeId');
    prefix = registerOutput<int>('prefix');
    public = registerOutput<bool>('public');
    rdns = registerOutput<String>('rdns');
    region = registerOutput<String>('region');
    reserved = registerOutput<bool>('reserved');
    subnetMask = registerOutput<String>('subnetMask');
    type = registerOutput<String>('type');
    vpcNat11 = registerOutput<NetworkingIpVpcNat11>('vpcNat11');
  }

  /// Gets an existing [NetworkingIp] resource's state with the given [name] and [id].
  static NetworkingIp get(
    String name,
    pulumi.Input<String> id, {
    NetworkingIpState? state,
  }) {
    return NetworkingIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkingIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/networkingIp:NetworkingIp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    address = registerOutput<String>('address');
    gateway = registerOutput<String>('gateway');
    linodeId = registerOutput<int>('linodeId');
    prefix = registerOutput<int>('prefix');
    public = registerOutput<bool>('public');
    rdns = registerOutput<String>('rdns');
    region = registerOutput<String>('region');
    reserved = registerOutput<bool>('reserved');
    subnetMask = registerOutput<String>('subnetMask');
    type = registerOutput<String>('type');
    vpcNat11 = registerOutput<NetworkingIpVpcNat11>('vpcNat11');
  }
}

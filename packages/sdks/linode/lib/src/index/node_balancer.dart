import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_balancer_args.dart';
import 'node_balancer_state.dart';

/// Provides a Linode NodeBalancer resource.  This can be used to create, modify, and delete Linodes NodeBalancers in Linode's managed load balancer service.
/// For more information, see [Getting Started with NodeBalancers](https://www.linode.com/docs/platform/nodebalancer/getting-started-with-nodebalancers/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-node-balancer).
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to configure a NodeBalancer.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.NodeBalancer("foobar", {
///     label: "mynodebalancer",
///     region: "us-east",
///     clientConnThrottle: 20,
///     clientUdpSessThrottle: 10,
///     tags: ["foobar"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.NodeBalancer("foobar",
///     label="mynodebalancer",
///     region="us-east",
///     client_conn_throttle=20,
///     client_udp_sess_throttle=10,
///     tags=["foobar"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.NodeBalancer("foobar", new()
///     {
///         Label = "mynodebalancer",
///         Region = "us-east",
///         ClientConnThrottle = 20,
///         ClientUdpSessThrottle = 10,
///         Tags = new[]
///         {
///             "foobar",
///         },
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
/// 		_, err := linode.NewNodeBalancer(ctx, "foobar", &linode.NodeBalancerArgs{
/// 			Label:                 pulumi.String("mynodebalancer"),
/// 			Region:                pulumi.String("us-east"),
/// 			ClientConnThrottle:    pulumi.Int(20),
/// 			ClientUdpSessThrottle: pulumi.Int(10),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foobar"),
/// 			},
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
/// import com.pulumi.linode.NodeBalancer;
/// import com.pulumi.linode.NodeBalancerArgs;
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
///         var foobar = new NodeBalancer("foobar", NodeBalancerArgs.builder()
///             .label("mynodebalancer")
///             .region("us-east")
///             .clientConnThrottle(20)
///             .clientUdpSessThrottle(10)
///             .tags("foobar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:NodeBalancer
///     properties:
///       label: mynodebalancer
///       region: us-east
///       clientConnThrottle: 20
///       clientUdpSessThrottle: 10
///       tags:
///         - foobar
/// ```
///
///
/// The following example shows how one might use this resource to configure a NodeBalancer attached to a VPC.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// // NOTE: VPC-attached NodeBalancers may not currently be available to all users.
/// const foobar = new linode.NodeBalancer("foobar", {
///     label: "mynodebalancer",
///     region: "us-mia",
///     vpcs: [{
///         subnetId: test.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// # NOTE: VPC-attached NodeBalancers may not currently be available to all users.
/// foobar = linode.NodeBalancer("foobar",
///     label="mynodebalancer",
///     region="us-mia",
///     vpcs=[{
///         "subnet_id": test["id"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // NOTE: VPC-attached NodeBalancers may not currently be available to all users.
///     var foobar = new Linode.NodeBalancer("foobar", new()
///     {
///         Label = "mynodebalancer",
///         Region = "us-mia",
///         Vpcs = new[]
///         {
///             new Linode.Inputs.NodeBalancerVpcArgs
///             {
///                 SubnetId = test.Id,
///             },
///         },
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
/// 		// NOTE: VPC-attached NodeBalancers may not currently be available to all users.
/// 		_, err := linode.NewNodeBalancer(ctx, "foobar", &linode.NodeBalancerArgs{
/// 			Label:  pulumi.String("mynodebalancer"),
/// 			Region: pulumi.String("us-mia"),
/// 			Vpcs: linode.NodeBalancerVpcArray{
/// 				&linode.NodeBalancerVpcArgs{
/// 					SubnetId: pulumi.Any(test.Id),
/// 				},
/// 			},
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
/// import com.pulumi.linode.NodeBalancer;
/// import com.pulumi.linode.NodeBalancerArgs;
/// import com.pulumi.linode.inputs.NodeBalancerVpcArgs;
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
///         // NOTE: VPC-attached NodeBalancers may not currently be available to all users.
///         var foobar = new NodeBalancer("foobar", NodeBalancerArgs.builder()
///             .label("mynodebalancer")
///             .region("us-mia")
///             .vpcs(NodeBalancerVpcArgs.builder()
///                 .subnetId(test.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # NOTE: VPC-attached NodeBalancers may not currently be available to all users.
///   foobar:
///     type: linode:NodeBalancer
///     properties:
///       label: mynodebalancer
///       region: us-mia
///       vpcs:
///         - subnetId: ${test.id}
/// ```
///
///
/// ## Import
///
/// Linodes NodeBalancers can be imported using the Linode NodeBalancer `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/nodeBalancer:NodeBalancer mynodebalancer 1234567
/// ```
class NodeBalancer extends pulumi.CustomResource {
  /// Throttle connections per second (0-20). Set to 0 (default) to disable throttling.
  late final pulumi.Output<int> clientConnThrottle;
  /// Throttle UDP sessions per second (0-20). Set to 0 (default) to disable throttling.
  ///
  /// * **NOTE: This argument may not be generally available.**
  late final pulumi.Output<int> clientUdpSessThrottle;
  /// When this firewall was created.
  late final pulumi.Output<String> created;
  /// ID for the firewall you'd like to use with this NodeBalancer.
  late final pulumi.Output<int?> firewallId;
  /// A list of Firewalls assigned to this NodeBalancer.
  late final pulumi.Output<List<Map<String, dynamic>>> firewalls;
  /// This NodeBalancer's hostname, ending with .nodebalancer.linode.com
  late final pulumi.Output<String> hostname;
  /// A list of IPv4 addresses or networks. Must be in IP/mask format.
  late final pulumi.Output<String> ipv4;
  /// A list of IPv6 addresses or networks. Must be in IP/mask format.
  late final pulumi.Output<String> ipv6;
  /// The label of the Linode NodeBalancer
  late final pulumi.Output<String?> label;
  /// The region where this NodeBalancer will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions).  *Changing `region` forces the creation of a new Linode NodeBalancer.*.
  ///
  /// - - -
  late final pulumi.Output<String> region;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  late final pulumi.Output<List<String>> tags;
  /// Information about the amount of transfer this NodeBalancer has had so far this month.
  late final pulumi.Output<List<Map<String, dynamic>>> transfers;
  /// When this firewall was last updated.
  late final pulumi.Output<String> updated;
  /// A list of VPCs to be assigned to this NodeBalancer.
  late final pulumi.Output<List<Map<String, dynamic>>?> vpcs;

  /// Creates a new [NodeBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeBalancer]. {@macro pulumi_index_node_balancer_node_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeBalancer(
    String name, {
    NodeBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/nodeBalancer:NodeBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientConnThrottle = registerOutput<int>('clientConnThrottle');
    clientUdpSessThrottle = registerOutput<int>('clientUdpSessThrottle');
    created = registerOutput<String>('created');
    firewallId = registerOutput<int?>('firewallId');
    firewalls = registerOutput<List<Map<String, dynamic>>>('firewalls');
    hostname = registerOutput<String>('hostname');
    ipv4 = registerOutput<String>('ipv4');
    ipv6 = registerOutput<String>('ipv6');
    label = registerOutput<String?>('label');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>>('tags');
    transfers = registerOutput<List<Map<String, dynamic>>>('transfers');
    updated = registerOutput<String>('updated');
    vpcs = registerOutput<List<Map<String, dynamic>>?>('vpcs');
  }

  /// Gets an existing [NodeBalancer] resource's state with the given [name] and [id].
  static NodeBalancer get(
    String name,
    pulumi.Input<String> id, {
    NodeBalancerState? state,
  }) {
    return NodeBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodeBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/nodeBalancer:NodeBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientConnThrottle = registerOutput<int>('clientConnThrottle');
    clientUdpSessThrottle = registerOutput<int>('clientUdpSessThrottle');
    created = registerOutput<String>('created');
    firewallId = registerOutput<int?>('firewallId');
    firewalls = registerOutput<List<Map<String, dynamic>>>('firewalls');
    hostname = registerOutput<String>('hostname');
    ipv4 = registerOutput<String>('ipv4');
    ipv6 = registerOutput<String>('ipv6');
    label = registerOutput<String?>('label');
    region = registerOutput<String>('region');
    tags = registerOutput<List<String>>('tags');
    transfers = registerOutput<List<Map<String, dynamic>>>('transfers');
    updated = registerOutput<String>('updated');
    vpcs = registerOutput<List<Map<String, dynamic>>?>('vpcs');
  }
}

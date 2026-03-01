import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_args.dart';
import 'node_fqdn.dart';
import 'node_state.dart';

/// `f5bigip.ltm.Node` Manages a node configuration
///
/// For resources should be named with their `full path`.The full path is the combination of the `partition + name` of the resource( example: `/Common/my-node` ) or `partition + Direcroty + name` of the resource ( example: `/Common/test/my-node` ).
/// When including directory in `full path` we have to make sure it is created in the given partition before using it.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const node = new f5bigip.ltm.Node("node", {
///     name: "/Common/terraform_node1",
///     address: "192.168.30.1",
///     connectionLimit: 0,
///     dynamicRatio: 1,
///     monitor: "/Common/icmp",
///     description: "Test-Node",
///     rateLimit: "disabled",
///     fqdn: {
///         addressFamily: "ipv4",
///         interval: "3000",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// node = f5bigip.ltm.Node("node",
///     name="/Common/terraform_node1",
///     address="192.168.30.1",
///     connection_limit=0,
///     dynamic_ratio=1,
///     monitor="/Common/icmp",
///     description="Test-Node",
///     rate_limit="disabled",
///     fqdn={
///         "address_family": "ipv4",
///         "interval": "3000",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var node = new F5BigIP.Ltm.Node("node", new()
///     {
///         Name = "/Common/terraform_node1",
///         Address = "192.168.30.1",
///         ConnectionLimit = 0,
///         DynamicRatio = 1,
///         Monitor = "/Common/icmp",
///         Description = "Test-Node",
///         RateLimit = "disabled",
///         Fqdn = new F5BigIP.Ltm.Inputs.NodeFqdnArgs
///         {
///             AddressFamily = "ipv4",
///             Interval = "3000",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewNode(ctx, "node", &ltm.NodeArgs{
/// 			Name:            pulumi.String("/Common/terraform_node1"),
/// 			Address:         pulumi.String("192.168.30.1"),
/// 			ConnectionLimit: pulumi.Int(0),
/// 			DynamicRatio:    pulumi.Int(1),
/// 			Monitor:         pulumi.String("/Common/icmp"),
/// 			Description:     pulumi.String("Test-Node"),
/// 			RateLimit:       pulumi.String("disabled"),
/// 			Fqdn: &ltm.NodeFqdnArgs{
/// 				AddressFamily: pulumi.String("ipv4"),
/// 				Interval:      pulumi.String("3000"),
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
/// import com.pulumi.f5bigip.ltm.Node;
/// import com.pulumi.f5bigip.ltm.NodeArgs;
/// import com.pulumi.f5bigip.ltm.inputs.NodeFqdnArgs;
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
///         var node = new Node("node", NodeArgs.builder()
///             .name("/Common/terraform_node1")
///             .address("192.168.30.1")
///             .connectionLimit(0)
///             .dynamicRatio(1)
///             .monitor("/Common/icmp")
///             .description("Test-Node")
///             .rateLimit("disabled")
///             .fqdn(NodeFqdnArgs.builder()
///                 .addressFamily("ipv4")
///                 .interval("3000")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   node:
///     type: f5bigip:ltm:Node
///     properties:
///       name: /Common/terraform_node1
///       address: 192.168.30.1
///       connectionLimit: '0'
///       dynamicRatio: '1'
///       monitor: /Common/icmp
///       description: Test-Node
///       rateLimit: disabled
///       fqdn:
///         addressFamily: ipv4
///         interval: '3000'
/// ```
///
///
/// ## Importing
///
/// An existing Node can be imported into this resource by supplying Node Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_node.site2_node "/TEST/testnode"
///             (or)
/// $ terraform import bigip_ltm_node.site2_node "/Common/3.3.3.3"
///
/// ```
class Node extends pulumi.CustomResource {
  /// IP or hostname of the node
  late final pulumi.Output<String> address;
  /// Specifies the maximum number of connections allowed for the node or node address.
  late final pulumi.Output<int> connectionLimit;
  /// User-defined description give ltm_node
  late final pulumi.Output<String?> description;
  /// Specifies the fixed ratio value used for a node during ratio load balancing.
  late final pulumi.Output<int> dynamicRatio;
  late final pulumi.Output<NodeFqdn?> fqdn;
  /// specifies the name of the monitor or monitor rule that you want to associate with the node.
  late final pulumi.Output<String?> monitor;
  /// Name of the node
  late final pulumi.Output<String> name;
  /// Specifies the maximum number of connections per second allowed for a node or node address. The default value is 'disabled'.
  late final pulumi.Output<String> rateLimit;
  /// Sets the ratio number for the node.
  late final pulumi.Output<int> ratio;
  /// Enables or disables the node for new sessions. The default value is user-enabled.
  late final pulumi.Output<String> session;
  /// Default is "user-up" you can set to "user-down" if you want to disable
  ///
  /// > *NOTE* Below attributes needs to be configured under fqdn option.
  late final pulumi.Output<String> state;

  /// Creates a new [Node].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Node]. {@macro pulumi_ltm_node_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Node(
    String name, {
    NodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/node:Node',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.connectionLimit = registerOutput<int>('connectionLimit');
    this.description = registerOutput<String?>('description');
    this.dynamicRatio = registerOutput<int>('dynamicRatio');
    this.fqdn = registerOutput<NodeFqdn?>('fqdn');
    this.monitor = registerOutput<String?>('monitor');
    this.name = registerOutput<String>('name');
    this.rateLimit = registerOutput<String>('rateLimit');
    this.ratio = registerOutput<int>('ratio');
    this.session = registerOutput<String>('session');
    this.state = registerOutput<String>('state');
  }

  /// Gets an existing [Node] resource's state with the given [name] and [id].
  static Node get(
    String name,
    pulumi.Input<String> id, {
    NodeState? state,
  }) {
    return Node._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Node._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/node:Node',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.connectionLimit = registerOutput<int>('connectionLimit');
    this.description = registerOutput<String?>('description');
    this.dynamicRatio = registerOutput<int>('dynamicRatio');
    this.fqdn = registerOutput<NodeFqdn?>('fqdn');
    this.monitor = registerOutput<String?>('monitor');
    this.name = registerOutput<String>('name');
    this.rateLimit = registerOutput<String>('rateLimit');
    this.ratio = registerOutput<int>('ratio');
    this.session = registerOutput<String>('session');
    this.state = registerOutput<String>('state');
  }
}

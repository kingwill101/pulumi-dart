import 'package:pulumi/pulumi.dart' as pulumi;
import 'l7_rule_v2_args.dart';
import 'l7_rule_v2_state.dart';

/// Manages a V2 L7 Rule resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const subnet1 = new openstack.networking.Subnet("subnet_1", {
///     name: "subnet_1",
///     cidr: "192.168.199.0/24",
///     ipVersion: 4,
///     networkId: network1.id,
/// });
/// const loadbalancer1 = new openstack.loadbalancer.LoadBalancer("loadbalancer_1", {
///     name: "loadbalancer_1",
///     vipSubnetId: subnet1.id,
/// });
/// const listener1 = new openstack.loadbalancer.Listener("listener_1", {
///     name: "listener_1",
///     protocol: "HTTP",
///     protocolPort: 8080,
///     loadbalancerId: loadbalancer1.id,
/// });
/// const pool1 = new openstack.loadbalancer.Pool("pool_1", {
///     name: "pool_1",
///     protocol: "HTTP",
///     lbMethod: "ROUND_ROBIN",
///     loadbalancerId: loadbalancer1.id,
/// });
/// const l7policy1 = new openstack.loadbalancer.L7PolicyV2("l7policy_1", {
///     name: "test",
///     action: "REDIRECT_TO_URL",
///     description: "test description",
///     position: 1,
///     listenerId: listener1.id,
///     redirectUrl: "http://www.example.com",
/// });
/// const l7rule1 = new openstack.loadbalancer.L7RuleV2("l7rule_1", {
///     l7policyId: l7policy1.id,
///     type: "PATH",
///     compareType: "EQUAL_TO",
///     value: "/api",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// subnet1 = openstack.networking.Subnet("subnet_1",
///     name="subnet_1",
///     cidr="192.168.199.0/24",
///     ip_version=4,
///     network_id=network1.id)
/// loadbalancer1 = openstack.loadbalancer.LoadBalancer("loadbalancer_1",
///     name="loadbalancer_1",
///     vip_subnet_id=subnet1.id)
/// listener1 = openstack.loadbalancer.Listener("listener_1",
///     name="listener_1",
///     protocol="HTTP",
///     protocol_port=8080,
///     loadbalancer_id=loadbalancer1.id)
/// pool1 = openstack.loadbalancer.Pool("pool_1",
///     name="pool_1",
///     protocol="HTTP",
///     lb_method="ROUND_ROBIN",
///     loadbalancer_id=loadbalancer1.id)
/// l7policy1 = openstack.loadbalancer.L7PolicyV2("l7policy_1",
///     name="test",
///     action="REDIRECT_TO_URL",
///     description="test description",
///     position=1,
///     listener_id=listener1.id,
///     redirect_url="http://www.example.com")
/// l7rule1 = openstack.loadbalancer.L7RuleV2("l7rule_1",
///     l7policy_id=l7policy1.id,
///     type="PATH",
///     compare_type="EQUAL_TO",
///     value="/api")
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
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var subnet1 = new OpenStack.Networking.Subnet("subnet_1", new()
///     {
///         Name = "subnet_1",
///         Cidr = "192.168.199.0/24",
///         IpVersion = 4,
///         NetworkId = network1.Id,
///     });
///
///     var loadbalancer1 = new OpenStack.LoadBalancer.LoadBalancer("loadbalancer_1", new()
///     {
///         Name = "loadbalancer_1",
///         VipSubnetId = subnet1.Id,
///     });
///
///     var listener1 = new OpenStack.LoadBalancer.Listener("listener_1", new()
///     {
///         Name = "listener_1",
///         Protocol = "HTTP",
///         ProtocolPort = 8080,
///         LoadbalancerId = loadbalancer1.Id,
///     });
///
///     var pool1 = new OpenStack.LoadBalancer.Pool("pool_1", new()
///     {
///         Name = "pool_1",
///         Protocol = "HTTP",
///         LbMethod = "ROUND_ROBIN",
///         LoadbalancerId = loadbalancer1.Id,
///     });
///
///     var l7policy1 = new OpenStack.LoadBalancer.L7PolicyV2("l7policy_1", new()
///     {
///         Name = "test",
///         Action = "REDIRECT_TO_URL",
///         Description = "test description",
///         Position = 1,
///         ListenerId = listener1.Id,
///         RedirectUrl = "http://www.example.com",
///     });
///
///     var l7rule1 = new OpenStack.LoadBalancer.L7RuleV2("l7rule_1", new()
///     {
///         L7policyId = l7policy1.Id,
///         Type = "PATH",
///         CompareType = "EQUAL_TO",
///         Value = "/api",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/loadbalancer"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet1, err := networking.NewSubnet(ctx, "subnet_1", &networking.SubnetArgs{
/// 			Name:      pulumi.String("subnet_1"),
/// 			Cidr:      pulumi.String("192.168.199.0/24"),
/// 			IpVersion: pulumi.Int(4),
/// 			NetworkId: network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		loadbalancer1, err := loadbalancer.NewLoadBalancer(ctx, "loadbalancer_1", &loadbalancer.LoadBalancerArgs{
/// 			Name:        pulumi.String("loadbalancer_1"),
/// 			VipSubnetId: subnet1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		listener1, err := loadbalancer.NewListener(ctx, "listener_1", &loadbalancer.ListenerArgs{
/// 			Name:           pulumi.String("listener_1"),
/// 			Protocol:       pulumi.String("HTTP"),
/// 			ProtocolPort:   pulumi.Int(8080),
/// 			LoadbalancerId: loadbalancer1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loadbalancer.NewPool(ctx, "pool_1", &loadbalancer.PoolArgs{
/// 			Name:           pulumi.String("pool_1"),
/// 			Protocol:       pulumi.String("HTTP"),
/// 			LbMethod:       pulumi.String("ROUND_ROBIN"),
/// 			LoadbalancerId: loadbalancer1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		l7policy1, err := loadbalancer.NewL7PolicyV2(ctx, "l7policy_1", &loadbalancer.L7PolicyV2Args{
/// 			Name:        pulumi.String("test"),
/// 			Action:      pulumi.String("REDIRECT_TO_URL"),
/// 			Description: pulumi.String("test description"),
/// 			Position:    pulumi.Int(1),
/// 			ListenerId:  listener1.ID(),
/// 			RedirectUrl: pulumi.String("http://www.example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loadbalancer.NewL7RuleV2(ctx, "l7rule_1", &loadbalancer.L7RuleV2Args{
/// 			L7policyId:  l7policy1.ID(),
/// 			Type:        pulumi.String("PATH"),
/// 			CompareType: pulumi.String("EQUAL_TO"),
/// 			Value:       pulumi.String("/api"),
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
/// import com.pulumi.openstack.loadbalancer.LoadBalancer;
/// import com.pulumi.openstack.loadbalancer.LoadBalancerArgs;
/// import com.pulumi.openstack.loadbalancer.Listener;
/// import com.pulumi.openstack.loadbalancer.ListenerArgs;
/// import com.pulumi.openstack.loadbalancer.Pool;
/// import com.pulumi.openstack.loadbalancer.PoolArgs;
/// import com.pulumi.openstack.loadbalancer.L7PolicyV2;
/// import com.pulumi.openstack.loadbalancer.L7PolicyV2Args;
/// import com.pulumi.openstack.loadbalancer.L7RuleV2;
/// import com.pulumi.openstack.loadbalancer.L7RuleV2Args;
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
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var subnet1 = new Subnet("subnet1", SubnetArgs.builder()
///             .name("subnet_1")
///             .cidr("192.168.199.0/24")
///             .ipVersion(4)
///             .networkId(network1.id())
///             .build());
///
///         var loadbalancer1 = new LoadBalancer("loadbalancer1", LoadBalancerArgs.builder()
///             .name("loadbalancer_1")
///             .vipSubnetId(subnet1.id())
///             .build());
///
///         var listener1 = new Listener("listener1", ListenerArgs.builder()
///             .name("listener_1")
///             .protocol("HTTP")
///             .protocolPort(8080)
///             .loadbalancerId(loadbalancer1.id())
///             .build());
///
///         var pool1 = new Pool("pool1", PoolArgs.builder()
///             .name("pool_1")
///             .protocol("HTTP")
///             .lbMethod("ROUND_ROBIN")
///             .loadbalancerId(loadbalancer1.id())
///             .build());
///
///         var l7policy1 = new L7PolicyV2("l7policy1", L7PolicyV2Args.builder()
///             .name("test")
///             .action("REDIRECT_TO_URL")
///             .description("test description")
///             .position(1)
///             .listenerId(listener1.id())
///             .redirectUrl("http://www.example.com")
///             .build());
///
///         var l7rule1 = new L7RuleV2("l7rule1", L7RuleV2Args.builder()
///             .l7policyId(l7policy1.id())
///             .type("PATH")
///             .compareType("EQUAL_TO")
///             .value("/api")
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
///       name: network_1
///       adminStateUp: 'true'
///   subnet1:
///     type: openstack:networking:Subnet
///     name: subnet_1
///     properties:
///       name: subnet_1
///       cidr: 192.168.199.0/24
///       ipVersion: 4
///       networkId: ${network1.id}
///   loadbalancer1:
///     type: openstack:loadbalancer:LoadBalancer
///     name: loadbalancer_1
///     properties:
///       name: loadbalancer_1
///       vipSubnetId: ${subnet1.id}
///   listener1:
///     type: openstack:loadbalancer:Listener
///     name: listener_1
///     properties:
///       name: listener_1
///       protocol: HTTP
///       protocolPort: 8080
///       loadbalancerId: ${loadbalancer1.id}
///   pool1:
///     type: openstack:loadbalancer:Pool
///     name: pool_1
///     properties:
///       name: pool_1
///       protocol: HTTP
///       lbMethod: ROUND_ROBIN
///       loadbalancerId: ${loadbalancer1.id}
///   l7policy1:
///     type: openstack:loadbalancer:L7PolicyV2
///     name: l7policy_1
///     properties:
///       name: test
///       action: REDIRECT_TO_URL
///       description: test description
///       position: 1
///       listenerId: ${listener1.id}
///       redirectUrl: http://www.example.com
///   l7rule1:
///     type: openstack:loadbalancer:L7RuleV2
///     name: l7rule_1
///     properties:
///       l7policyId: ${l7policy1.id}
///       type: PATH
///       compareType: EQUAL_TO
///       value: /api
/// ```
///
///
/// ## Import
///
/// Load Balancer L7 Rule can be imported using the L7 Policy ID and L7 Rule ID
/// separated by a slash, e.g.:
///
/// ```sh
/// $ pulumi import openstack:loadbalancer/l7RuleV2:L7RuleV2 l7rule_1 e0bd694a-abbe-450e-b329-0931fd1cc5eb/4086b0c9-b18c-4d1c-b6b8-4c56c3ad2a9e
/// ```
class L7RuleV2 extends pulumi.CustomResource {
  /// The administrative state of the L7 Rule.
  /// A valid value is true (UP) or false (DOWN).
  late final pulumi.Output<bool?> adminStateUp;

  /// The comparison type for the L7 rule - can either be
  /// CONTAINS, STARTS\_WITH, ENDS_WITH, EQUAL_TO or REGEX
  late final pulumi.Output<String> compareType;

  /// When true the logic of the rule is inverted. For example, with invert
  /// true, equal to would become not equal to. Default is false.
  late final pulumi.Output<bool?> invert;

  /// The key to use for the comparison. For example, the name of the cookie to
  /// evaluate. Valid when `type` is set to COOKIE or HEADER.
  late final pulumi.Output<String?> key;

  /// The ID of the L7 Policy to query. Changing this creates a new
  /// L7 Rule.
  late final pulumi.Output<String> l7policyId;

  /// The ID of the Listener owning this resource.
  late final pulumi.Output<String> listenerId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an L7 rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// L7 Rule.
  late final pulumi.Output<String> region;

  /// Required for admins. The UUID of the tenant who owns
  /// the L7 Rule.  Only administrative users can specify a tenant UUID
  /// other than their own. Changing this creates a new L7 Rule.
  late final pulumi.Output<String> tenantId;

  /// The L7 Rule type - can either be COOKIE, FILE\_TYPE, HEADER,
  /// HOST\_NAME, PATH, SSL\_CONN\_HAS\_CERT, SSL\_VERIFY\_RESULT or SSL\_DN\_FIELD.
  late final pulumi.Output<String> type;

  /// The value to use for the comparison. For example, the file type to
  /// compare.
  late final pulumi.Output<String> value;

  /// Creates a new [L7RuleV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [L7RuleV2]. {@macro pulumi_loadbalancer_l7_rule_v2_l7_rule_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  L7RuleV2(
    String name, {
    L7RuleV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:loadbalancer/l7RuleV2:L7RuleV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    compareType = registerOutput<String>('compareType');
    invert = registerOutput<bool?>('invert');
    key = registerOutput<String?>('key');
    l7policyId = registerOutput<String>('l7policyId');
    listenerId = registerOutput<String>('listenerId');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [L7RuleV2] resource's state with the given [name] and [id].
  static L7RuleV2 get(
    String name,
    pulumi.Input<String> id, {
    L7RuleV2State? state,
  }) {
    return L7RuleV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  L7RuleV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:loadbalancer/l7RuleV2:L7RuleV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    compareType = registerOutput<String>('compareType');
    invert = registerOutput<bool?>('invert');
    key = registerOutput<String?>('key');
    l7policyId = registerOutput<String>('l7policyId');
    listenerId = registerOutput<String>('listenerId');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }
}

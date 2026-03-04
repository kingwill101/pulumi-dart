import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_args.dart';
import 'router_nat_log_config.dart';
import 'router_nat_state.dart';

/// A NAT service created in a router.
///
/// &gt; **Note:** Recreating a `gcp.compute.Address` that is being used by `gcp.compute.RouterNat` will give a `resourceInUseByAnotherResource` error.
/// Use `lifecycle.create_before_destroy` on this address resource to avoid this type of error as shown in the Manual Ips example.
///
///
/// To get more information about RouterNat, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Nat Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {name: "my-network"});
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "my-subnetwork",
///     network: net.id,
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "my-router",
///     region: subnet.region,
///     network: net.id,
///     bgp: {
///         asn: 64514,
///     },
/// });
/// const nat = new gcp.compute.RouterNat("nat", {
///     name: "my-router-nat",
///     router: router.name,
///     region: router.region,
///     natIpAllocateOption: "AUTO_ONLY",
///     sourceSubnetworkIpRangesToNat: "ALL_SUBNETWORKS_ALL_IP_RANGES",
///     logConfig: {
///         enable: true,
///         filter: "ERRORS_ONLY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net", name="my-network")
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="my-subnetwork",
///     network=net.id,
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1")
/// router = gcp.compute.Router("router",
///     name="my-router",
///     region=subnet.region,
///     network=net.id,
///     bgp={
///         "asn": 64514,
///     })
/// nat = gcp.compute.RouterNat("nat",
///     name="my-router-nat",
///     router=router.name,
///     region=router.region,
///     nat_ip_allocate_option="AUTO_ONLY",
///     source_subnetwork_ip_ranges_to_nat="ALL_SUBNETWORKS_ALL_IP_RANGES",
///     log_config={
///         "enable": True,
///         "filter": "ERRORS_ONLY",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var net = new Gcp.Compute.Network("net", new()
///     {
///         Name = "my-network",
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "my-subnetwork",
///         Network = net.Id,
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router",
///         Region = subnet.Region,
///         Network = net.Id,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
///         },
///     });
///
///     var nat = new Gcp.Compute.RouterNat("nat", new()
///     {
///         Name = "my-router-nat",
///         Router = router.Name,
///         Region = router.Region,
///         NatIpAllocateOption = "AUTO_ONLY",
///         SourceSubnetworkIpRangesToNat = "ALL_SUBNETWORKS_ALL_IP_RANGES",
///         LogConfig = new Gcp.Compute.Inputs.RouterNatLogConfigArgs
///         {
///             Enable = true,
///             Filter = "ERRORS_ONLY",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// 			Name: pulumi.String("my-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			Network:     net.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Region:  subnet.Region,
/// 			Network: net.ID(),
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(64514),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterNat(ctx, "nat", &compute.RouterNatArgs{
/// 			Name:                          pulumi.String("my-router-nat"),
/// 			Router:                        router.Name,
/// 			Region:                        router.Region,
/// 			NatIpAllocateOption:           pulumi.String("AUTO_ONLY"),
/// 			SourceSubnetworkIpRangesToNat: pulumi.String("ALL_SUBNETWORKS_ALL_IP_RANGES"),
/// 			LogConfig: &compute.RouterNatLogConfigArgs{
/// 				Enable: pulumi.Bool(true),
/// 				Filter: pulumi.String("ERRORS_ONLY"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.RouterNat;
/// import com.pulumi.gcp.compute.RouterNatArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNatLogConfigArgs;
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
///         var net = new Network("net", NetworkArgs.builder()
///             .name("my-network")
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .network(net.id())
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router")
///             .region(subnet.region())
///             .network(net.id())
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .build())
///             .build());
///
///         var nat = new RouterNat("nat", RouterNatArgs.builder()
///             .name("my-router-nat")
///             .router(router.name())
///             .region(router.region())
///             .natIpAllocateOption("AUTO_ONLY")
///             .sourceSubnetworkIpRangesToNat("ALL_SUBNETWORKS_ALL_IP_RANGES")
///             .logConfig(RouterNatLogConfigArgs.builder()
///                 .enable(true)
///                 .filter("ERRORS_ONLY")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-subnetwork
///       network: ${net.id}
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       region: ${subnet.region}
///       network: ${net.id}
///       bgp:
///         asn: 64514
///   nat:
///     type: gcp:compute:RouterNat
///     properties:
///       name: my-router-nat
///       router: ${router.name}
///       region: ${router.region}
///       natIpAllocateOption: AUTO_ONLY
///       sourceSubnetworkIpRangesToNat: ALL_SUBNETWORKS_ALL_IP_RANGES
///       logConfig:
///         enable: true
///         filter: ERRORS_ONLY
/// ```
///
/// ### Router Nat Rules
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "my-subnetwork",
///     network: net.id,
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "my-router",
///     region: subnet.region,
///     network: net.id,
/// });
/// const addr1 = new gcp.compute.Address("addr1", {
///     name: "nat-address1",
///     region: subnet.region,
/// });
/// const addr2 = new gcp.compute.Address("addr2", {
///     name: "nat-address2",
///     region: subnet.region,
/// });
/// const addr3 = new gcp.compute.Address("addr3", {
///     name: "nat-address3",
///     region: subnet.region,
/// });
/// const natRules = new gcp.compute.RouterNat("nat_rules", {
///     name: "my-router-nat",
///     router: router.name,
///     region: router.region,
///     natIpAllocateOption: "MANUAL_ONLY",
///     natIps: [addr1.selfLink],
///     sourceSubnetworkIpRangesToNat: "LIST_OF_SUBNETWORKS",
///     subnetworks: [{
///         name: subnet.id,
///         sourceIpRangesToNats: ["ALL_IP_RANGES"],
///     }],
///     rules: [{
///         ruleNumber: 100,
///         description: "nat rules example",
///         match: "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')",
///         action: {
///             sourceNatActiveIps: [
///                 addr2.selfLink,
///                 addr3.selfLink,
///             ],
///         },
///     }],
///     enableEndpointIndependentMapping: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="my-subnetwork",
///     network=net.id,
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1")
/// router = gcp.compute.Router("router",
///     name="my-router",
///     region=subnet.region,
///     network=net.id)
/// addr1 = gcp.compute.Address("addr1",
///     name="nat-address1",
///     region=subnet.region)
/// addr2 = gcp.compute.Address("addr2",
///     name="nat-address2",
///     region=subnet.region)
/// addr3 = gcp.compute.Address("addr3",
///     name="nat-address3",
///     region=subnet.region)
/// nat_rules = gcp.compute.RouterNat("nat_rules",
///     name="my-router-nat",
///     router=router.name,
///     region=router.region,
///     nat_ip_allocate_option="MANUAL_ONLY",
///     nat_ips=[addr1.self_link],
///     source_subnetwork_ip_ranges_to_nat="LIST_OF_SUBNETWORKS",
///     subnetworks=[{
///         "name": subnet.id,
///         "source_ip_ranges_to_nats": ["ALL_IP_RANGES"],
///     }],
///     rules=[{
///         "rule_number": 100,
///         "description": "nat rules example",
///         "match": "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')",
///         "action": {
///             "source_nat_active_ips": [
///                 addr2.self_link,
///                 addr3.self_link,
///             ],
///         },
///     }],
///     enable_endpoint_independent_mapping=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var net = new Gcp.Compute.Network("net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "my-subnetwork",
///         Network = net.Id,
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router",
///         Region = subnet.Region,
///         Network = net.Id,
///     });
///
///     var addr1 = new Gcp.Compute.Address("addr1", new()
///     {
///         Name = "nat-address1",
///         Region = subnet.Region,
///     });
///
///     var addr2 = new Gcp.Compute.Address("addr2", new()
///     {
///         Name = "nat-address2",
///         Region = subnet.Region,
///     });
///
///     var addr3 = new Gcp.Compute.Address("addr3", new()
///     {
///         Name = "nat-address3",
///         Region = subnet.Region,
///     });
///
///     var natRules = new Gcp.Compute.RouterNat("nat_rules", new()
///     {
///         Name = "my-router-nat",
///         Router = router.Name,
///         Region = router.Region,
///         NatIpAllocateOption = "MANUAL_ONLY",
///         NatIps = new[]
///         {
///             addr1.SelfLink,
///         },
///         SourceSubnetworkIpRangesToNat = "LIST_OF_SUBNETWORKS",
///         Subnetworks = new[]
///         {
///             new Gcp.Compute.Inputs.RouterNatSubnetworkArgs
///             {
///                 Name = subnet.Id,
///                 SourceIpRangesToNats = new[]
///                 {
///                     "ALL_IP_RANGES",
///                 },
///             },
///         },
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RouterNatRuleArgs
///             {
///                 RuleNumber = 100,
///                 Description = "nat rules example",
///                 Match = "inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')",
///                 Action = new Gcp.Compute.Inputs.RouterNatRuleActionArgs
///                 {
///                     SourceNatActiveIps = new[]
///                     {
///                         addr2.SelfLink,
///                         addr3.SelfLink,
///                     },
///                 },
///             },
///         },
///         EnableEndpointIndependentMapping = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			Network:     net.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Region:  subnet.Region,
/// 			Network: net.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		addr1, err := compute.NewAddress(ctx, "addr1", &compute.AddressArgs{
/// 			Name:   pulumi.String("nat-address1"),
/// 			Region: subnet.Region,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		addr2, err := compute.NewAddress(ctx, "addr2", &compute.AddressArgs{
/// 			Name:   pulumi.String("nat-address2"),
/// 			Region: subnet.Region,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		addr3, err := compute.NewAddress(ctx, "addr3", &compute.AddressArgs{
/// 			Name:   pulumi.String("nat-address3"),
/// 			Region: subnet.Region,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterNat(ctx, "nat_rules", &compute.RouterNatArgs{
/// 			Name:                pulumi.String("my-router-nat"),
/// 			Router:              router.Name,
/// 			Region:              router.Region,
/// 			NatIpAllocateOption: pulumi.String("MANUAL_ONLY"),
/// 			NatIps: pulumi.StringArray{
/// 				addr1.SelfLink,
/// 			},
/// 			SourceSubnetworkIpRangesToNat: pulumi.String("LIST_OF_SUBNETWORKS"),
/// 			Subnetworks: compute.RouterNatSubnetworkArray{
/// 				&compute.RouterNatSubnetworkArgs{
/// 					Name: subnet.ID(),
/// 					SourceIpRangesToNats: pulumi.StringArray{
/// 						pulumi.String("ALL_IP_RANGES"),
/// 					},
/// 				},
/// 			},
/// 			Rules: compute.RouterNatRuleArray{
/// 				&compute.RouterNatRuleArgs{
/// 					RuleNumber:  pulumi.Int(100),
/// 					Description: pulumi.String("nat rules example"),
/// 					Match:       pulumi.String("inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')"),
/// 					Action: &compute.RouterNatRuleActionArgs{
/// 						SourceNatActiveIps: pulumi.StringArray{
/// 							addr2.SelfLink,
/// 							addr3.SelfLink,
/// 						},
/// 					},
/// 				},
/// 			},
/// 			EnableEndpointIndependentMapping: pulumi.Bool(false),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.RouterNat;
/// import com.pulumi.gcp.compute.RouterNatArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNatSubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNatRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNatRuleActionArgs;
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
///         var net = new Network("net", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .network(net.id())
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router")
///             .region(subnet.region())
///             .network(net.id())
///             .build());
///
///         var addr1 = new Address("addr1", AddressArgs.builder()
///             .name("nat-address1")
///             .region(subnet.region())
///             .build());
///
///         var addr2 = new Address("addr2", AddressArgs.builder()
///             .name("nat-address2")
///             .region(subnet.region())
///             .build());
///
///         var addr3 = new Address("addr3", AddressArgs.builder()
///             .name("nat-address3")
///             .region(subnet.region())
///             .build());
///
///         var natRules = new RouterNat("natRules", RouterNatArgs.builder()
///             .name("my-router-nat")
///             .router(router.name())
///             .region(router.region())
///             .natIpAllocateOption("MANUAL_ONLY")
///             .natIps(addr1.selfLink())
///             .sourceSubnetworkIpRangesToNat("LIST_OF_SUBNETWORKS")
///             .subnetworks(RouterNatSubnetworkArgs.builder()
///                 .name(subnet.id())
///                 .sourceIpRangesToNats("ALL_IP_RANGES")
///                 .build())
///             .rules(RouterNatRuleArgs.builder()
///                 .ruleNumber(100)
///                 .description("nat rules example")
///                 .match("inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')")
///                 .action(RouterNatRuleActionArgs.builder()
///                     .sourceNatActiveIps(
///                         addr2.selfLink(),
///                         addr3.selfLink())
///                     .build())
///                 .build())
///             .enableEndpointIndependentMapping(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-subnetwork
///       network: ${net.id}
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       region: ${subnet.region}
///       network: ${net.id}
///   addr1:
///     type: gcp:compute:Address
///     properties:
///       name: nat-address1
///       region: ${subnet.region}
///   addr2:
///     type: gcp:compute:Address
///     properties:
///       name: nat-address2
///       region: ${subnet.region}
///   addr3:
///     type: gcp:compute:Address
///     properties:
///       name: nat-address3
///       region: ${subnet.region}
///   natRules:
///     type: gcp:compute:RouterNat
///     name: nat_rules
///     properties:
///       name: my-router-nat
///       router: ${router.name}
///       region: ${router.region}
///       natIpAllocateOption: MANUAL_ONLY
///       natIps:
///         - ${addr1.selfLink}
///       sourceSubnetworkIpRangesToNat: LIST_OF_SUBNETWORKS
///       subnetworks:
///         - name: ${subnet.id}
///           sourceIpRangesToNats:
///             - ALL_IP_RANGES
///       rules:
///         - ruleNumber: 100
///           description: nat rules example
///           match: inIpRange(destination.ip, '1.1.0.0/16') || inIpRange(destination.ip, '2.2.0.0/16')
///           action:
///             sourceNatActiveIps:
///               - ${addr2.selfLink}
///               - ${addr3.selfLink}
///       enableEndpointIndependentMapping: false
/// ```
///
/// ### Router Nat Private
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net = new gcp.compute.Network("net", {name: "my-network"});
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "my-subnetwork",
///     network: net.id,
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
///     purpose: "PRIVATE_NAT",
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "my-router",
///     region: subnet.region,
///     network: net.id,
/// });
/// const hub = new gcp.networkconnectivity.Hub("hub", {
///     name: "my-hub",
///     description: "vpc hub for inter vpc nat",
/// });
/// const spoke = new gcp.networkconnectivity.Spoke("spoke", {
///     name: "my-spoke",
///     location: "global",
///     description: "vpc spoke for inter vpc nat",
///     hub: hub.id,
///     linkedVpcNetwork: {
///         excludeExportRanges: [
///             "198.51.100.0/24",
///             "10.10.0.0/16",
///         ],
///         uri: net.selfLink,
///     },
/// });
/// const natType = new gcp.compute.RouterNat("nat_type", {
///     name: "my-router-nat",
///     router: router.name,
///     region: router.region,
///     sourceSubnetworkIpRangesToNat: "LIST_OF_SUBNETWORKS",
///     enableDynamicPortAllocation: false,
///     enableEndpointIndependentMapping: false,
///     minPortsPerVm: 32,
///     type: "PRIVATE",
///     subnetworks: [{
///         name: subnet.id,
///         sourceIpRangesToNats: ["ALL_IP_RANGES"],
///     }],
///     rules: [{
///         ruleNumber: 100,
///         description: "rule for private nat",
///         match: "nexthop.hub == \"//networkconnectivity.googleapis.com/projects/acm-test-proj-123/locations/global/hubs/my-hub\"",
///         action: {
///             sourceNatActiveRanges: [subnet.selfLink],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net", name="my-network")
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="my-subnetwork",
///     network=net.id,
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1",
///     purpose="PRIVATE_NAT")
/// router = gcp.compute.Router("router",
///     name="my-router",
///     region=subnet.region,
///     network=net.id)
/// hub = gcp.networkconnectivity.Hub("hub",
///     name="my-hub",
///     description="vpc hub for inter vpc nat")
/// spoke = gcp.networkconnectivity.Spoke("spoke",
///     name="my-spoke",
///     location="global",
///     description="vpc spoke for inter vpc nat",
///     hub=hub.id,
///     linked_vpc_network={
///         "exclude_export_ranges": [
///             "198.51.100.0/24",
///             "10.10.0.0/16",
///         ],
///         "uri": net.self_link,
///     })
/// nat_type = gcp.compute.RouterNat("nat_type",
///     name="my-router-nat",
///     router=router.name,
///     region=router.region,
///     source_subnetwork_ip_ranges_to_nat="LIST_OF_SUBNETWORKS",
///     enable_dynamic_port_allocation=False,
///     enable_endpoint_independent_mapping=False,
///     min_ports_per_vm=32,
///     type="PRIVATE",
///     subnetworks=[{
///         "name": subnet.id,
///         "source_ip_ranges_to_nats": ["ALL_IP_RANGES"],
///     }],
///     rules=[{
///         "rule_number": 100,
///         "description": "rule for private nat",
///         "match": "nexthop.hub == \"//networkconnectivity.googleapis.com/projects/acm-test-proj-123/locations/global/hubs/my-hub\"",
///         "action": {
///             "source_nat_active_ranges": [subnet.self_link],
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var net = new Gcp.Compute.Network("net", new()
///     {
///         Name = "my-network",
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "my-subnetwork",
///         Network = net.Id,
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///         Purpose = "PRIVATE_NAT",
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router",
///         Region = subnet.Region,
///         Network = net.Id,
///     });
///
///     var hub = new Gcp.NetworkConnectivity.Hub("hub", new()
///     {
///         Name = "my-hub",
///         Description = "vpc hub for inter vpc nat",
///     });
///
///     var spoke = new Gcp.NetworkConnectivity.Spoke("spoke", new()
///     {
///         Name = "my-spoke",
///         Location = "global",
///         Description = "vpc spoke for inter vpc nat",
///         Hub = hub.Id,
///         LinkedVpcNetwork = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedVpcNetworkArgs
///         {
///             ExcludeExportRanges = new[]
///             {
///                 "198.51.100.0/24",
///                 "10.10.0.0/16",
///             },
///             Uri = net.SelfLink,
///         },
///     });
///
///     var natType = new Gcp.Compute.RouterNat("nat_type", new()
///     {
///         Name = "my-router-nat",
///         Router = router.Name,
///         Region = router.Region,
///         SourceSubnetworkIpRangesToNat = "LIST_OF_SUBNETWORKS",
///         EnableDynamicPortAllocation = false,
///         EnableEndpointIndependentMapping = false,
///         MinPortsPerVm = 32,
///         Type = "PRIVATE",
///         Subnetworks = new[]
///         {
///             new Gcp.Compute.Inputs.RouterNatSubnetworkArgs
///             {
///                 Name = subnet.Id,
///                 SourceIpRangesToNats = new[]
///                 {
///                     "ALL_IP_RANGES",
///                 },
///             },
///         },
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RouterNatRuleArgs
///             {
///                 RuleNumber = 100,
///                 Description = "rule for private nat",
///                 Match = "nexthop.hub == \"//networkconnectivity.googleapis.com/projects/acm-test-proj-123/locations/global/hubs/my-hub\"",
///                 Action = new Gcp.Compute.Inputs.RouterNatRuleActionArgs
///                 {
///                     SourceNatActiveRanges = new[]
///                     {
///                         subnet.SelfLink,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		net, err := compute.NewNetwork(ctx, "net", &compute.NetworkArgs{
/// 			Name: pulumi.String("my-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork"),
/// 			Network:     net.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Purpose:     pulumi.String("PRIVATE_NAT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Region:  subnet.Region,
/// 			Network: net.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		hub, err := networkconnectivity.NewHub(ctx, "hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("my-hub"),
/// 			Description: pulumi.String("vpc hub for inter vpc nat"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "spoke", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("my-spoke"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("vpc spoke for inter vpc nat"),
/// 			Hub:         hub.ID(),
/// 			LinkedVpcNetwork: &networkconnectivity.SpokeLinkedVpcNetworkArgs{
/// 				ExcludeExportRanges: pulumi.StringArray{
/// 					pulumi.String("198.51.100.0/24"),
/// 					pulumi.String("10.10.0.0/16"),
/// 				},
/// 				Uri: net.SelfLink,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterNat(ctx, "nat_type", &compute.RouterNatArgs{
/// 			Name:                             pulumi.String("my-router-nat"),
/// 			Router:                           router.Name,
/// 			Region:                           router.Region,
/// 			SourceSubnetworkIpRangesToNat:    pulumi.String("LIST_OF_SUBNETWORKS"),
/// 			EnableDynamicPortAllocation:      pulumi.Bool(false),
/// 			EnableEndpointIndependentMapping: pulumi.Bool(false),
/// 			MinPortsPerVm:                    pulumi.Int(32),
/// 			Type:                             pulumi.String("PRIVATE"),
/// 			Subnetworks: compute.RouterNatSubnetworkArray{
/// 				&compute.RouterNatSubnetworkArgs{
/// 					Name: subnet.ID(),
/// 					SourceIpRangesToNats: pulumi.StringArray{
/// 						pulumi.String("ALL_IP_RANGES"),
/// 					},
/// 				},
/// 			},
/// 			Rules: compute.RouterNatRuleArray{
/// 				&compute.RouterNatRuleArgs{
/// 					RuleNumber:  pulumi.Int(100),
/// 					Description: pulumi.String("rule for private nat"),
/// 					Match:       pulumi.String("nexthop.hub == \"//networkconnectivity.googleapis.com/projects/acm-test-proj-123/locations/global/hubs/my-hub\""),
/// 					Action: &compute.RouterNatRuleActionArgs{
/// 						SourceNatActiveRanges: pulumi.StringArray{
/// 							subnet.SelfLink,
/// 						},
/// 					},
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedVpcNetworkArgs;
/// import com.pulumi.gcp.compute.RouterNat;
/// import com.pulumi.gcp.compute.RouterNatArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNatSubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNatRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNatRuleActionArgs;
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
///         var net = new Network("net", NetworkArgs.builder()
///             .name("my-network")
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("my-subnetwork")
///             .network(net.id())
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .purpose("PRIVATE_NAT")
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router")
///             .region(subnet.region())
///             .network(net.id())
///             .build());
///
///         var hub = new Hub("hub", HubArgs.builder()
///             .name("my-hub")
///             .description("vpc hub for inter vpc nat")
///             .build());
///
///         var spoke = new Spoke("spoke", SpokeArgs.builder()
///             .name("my-spoke")
///             .location("global")
///             .description("vpc spoke for inter vpc nat")
///             .hub(hub.id())
///             .linkedVpcNetwork(SpokeLinkedVpcNetworkArgs.builder()
///                 .excludeExportRanges(
///                     "198.51.100.0/24",
///                     "10.10.0.0/16")
///                 .uri(net.selfLink())
///                 .build())
///             .build());
///
///         var natType = new RouterNat("natType", RouterNatArgs.builder()
///             .name("my-router-nat")
///             .router(router.name())
///             .region(router.region())
///             .sourceSubnetworkIpRangesToNat("LIST_OF_SUBNETWORKS")
///             .enableDynamicPortAllocation(false)
///             .enableEndpointIndependentMapping(false)
///             .minPortsPerVm(32)
///             .type("PRIVATE")
///             .subnetworks(RouterNatSubnetworkArgs.builder()
///                 .name(subnet.id())
///                 .sourceIpRangesToNats("ALL_IP_RANGES")
///                 .build())
///             .rules(RouterNatRuleArgs.builder()
///                 .ruleNumber(100)
///                 .description("rule for private nat")
///                 .match("nexthop.hub == \"//networkconnectivity.googleapis.com/projects/acm-test-proj-123/locations/global/hubs/my-hub\"")
///                 .action(RouterNatRuleActionArgs.builder()
///                     .sourceNatActiveRanges(subnet.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-subnetwork
///       network: ${net.id}
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///       purpose: PRIVATE_NAT
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       region: ${subnet.region}
///       network: ${net.id}
///   hub:
///     type: gcp:networkconnectivity:Hub
///     properties:
///       name: my-hub
///       description: vpc hub for inter vpc nat
///   spoke:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: my-spoke
///       location: global
///       description: vpc spoke for inter vpc nat
///       hub: ${hub.id}
///       linkedVpcNetwork:
///         excludeExportRanges:
///           - 198.51.100.0/24
///           - 10.10.0.0/16
///         uri: ${net.selfLink}
///   natType:
///     type: gcp:compute:RouterNat
///     name: nat_type
///     properties:
///       name: my-router-nat
///       router: ${router.name}
///       region: ${router.region}
///       sourceSubnetworkIpRangesToNat: LIST_OF_SUBNETWORKS
///       enableDynamicPortAllocation: false
///       enableEndpointIndependentMapping: false
///       minPortsPerVm: 32
///       type: PRIVATE
///       subnetworks:
///         - name: ${subnet.id}
///           sourceIpRangesToNats:
///             - ALL_IP_RANGES
///       rules:
///         - ruleNumber: 100
///           description: rule for private nat
///           match: nexthop.hub == "//networkconnectivity.googleapis.com/projects/acm-test-proj-123/locations/global/hubs/my-hub"
///           action:
///             sourceNatActiveRanges:
///               - ${subnet.selfLink}
/// ```
///
///
/// ## Import
///
/// RouterNat can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/routers/{{router}}/{{name}}`
///
/// * `{{project}}/{{region}}/{{router}}/{{name}}`
///
/// * `{{region}}/{{router}}/{{name}}`
///
/// * `{{router}}/{{name}}`
///
/// When using the `pulumi import` command, RouterNat can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerNat:RouterNat default projects/{{project}}/regions/{{region}}/routers/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNat:RouterNat default {{project}}/{{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNat:RouterNat default {{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNat:RouterNat default {{router}}/{{name}}
/// ```
class RouterNat extends pulumi.CustomResource {
  /// The network tier to use when automatically reserving NAT IP addresses.
  /// Must be one of: PREMIUM, STANDARD. If not specified, then the current
  /// project-level default tier is used.
  /// Possible values are: `PREMIUM`, `STANDARD`.
  late final pulumi.Output<String> autoNetworkTier;

  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  late final pulumi.Output<List<String>> drainNatIps;

  /// Enable Dynamic Port Allocation.
  /// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
  /// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
  /// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// Mutually exclusive with enableEndpointIndependentMapping.
  late final pulumi.Output<bool> enableDynamicPortAllocation;

  /// Enable endpoint independent mapping.
  /// For more information see the [official documentation](https://docs.cloud.google.com/nat/docs/public-nat#specs-rfcs).
  late final pulumi.Output<bool> enableEndpointIndependentMapping;

  /// Specifies the endpoint Types supported by the NAT Gateway.
  /// Supported values include:
  /// `ENDPOINT_TYPE_VM`, `ENDPOINT_TYPE_SWG`,
  /// `ENDPOINT_TYPE_MANAGED_PROXY_LB`.
  late final pulumi.Output<List<String>> endpointTypes;

  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  late final pulumi.Output<int?> icmpIdleTimeoutSec;

  /// Self-links of NAT IPs to be used as initial value for creation alongside a RouterNatAddress resource.
  /// Conflicts with natIps and drainNatIps. Only valid if natIpAllocateOption is set to MANUAL_ONLY.
  late final pulumi.Output<List<String>?> initialNatIps;

  /// Configuration for logging on NAT
  /// Structure is documented below.
  late final pulumi.Output<RouterNatLogConfig?> logConfig;

  /// Maximum number of ports allocated to a VM from this NAT.
  /// This field can only be set when enableDynamicPortAllocation is enabled.
  late final pulumi.Output<int?> maxPortsPerVm;

  /// Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set.
  late final pulumi.Output<int> minPortsPerVm;

  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  late final pulumi.Output<String> name;

  /// One or more subnetwork NAT configurations whose traffic should be translated by NAT64 Gateway.
  /// Only used if `source_subnetwork_ip_ranges_to_nat64` is set to `LIST_OF_IPV6_SUBNETWORKS`
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> nat64Subnetworks;

  /// How external IPs should be allocated for this NAT. Valid values are
  /// `AUTO_ONLY` for only allowing NAT IPs allocated by Google Cloud
  /// Platform, or `MANUAL_ONLY` for only user-allocated NAT IP addresses.
  /// Possible values are: `MANUAL_ONLY`, `AUTO_ONLY`.
  late final pulumi.Output<String?> natIpAllocateOption;

  /// Self-links of NAT IPs. Only valid if natIpAllocateOption
  /// is set to MANUAL_ONLY.
  /// If this field is used alongside with a count created list of address resources `google_compute_address.foobar.*.self_link`,
  /// the access level resource for the address resource must have a `lifecycle` block with `create_before_destroy = true` so
  /// the number of resources can be increased/decreased without triggering the `resourceInUseByAnotherResource` error.
  late final pulumi.Output<List<String>> natIps;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Region where the router and NAT reside.
  late final pulumi.Output<String> region;

  /// The name of the Cloud Router in which this NAT will be configured.
  late final pulumi.Output<String> router;

  /// A list of rules associated with this NAT.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;

  /// How NAT should be configured per Subnetwork.
  /// If `ALL_SUBNETWORKS_ALL_IP_RANGES`, all of the
  /// IP ranges in every Subnetwork are allowed to Nat.
  /// If `ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES`, all of the primary IP
  /// ranges in every Subnetwork are allowed to Nat.
  /// `LIST_OF_SUBNETWORKS`: A list of Subnetworks are allowed to Nat
  /// (specified in the field subnetwork below). Note that if this field
  /// contains ALL_SUBNETWORKS_ALL_IP_RANGES or
  /// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
  /// other RouterNat section in any Router for this network in this region.
  /// Possible values are: `ALL_SUBNETWORKS_ALL_IP_RANGES`, `ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES`, `LIST_OF_SUBNETWORKS`.
  late final pulumi.Output<String> sourceSubnetworkIpRangesToNat;

  /// Specify the Nat option for NAT64, which can take one of the following values:
  /// ALL_IPV6_SUBNETWORKS: All of the IP ranges in every Subnetwork are allowed to Nat.
  /// LIST_OF_IPV6_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field nat64Subnetwork below).
  /// Note that if this field contains NAT64_ALL_V6_SUBNETWORKS no other Router.Nat section in this region can also enable NAT64 for any Subnetworks in this network.
  /// Other Router.Nat sections can still be present to enable NAT44 only.
  /// Possible values are: `ALL_IPV6_SUBNETWORKS`, `LIST_OF_IPV6_SUBNETWORKS`.
  late final pulumi.Output<String?> sourceSubnetworkIpRangesToNat64;

  /// One or more subnetwork NAT configurations. Only used if
  /// `source_subnetwork_ip_ranges_to_nat` is set to `LIST_OF_SUBNETWORKS`
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> subnetworks;

  /// Timeout (in seconds) for TCP established connections.
  /// Defaults to 1200s if not set.
  late final pulumi.Output<int?> tcpEstablishedIdleTimeoutSec;

  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
  /// Defaults to 120s if not set.
  late final pulumi.Output<int?> tcpTimeWaitTimeoutSec;

  /// Timeout (in seconds) for TCP transitory connections.
  /// Defaults to 30s if not set.
  late final pulumi.Output<int?> tcpTransitoryIdleTimeoutSec;

  /// Indicates whether this NAT is used for public or private IP translation.
  /// If unspecified, it defaults to PUBLIC.
  /// If `PUBLIC` NAT used for public IP translation.
  /// If `PRIVATE` NAT used for private IP translation.
  /// Default value is `PUBLIC`.
  /// Possible values are: `PUBLIC`, `PRIVATE`.
  late final pulumi.Output<String?> type;

  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  late final pulumi.Output<int?> udpIdleTimeoutSec;

  /// Creates a new [RouterNat].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterNat]. {@macro pulumi_compute_router_nat_router_nat_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterNat(
    String name, {
    RouterNatArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/routerNat:RouterNat',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoNetworkTier = registerOutput<String>('autoNetworkTier');
    drainNatIps = registerOutput<List<String>>('drainNatIps');
    enableDynamicPortAllocation = registerOutput<bool>(
      'enableDynamicPortAllocation',
    );
    enableEndpointIndependentMapping = registerOutput<bool>(
      'enableEndpointIndependentMapping',
    );
    endpointTypes = registerOutput<List<String>>('endpointTypes');
    icmpIdleTimeoutSec = registerOutput<int?>('icmpIdleTimeoutSec');
    initialNatIps = registerOutput<List<String>?>('initialNatIps');
    logConfig = registerOutput<RouterNatLogConfig?>('logConfig');
    maxPortsPerVm = registerOutput<int?>('maxPortsPerVm');
    minPortsPerVm = registerOutput<int>('minPortsPerVm');
    this.name = registerOutput<String>('name');
    nat64Subnetworks = registerOutput<List<Map<String, dynamic>>?>(
      'nat64Subnetworks',
    );
    natIpAllocateOption = registerOutput<String?>('natIpAllocateOption');
    natIps = registerOutput<List<String>>('natIps');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    sourceSubnetworkIpRangesToNat = registerOutput<String>(
      'sourceSubnetworkIpRangesToNat',
    );
    sourceSubnetworkIpRangesToNat64 = registerOutput<String?>(
      'sourceSubnetworkIpRangesToNat64',
    );
    subnetworks = registerOutput<List<Map<String, dynamic>>?>('subnetworks');
    tcpEstablishedIdleTimeoutSec = registerOutput<int?>(
      'tcpEstablishedIdleTimeoutSec',
    );
    tcpTimeWaitTimeoutSec = registerOutput<int?>('tcpTimeWaitTimeoutSec');
    tcpTransitoryIdleTimeoutSec = registerOutput<int?>(
      'tcpTransitoryIdleTimeoutSec',
    );
    type = registerOutput<String?>('type');
    udpIdleTimeoutSec = registerOutput<int?>('udpIdleTimeoutSec');
  }

  /// Gets an existing [RouterNat] resource's state with the given [name] and [id].
  static RouterNat get(
    String name,
    pulumi.Input<String> id, {
    RouterNatState? state,
  }) {
    return RouterNat._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterNat._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/routerNat:RouterNat',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoNetworkTier = registerOutput<String>('autoNetworkTier');
    drainNatIps = registerOutput<List<String>>('drainNatIps');
    enableDynamicPortAllocation = registerOutput<bool>(
      'enableDynamicPortAllocation',
    );
    enableEndpointIndependentMapping = registerOutput<bool>(
      'enableEndpointIndependentMapping',
    );
    endpointTypes = registerOutput<List<String>>('endpointTypes');
    icmpIdleTimeoutSec = registerOutput<int?>('icmpIdleTimeoutSec');
    initialNatIps = registerOutput<List<String>?>('initialNatIps');
    logConfig = registerOutput<RouterNatLogConfig?>('logConfig');
    maxPortsPerVm = registerOutput<int?>('maxPortsPerVm');
    minPortsPerVm = registerOutput<int>('minPortsPerVm');
    this.name = registerOutput<String>('name');
    nat64Subnetworks = registerOutput<List<Map<String, dynamic>>?>(
      'nat64Subnetworks',
    );
    natIpAllocateOption = registerOutput<String?>('natIpAllocateOption');
    natIps = registerOutput<List<String>>('natIps');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    sourceSubnetworkIpRangesToNat = registerOutput<String>(
      'sourceSubnetworkIpRangesToNat',
    );
    sourceSubnetworkIpRangesToNat64 = registerOutput<String?>(
      'sourceSubnetworkIpRangesToNat64',
    );
    subnetworks = registerOutput<List<Map<String, dynamic>>?>('subnetworks');
    tcpEstablishedIdleTimeoutSec = registerOutput<int?>(
      'tcpEstablishedIdleTimeoutSec',
    );
    tcpTimeWaitTimeoutSec = registerOutput<int?>('tcpTimeWaitTimeoutSec');
    tcpTransitoryIdleTimeoutSec = registerOutput<int?>(
      'tcpTransitoryIdleTimeoutSec',
    );
    type = registerOutput<String?>('type');
    udpIdleTimeoutSec = registerOutput<int?>('udpIdleTimeoutSec');
  }
}

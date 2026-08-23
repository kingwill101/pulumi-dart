import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_named_set_args.dart';
import 'router_named_set_state.dart';

/// A Named Set is a collection of IP addresses or ranges (for PREFIX type) or
/// BGP communities (for COMMUNITY type) that can be used in route policies.
///
///
/// To get more information about RouterNamedSet, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Named Set Route Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetwork = new gcp.compute.Network("my_network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const myRouter = new gcp.compute.Router("my_router", {
///     name: "my-router",
///     network: myNetwork.name,
///     region: "us-central1",
///     bgp: {
///         asn: 64514,
///     },
/// });
/// const myPrefixSet = new gcp.compute.RouterNamedSet("my_prefix_set", {
///     name: "prefix-set-name",
///     router: myRouter.name,
///     region: myRouter.region,
///     description: "My example prefix named set",
///     type: "NAMED_SET_TYPE_PREFIX",
///     elements: [
///         {
///             expression: "'10.0.0.0/8'",
///             title: "private-range",
///         },
///         {
///             expression: "'172.16.0.0/12'",
///         },
///         {
///             expression: "prefix('192.168.10.0/24').orLonger()",
///             title: "or-longer-example",
///         },
///     ],
/// });
/// const myRoutePolicy = new gcp.compute.RouterRoutePolicy("my_route_policy", {
///     name: "policy-name",
///     router: myRouter.name,
///     region: myRouter.region,
///     type: "ROUTE_POLICY_TYPE_EXPORT",
///     terms: [{
///         priority: 1,
///         match: {
///             expression: pulumi.interpolate`destination.inAnyRange(prefixSets('${myPrefixSet.name}'))`,
///         },
///         actions: [{
///             expression: "accept()",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.Network("my_network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// my_router = gcp.compute.Router("my_router",
///     name="my-router",
///     network=my_network.name,
///     region="us-central1",
///     bgp={
///         "asn": 64514,
///     })
/// my_prefix_set = gcp.compute.RouterNamedSet("my_prefix_set",
///     name="prefix-set-name",
///     router=my_router.name,
///     region=my_router.region,
///     description="My example prefix named set",
///     type="NAMED_SET_TYPE_PREFIX",
///     elements=[
///         {
///             "expression": "'10.0.0.0/8'",
///             "title": "private-range",
///         },
///         {
///             "expression": "'172.16.0.0/12'",
///         },
///         {
///             "expression": "prefix('192.168.10.0/24').orLonger()",
///             "title": "or-longer-example",
///         },
///     ])
/// my_route_policy = gcp.compute.RouterRoutePolicy("my_route_policy",
///     name="policy-name",
///     router=my_router.name,
///     region=my_router.region,
///     type="ROUTE_POLICY_TYPE_EXPORT",
///     terms=[{
///         "priority": 1,
///         "match": {
///             "expression": my_prefix_set.name.apply(lambda name: f"destination.inAnyRange(prefixSets('{name}'))"),
///         },
///         "actions": [{
///             "expression": "accept()",
///         }],
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
///     var myNetwork = new Gcp.Compute.Network("my_network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var myRouter = new Gcp.Compute.Router("my_router", new()
///     {
///         Name = "my-router",
///         Network = myNetwork.Name,
///         Region = "us-central1",
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
///         },
///     });
///
///     var myPrefixSet = new Gcp.Compute.RouterNamedSet("my_prefix_set", new()
///     {
///         Name = "prefix-set-name",
///         Router = myRouter.Name,
///         Region = myRouter.Region,
///         Description = "My example prefix named set",
///         Type = "NAMED_SET_TYPE_PREFIX",
///         Elements = new[]
///         {
///             new Gcp.Compute.Inputs.RouterNamedSetElementArgs
///             {
///                 Expression = "'10.0.0.0/8'",
///                 Title = "private-range",
///             },
///             new Gcp.Compute.Inputs.RouterNamedSetElementArgs
///             {
///                 Expression = "'172.16.0.0/12'",
///             },
///             new Gcp.Compute.Inputs.RouterNamedSetElementArgs
///             {
///                 Expression = "prefix('192.168.10.0/24').orLonger()",
///                 Title = "or-longer-example",
///             },
///         },
///     });
///
///     var myRoutePolicy = new Gcp.Compute.RouterRoutePolicy("my_route_policy", new()
///     {
///         Name = "policy-name",
///         Router = myRouter.Name,
///         Region = myRouter.Region,
///         Type = "ROUTE_POLICY_TYPE_EXPORT",
///         Terms = new[]
///         {
///             new Gcp.Compute.Inputs.RouterRoutePolicyTermArgs
///             {
///                 Priority = 1,
///                 Match = new Gcp.Compute.Inputs.RouterRoutePolicyTermMatchArgs
///                 {
///                     Expression = myPrefixSet.Name.Apply(name => $"destination.inAnyRange(prefixSets('{name}'))"),
///                 },
///                 Actions = new[]
///                 {
///                     new Gcp.Compute.Inputs.RouterRoutePolicyTermActionArgs
///                     {
///                         Expression = "accept()",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myRouter, err := compute.NewRouter(ctx, "my_router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Network: myNetwork.Name,
/// 			Region:  pulumi.String("us-central1"),
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(64514),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myPrefixSet, err := compute.NewRouterNamedSet(ctx, "my_prefix_set", &compute.RouterNamedSetArgs{
/// 			Name:        pulumi.String("prefix-set-name"),
/// 			Router:      myRouter.Name,
/// 			Region:      myRouter.Region,
/// 			Description: pulumi.String("My example prefix named set"),
/// 			Type:        pulumi.String("NAMED_SET_TYPE_PREFIX"),
/// 			Elements: compute.RouterNamedSetElementArray{
/// 				&compute.RouterNamedSetElementArgs{
/// 					Expression: pulumi.String("'10.0.0.0/8'"),
/// 					Title:      pulumi.String("private-range"),
/// 				},
/// 				&compute.RouterNamedSetElementArgs{
/// 					Expression: pulumi.String("'172.16.0.0/12'"),
/// 				},
/// 				&compute.RouterNamedSetElementArgs{
/// 					Expression: pulumi.String("prefix('192.168.10.0/24').orLonger()"),
/// 					Title:      pulumi.String("or-longer-example"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterRoutePolicy(ctx, "my_route_policy", &compute.RouterRoutePolicyArgs{
/// 			Name:   pulumi.String("policy-name"),
/// 			Router: myRouter.Name,
/// 			Region: myRouter.Region,
/// 			Type:   pulumi.String("ROUTE_POLICY_TYPE_EXPORT"),
/// 			Terms: compute.RouterRoutePolicyTermArray{
/// 				&compute.RouterRoutePolicyTermArgs{
/// 					Priority: pulumi.Int(1),
/// 					Match: &compute.RouterRoutePolicyTermMatchArgs{
/// 						Expression: myPrefixSet.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("destination.inAnyRange(prefixSets('%v'))", name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					Actions: compute.RouterRoutePolicyTermActionArray{
/// 						&compute.RouterRoutePolicyTermActionArgs{
/// 							Expression: pulumi.String("accept()"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "my_network" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_router" "my_router" {
///   name    = "my-router"
///   network = gcp_compute_network.my_network.name
///   region  = "us-central1"
///   bgp = {
///     asn = 64514
///   }
/// }
/// resource "gcp_compute_routernamedset" "my_prefix_set" {
///   name        = "prefix-set-name"
///   router      = gcp_compute_router.my_router.name
///   region      = gcp_compute_router.my_router.region
///   description = "My example prefix named set"
///   type        = "NAMED_SET_TYPE_PREFIX"
///   elements {
///     expression = "'10.0.0.0/8'"
///     title      = "private-range"
///   }
///   elements {
///     expression = "'172.16.0.0/12'"
///   }
///   elements {
///     expression = "prefix('192.168.10.0/24').orLonger()"
///     title      = "or-longer-example"
///   }
/// }
/// resource "gcp_compute_routerroutepolicy" "my_route_policy" {
///   name   = "policy-name"
///   router = gcp_compute_router.my_router.name
///   region = gcp_compute_router.my_router.region
///   type   = "ROUTE_POLICY_TYPE_EXPORT"
///   terms {
///     priority = 1
///     match = {
///       expression ="destination.inAnyRange(prefixSets('${gcp_compute_routernamedset.my_prefix_set.name}'))"
///     }
///     actions {
///       expression = "accept()"
///     }
///   }
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
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.RouterNamedSet;
/// import com.pulumi.gcp.compute.RouterNamedSetArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNamedSetElementArgs;
/// import com.pulumi.gcp.compute.RouterRoutePolicy;
/// import com.pulumi.gcp.compute.RouterRoutePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermActionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var myNetwork = new Network("myNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var myRouter = new Router("myRouter", RouterArgs.builder()
///             .name("my-router")
///             .network(myNetwork.name())
///             .region("us-central1")
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .build())
///             .build());
///
///         var myPrefixSet = new RouterNamedSet("myPrefixSet", RouterNamedSetArgs.builder()
///             .name("prefix-set-name")
///             .router(myRouter.name())
///             .region(myRouter.region())
///             .description("My example prefix named set")
///             .type("NAMED_SET_TYPE_PREFIX")
///             .elements(
///                 RouterNamedSetElementArgs.builder()
///                     .expression("'10.0.0.0/8'")
///                     .title("private-range")
///                     .build(),
///                 RouterNamedSetElementArgs.builder()
///                     .expression("'172.16.0.0/12'")
///                     .build(),
///                 RouterNamedSetElementArgs.builder()
///                     .expression("prefix('192.168.10.0/24').orLonger()")
///                     .title("or-longer-example")
///                     .build())
///             .build());
///
///         var myRoutePolicy = new RouterRoutePolicy("myRoutePolicy", RouterRoutePolicyArgs.builder()
///             .name("policy-name")
///             .router(myRouter.name())
///             .region(myRouter.region())
///             .type("ROUTE_POLICY_TYPE_EXPORT")
///             .terms(RouterRoutePolicyTermArgs.builder()
///                 .priority(1)
///                 .match(RouterRoutePolicyTermMatchArgs.builder()
///                     .expression(myPrefixSet.name().applyValue(_name -> String.format("destination.inAnyRange(prefixSets('%s'))", _name)))
///                     .build())
///                 .actions(RouterRoutePolicyTermActionArgs.builder()
///                     .expression("accept()")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myNetwork:
///     type: gcp:compute:Network
///     name: my_network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   myRouter:
///     type: gcp:compute:Router
///     name: my_router
///     properties:
///       name: my-router
///       network: ${myNetwork.name}
///       region: us-central1
///       bgp:
///         asn: 64514
///   myPrefixSet:
///     type: gcp:compute:RouterNamedSet
///     name: my_prefix_set
///     properties:
///       name: prefix-set-name
///       router: ${myRouter.name}
///       region: ${myRouter.region}
///       description: My example prefix named set
///       type: NAMED_SET_TYPE_PREFIX
///       elements:
///         - expression: '''10.0.0.0/8'''
///           title: private-range
///         - expression: '''172.16.0.0/12'''
///         - expression: prefix('192.168.10.0/24').orLonger()
///           title: or-longer-example
///   myRoutePolicy:
///     type: gcp:compute:RouterRoutePolicy
///     name: my_route_policy
///     properties:
///       name: policy-name
///       router: ${myRouter.name}
///       region: ${myRouter.region}
///       type: ROUTE_POLICY_TYPE_EXPORT
///       terms:
///         - priority: 1
///           match:
///             expression: destination.inAnyRange(prefixSets('${myPrefixSet.name}'))
///           actions:
///             - expression: accept()
/// ```
///
/// ### Router Named Set Prefix
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
/// const router = new gcp.compute.Router("router", {
///     name: "my-router",
///     network: net.name,
///     region: "us-central1",
/// });
/// const prefixSet = new gcp.compute.RouterNamedSet("prefix_set", {
///     name: "my-prefix-set",
///     router: router.name,
///     region: "us-central1",
///     description: "A sample prefix named set",
///     type: "NAMED_SET_TYPE_PREFIX",
///     elements: [
///         {
///             expression: "'10.0.0.0/8'",
///             title: "ten-slash-eight",
///             description: "A sample IPv4 prefix",
///         },
///         {
///             expression: "'172.16.0.0/12'",
///             title: "seventeen-two-slash-sixteen",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// router = gcp.compute.Router("router",
///     name="my-router",
///     network=net.name,
///     region="us-central1")
/// prefix_set = gcp.compute.RouterNamedSet("prefix_set",
///     name="my-prefix-set",
///     router=router.name,
///     region="us-central1",
///     description="A sample prefix named set",
///     type="NAMED_SET_TYPE_PREFIX",
///     elements=[
///         {
///             "expression": "'10.0.0.0/8'",
///             "title": "ten-slash-eight",
///             "description": "A sample IPv4 prefix",
///         },
///         {
///             "expression": "'172.16.0.0/12'",
///             "title": "seventeen-two-slash-sixteen",
///         },
///     ])
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
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router",
///         Network = net.Name,
///         Region = "us-central1",
///     });
///
///     var prefixSet = new Gcp.Compute.RouterNamedSet("prefix_set", new()
///     {
///         Name = "my-prefix-set",
///         Router = router.Name,
///         Region = "us-central1",
///         Description = "A sample prefix named set",
///         Type = "NAMED_SET_TYPE_PREFIX",
///         Elements = new[]
///         {
///             new Gcp.Compute.Inputs.RouterNamedSetElementArgs
///             {
///                 Expression = "'10.0.0.0/8'",
///                 Title = "ten-slash-eight",
///                 Description = "A sample IPv4 prefix",
///             },
///             new Gcp.Compute.Inputs.RouterNamedSetElementArgs
///             {
///                 Expression = "'172.16.0.0/12'",
///                 Title = "seventeen-two-slash-sixteen",
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
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Network: net.Name,
/// 			Region:  pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterNamedSet(ctx, "prefix_set", &compute.RouterNamedSetArgs{
/// 			Name:        pulumi.String("my-prefix-set"),
/// 			Router:      router.Name,
/// 			Region:      pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample prefix named set"),
/// 			Type:        pulumi.String("NAMED_SET_TYPE_PREFIX"),
/// 			Elements: compute.RouterNamedSetElementArray{
/// 				&compute.RouterNamedSetElementArgs{
/// 					Expression:  pulumi.String("'10.0.0.0/8'"),
/// 					Title:       pulumi.String("ten-slash-eight"),
/// 					Description: pulumi.String("A sample IPv4 prefix"),
/// 				},
/// 				&compute.RouterNamedSetElementArgs{
/// 					Expression: pulumi.String("'172.16.0.0/12'"),
/// 					Title:      pulumi.String("seventeen-two-slash-sixteen"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "net" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_router" "router" {
///   name    = "my-router"
///   network = gcp_compute_network.net.name
///   region  = "us-central1"
/// }
/// resource "gcp_compute_routernamedset" "prefix_set" {
///   name        = "my-prefix-set"
///   router      = gcp_compute_router.router.name
///   region      = "us-central1"
///   description = "A sample prefix named set"
///   type        = "NAMED_SET_TYPE_PREFIX"
///   elements {
///     expression  = "'10.0.0.0/8'"
///     title       = "ten-slash-eight"
///     description = "A sample IPv4 prefix"
///   }
///   elements {
///     expression = "'172.16.0.0/12'"
///     title      = "seventeen-two-slash-sixteen"
///   }
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
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.RouterNamedSet;
/// import com.pulumi.gcp.compute.RouterNamedSetArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNamedSetElementArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router")
///             .network(net.name())
///             .region("us-central1")
///             .build());
///
///         var prefixSet = new RouterNamedSet("prefixSet", RouterNamedSetArgs.builder()
///             .name("my-prefix-set")
///             .router(router.name())
///             .region("us-central1")
///             .description("A sample prefix named set")
///             .type("NAMED_SET_TYPE_PREFIX")
///             .elements(
///                 RouterNamedSetElementArgs.builder()
///                     .expression("'10.0.0.0/8'")
///                     .title("ten-slash-eight")
///                     .description("A sample IPv4 prefix")
///                     .build(),
///                 RouterNamedSetElementArgs.builder()
///                     .expression("'172.16.0.0/12'")
///                     .title("seventeen-two-slash-sixteen")
///                     .build())
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
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       network: ${net.name}
///       region: us-central1
///   prefixSet:
///     type: gcp:compute:RouterNamedSet
///     name: prefix_set
///     properties:
///       name: my-prefix-set
///       router: ${router.name}
///       region: us-central1
///       description: A sample prefix named set
///       type: NAMED_SET_TYPE_PREFIX
///       elements:
///         - expression: '''10.0.0.0/8'''
///           title: ten-slash-eight
///           description: A sample IPv4 prefix
///         - expression: '''172.16.0.0/12'''
///           title: seventeen-two-slash-sixteen
/// ```
///
/// ### Router Named Set Community
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
/// const router = new gcp.compute.Router("router", {
///     name: "my-router",
///     network: net.name,
///     region: "us-central1",
/// });
/// const communitySet = new gcp.compute.RouterNamedSet("community_set", {
///     name: "my-community-set",
///     router: router.name,
///     region: "us-central1",
///     description: "A sample community named set",
///     type: "NAMED_SET_TYPE_COMMUNITY",
///     elements: [{
///         expression: "'65512:100'",
///         title: "community-one",
///         description: "A sample BGP community",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net = gcp.compute.Network("net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// router = gcp.compute.Router("router",
///     name="my-router",
///     network=net.name,
///     region="us-central1")
/// community_set = gcp.compute.RouterNamedSet("community_set",
///     name="my-community-set",
///     router=router.name,
///     region="us-central1",
///     description="A sample community named set",
///     type="NAMED_SET_TYPE_COMMUNITY",
///     elements=[{
///         "expression": "'65512:100'",
///         "title": "community-one",
///         "description": "A sample BGP community",
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
///         AutoCreateSubnetworks = false,
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router",
///         Network = net.Name,
///         Region = "us-central1",
///     });
///
///     var communitySet = new Gcp.Compute.RouterNamedSet("community_set", new()
///     {
///         Name = "my-community-set",
///         Router = router.Name,
///         Region = "us-central1",
///         Description = "A sample community named set",
///         Type = "NAMED_SET_TYPE_COMMUNITY",
///         Elements = new[]
///         {
///             new Gcp.Compute.Inputs.RouterNamedSetElementArgs
///             {
///                 Expression = "'65512:100'",
///                 Title = "community-one",
///                 Description = "A sample BGP community",
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
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Network: net.Name,
/// 			Region:  pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterNamedSet(ctx, "community_set", &compute.RouterNamedSetArgs{
/// 			Name:        pulumi.String("my-community-set"),
/// 			Router:      router.Name,
/// 			Region:      pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample community named set"),
/// 			Type:        pulumi.String("NAMED_SET_TYPE_COMMUNITY"),
/// 			Elements: compute.RouterNamedSetElementArray{
/// 				&compute.RouterNamedSetElementArgs{
/// 					Expression:  pulumi.String("'65512:100'"),
/// 					Title:       pulumi.String("community-one"),
/// 					Description: pulumi.String("A sample BGP community"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "net" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_router" "router" {
///   name    = "my-router"
///   network = gcp_compute_network.net.name
///   region  = "us-central1"
/// }
/// resource "gcp_compute_routernamedset" "community_set" {
///   name        = "my-community-set"
///   router      = gcp_compute_router.router.name
///   region      = "us-central1"
///   description = "A sample community named set"
///   type        = "NAMED_SET_TYPE_COMMUNITY"
///   elements {
///     expression  = "'65512:100'"
///     title       = "community-one"
///     description = "A sample BGP community"
///   }
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
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.RouterNamedSet;
/// import com.pulumi.gcp.compute.RouterNamedSetArgs;
/// import com.pulumi.gcp.compute.inputs.RouterNamedSetElementArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router")
///             .network(net.name())
///             .region("us-central1")
///             .build());
///
///         var communitySet = new RouterNamedSet("communitySet", RouterNamedSetArgs.builder()
///             .name("my-community-set")
///             .router(router.name())
///             .region("us-central1")
///             .description("A sample community named set")
///             .type("NAMED_SET_TYPE_COMMUNITY")
///             .elements(RouterNamedSetElementArgs.builder()
///                 .expression("'65512:100'")
///                 .title("community-one")
///                 .description("A sample BGP community")
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
///       autoCreateSubnetworks: false
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       network: ${net.name}
///       region: us-central1
///   communitySet:
///     type: gcp:compute:RouterNamedSet
///     name: community_set
///     properties:
///       name: my-community-set
///       router: ${router.name}
///       region: us-central1
///       description: A sample community named set
///       type: NAMED_SET_TYPE_COMMUNITY
///       elements:
///         - expression: '''65512:100'''
///           title: community-one
///           description: A sample BGP community
/// ```
///
///
/// ## Import
///
/// RouterNamedSet can be imported using any of these accepted formats:
///
/// * `{{project}}/{{region}}/{{router}}/namedSets/{{name}}`
/// * `{{project}}/{{region}}/{{router}}/{{name}}`
/// * `{{region}}/{{router}}/{{name}}`
/// * `{{router}}/{{name}}`
///
///
/// When using the `pulumi import` command, RouterNamedSet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerNamedSet:RouterNamedSet default {{project}}/{{region}}/{{router}}/namedSets/{{name}}
/// $ pulumi import gcp:compute/routerNamedSet:RouterNamedSet default {{project}}/{{region}}/{{router}}/{{name}}
/// $ pulumi import gcp:compute/routerNamedSet:RouterNamedSet default {{region}}/{{router}}/{{name}}
/// $ pulumi import gcp:compute/routerNamedSet:RouterNamedSet default {{router}}/{{name}}
/// ```
class RouterNamedSet extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of the Named Set.
  late final pulumi.Output<String?> description;
  /// CEL expressions that are comparable to constructs of this set's type.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> elements;
  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final pulumi.Output<String> fingerprint;
  /// The name of the Named Set, which must be a resource ID segment and unique
  /// within all named sets owned by the Router.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where the router resides.
  late final pulumi.Output<String> region;
  /// The name of the Cloud Router in which this Named Set will be configured.
  late final pulumi.Output<String> router;
  /// The type of the Named Set.
  /// Possible values are: `NAMED_SET_TYPE_PREFIX`, `NAMED_SET_TYPE_COMMUNITY`.
  late final pulumi.Output<String> type;

  /// Creates a new [RouterNamedSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterNamedSet]. {@macro pulumi_compute_router_named_set_router_named_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterNamedSet(
    String name, {
    RouterNamedSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerNamedSet:RouterNamedSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    elements = registerOutput<List<Map<String, dynamic>>?>('elements');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [RouterNamedSet] resource's state with the given [name] and [id].
  static RouterNamedSet get(
    String name,
    pulumi.Input<String> id, {
    RouterNamedSetState? state,
  }) {
    return RouterNamedSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterNamedSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerNamedSet:RouterNamedSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    elements = registerOutput<List<Map<String, dynamic>>?>('elements');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    type = registerOutput<String>('type');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_params.dart';
import 'network_state.dart';

/// Manages a VPC network or legacy network resource on GCP.
///
///
/// To get more information about Network, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vpc/docs/vpc)
///
/// ## Example Usage
///
/// ### Network Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpcNetwork = new gcp.compute.Network("vpc_network", {name: "vpc-network"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc_network = gcp.compute.Network("vpc_network", name="vpc-network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcNetwork = new Gcp.Compute.Network("vpc_network", new()
///     {
///         Name = "vpc-network",
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
/// 		_, err := compute.NewNetwork(ctx, "vpc_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("vpc-network"),
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
///         var vpcNetwork = new Network("vpcNetwork", NetworkArgs.builder()
///             .name("vpc-network")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcNetwork:
///     type: gcp:compute:Network
///     name: vpc_network
///     properties:
///       name: vpc-network
/// ```
///
/// ### Network Custom Mtu
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpcNetwork = new gcp.compute.Network("vpc_network", {
///     project: "my-project-name",
///     name: "vpc-network",
///     autoCreateSubnetworks: true,
///     mtu: 1460,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc_network = gcp.compute.Network("vpc_network",
///     project="my-project-name",
///     name="vpc-network",
///     auto_create_subnetworks=True,
///     mtu=1460)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcNetwork = new Gcp.Compute.Network("vpc_network", new()
///     {
///         Project = "my-project-name",
///         Name = "vpc-network",
///         AutoCreateSubnetworks = true,
///         Mtu = 1460,
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
/// 		_, err := compute.NewNetwork(ctx, "vpc_network", &compute.NetworkArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("vpc-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(true),
/// 			Mtu:                   pulumi.Int(1460),
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
///         var vpcNetwork = new Network("vpcNetwork", NetworkArgs.builder()
///             .project("my-project-name")
///             .name("vpc-network")
///             .autoCreateSubnetworks(true)
///             .mtu(1460)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcNetwork:
///     type: gcp:compute:Network
///     name: vpc_network
///     properties:
///       project: my-project-name
///       name: vpc-network
///       autoCreateSubnetworks: true
///       mtu: 1460
/// ```
///
/// ### Network Custom Firewall Enforcement Order
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpcNetwork = new gcp.compute.Network("vpc_network", {
///     project: "my-project-name",
///     name: "vpc-network",
///     autoCreateSubnetworks: true,
///     networkFirewallPolicyEnforcementOrder: "BEFORE_CLASSIC_FIREWALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc_network = gcp.compute.Network("vpc_network",
///     project="my-project-name",
///     name="vpc-network",
///     auto_create_subnetworks=True,
///     network_firewall_policy_enforcement_order="BEFORE_CLASSIC_FIREWALL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcNetwork = new Gcp.Compute.Network("vpc_network", new()
///     {
///         Project = "my-project-name",
///         Name = "vpc-network",
///         AutoCreateSubnetworks = true,
///         NetworkFirewallPolicyEnforcementOrder = "BEFORE_CLASSIC_FIREWALL",
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
/// 		_, err := compute.NewNetwork(ctx, "vpc_network", &compute.NetworkArgs{
/// 			Project:                               pulumi.String("my-project-name"),
/// 			Name:                                  pulumi.String("vpc-network"),
/// 			AutoCreateSubnetworks:                 pulumi.Bool(true),
/// 			NetworkFirewallPolicyEnforcementOrder: pulumi.String("BEFORE_CLASSIC_FIREWALL"),
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
///         var vpcNetwork = new Network("vpcNetwork", NetworkArgs.builder()
///             .project("my-project-name")
///             .name("vpc-network")
///             .autoCreateSubnetworks(true)
///             .networkFirewallPolicyEnforcementOrder("BEFORE_CLASSIC_FIREWALL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcNetwork:
///     type: gcp:compute:Network
///     name: vpc_network
///     properties:
///       project: my-project-name
///       name: vpc-network
///       autoCreateSubnetworks: true
///       networkFirewallPolicyEnforcementOrder: BEFORE_CLASSIC_FIREWALL
/// ```
///
/// ### Network Bgp Best Path Selection Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpcNetwork = new gcp.compute.Network("vpc_network", {
///     project: "my-project-name",
///     name: "vpc-network",
///     routingMode: "GLOBAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc_network = gcp.compute.Network("vpc_network",
///     project="my-project-name",
///     name="vpc-network",
///     routing_mode="GLOBAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcNetwork = new Gcp.Compute.Network("vpc_network", new()
///     {
///         Project = "my-project-name",
///         Name = "vpc-network",
///         RoutingMode = "GLOBAL",
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
/// 		_, err := compute.NewNetwork(ctx, "vpc_network", &compute.NetworkArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			Name:        pulumi.String("vpc-network"),
/// 			RoutingMode: pulumi.String("GLOBAL"),
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
///         var vpcNetwork = new Network("vpcNetwork", NetworkArgs.builder()
///             .project("my-project-name")
///             .name("vpc-network")
///             .routingMode("GLOBAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcNetwork:
///     type: gcp:compute:Network
///     name: vpc_network
///     properties:
///       project: my-project-name
///       name: vpc-network
///       routingMode: GLOBAL
/// ```
///
/// ### Network Bgp Best Path Selection Mode Standard
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpcNetwork = new gcp.compute.Network("vpc_network", {
///     project: "my-project-name",
///     name: "vpc-network",
///     routingMode: "GLOBAL",
///     bgpBestPathSelectionMode: "STANDARD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc_network = gcp.compute.Network("vpc_network",
///     project="my-project-name",
///     name="vpc-network",
///     routing_mode="GLOBAL",
///     bgp_best_path_selection_mode="STANDARD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcNetwork = new Gcp.Compute.Network("vpc_network", new()
///     {
///         Project = "my-project-name",
///         Name = "vpc-network",
///         RoutingMode = "GLOBAL",
///         BgpBestPathSelectionMode = "STANDARD",
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
/// 		_, err := compute.NewNetwork(ctx, "vpc_network", &compute.NetworkArgs{
/// 			Project:                  pulumi.String("my-project-name"),
/// 			Name:                     pulumi.String("vpc-network"),
/// 			RoutingMode:              pulumi.String("GLOBAL"),
/// 			BgpBestPathSelectionMode: pulumi.String("STANDARD"),
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
///         var vpcNetwork = new Network("vpcNetwork", NetworkArgs.builder()
///             .project("my-project-name")
///             .name("vpc-network")
///             .routingMode("GLOBAL")
///             .bgpBestPathSelectionMode("STANDARD")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcNetwork:
///     type: gcp:compute:Network
///     name: vpc_network
///     properties:
///       project: my-project-name
///       name: vpc-network
///       routingMode: GLOBAL
///       bgpBestPathSelectionMode: STANDARD
/// ```
///
/// ### Network Bgp Best Path Selection Mode Standard Custom Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpcNetwork = new gcp.compute.Network("vpc_network", {
///     project: "my-project-name",
///     name: "vpc-network",
///     routingMode: "GLOBAL",
///     bgpBestPathSelectionMode: "STANDARD",
///     bgpAlwaysCompareMed: true,
///     bgpInterRegionCost: "ADD_COST_TO_MED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc_network = gcp.compute.Network("vpc_network",
///     project="my-project-name",
///     name="vpc-network",
///     routing_mode="GLOBAL",
///     bgp_best_path_selection_mode="STANDARD",
///     bgp_always_compare_med=True,
///     bgp_inter_region_cost="ADD_COST_TO_MED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcNetwork = new Gcp.Compute.Network("vpc_network", new()
///     {
///         Project = "my-project-name",
///         Name = "vpc-network",
///         RoutingMode = "GLOBAL",
///         BgpBestPathSelectionMode = "STANDARD",
///         BgpAlwaysCompareMed = true,
///         BgpInterRegionCost = "ADD_COST_TO_MED",
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
/// 		_, err := compute.NewNetwork(ctx, "vpc_network", &compute.NetworkArgs{
/// 			Project:                  pulumi.String("my-project-name"),
/// 			Name:                     pulumi.String("vpc-network"),
/// 			RoutingMode:              pulumi.String("GLOBAL"),
/// 			BgpBestPathSelectionMode: pulumi.String("STANDARD"),
/// 			BgpAlwaysCompareMed:      pulumi.Bool(true),
/// 			BgpInterRegionCost:       pulumi.String("ADD_COST_TO_MED"),
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
///         var vpcNetwork = new Network("vpcNetwork", NetworkArgs.builder()
///             .project("my-project-name")
///             .name("vpc-network")
///             .routingMode("GLOBAL")
///             .bgpBestPathSelectionMode("STANDARD")
///             .bgpAlwaysCompareMed(true)
///             .bgpInterRegionCost("ADD_COST_TO_MED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcNetwork:
///     type: gcp:compute:Network
///     name: vpc_network
///     properties:
///       project: my-project-name
///       name: vpc-network
///       routingMode: GLOBAL
///       bgpBestPathSelectionMode: STANDARD
///       bgpAlwaysCompareMed: true
///       bgpInterRegionCost: ADD_COST_TO_MED
/// ```
///
/// ### Network Bgp Standard Mode Delete Med
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpcNetwork = new gcp.compute.Network("vpc_network", {
///     name: "vpc-network",
///     autoCreateSubnetworks: false,
///     routingMode: "GLOBAL",
///     project: "my-project-name",
///     bgpBestPathSelectionMode: "LEGACY",
///     bgpAlwaysCompareMed: false,
///     deleteBgpAlwaysCompareMed: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc_network = gcp.compute.Network("vpc_network",
///     name="vpc-network",
///     auto_create_subnetworks=False,
///     routing_mode="GLOBAL",
///     project="my-project-name",
///     bgp_best_path_selection_mode="LEGACY",
///     bgp_always_compare_med=False,
///     delete_bgp_always_compare_med=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcNetwork = new Gcp.Compute.Network("vpc_network", new()
///     {
///         Name = "vpc-network",
///         AutoCreateSubnetworks = false,
///         RoutingMode = "GLOBAL",
///         Project = "my-project-name",
///         BgpBestPathSelectionMode = "LEGACY",
///         BgpAlwaysCompareMed = false,
///         DeleteBgpAlwaysCompareMed = true,
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
/// 		_, err := compute.NewNetwork(ctx, "vpc_network", &compute.NetworkArgs{
/// 			Name:                      pulumi.String("vpc-network"),
/// 			AutoCreateSubnetworks:     pulumi.Bool(false),
/// 			RoutingMode:               pulumi.String("GLOBAL"),
/// 			Project:                   pulumi.String("my-project-name"),
/// 			BgpBestPathSelectionMode:  pulumi.String("LEGACY"),
/// 			BgpAlwaysCompareMed:       pulumi.Bool(false),
/// 			DeleteBgpAlwaysCompareMed: pulumi.Bool(true),
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
///         var vpcNetwork = new Network("vpcNetwork", NetworkArgs.builder()
///             .name("vpc-network")
///             .autoCreateSubnetworks(false)
///             .routingMode("GLOBAL")
///             .project("my-project-name")
///             .bgpBestPathSelectionMode("LEGACY")
///             .bgpAlwaysCompareMed(false)
///             .deleteBgpAlwaysCompareMed(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcNetwork:
///     type: gcp:compute:Network
///     name: vpc_network
///     properties:
///       name: vpc-network
///       autoCreateSubnetworks: false
///       routingMode: GLOBAL
///       project: my-project-name
///       bgpBestPathSelectionMode: LEGACY
///       bgpAlwaysCompareMed: false # By setting this to true, any previous value for bgp_always_compare_med
///       #   # will be cleared, reverting it to the API default.
///       deleteBgpAlwaysCompareMed: true
/// ```
///
///
/// ## Import
///
/// Network can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networks/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Network can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/network:Network default projects/{{project}}/global/networks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/network:Network default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/network:Network default {{name}}
/// ```
class Network extends pulumi.CustomResource {
  /// When set to `true`, the network is created in "auto subnet mode" and
  /// it will create a subnet for each region automatically across the
  /// `10.128.0.0/9` address range.
  /// When set to `false`, the network is created in "custom subnet mode" so
  /// the user can explicitly connect subnetwork resources.
  late final pulumi.Output<bool?> autoCreateSubnetworks;

  /// Enables/disables the comparison of MED across routes with different Neighbor ASNs.
  /// This value can only be set if the --bgp-best-path-selection-mode is STANDARD
  late final pulumi.Output<bool> bgpAlwaysCompareMed;

  /// The BGP best selection algorithm to be employed. MODE can be LEGACY or STANDARD.
  /// Possible values are: `LEGACY`, `STANDARD`.
  late final pulumi.Output<String> bgpBestPathSelectionMode;

  /// Choice of the behavior of inter-regional cost and MED in the BPS algorithm.
  /// Possible values are: `DEFAULT`, `ADD_COST_TO_MED`.
  late final pulumi.Output<String> bgpInterRegionCost;

  /// If set to `true`, the `bgp_always_compare_med` field will be cleared.
  /// If set to `false` (the default), `bgp_always_compare_med` will be set to the value specified in the configuration.
  late final pulumi.Output<bool?> deleteBgpAlwaysCompareMed;

  /// If set to `true`, default routes (`0.0.0.0/0`) will be deleted
  /// immediately after network creation. Defaults to `false`.
  late final pulumi.Output<bool?> deleteDefaultRoutesOnCreate;

  /// An optional description of this resource. The resource must be
  /// recreated to modify this field.
  late final pulumi.Output<String?> description;

  /// Enable ULA internal ipv6 on this network. Enabling this feature will assign
  /// a /48 from google defined ULA prefix fd20::/20.
  late final pulumi.Output<bool?> enableUlaInternalIpv6;

  /// The gateway address for default routing out of the network. This value
  /// is selected by GCP.
  late final pulumi.Output<String> gatewayIpv4;

  /// When enabling ula internal ipv6, caller optionally can specify the /48 range
  /// they want from the google defined ULA prefix fd20::/20. The input must be a
  /// valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will
  /// fail if the speficied /48 is already in used by another resource.
  /// If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field.
  late final pulumi.Output<String> internalIpv6Range;

  /// Maximum Transmission Unit in bytes. The default value is 1460 bytes.
  /// The minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).
  /// Note that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped
  /// with an ICMP `Fragmentation-Needed` message if the packets are routed to the Internet or other VPCs
  /// with varying MTUs.
  late final pulumi.Output<int> mtu;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// Set the order that Firewall Rules and Firewall Policies are evaluated.
  /// Default value is `AFTER_CLASSIC_FIREWALL`.
  /// Possible values are: `BEFORE_CLASSIC_FIREWALL`, `AFTER_CLASSIC_FIREWALL`.
  late final pulumi.Output<String?> networkFirewallPolicyEnforcementOrder;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> networkId;

  /// A full or partial URL of the network profile to apply to this network.
  /// This field can be set only at resource creation time. For example, the
  /// following are valid URLs:
  /// * https://www.googleapis.com/compute/v1/projects/{projectId}/global/networkProfiles/{network_profile_name}
  /// * projects/{projectId}/global/networkProfiles/{network_profile_name}
  late final pulumi.Output<String?> networkProfile;

  /// (Deprecated)
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> numericId;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<NetworkParams?> params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The network-wide routing mode to use. If set to `REGIONAL`, this
  /// network's cloud routers will only advertise routes with subnetworks
  /// of this network in the same region as the router. If set to `GLOBAL`,
  /// this network's cloud routers will advertise routes with all
  /// subnetworks of this network, across regions.
  /// Possible values are: `REGIONAL`, `GLOBAL`.
  late final pulumi.Output<String> routingMode;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_compute_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/network:Network',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCreateSubnetworks = registerOutput<bool?>('autoCreateSubnetworks');
    bgpAlwaysCompareMed = registerOutput<bool>('bgpAlwaysCompareMed');
    bgpBestPathSelectionMode = registerOutput<String>(
      'bgpBestPathSelectionMode',
    );
    bgpInterRegionCost = registerOutput<String>('bgpInterRegionCost');
    deleteBgpAlwaysCompareMed = registerOutput<bool?>(
      'deleteBgpAlwaysCompareMed',
    );
    deleteDefaultRoutesOnCreate = registerOutput<bool?>(
      'deleteDefaultRoutesOnCreate',
    );
    description = registerOutput<String?>('description');
    enableUlaInternalIpv6 = registerOutput<bool?>('enableUlaInternalIpv6');
    gatewayIpv4 = registerOutput<String>('gatewayIpv4');
    internalIpv6Range = registerOutput<String>('internalIpv6Range');
    mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    networkFirewallPolicyEnforcementOrder = registerOutput<String?>(
      'networkFirewallPolicyEnforcementOrder',
    );
    networkId = registerOutput<String>('networkId');
    networkProfile = registerOutput<String?>('networkProfile');
    numericId = registerOutput<String>('numericId');
    params = registerOutput<NetworkParams?>('params');
    project = registerOutput<String>('project');
    routingMode = registerOutput<String>('routingMode');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/network:Network',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoCreateSubnetworks = registerOutput<bool?>('autoCreateSubnetworks');
    bgpAlwaysCompareMed = registerOutput<bool>('bgpAlwaysCompareMed');
    bgpBestPathSelectionMode = registerOutput<String>(
      'bgpBestPathSelectionMode',
    );
    bgpInterRegionCost = registerOutput<String>('bgpInterRegionCost');
    deleteBgpAlwaysCompareMed = registerOutput<bool?>(
      'deleteBgpAlwaysCompareMed',
    );
    deleteDefaultRoutesOnCreate = registerOutput<bool?>(
      'deleteDefaultRoutesOnCreate',
    );
    description = registerOutput<String?>('description');
    enableUlaInternalIpv6 = registerOutput<bool?>('enableUlaInternalIpv6');
    gatewayIpv4 = registerOutput<String>('gatewayIpv4');
    internalIpv6Range = registerOutput<String>('internalIpv6Range');
    mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    networkFirewallPolicyEnforcementOrder = registerOutput<String?>(
      'networkFirewallPolicyEnforcementOrder',
    );
    networkId = registerOutput<String>('networkId');
    networkProfile = registerOutput<String?>('networkProfile');
    numericId = registerOutput<String>('numericId');
    params = registerOutput<NetworkParams?>('params');
    project = registerOutput<String>('project');
    routingMode = registerOutput<String>('routingMode');
    selfLink = registerOutput<String>('selfLink');
  }
}

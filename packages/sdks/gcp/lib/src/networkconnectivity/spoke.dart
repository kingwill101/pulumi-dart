import 'package:pulumi/pulumi.dart' as pulumi;
import 'spoke_args.dart';
import 'spoke_gateway.dart';
import 'spoke_linked_interconnect_attachments.dart';
import 'spoke_linked_producer_vpc_network.dart';
import 'spoke_linked_router_appliance_instances.dart';
import 'spoke_linked_vpc_network.dart';
import 'spoke_linked_vpn_tunnels.dart';
import 'spoke_reason.dart';
import 'spoke_state.dart';

/// The NetworkConnectivity Spoke resource
///
///
/// To get more information about Spoke, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.spokes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Spoke Linked Vpc Network Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "net",
///     autoCreateSubnetworks: false,
/// });
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "hub1",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "spoke1",
///     location: "global",
///     description: "A sample spoke with a linked router appliance instance",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     linkedVpcNetwork: {
///         excludeExportRanges: [
///             "198.51.100.0/24",
///             "10.10.0.0/16",
///         ],
///         includeExportRanges: [
///             "198.51.100.0/23",
///             "10.0.0.0/8",
///         ],
///         uri: network.selfLink,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="net",
///     auto_create_subnetworks=False)
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="hub1",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     })
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="spoke1",
///     location="global",
///     description="A sample spoke with a linked router appliance instance",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     linked_vpc_network={
///         "exclude_export_ranges": [
///             "198.51.100.0/24",
///             "10.10.0.0/16",
///         ],
///         "include_export_ranges": [
///             "198.51.100.0/23",
///             "10.0.0.0/8",
///         ],
///         "uri": network.self_link,
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
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "hub1",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "spoke1",
///         Location = "global",
///         Description = "A sample spoke with a linked router appliance instance",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         LinkedVpcNetwork = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedVpcNetworkArgs
///         {
///             ExcludeExportRanges = new[]
///             {
///                 "198.51.100.0/24",
///                 "10.10.0.0/16",
///             },
///             IncludeExportRanges = new[]
///             {
///                 "198.51.100.0/23",
///                 "10.0.0.0/8",
///             },
///             Uri = network.SelfLink,
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("hub1"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("spoke1"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A sample spoke with a linked router appliance instance"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			LinkedVpcNetwork: &networkconnectivity.SpokeLinkedVpcNetworkArgs{
/// 				ExcludeExportRanges: pulumi.StringArray{
/// 					pulumi.String("198.51.100.0/24"),
/// 					pulumi.String("10.10.0.0/16"),
/// 				},
/// 				IncludeExportRanges: pulumi.StringArray{
/// 					pulumi.String("198.51.100.0/23"),
/// 					pulumi.String("10.0.0.0/8"),
/// 				},
/// 				Uri: network.SelfLink,
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedVpcNetworkArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("hub1")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("spoke1")
///             .location("global")
///             .description("A sample spoke with a linked router appliance instance")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .linkedVpcNetwork(SpokeLinkedVpcNetworkArgs.builder()
///                 .excludeExportRanges(
///                     "198.51.100.0/24",
///                     "10.10.0.0/16")
///                 .includeExportRanges(
///                     "198.51.100.0/23",
///                     "10.0.0.0/8")
///                 .uri(network.selfLink())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: net
///       autoCreateSubnetworks: false
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: hub1
///       description: A sample hub
///       labels:
///         label-two: value-one
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: spoke1
///       location: global
///       description: A sample spoke with a linked router appliance instance
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       linkedVpcNetwork:
///         excludeExportRanges:
///           - 198.51.100.0/24
///           - 10.10.0.0/16
///         includeExportRanges:
///           - 198.51.100.0/23
///           - 10.0.0.0/8
///         uri: ${network.selfLink}
/// ```
///
/// ### Network Connectivity Spoke Linked Vpc Network Group
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "net-spoke",
///     autoCreateSubnetworks: false,
/// });
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "hub1-spoke",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
/// });
/// const defaultGroup = new gcp.networkconnectivity.Group("default_group", {
///     hub: basicHub.id,
///     name: "default",
///     description: "A sample hub group",
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "group-spoke1",
///     location: "global",
///     description: "A sample spoke with a linked VPC",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     linkedVpcNetwork: {
///         excludeExportRanges: [
///             "198.51.100.0/24",
///             "10.10.0.0/16",
///         ],
///         includeExportRanges: [
///             "198.51.100.0/23",
///             "10.0.0.0/8",
///         ],
///         uri: network.selfLink,
///     },
///     group: defaultGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="net-spoke",
///     auto_create_subnetworks=False)
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="hub1-spoke",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     })
/// default_group = gcp.networkconnectivity.Group("default_group",
///     hub=basic_hub.id,
///     name="default",
///     description="A sample hub group")
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="group-spoke1",
///     location="global",
///     description="A sample spoke with a linked VPC",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     linked_vpc_network={
///         "exclude_export_ranges": [
///             "198.51.100.0/24",
///             "10.10.0.0/16",
///         ],
///         "include_export_ranges": [
///             "198.51.100.0/23",
///             "10.0.0.0/8",
///         ],
///         "uri": network.self_link,
///     },
///     group=default_group.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "net-spoke",
///         AutoCreateSubnetworks = false,
///     });
///
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "hub1-spoke",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///     });
///
///     var defaultGroup = new Gcp.NetworkConnectivity.Group("default_group", new()
///     {
///         Hub = basicHub.Id,
///         Name = "default",
///         Description = "A sample hub group",
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "group-spoke1",
///         Location = "global",
///         Description = "A sample spoke with a linked VPC",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         LinkedVpcNetwork = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedVpcNetworkArgs
///         {
///             ExcludeExportRanges = new[]
///             {
///                 "198.51.100.0/24",
///                 "10.10.0.0/16",
///             },
///             IncludeExportRanges = new[]
///             {
///                 "198.51.100.0/23",
///                 "10.0.0.0/8",
///             },
///             Uri = network.SelfLink,
///         },
///         Group = defaultGroup.Id,
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net-spoke"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("hub1-spoke"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGroup, err := networkconnectivity.NewGroup(ctx, "default_group", &networkconnectivity.GroupArgs{
/// 			Hub:         basicHub.ID(),
/// 			Name:        pulumi.String("default"),
/// 			Description: pulumi.String("A sample hub group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("group-spoke1"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A sample spoke with a linked VPC"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			LinkedVpcNetwork: &networkconnectivity.SpokeLinkedVpcNetworkArgs{
/// 				ExcludeExportRanges: pulumi.StringArray{
/// 					pulumi.String("198.51.100.0/24"),
/// 					pulumi.String("10.10.0.0/16"),
/// 				},
/// 				IncludeExportRanges: pulumi.StringArray{
/// 					pulumi.String("198.51.100.0/23"),
/// 					pulumi.String("10.0.0.0/8"),
/// 				},
/// 				Uri: network.SelfLink,
/// 			},
/// 			Group: defaultGroup.ID(),
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Group;
/// import com.pulumi.gcp.networkconnectivity.GroupArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedVpcNetworkArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("net-spoke")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("hub1-spoke")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .build());
///
///         var defaultGroup = new Group("defaultGroup", GroupArgs.builder()
///             .hub(basicHub.id())
///             .name("default")
///             .description("A sample hub group")
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("group-spoke1")
///             .location("global")
///             .description("A sample spoke with a linked VPC")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .linkedVpcNetwork(SpokeLinkedVpcNetworkArgs.builder()
///                 .excludeExportRanges(
///                     "198.51.100.0/24",
///                     "10.10.0.0/16")
///                 .includeExportRanges(
///                     "198.51.100.0/23",
///                     "10.0.0.0/8")
///                 .uri(network.selfLink())
///                 .build())
///             .group(defaultGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: net-spoke
///       autoCreateSubnetworks: false
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: hub1-spoke
///       description: A sample hub
///       labels:
///         label-two: value-one
///   defaultGroup:
///     type: gcp:networkconnectivity:Group
///     name: default_group
///     properties:
///       hub: ${basicHub.id}
///       name: default
///       description: A sample hub group
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: group-spoke1
///       location: global
///       description: A sample spoke with a linked VPC
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       linkedVpcNetwork:
///         excludeExportRanges:
///           - 198.51.100.0/24
///           - 10.10.0.0/16
///         includeExportRanges:
///           - 198.51.100.0/23
///           - 10.0.0.0/8
///         uri: ${network.selfLink}
///       group: ${defaultGroup.id}
/// ```
///
/// ### Network Connectivity Spoke Router Appliance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "tf-test-network_16178",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "tf-test-subnet_26317",
///     ipCidrRange: "10.0.0.0/28",
///     region: "us-central1",
///     network: network.selfLink,
/// });
/// const instance = new gcp.compute.Instance("instance", {
///     name: "tf-test-instance_4866",
///     machineType: "e2-medium",
///     canIpForward: true,
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "projects/debian-cloud/global/images/debian-10-buster-v20210817",
///         },
///     },
///     networkInterfaces: [{
///         subnetwork: subnetwork.name,
///         networkIp: "10.0.0.2",
///         accessConfigs: [{
///             networkTier: "PREMIUM",
///         }],
///     }],
/// });
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "tf-test-hub_12618",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "tf-test-name_32270",
///     location: "us-central1",
///     description: "A sample spoke with a linked routher appliance instance",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     linkedRouterApplianceInstances: {
///         instances: [{
///             virtualMachine: instance.selfLink,
///             ipAddress: "10.0.0.2",
///         }],
///         siteToSiteDataTransfer: true,
///         includeImportRanges: ["ALL_IPV4_RANGES"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="tf-test-network_16178",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="tf-test-subnet_26317",
///     ip_cidr_range="10.0.0.0/28",
///     region="us-central1",
///     network=network.self_link)
/// instance = gcp.compute.Instance("instance",
///     name="tf-test-instance_4866",
///     machine_type="e2-medium",
///     can_ip_forward=True,
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "projects/debian-cloud/global/images/debian-10-buster-v20210817",
///         },
///     },
///     network_interfaces=[{
///         "subnetwork": subnetwork.name,
///         "network_ip": "10.0.0.2",
///         "access_configs": [{
///             "network_tier": "PREMIUM",
///         }],
///     }])
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="tf-test-hub_12618",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     })
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="tf-test-name_32270",
///     location="us-central1",
///     description="A sample spoke with a linked routher appliance instance",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     linked_router_appliance_instances={
///         "instances": [{
///             "virtual_machine": instance.self_link,
///             "ip_address": "10.0.0.2",
///         }],
///         "site_to_site_data_transfer": True,
///         "include_import_ranges": ["ALL_IPV4_RANGES"],
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
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "tf-test-network_16178",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "tf-test-subnet_26317",
///         IpCidrRange = "10.0.0.0/28",
///         Region = "us-central1",
///         Network = network.SelfLink,
///     });
///
///     var instance = new Gcp.Compute.Instance("instance", new()
///     {
///         Name = "tf-test-instance_4866",
///         MachineType = "e2-medium",
///         CanIpForward = true,
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "projects/debian-cloud/global/images/debian-10-buster-v20210817",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Subnetwork = subnetwork.Name,
///                 NetworkIp = "10.0.0.2",
///                 AccessConfigs = new[]
///                 {
///                     new Gcp.Compute.Inputs.InstanceNetworkInterfaceAccessConfigArgs
///                     {
///                         NetworkTier = "PREMIUM",
///                     },
///                 },
///             },
///         },
///     });
///
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "tf-test-hub_12618",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "tf-test-name_32270",
///         Location = "us-central1",
///         Description = "A sample spoke with a linked routher appliance instance",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         LinkedRouterApplianceInstances = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedRouterApplianceInstancesArgs
///         {
///             Instances = new[]
///             {
///                 new Gcp.NetworkConnectivity.Inputs.SpokeLinkedRouterApplianceInstancesInstanceArgs
///                 {
///                     VirtualMachine = instance.SelfLink,
///                     IpAddress = "10.0.0.2",
///                 },
///             },
///             SiteToSiteDataTransfer = true,
///             IncludeImportRanges = new[]
///             {
///                 "ALL_IPV4_RANGES",
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("tf-test-network_16178"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("tf-test-subnet_26317"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/28"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := compute.NewInstance(ctx, "instance", &compute.InstanceArgs{
/// 			Name:         pulumi.String("tf-test-instance_4866"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			CanIpForward: pulumi.Bool(true),
/// 			Zone:         pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("projects/debian-cloud/global/images/debian-10-buster-v20210817"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Subnetwork: subnetwork.Name,
/// 					NetworkIp:  pulumi.String("10.0.0.2"),
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{
/// 							NetworkTier: pulumi.String("PREMIUM"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("tf-test-hub_12618"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("tf-test-name_32270"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample spoke with a linked routher appliance instance"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			LinkedRouterApplianceInstances: &networkconnectivity.SpokeLinkedRouterApplianceInstancesArgs{
/// 				Instances: networkconnectivity.SpokeLinkedRouterApplianceInstancesInstanceArray{
/// 					&networkconnectivity.SpokeLinkedRouterApplianceInstancesInstanceArgs{
/// 						VirtualMachine: instance.SelfLink,
/// 						IpAddress:      pulumi.String("10.0.0.2"),
/// 					},
/// 				},
/// 				SiteToSiteDataTransfer: pulumi.Bool(true),
/// 				IncludeImportRanges: pulumi.StringArray{
/// 					pulumi.String("ALL_IPV4_RANGES"),
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedRouterApplianceInstancesArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("tf-test-network_16178")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("tf-test-subnet_26317")
///             .ipCidrRange("10.0.0.0/28")
///             .region("us-central1")
///             .network(network.selfLink())
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("tf-test-instance_4866")
///             .machineType("e2-medium")
///             .canIpForward(true)
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("projects/debian-cloud/global/images/debian-10-buster-v20210817")
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .subnetwork(subnetwork.name())
///                 .networkIp("10.0.0.2")
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .networkTier("PREMIUM")
///                     .build())
///                 .build())
///             .build());
///
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("tf-test-hub_12618")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("tf-test-name_32270")
///             .location("us-central1")
///             .description("A sample spoke with a linked routher appliance instance")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .linkedRouterApplianceInstances(SpokeLinkedRouterApplianceInstancesArgs.builder()
///                 .instances(SpokeLinkedRouterApplianceInstancesInstanceArgs.builder()
///                     .virtualMachine(instance.selfLink())
///                     .ipAddress("10.0.0.2")
///                     .build())
///                 .siteToSiteDataTransfer(true)
///                 .includeImportRanges("ALL_IPV4_RANGES")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: tf-test-network_16178
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: tf-test-subnet_26317
///       ipCidrRange: 10.0.0.0/28
///       region: us-central1
///       network: ${network.selfLink}
///   instance:
///     type: gcp:compute:Instance
///     properties:
///       name: tf-test-instance_4866
///       machineType: e2-medium
///       canIpForward: true
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: projects/debian-cloud/global/images/debian-10-buster-v20210817
///       networkInterfaces:
///         - subnetwork: ${subnetwork.name}
///           networkIp: 10.0.0.2
///           accessConfigs:
///             - networkTier: PREMIUM
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: tf-test-hub_12618
///       description: A sample hub
///       labels:
///         label-two: value-one
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: tf-test-name_32270
///       location: us-central1
///       description: A sample spoke with a linked routher appliance instance
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       linkedRouterApplianceInstances:
///         instances:
///           - virtualMachine: ${instance.selfLink}
///             ipAddress: 10.0.0.2
///         siteToSiteDataTransfer: true
///         includeImportRanges:
///           - ALL_IPV4_RANGES
/// ```
///
/// ### Network Connectivity Spoke Vpn Tunnel Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "basic-hub1",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "basic-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "basic-subnetwork",
///     ipCidrRange: "10.0.0.0/28",
///     region: "us-central1",
///     network: network.selfLink,
/// });
/// const gateway = new gcp.compute.HaVpnGateway("gateway", {
///     name: "vpn-gateway",
///     network: network.id,
/// });
/// const externalVpnGw = new gcp.compute.ExternalVpnGateway("external_vpn_gw", {
///     name: "external-vpn-gateway",
///     redundancyType: "SINGLE_IP_INTERNALLY_REDUNDANT",
///     description: "An externally managed VPN gateway",
///     interfaces: [{
///         id: 0,
///         ipAddress: "8.8.8.8",
///     }],
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "external-vpn-gateway",
///     region: "us-central1",
///     network: network.name,
///     bgp: {
///         asn: 64514,
///     },
/// });
/// const tunnel1 = new gcp.compute.VPNTunnel("tunnel1", {
///     name: "tunnel1",
///     region: "us-central1",
///     vpnGateway: gateway.id,
///     peerExternalGateway: externalVpnGw.id,
///     peerExternalGatewayInterface: 0,
///     sharedSecret: "a secret message",
///     router: router.id,
///     vpnGatewayInterface: 0,
/// });
/// const tunnel2 = new gcp.compute.VPNTunnel("tunnel2", {
///     name: "tunnel2",
///     region: "us-central1",
///     vpnGateway: gateway.id,
///     peerExternalGateway: externalVpnGw.id,
///     peerExternalGatewayInterface: 0,
///     sharedSecret: "a secret message",
///     router: pulumi.interpolate` ${router.id}`,
///     vpnGatewayInterface: 1,
/// });
/// const routerInterface1 = new gcp.compute.RouterInterface("router_interface1", {
///     name: "router-interface1",
///     router: router.name,
///     region: "us-central1",
///     ipRange: "169.254.0.1/30",
///     vpnTunnel: tunnel1.name,
/// });
/// const routerPeer1 = new gcp.compute.RouterPeer("router_peer1", {
///     name: "router-peer1",
///     router: router.name,
///     region: "us-central1",
///     peerIpAddress: "169.254.0.2",
///     peerAsn: 64515,
///     advertisedRoutePriority: 100,
///     "interface": routerInterface1.name,
/// });
/// const routerInterface2 = new gcp.compute.RouterInterface("router_interface2", {
///     name: "router-interface2",
///     router: router.name,
///     region: "us-central1",
///     ipRange: "169.254.1.1/30",
///     vpnTunnel: tunnel2.name,
/// });
/// const routerPeer2 = new gcp.compute.RouterPeer("router_peer2", {
///     name: "router-peer2",
///     router: router.name,
///     region: "us-central1",
///     peerIpAddress: "169.254.1.2",
///     peerAsn: 64515,
///     advertisedRoutePriority: 100,
///     "interface": routerInterface2.name,
/// });
/// const tunnel1Spoke = new gcp.networkconnectivity.Spoke("tunnel1", {
///     name: "vpn-tunnel-1-spoke",
///     location: "us-central1",
///     description: "A sample spoke with a linked VPN Tunnel",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     linkedVpnTunnels: {
///         uris: [tunnel1.selfLink],
///         siteToSiteDataTransfer: true,
///         includeImportRanges: ["ALL_IPV4_RANGES"],
///     },
/// });
/// const tunnel2Spoke = new gcp.networkconnectivity.Spoke("tunnel2", {
///     name: "vpn-tunnel-2-spoke",
///     location: "us-central1",
///     description: "A sample spoke with a linked VPN Tunnel",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     linkedVpnTunnels: {
///         uris: [tunnel2.selfLink],
///         siteToSiteDataTransfer: true,
///         includeImportRanges: ["ALL_IPV4_RANGES"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="basic-hub1",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     })
/// network = gcp.compute.Network("network",
///     name="basic-network",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="basic-subnetwork",
///     ip_cidr_range="10.0.0.0/28",
///     region="us-central1",
///     network=network.self_link)
/// gateway = gcp.compute.HaVpnGateway("gateway",
///     name="vpn-gateway",
///     network=network.id)
/// external_vpn_gw = gcp.compute.ExternalVpnGateway("external_vpn_gw",
///     name="external-vpn-gateway",
///     redundancy_type="SINGLE_IP_INTERNALLY_REDUNDANT",
///     description="An externally managed VPN gateway",
///     interfaces=[{
///         "id": 0,
///         "ip_address": "8.8.8.8",
///     }])
/// router = gcp.compute.Router("router",
///     name="external-vpn-gateway",
///     region="us-central1",
///     network=network.name,
///     bgp={
///         "asn": 64514,
///     })
/// tunnel1 = gcp.compute.VPNTunnel("tunnel1",
///     name="tunnel1",
///     region="us-central1",
///     vpn_gateway=gateway.id,
///     peer_external_gateway=external_vpn_gw.id,
///     peer_external_gateway_interface=0,
///     shared_secret="a secret message",
///     router=router.id,
///     vpn_gateway_interface=0)
/// tunnel2 = gcp.compute.VPNTunnel("tunnel2",
///     name="tunnel2",
///     region="us-central1",
///     vpn_gateway=gateway.id,
///     peer_external_gateway=external_vpn_gw.id,
///     peer_external_gateway_interface=0,
///     shared_secret="a secret message",
///     router=router.id.apply(lambda id: f" {id}"),
///     vpn_gateway_interface=1)
/// router_interface1 = gcp.compute.RouterInterface("router_interface1",
///     name="router-interface1",
///     router=router.name,
///     region="us-central1",
///     ip_range="169.254.0.1/30",
///     vpn_tunnel=tunnel1.name)
/// router_peer1 = gcp.compute.RouterPeer("router_peer1",
///     name="router-peer1",
///     router=router.name,
///     region="us-central1",
///     peer_ip_address="169.254.0.2",
///     peer_asn=64515,
///     advertised_route_priority=100,
///     interface=router_interface1.name)
/// router_interface2 = gcp.compute.RouterInterface("router_interface2",
///     name="router-interface2",
///     router=router.name,
///     region="us-central1",
///     ip_range="169.254.1.1/30",
///     vpn_tunnel=tunnel2.name)
/// router_peer2 = gcp.compute.RouterPeer("router_peer2",
///     name="router-peer2",
///     router=router.name,
///     region="us-central1",
///     peer_ip_address="169.254.1.2",
///     peer_asn=64515,
///     advertised_route_priority=100,
///     interface=router_interface2.name)
/// tunnel1_spoke = gcp.networkconnectivity.Spoke("tunnel1",
///     name="vpn-tunnel-1-spoke",
///     location="us-central1",
///     description="A sample spoke with a linked VPN Tunnel",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     linked_vpn_tunnels={
///         "uris": [tunnel1.self_link],
///         "site_to_site_data_transfer": True,
///         "include_import_ranges": ["ALL_IPV4_RANGES"],
///     })
/// tunnel2_spoke = gcp.networkconnectivity.Spoke("tunnel2",
///     name="vpn-tunnel-2-spoke",
///     location="us-central1",
///     description="A sample spoke with a linked VPN Tunnel",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     linked_vpn_tunnels={
///         "uris": [tunnel2.self_link],
///         "site_to_site_data_transfer": True,
///         "include_import_ranges": ["ALL_IPV4_RANGES"],
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
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "basic-hub1",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "basic-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "basic-subnetwork",
///         IpCidrRange = "10.0.0.0/28",
///         Region = "us-central1",
///         Network = network.SelfLink,
///     });
///
///     var gateway = new Gcp.Compute.HaVpnGateway("gateway", new()
///     {
///         Name = "vpn-gateway",
///         Network = network.Id,
///     });
///
///     var externalVpnGw = new Gcp.Compute.ExternalVpnGateway("external_vpn_gw", new()
///     {
///         Name = "external-vpn-gateway",
///         RedundancyType = "SINGLE_IP_INTERNALLY_REDUNDANT",
///         Description = "An externally managed VPN gateway",
///         Interfaces = new[]
///         {
///             new Gcp.Compute.Inputs.ExternalVpnGatewayInterfaceArgs
///             {
///                 Id = 0,
///                 IpAddress = "8.8.8.8",
///             },
///         },
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "external-vpn-gateway",
///         Region = "us-central1",
///         Network = network.Name,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
///         },
///     });
///
///     var tunnel1 = new Gcp.Compute.VPNTunnel("tunnel1", new()
///     {
///         Name = "tunnel1",
///         Region = "us-central1",
///         VpnGateway = gateway.Id,
///         PeerExternalGateway = externalVpnGw.Id,
///         PeerExternalGatewayInterface = 0,
///         SharedSecret = "a secret message",
///         Router = router.Id,
///         VpnGatewayInterface = 0,
///     });
///
///     var tunnel2 = new Gcp.Compute.VPNTunnel("tunnel2", new()
///     {
///         Name = "tunnel2",
///         Region = "us-central1",
///         VpnGateway = gateway.Id,
///         PeerExternalGateway = externalVpnGw.Id,
///         PeerExternalGatewayInterface = 0,
///         SharedSecret = "a secret message",
///         Router = router.Id.Apply(id => $" {id}"),
///         VpnGatewayInterface = 1,
///     });
///
///     var routerInterface1 = new Gcp.Compute.RouterInterface("router_interface1", new()
///     {
///         Name = "router-interface1",
///         Router = router.Name,
///         Region = "us-central1",
///         IpRange = "169.254.0.1/30",
///         VpnTunnel = tunnel1.Name,
///     });
///
///     var routerPeer1 = new Gcp.Compute.RouterPeer("router_peer1", new()
///     {
///         Name = "router-peer1",
///         Router = router.Name,
///         Region = "us-central1",
///         PeerIpAddress = "169.254.0.2",
///         PeerAsn = 64515,
///         AdvertisedRoutePriority = 100,
///         Interface = routerInterface1.Name,
///     });
///
///     var routerInterface2 = new Gcp.Compute.RouterInterface("router_interface2", new()
///     {
///         Name = "router-interface2",
///         Router = router.Name,
///         Region = "us-central1",
///         IpRange = "169.254.1.1/30",
///         VpnTunnel = tunnel2.Name,
///     });
///
///     var routerPeer2 = new Gcp.Compute.RouterPeer("router_peer2", new()
///     {
///         Name = "router-peer2",
///         Router = router.Name,
///         Region = "us-central1",
///         PeerIpAddress = "169.254.1.2",
///         PeerAsn = 64515,
///         AdvertisedRoutePriority = 100,
///         Interface = routerInterface2.Name,
///     });
///
///     var tunnel1Spoke = new Gcp.NetworkConnectivity.Spoke("tunnel1", new()
///     {
///         Name = "vpn-tunnel-1-spoke",
///         Location = "us-central1",
///         Description = "A sample spoke with a linked VPN Tunnel",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         LinkedVpnTunnels = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedVpnTunnelsArgs
///         {
///             Uris = new[]
///             {
///                 tunnel1.SelfLink,
///             },
///             SiteToSiteDataTransfer = true,
///             IncludeImportRanges = new[]
///             {
///                 "ALL_IPV4_RANGES",
///             },
///         },
///     });
///
///     var tunnel2Spoke = new Gcp.NetworkConnectivity.Spoke("tunnel2", new()
///     {
///         Name = "vpn-tunnel-2-spoke",
///         Location = "us-central1",
///         Description = "A sample spoke with a linked VPN Tunnel",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         LinkedVpnTunnels = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedVpnTunnelsArgs
///         {
///             Uris = new[]
///             {
///                 tunnel2.SelfLink,
///             },
///             SiteToSiteDataTransfer = true,
///             IncludeImportRanges = new[]
///             {
///                 "ALL_IPV4_RANGES",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("basic-hub1"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("basic-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("basic-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/28"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gateway, err := compute.NewHaVpnGateway(ctx, "gateway", &compute.HaVpnGatewayArgs{
/// 			Name:    pulumi.String("vpn-gateway"),
/// 			Network: network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		externalVpnGw, err := compute.NewExternalVpnGateway(ctx, "external_vpn_gw", &compute.ExternalVpnGatewayArgs{
/// 			Name:           pulumi.String("external-vpn-gateway"),
/// 			RedundancyType: pulumi.String("SINGLE_IP_INTERNALLY_REDUNDANT"),
/// 			Description:    pulumi.String("An externally managed VPN gateway"),
/// 			Interfaces: compute.ExternalVpnGatewayInterfaceArray{
/// 				&compute.ExternalVpnGatewayInterfaceArgs{
/// 					Id:        pulumi.Int(0),
/// 					IpAddress: pulumi.String("8.8.8.8"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("external-vpn-gateway"),
/// 			Region:  pulumi.String("us-central1"),
/// 			Network: network.Name,
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(64514),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel1, err := compute.NewVPNTunnel(ctx, "tunnel1", &compute.VPNTunnelArgs{
/// 			Name:                         pulumi.String("tunnel1"),
/// 			Region:                       pulumi.String("us-central1"),
/// 			VpnGateway:                   gateway.ID(),
/// 			PeerExternalGateway:          externalVpnGw.ID(),
/// 			PeerExternalGatewayInterface: pulumi.Int(0),
/// 			SharedSecret:                 pulumi.String("a secret message"),
/// 			Router:                       router.ID(),
/// 			VpnGatewayInterface:          pulumi.Int(0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel2, err := compute.NewVPNTunnel(ctx, "tunnel2", &compute.VPNTunnelArgs{
/// 			Name:                         pulumi.String("tunnel2"),
/// 			Region:                       pulumi.String("us-central1"),
/// 			VpnGateway:                   gateway.ID(),
/// 			PeerExternalGateway:          externalVpnGw.ID(),
/// 			PeerExternalGatewayInterface: pulumi.Int(0),
/// 			SharedSecret:                 pulumi.String("a secret message"),
/// 			Router: router.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf(" %v", id), nil
/// 			}).(pulumi.StringOutput),
/// 			VpnGatewayInterface: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		routerInterface1, err := compute.NewRouterInterface(ctx, "router_interface1", &compute.RouterInterfaceArgs{
/// 			Name:      pulumi.String("router-interface1"),
/// 			Router:    router.Name,
/// 			Region:    pulumi.String("us-central1"),
/// 			IpRange:   pulumi.String("169.254.0.1/30"),
/// 			VpnTunnel: tunnel1.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterPeer(ctx, "router_peer1", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("router-peer1"),
/// 			Router:                  router.Name,
/// 			Region:                  pulumi.String("us-central1"),
/// 			PeerIpAddress:           pulumi.String("169.254.0.2"),
/// 			PeerAsn:                 pulumi.Int(64515),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               routerInterface1.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		routerInterface2, err := compute.NewRouterInterface(ctx, "router_interface2", &compute.RouterInterfaceArgs{
/// 			Name:      pulumi.String("router-interface2"),
/// 			Router:    router.Name,
/// 			Region:    pulumi.String("us-central1"),
/// 			IpRange:   pulumi.String("169.254.1.1/30"),
/// 			VpnTunnel: tunnel2.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterPeer(ctx, "router_peer2", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("router-peer2"),
/// 			Router:                  router.Name,
/// 			Region:                  pulumi.String("us-central1"),
/// 			PeerIpAddress:           pulumi.String("169.254.1.2"),
/// 			PeerAsn:                 pulumi.Int(64515),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               routerInterface2.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "tunnel1", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("vpn-tunnel-1-spoke"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample spoke with a linked VPN Tunnel"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			LinkedVpnTunnels: &networkconnectivity.SpokeLinkedVpnTunnelsArgs{
/// 				Uris: pulumi.StringArray{
/// 					tunnel1.SelfLink,
/// 				},
/// 				SiteToSiteDataTransfer: pulumi.Bool(true),
/// 				IncludeImportRanges: pulumi.StringArray{
/// 					pulumi.String("ALL_IPV4_RANGES"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "tunnel2", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("vpn-tunnel-2-spoke"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample spoke with a linked VPN Tunnel"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			LinkedVpnTunnels: &networkconnectivity.SpokeLinkedVpnTunnelsArgs{
/// 				Uris: pulumi.StringArray{
/// 					tunnel2.SelfLink,
/// 				},
/// 				SiteToSiteDataTransfer: pulumi.Bool(true),
/// 				IncludeImportRanges: pulumi.StringArray{
/// 					pulumi.String("ALL_IPV4_RANGES"),
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.HaVpnGateway;
/// import com.pulumi.gcp.compute.HaVpnGatewayArgs;
/// import com.pulumi.gcp.compute.ExternalVpnGateway;
/// import com.pulumi.gcp.compute.ExternalVpnGatewayArgs;
/// import com.pulumi.gcp.compute.inputs.ExternalVpnGatewayInterfaceArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.VPNTunnel;
/// import com.pulumi.gcp.compute.VPNTunnelArgs;
/// import com.pulumi.gcp.compute.RouterInterface;
/// import com.pulumi.gcp.compute.RouterInterfaceArgs;
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedVpnTunnelsArgs;
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
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("basic-hub1")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("basic-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("basic-subnetwork")
///             .ipCidrRange("10.0.0.0/28")
///             .region("us-central1")
///             .network(network.selfLink())
///             .build());
///
///         var gateway = new HaVpnGateway("gateway", HaVpnGatewayArgs.builder()
///             .name("vpn-gateway")
///             .network(network.id())
///             .build());
///
///         var externalVpnGw = new ExternalVpnGateway("externalVpnGw", ExternalVpnGatewayArgs.builder()
///             .name("external-vpn-gateway")
///             .redundancyType("SINGLE_IP_INTERNALLY_REDUNDANT")
///             .description("An externally managed VPN gateway")
///             .interfaces(ExternalVpnGatewayInterfaceArgs.builder()
///                 .id(0)
///                 .ipAddress("8.8.8.8")
///                 .build())
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("external-vpn-gateway")
///             .region("us-central1")
///             .network(network.name())
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .build())
///             .build());
///
///         var tunnel1 = new VPNTunnel("tunnel1", VPNTunnelArgs.builder()
///             .name("tunnel1")
///             .region("us-central1")
///             .vpnGateway(gateway.id())
///             .peerExternalGateway(externalVpnGw.id())
///             .peerExternalGatewayInterface(0)
///             .sharedSecret("a secret message")
///             .router(router.id())
///             .vpnGatewayInterface(0)
///             .build());
///
///         var tunnel2 = new VPNTunnel("tunnel2", VPNTunnelArgs.builder()
///             .name("tunnel2")
///             .region("us-central1")
///             .vpnGateway(gateway.id())
///             .peerExternalGateway(externalVpnGw.id())
///             .peerExternalGatewayInterface(0)
///             .sharedSecret("a secret message")
///             .router(router.id().applyValue(_id -> String.format(" %s", _id)))
///             .vpnGatewayInterface(1)
///             .build());
///
///         var routerInterface1 = new RouterInterface("routerInterface1", RouterInterfaceArgs.builder()
///             .name("router-interface1")
///             .router(router.name())
///             .region("us-central1")
///             .ipRange("169.254.0.1/30")
///             .vpnTunnel(tunnel1.name())
///             .build());
///
///         var routerPeer1 = new RouterPeer("routerPeer1", RouterPeerArgs.builder()
///             .name("router-peer1")
///             .router(router.name())
///             .region("us-central1")
///             .peerIpAddress("169.254.0.2")
///             .peerAsn(64515)
///             .advertisedRoutePriority(100)
///             .interface_(routerInterface1.name())
///             .build());
///
///         var routerInterface2 = new RouterInterface("routerInterface2", RouterInterfaceArgs.builder()
///             .name("router-interface2")
///             .router(router.name())
///             .region("us-central1")
///             .ipRange("169.254.1.1/30")
///             .vpnTunnel(tunnel2.name())
///             .build());
///
///         var routerPeer2 = new RouterPeer("routerPeer2", RouterPeerArgs.builder()
///             .name("router-peer2")
///             .router(router.name())
///             .region("us-central1")
///             .peerIpAddress("169.254.1.2")
///             .peerAsn(64515)
///             .advertisedRoutePriority(100)
///             .interface_(routerInterface2.name())
///             .build());
///
///         var tunnel1Spoke = new Spoke("tunnel1Spoke", SpokeArgs.builder()
///             .name("vpn-tunnel-1-spoke")
///             .location("us-central1")
///             .description("A sample spoke with a linked VPN Tunnel")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .linkedVpnTunnels(SpokeLinkedVpnTunnelsArgs.builder()
///                 .uris(tunnel1.selfLink())
///                 .siteToSiteDataTransfer(true)
///                 .includeImportRanges("ALL_IPV4_RANGES")
///                 .build())
///             .build());
///
///         var tunnel2Spoke = new Spoke("tunnel2Spoke", SpokeArgs.builder()
///             .name("vpn-tunnel-2-spoke")
///             .location("us-central1")
///             .description("A sample spoke with a linked VPN Tunnel")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .linkedVpnTunnels(SpokeLinkedVpnTunnelsArgs.builder()
///                 .uris(tunnel2.selfLink())
///                 .siteToSiteDataTransfer(true)
///                 .includeImportRanges("ALL_IPV4_RANGES")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: basic-hub1
///       description: A sample hub
///       labels:
///         label-two: value-one
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: basic-network
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: basic-subnetwork
///       ipCidrRange: 10.0.0.0/28
///       region: us-central1
///       network: ${network.selfLink}
///   gateway:
///     type: gcp:compute:HaVpnGateway
///     properties:
///       name: vpn-gateway
///       network: ${network.id}
///   externalVpnGw:
///     type: gcp:compute:ExternalVpnGateway
///     name: external_vpn_gw
///     properties:
///       name: external-vpn-gateway
///       redundancyType: SINGLE_IP_INTERNALLY_REDUNDANT
///       description: An externally managed VPN gateway
///       interfaces:
///         - id: 0
///           ipAddress: 8.8.8.8
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: external-vpn-gateway
///       region: us-central1
///       network: ${network.name}
///       bgp:
///         asn: 64514
///   tunnel1:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: tunnel1
///       region: us-central1
///       vpnGateway: ${gateway.id}
///       peerExternalGateway: ${externalVpnGw.id}
///       peerExternalGatewayInterface: 0
///       sharedSecret: a secret message
///       router: ${router.id}
///       vpnGatewayInterface: 0
///   tunnel2:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: tunnel2
///       region: us-central1
///       vpnGateway: ${gateway.id}
///       peerExternalGateway: ${externalVpnGw.id}
///       peerExternalGatewayInterface: 0
///       sharedSecret: a secret message
///       router: ' ${router.id}'
///       vpnGatewayInterface: 1
///   routerInterface1:
///     type: gcp:compute:RouterInterface
///     name: router_interface1
///     properties:
///       name: router-interface1
///       router: ${router.name}
///       region: us-central1
///       ipRange: 169.254.0.1/30
///       vpnTunnel: ${tunnel1.name}
///   routerPeer1:
///     type: gcp:compute:RouterPeer
///     name: router_peer1
///     properties:
///       name: router-peer1
///       router: ${router.name}
///       region: us-central1
///       peerIpAddress: 169.254.0.2
///       peerAsn: 64515
///       advertisedRoutePriority: 100
///       interface: ${routerInterface1.name}
///   routerInterface2:
///     type: gcp:compute:RouterInterface
///     name: router_interface2
///     properties:
///       name: router-interface2
///       router: ${router.name}
///       region: us-central1
///       ipRange: 169.254.1.1/30
///       vpnTunnel: ${tunnel2.name}
///   routerPeer2:
///     type: gcp:compute:RouterPeer
///     name: router_peer2
///     properties:
///       name: router-peer2
///       router: ${router.name}
///       region: us-central1
///       peerIpAddress: 169.254.1.2
///       peerAsn: 64515
///       advertisedRoutePriority: 100
///       interface: ${routerInterface2.name}
///   tunnel1Spoke:
///     type: gcp:networkconnectivity:Spoke
///     name: tunnel1
///     properties:
///       name: vpn-tunnel-1-spoke
///       location: us-central1
///       description: A sample spoke with a linked VPN Tunnel
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       linkedVpnTunnels:
///         uris:
///           - ${tunnel1.selfLink}
///         siteToSiteDataTransfer: true
///         includeImportRanges:
///           - ALL_IPV4_RANGES
///   tunnel2Spoke:
///     type: gcp:networkconnectivity:Spoke
///     name: tunnel2
///     properties:
///       name: vpn-tunnel-2-spoke
///       location: us-central1
///       description: A sample spoke with a linked VPN Tunnel
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       linkedVpnTunnels:
///         uris:
///           - ${tunnel2.selfLink}
///         siteToSiteDataTransfer: true
///         includeImportRanges:
///           - ALL_IPV4_RANGES
/// ```
///
/// ### Network Connectivity Spoke Interconnect Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "basic-hub1",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "basic-network",
///     autoCreateSubnetworks: false,
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "external-vpn-gateway",
///     region: "us-central1",
///     network: network.name,
///     bgp: {
///         asn: 16550,
///     },
/// });
/// const interconnect_attachment = new gcp.compute.InterconnectAttachment("interconnect-attachment", {
///     name: "partner-interconnect1",
///     edgeAvailabilityDomain: "AVAILABILITY_DOMAIN_1",
///     type: "PARTNER",
///     router: router.id,
///     mtu: "1500",
///     region: "us-central1",
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "interconnect-attachment-spoke",
///     location: "us-central1",
///     description: "A sample spoke with a linked Interconnect Attachment",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     linkedInterconnectAttachments: {
///         uris: [interconnect_attachment.selfLink],
///         siteToSiteDataTransfer: true,
///         includeImportRanges: ["ALL_IPV4_RANGES"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="basic-hub1",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     })
/// network = gcp.compute.Network("network",
///     name="basic-network",
///     auto_create_subnetworks=False)
/// router = gcp.compute.Router("router",
///     name="external-vpn-gateway",
///     region="us-central1",
///     network=network.name,
///     bgp={
///         "asn": 16550,
///     })
/// interconnect_attachment = gcp.compute.InterconnectAttachment("interconnect-attachment",
///     name="partner-interconnect1",
///     edge_availability_domain="AVAILABILITY_DOMAIN_1",
///     type="PARTNER",
///     router=router.id,
///     mtu="1500",
///     region="us-central1")
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="interconnect-attachment-spoke",
///     location="us-central1",
///     description="A sample spoke with a linked Interconnect Attachment",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     linked_interconnect_attachments={
///         "uris": [interconnect_attachment.self_link],
///         "site_to_site_data_transfer": True,
///         "include_import_ranges": ["ALL_IPV4_RANGES"],
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
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "basic-hub1",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "basic-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "external-vpn-gateway",
///         Region = "us-central1",
///         Network = network.Name,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 16550,
///         },
///     });
///
///     var interconnect_attachment = new Gcp.Compute.InterconnectAttachment("interconnect-attachment", new()
///     {
///         Name = "partner-interconnect1",
///         EdgeAvailabilityDomain = "AVAILABILITY_DOMAIN_1",
///         Type = "PARTNER",
///         Router = router.Id,
///         Mtu = "1500",
///         Region = "us-central1",
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "interconnect-attachment-spoke",
///         Location = "us-central1",
///         Description = "A sample spoke with a linked Interconnect Attachment",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         LinkedInterconnectAttachments = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedInterconnectAttachmentsArgs
///         {
///             Uris = new[]
///             {
///                 interconnect_attachment.SelfLink,
///             },
///             SiteToSiteDataTransfer = true,
///             IncludeImportRanges = new[]
///             {
///                 "ALL_IPV4_RANGES",
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
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("basic-hub1"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("basic-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("external-vpn-gateway"),
/// 			Region:  pulumi.String("us-central1"),
/// 			Network: network.Name,
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(16550),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		interconnect_attachment, err := compute.NewInterconnectAttachment(ctx, "interconnect-attachment", &compute.InterconnectAttachmentArgs{
/// 			Name:                   pulumi.String("partner-interconnect1"),
/// 			EdgeAvailabilityDomain: pulumi.String("AVAILABILITY_DOMAIN_1"),
/// 			Type:                   pulumi.String("PARTNER"),
/// 			Router:                 router.ID(),
/// 			Mtu:                    pulumi.String("1500"),
/// 			Region:                 pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("interconnect-attachment-spoke"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample spoke with a linked Interconnect Attachment"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			LinkedInterconnectAttachments: &networkconnectivity.SpokeLinkedInterconnectAttachmentsArgs{
/// 				Uris: pulumi.StringArray{
/// 					interconnect_attachment.SelfLink,
/// 				},
/// 				SiteToSiteDataTransfer: pulumi.Bool(true),
/// 				IncludeImportRanges: pulumi.StringArray{
/// 					pulumi.String("ALL_IPV4_RANGES"),
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.InterconnectAttachment;
/// import com.pulumi.gcp.compute.InterconnectAttachmentArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedInterconnectAttachmentsArgs;
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
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("basic-hub1")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("basic-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("external-vpn-gateway")
///             .region("us-central1")
///             .network(network.name())
///             .bgp(RouterBgpArgs.builder()
///                 .asn(16550)
///                 .build())
///             .build());
///
///         var interconnect_attachment = new InterconnectAttachment("interconnect-attachment", InterconnectAttachmentArgs.builder()
///             .name("partner-interconnect1")
///             .edgeAvailabilityDomain("AVAILABILITY_DOMAIN_1")
///             .type("PARTNER")
///             .router(router.id())
///             .mtu("1500")
///             .region("us-central1")
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("interconnect-attachment-spoke")
///             .location("us-central1")
///             .description("A sample spoke with a linked Interconnect Attachment")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .linkedInterconnectAttachments(SpokeLinkedInterconnectAttachmentsArgs.builder()
///                 .uris(interconnect_attachment.selfLink())
///                 .siteToSiteDataTransfer(true)
///                 .includeImportRanges("ALL_IPV4_RANGES")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: basic-hub1
///       description: A sample hub
///       labels:
///         label-two: value-one
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: basic-network
///       autoCreateSubnetworks: false
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: external-vpn-gateway
///       region: us-central1
///       network: ${network.name}
///       bgp:
///         asn: 16550
///   interconnect-attachment:
///     type: gcp:compute:InterconnectAttachment
///     properties:
///       name: partner-interconnect1
///       edgeAvailabilityDomain: AVAILABILITY_DOMAIN_1
///       type: PARTNER
///       router: ${router.id}
///       mtu: 1500
///       region: us-central1
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: interconnect-attachment-spoke
///       location: us-central1
///       description: A sample spoke with a linked Interconnect Attachment
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       linkedInterconnectAttachments:
///         uris:
///           - ${["interconnect-attachment"].selfLink}
///         siteToSiteDataTransfer: true
///         includeImportRanges:
///           - ALL_IPV4_RANGES
/// ```
///
/// ### Network Connectivity Spoke Linked Producer Vpc Network Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "net-spoke",
///     autoCreateSubnetworks: false,
/// });
/// const address = new gcp.compute.GlobalAddress("address", {
///     name: "test-address",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: network.id,
/// });
/// const peering = new gcp.servicenetworking.Connection("peering", {
///     network: network.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [address.name],
/// });
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {name: "hub-basic"});
/// const linkedVpcSpoke = new gcp.networkconnectivity.Spoke("linked_vpc_spoke", {
///     name: "vpc-spoke",
///     location: "global",
///     hub: basicHub.id,
///     linkedVpcNetwork: {
///         uri: network.selfLink,
///     },
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "producer-spoke",
///     location: "global",
///     description: "A sample spoke with a linked router appliance instance",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     linkedProducerVpcNetwork: {
///         network: network.name,
///         peering: peering.peering,
///         excludeExportRanges: [
///             "198.51.100.0/24",
///             "10.10.0.0/16",
///         ],
///     },
/// }, {
///     dependsOn: [linkedVpcSpoke],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="net-spoke",
///     auto_create_subnetworks=False)
/// address = gcp.compute.GlobalAddress("address",
///     name="test-address",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=network.id)
/// peering = gcp.servicenetworking.Connection("peering",
///     network=network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[address.name])
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub", name="hub-basic")
/// linked_vpc_spoke = gcp.networkconnectivity.Spoke("linked_vpc_spoke",
///     name="vpc-spoke",
///     location="global",
///     hub=basic_hub.id,
///     linked_vpc_network={
///         "uri": network.self_link,
///     })
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="producer-spoke",
///     location="global",
///     description="A sample spoke with a linked router appliance instance",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     linked_producer_vpc_network={
///         "network": network.name,
///         "peering": peering.peering,
///         "exclude_export_ranges": [
///             "198.51.100.0/24",
///             "10.10.0.0/16",
///         ],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[linked_vpc_spoke]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "net-spoke",
///         AutoCreateSubnetworks = false,
///     });
///
///     var address = new Gcp.Compute.GlobalAddress("address", new()
///     {
///         Name = "test-address",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = network.Id,
///     });
///
///     var peering = new Gcp.ServiceNetworking.Connection("peering", new()
///     {
///         Network = network.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             address.Name,
///         },
///     });
///
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "hub-basic",
///     });
///
///     var linkedVpcSpoke = new Gcp.NetworkConnectivity.Spoke("linked_vpc_spoke", new()
///     {
///         Name = "vpc-spoke",
///         Location = "global",
///         Hub = basicHub.Id,
///         LinkedVpcNetwork = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedVpcNetworkArgs
///         {
///             Uri = network.SelfLink,
///         },
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "producer-spoke",
///         Location = "global",
///         Description = "A sample spoke with a linked router appliance instance",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         LinkedProducerVpcNetwork = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedProducerVpcNetworkArgs
///         {
///             Network = network.Name,
///             Peering = peering.Peering,
///             ExcludeExportRanges = new[]
///             {
///                 "198.51.100.0/24",
///                 "10.10.0.0/16",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             linkedVpcSpoke,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net-spoke"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		address, err := compute.NewGlobalAddress(ctx, "address", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("test-address"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peering, err := servicenetworking.NewConnection(ctx, "peering", &servicenetworking.ConnectionArgs{
/// 			Network: network.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				address.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name: pulumi.String("hub-basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		linkedVpcSpoke, err := networkconnectivity.NewSpoke(ctx, "linked_vpc_spoke", &networkconnectivity.SpokeArgs{
/// 			Name:     pulumi.String("vpc-spoke"),
/// 			Location: pulumi.String("global"),
/// 			Hub:      basicHub.ID(),
/// 			LinkedVpcNetwork: &networkconnectivity.SpokeLinkedVpcNetworkArgs{
/// 				Uri: network.SelfLink,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("producer-spoke"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A sample spoke with a linked router appliance instance"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			LinkedProducerVpcNetwork: &networkconnectivity.SpokeLinkedProducerVpcNetworkArgs{
/// 				Network: network.Name,
/// 				Peering: peering.Peering,
/// 				ExcludeExportRanges: pulumi.StringArray{
/// 					pulumi.String("198.51.100.0/24"),
/// 					pulumi.String("10.10.0.0/16"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			linkedVpcSpoke,
/// 		}))
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedVpcNetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedProducerVpcNetworkArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("net-spoke")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var address = new GlobalAddress("address", GlobalAddressArgs.builder()
///             .name("test-address")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(network.id())
///             .build());
///
///         var peering = new Connection("peering", ConnectionArgs.builder()
///             .network(network.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(address.name())
///             .build());
///
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("hub-basic")
///             .build());
///
///         var linkedVpcSpoke = new Spoke("linkedVpcSpoke", SpokeArgs.builder()
///             .name("vpc-spoke")
///             .location("global")
///             .hub(basicHub.id())
///             .linkedVpcNetwork(SpokeLinkedVpcNetworkArgs.builder()
///                 .uri(network.selfLink())
///                 .build())
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("producer-spoke")
///             .location("global")
///             .description("A sample spoke with a linked router appliance instance")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .linkedProducerVpcNetwork(SpokeLinkedProducerVpcNetworkArgs.builder()
///                 .network(network.name())
///                 .peering(peering.peering())
///                 .excludeExportRanges(
///                     "198.51.100.0/24",
///                     "10.10.0.0/16")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(linkedVpcSpoke)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: net-spoke
///       autoCreateSubnetworks: false
///   address:
///     type: gcp:compute:GlobalAddress
///     properties:
///       name: test-address
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${network.id}
///   peering:
///     type: gcp:servicenetworking:Connection
///     properties:
///       network: ${network.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${address.name}
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: hub-basic
///   linkedVpcSpoke:
///     type: gcp:networkconnectivity:Spoke
///     name: linked_vpc_spoke
///     properties:
///       name: vpc-spoke
///       location: global
///       hub: ${basicHub.id}
///       linkedVpcNetwork:
///         uri: ${network.selfLink}
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: producer-spoke
///       location: global
///       description: A sample spoke with a linked router appliance instance
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       linkedProducerVpcNetwork:
///         network: ${network.name}
///         peering: ${peering.peering}
///         excludeExportRanges:
///           - 198.51.100.0/24
///           - 10.10.0.0/16
///     options:
///       dependsOn:
///         - ${linkedVpcSpoke}
/// ```
///
/// ### Network Connectivity Spoke Center Group
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "tf-net",
///     autoCreateSubnetworks: false,
/// });
/// const starHub = new gcp.networkconnectivity.Hub("star_hub", {
///     name: "hub-basic",
///     presetTopology: "STAR",
/// });
/// const centerGroup = new gcp.networkconnectivity.Group("center_group", {
///     name: "center",
///     hub: starHub.id,
///     autoAccept: {
///         autoAcceptProjects: [
///             "foo_44703",
///             "bar_9329",
///         ],
///     },
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "vpc-spoke",
///     location: "global",
///     description: "A sample spoke",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: starHub.id,
///     group: centerGroup.id,
///     linkedVpcNetwork: {
///         uri: network.selfLink,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="tf-net",
///     auto_create_subnetworks=False)
/// star_hub = gcp.networkconnectivity.Hub("star_hub",
///     name="hub-basic",
///     preset_topology="STAR")
/// center_group = gcp.networkconnectivity.Group("center_group",
///     name="center",
///     hub=star_hub.id,
///     auto_accept={
///         "auto_accept_projects": [
///             "foo_44703",
///             "bar_9329",
///         ],
///     })
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="vpc-spoke",
///     location="global",
///     description="A sample spoke",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=star_hub.id,
///     group=center_group.id,
///     linked_vpc_network={
///         "uri": network.self_link,
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
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "tf-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var starHub = new Gcp.NetworkConnectivity.Hub("star_hub", new()
///     {
///         Name = "hub-basic",
///         PresetTopology = "STAR",
///     });
///
///     var centerGroup = new Gcp.NetworkConnectivity.Group("center_group", new()
///     {
///         Name = "center",
///         Hub = starHub.Id,
///         AutoAccept = new Gcp.NetworkConnectivity.Inputs.GroupAutoAcceptArgs
///         {
///             AutoAcceptProjects = new[]
///             {
///                 "foo_44703",
///                 "bar_9329",
///             },
///         },
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "vpc-spoke",
///         Location = "global",
///         Description = "A sample spoke",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = starHub.Id,
///         Group = centerGroup.Id,
///         LinkedVpcNetwork = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedVpcNetworkArgs
///         {
///             Uri = network.SelfLink,
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("tf-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		starHub, err := networkconnectivity.NewHub(ctx, "star_hub", &networkconnectivity.HubArgs{
/// 			Name:           pulumi.String("hub-basic"),
/// 			PresetTopology: pulumi.String("STAR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		centerGroup, err := networkconnectivity.NewGroup(ctx, "center_group", &networkconnectivity.GroupArgs{
/// 			Name: pulumi.String("center"),
/// 			Hub:  starHub.ID(),
/// 			AutoAccept: &networkconnectivity.GroupAutoAcceptArgs{
/// 				AutoAcceptProjects: pulumi.StringArray{
/// 					pulumi.String("foo_44703"),
/// 					pulumi.String("bar_9329"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("vpc-spoke"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A sample spoke"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub:   starHub.ID(),
/// 			Group: centerGroup.ID(),
/// 			LinkedVpcNetwork: &networkconnectivity.SpokeLinkedVpcNetworkArgs{
/// 				Uri: network.SelfLink,
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Group;
/// import com.pulumi.gcp.networkconnectivity.GroupArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.GroupAutoAcceptArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedVpcNetworkArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("tf-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var starHub = new Hub("starHub", HubArgs.builder()
///             .name("hub-basic")
///             .presetTopology("STAR")
///             .build());
///
///         var centerGroup = new Group("centerGroup", GroupArgs.builder()
///             .name("center")
///             .hub(starHub.id())
///             .autoAccept(GroupAutoAcceptArgs.builder()
///                 .autoAcceptProjects(
///                     "foo_44703",
///                     "bar_9329")
///                 .build())
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("vpc-spoke")
///             .location("global")
///             .description("A sample spoke")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(starHub.id())
///             .group(centerGroup.id())
///             .linkedVpcNetwork(SpokeLinkedVpcNetworkArgs.builder()
///                 .uri(network.selfLink())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: tf-net
///       autoCreateSubnetworks: false
///   starHub:
///     type: gcp:networkconnectivity:Hub
///     name: star_hub
///     properties:
///       name: hub-basic
///       presetTopology: STAR
///   centerGroup:
///     type: gcp:networkconnectivity:Group
///     name: center_group
///     properties:
///       name: center
///       hub: ${starHub.id}
///       autoAccept:
///         autoAcceptProjects:
///           - foo_44703
///           - bar_9329
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: vpc-spoke
///       location: global
///       description: A sample spoke
///       labels:
///         label-one: value-one
///       hub: ${starHub.id}
///       group: ${centerGroup.id}
///       linkedVpcNetwork:
///         uri: ${network.selfLink}
/// ```
///
/// ### Network Connectivity Spoke Linked Vpc Network Ipv6 Support
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "net",
///     autoCreateSubnetworks: false,
/// });
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "hub1",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "spoke1-ipv6",
///     location: "global",
///     description: "A sample spoke with a linked VPC that include export ranges of all IPv6",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     linkedVpcNetwork: {
///         includeExportRanges: [
///             "ALL_IPV6_RANGES",
///             "ALL_PRIVATE_IPV4_RANGES",
///         ],
///         uri: network.selfLink,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="net",
///     auto_create_subnetworks=False)
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="hub1",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     })
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="spoke1-ipv6",
///     location="global",
///     description="A sample spoke with a linked VPC that include export ranges of all IPv6",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     linked_vpc_network={
///         "include_export_ranges": [
///             "ALL_IPV6_RANGES",
///             "ALL_PRIVATE_IPV4_RANGES",
///         ],
///         "uri": network.self_link,
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
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "hub1",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "spoke1-ipv6",
///         Location = "global",
///         Description = "A sample spoke with a linked VPC that include export ranges of all IPv6",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         LinkedVpcNetwork = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedVpcNetworkArgs
///         {
///             IncludeExportRanges = new[]
///             {
///                 "ALL_IPV6_RANGES",
///                 "ALL_PRIVATE_IPV4_RANGES",
///             },
///             Uri = network.SelfLink,
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("hub1"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("spoke1-ipv6"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("A sample spoke with a linked VPC that include export ranges of all IPv6"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			LinkedVpcNetwork: &networkconnectivity.SpokeLinkedVpcNetworkArgs{
/// 				IncludeExportRanges: pulumi.StringArray{
/// 					pulumi.String("ALL_IPV6_RANGES"),
/// 					pulumi.String("ALL_PRIVATE_IPV4_RANGES"),
/// 				},
/// 				Uri: network.SelfLink,
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedVpcNetworkArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("hub1")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("spoke1-ipv6")
///             .location("global")
///             .description("A sample spoke with a linked VPC that include export ranges of all IPv6")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .linkedVpcNetwork(SpokeLinkedVpcNetworkArgs.builder()
///                 .includeExportRanges(
///                     "ALL_IPV6_RANGES",
///                     "ALL_PRIVATE_IPV4_RANGES")
///                 .uri(network.selfLink())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: net
///       autoCreateSubnetworks: false
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: hub1
///       description: A sample hub
///       labels:
///         label-two: value-one
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: spoke1-ipv6
///       location: global
///       description: A sample spoke with a linked VPC that include export ranges of all IPv6
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       linkedVpcNetwork:
///         includeExportRanges:
///           - ALL_IPV6_RANGES
///           - ALL_PRIVATE_IPV4_RANGES
///         uri: ${network.selfLink}
/// ```
///
/// ### Network Connectivity Spoke Gateway
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "net-spoke",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "tf-test-subnet_37135",
///     ipCidrRange: "10.0.0.0/28",
///     region: "us-central1",
///     network: network.selfLink,
/// });
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "hub",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
///     presetTopology: "HYBRID_INSPECTION",
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "gateway",
///     location: "us-central1",
///     description: "A sample spoke of type Gateway",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     gateway: {
///         ipRangeReservations: [{
///             ipRange: "10.0.0.0/23",
///         }],
///         capacity: "CAPACITY_1_GBPS",
///     },
///     group: "gateways",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="net-spoke",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="tf-test-subnet_37135",
///     ip_cidr_range="10.0.0.0/28",
///     region="us-central1",
///     network=network.self_link)
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="hub",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     },
///     preset_topology="HYBRID_INSPECTION")
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="gateway",
///     location="us-central1",
///     description="A sample spoke of type Gateway",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     gateway={
///         "ip_range_reservations": [{
///             "ip_range": "10.0.0.0/23",
///         }],
///         "capacity": "CAPACITY_1_GBPS",
///     },
///     group="gateways")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "net-spoke",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "tf-test-subnet_37135",
///         IpCidrRange = "10.0.0.0/28",
///         Region = "us-central1",
///         Network = network.SelfLink,
///     });
///
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "hub",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///         PresetTopology = "HYBRID_INSPECTION",
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "gateway",
///         Location = "us-central1",
///         Description = "A sample spoke of type Gateway",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         Gateway = new Gcp.NetworkConnectivity.Inputs.SpokeGatewayArgs
///         {
///             IpRangeReservations = new[]
///             {
///                 new Gcp.NetworkConnectivity.Inputs.SpokeGatewayIpRangeReservationArgs
///                 {
///                     IpRange = "10.0.0.0/23",
///                 },
///             },
///             Capacity = "CAPACITY_1_GBPS",
///         },
///         Group = "gateways",
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net-spoke"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("tf-test-subnet_37135"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/28"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("hub"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 			PresetTopology: pulumi.String("HYBRID_INSPECTION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("gateway"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample spoke of type Gateway"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID(),
/// 			Gateway: &networkconnectivity.SpokeGatewayArgs{
/// 				IpRangeReservations: networkconnectivity.SpokeGatewayIpRangeReservationArray{
/// 					&networkconnectivity.SpokeGatewayIpRangeReservationArgs{
/// 						IpRange: pulumi.String("10.0.0.0/23"),
/// 					},
/// 				},
/// 				Capacity: pulumi.String("CAPACITY_1_GBPS"),
/// 			},
/// 			Group: pulumi.String("gateways"),
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeGatewayArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("net-spoke")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("tf-test-subnet_37135")
///             .ipCidrRange("10.0.0.0/28")
///             .region("us-central1")
///             .network(network.selfLink())
///             .build());
///
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("hub")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .presetTopology("HYBRID_INSPECTION")
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("gateway")
///             .location("us-central1")
///             .description("A sample spoke of type Gateway")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .gateway(SpokeGatewayArgs.builder()
///                 .ipRangeReservations(SpokeGatewayIpRangeReservationArgs.builder()
///                     .ipRange("10.0.0.0/23")
///                     .build())
///                 .capacity("CAPACITY_1_GBPS")
///                 .build())
///             .group("gateways")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: net-spoke
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: tf-test-subnet_37135
///       ipCidrRange: 10.0.0.0/28
///       region: us-central1
///       network: ${network.selfLink}
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: hub
///       description: A sample hub
///       labels:
///         label-two: value-one
///       presetTopology: HYBRID_INSPECTION
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: gateway
///       location: us-central1
///       description: A sample spoke of type Gateway
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       gateway:
///         ipRangeReservations:
///           - ipRange: 10.0.0.0/23
///         capacity: CAPACITY_1_GBPS
///       group: gateways
/// ```
///
///
/// ## Import
///
/// Spoke can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/spokes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Spoke can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/spoke:Spoke default projects/{{project}}/locations/{{location}}/spokes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/spoke:Spoke default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/spoke:Spoke default {{location}}/{{name}}
/// ```
class Spoke extends pulumi.CustomResource {
  /// Output only. The time the spoke was created.
  late final pulumi.Output<String> createTime;
  /// An optional description of the spoke.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// This is a gateway that can apply specialized processing to traffic going through it.
  /// Structure is documented below.
  late final pulumi.Output<SpokeGateway?> gateway;
  /// The name of the group that this spoke is associated with.
  late final pulumi.Output<String> group;
  /// Immutable. The URI of the hub that this spoke is attached to.
  late final pulumi.Output<String> hub;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedInterconnectAttachments?> linkedInterconnectAttachments;
  /// Producer VPC network that is associated with the spoke.
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedProducerVpcNetwork?> linkedProducerVpcNetwork;
  /// The URIs of linked Router appliance resources
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedRouterApplianceInstances?> linkedRouterApplianceInstances;
  /// VPC network that is associated with the spoke.
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedVpcNetwork?> linkedVpcNetwork;
  /// The URIs of linked VPN tunnel resources
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedVpnTunnels?> linkedVpnTunnels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Immutable. The name of the spoke. Spoke names must be unique.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The reasons for the current state in the lifecycle
  /// Structure is documented below.
  late final pulumi.Output<List<SpokeReason>> reasons;
  /// Output only. The current lifecycle state of this spoke.
  late final pulumi.Output<String> state;
  /// Output only. The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;
  /// Output only. The time the spoke was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Spoke].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Spoke]. {@macro pulumi_networkconnectivity_spoke_spoke_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Spoke(
    String name, {
    SpokeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/spoke:Spoke',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.gateway = registerOutput<SpokeGateway?>('gateway');
    this.group = registerOutput<String>('group');
    this.hub = registerOutput<String>('hub');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.linkedInterconnectAttachments = registerOutput<SpokeLinkedInterconnectAttachments?>('linkedInterconnectAttachments');
    this.linkedProducerVpcNetwork = registerOutput<SpokeLinkedProducerVpcNetwork?>('linkedProducerVpcNetwork');
    this.linkedRouterApplianceInstances = registerOutput<SpokeLinkedRouterApplianceInstances?>('linkedRouterApplianceInstances');
    this.linkedVpcNetwork = registerOutput<SpokeLinkedVpcNetwork?>('linkedVpcNetwork');
    this.linkedVpnTunnels = registerOutput<SpokeLinkedVpnTunnels?>('linkedVpnTunnels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reasons = registerOutput<List<SpokeReason>>('reasons');
    this.state = registerOutput<String>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Spoke] resource's state with the given [name] and [id].
  static Spoke get(
    String name,
    pulumi.Input<String> id, {
    SpokeState? state,
  }) {
    return Spoke._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Spoke._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/spoke:Spoke',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.gateway = registerOutput<SpokeGateway?>('gateway');
    this.group = registerOutput<String>('group');
    this.hub = registerOutput<String>('hub');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.linkedInterconnectAttachments = registerOutput<SpokeLinkedInterconnectAttachments?>('linkedInterconnectAttachments');
    this.linkedProducerVpcNetwork = registerOutput<SpokeLinkedProducerVpcNetwork?>('linkedProducerVpcNetwork');
    this.linkedRouterApplianceInstances = registerOutput<SpokeLinkedRouterApplianceInstances?>('linkedRouterApplianceInstances');
    this.linkedVpcNetwork = registerOutput<SpokeLinkedVpcNetwork?>('linkedVpcNetwork');
    this.linkedVpnTunnels = registerOutput<SpokeLinkedVpnTunnels?>('linkedVpnTunnels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reasons = registerOutput<List<SpokeReason>>('reasons');
    this.state = registerOutput<String>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

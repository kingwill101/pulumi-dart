import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnetwork_args.dart';
import 'subnetwork_log_config.dart';
import 'subnetwork_params.dart';
import 'subnetwork_state.dart';

/// A VPC network is a virtual version of the traditional physical networks
/// that exist within and between physical data centers. A VPC network
/// provides connectivity for your Compute Engine virtual machine (VM)
/// instances, Container Engine containers, App Engine Flex services, and
/// other network-related resources.
///
/// Each GCP project contains one or more VPC networks. Each VPC network is a
/// global entity spanning all GCP regions. This global VPC network allows VM
/// instances and other resources to communicate with each other via internal,
/// private IP addresses.
///
/// Each VPC network is subdivided into subnets, and each subnet is contained
/// within a single region. You can have more than one subnet in a region for
/// a given VPC network. Each subnet has a contiguous private RFC1918 IP
/// space. You create instances, containers, and the like in these subnets.
/// When you create an instance, you must create it in a subnet, and the
/// instance draws its internal IP address from that subnet.
///
/// Virtual machine (VM) instances in a VPC network can communicate with
/// instances in all other subnets of the same VPC network, regardless of
/// region, using their RFC1918 private IP addresses. You can isolate portions
/// of the network, even entire subnets, using firewall rules.
///
///
/// To get more information about Subnetwork, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks)
/// * How-to Guides
/// * [Cloud Networking](https://cloud.google.com/vpc/docs/using-vpc)
/// * [Private Google Access](https://cloud.google.com/vpc/docs/configure-private-google-access)
///
/// ## Example Usage
///
/// ### Subnetwork Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "test-network",
///     autoCreateSubnetworks: false,
/// });
/// const network_with_private_secondary_ip_ranges = new gcp.compute.Subnetwork("network-with-private-secondary-ip-ranges", {
///     name: "test-subnetwork",
///     ipCidrRange: "10.2.0.0/16",
///     region: "us-central1",
///     network: custom_test.id,
///     secondaryIpRanges: [{
///         rangeName: "tf-test-secondary-range-update1",
///         ipCidrRange: "192.168.10.0/24",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="test-network",
///     auto_create_subnetworks=False)
/// network_with_private_secondary_ip_ranges = gcp.compute.Subnetwork("network-with-private-secondary-ip-ranges",
///     name="test-subnetwork",
///     ip_cidr_range="10.2.0.0/16",
///     region="us-central1",
///     network=custom_test.id,
///     secondary_ip_ranges=[{
///         "range_name": "tf-test-secondary-range-update1",
///         "ip_cidr_range": "192.168.10.0/24",
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
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_with_private_secondary_ip_ranges = new Gcp.Compute.Subnetwork("network-with-private-secondary-ip-ranges", new()
///     {
///         Name = "test-subnetwork",
///         IpCidrRange = "10.2.0.0/16",
///         Region = "us-central1",
///         Network = custom_test.Id,
///         SecondaryIpRanges = new[]
///         {
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "tf-test-secondary-range-update1",
///                 IpCidrRange = "192.168.10.0/24",
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
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "network-with-private-secondary-ip-ranges", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     custom_test.ID().ToIDOutput().ToStringOutput(),
/// 			SecondaryIpRanges: compute.SubnetworkSecondaryIpRangeArray{
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName:   pulumi.String("tf-test-secondary-range-update1"),
/// 					IpCidrRange: pulumi.String("192.168.10.0/24"),
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
/// resource "gcp_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
///   name          = "test-subnetwork"
///   ip_cidr_range = "10.2.0.0/16"
///   region        = "us-central1"
///   network       = gcp_compute_network.custom-test.id
///   secondary_ip_ranges {
///     range_name    = "tf-test-secondary-range-update1"
///     ip_cidr_range = "192.168.10.0/24"
///   }
/// }
/// resource "gcp_compute_network" "custom-test" {
///   name                    = "test-network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.compute.inputs.SubnetworkSecondaryIpRangeArgs;
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_with_private_secondary_ip_ranges = new Subnetwork("network-with-private-secondary-ip-ranges", SubnetworkArgs.builder()
///             .name("test-subnetwork")
///             .ipCidrRange("10.2.0.0/16")
///             .region("us-central1")
///             .network(custom_test.id())
///             .secondaryIpRanges(SubnetworkSecondaryIpRangeArgs.builder()
///                 .rangeName("tf-test-secondary-range-update1")
///                 .ipCidrRange("192.168.10.0/24")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-with-private-secondary-ip-ranges:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: test-subnetwork
///       ipCidrRange: 10.2.0.0/16
///       region: us-central1
///       network: ${["custom-test"].id}
///       secondaryIpRanges:
///         - rangeName: tf-test-secondary-range-update1
///           ipCidrRange: 192.168.10.0/24
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Logging Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "log-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnet_with_logging = new gcp.compute.Subnetwork("subnet-with-logging", {
///     name: "log-test-subnetwork",
///     ipCidrRange: "10.2.0.0/16",
///     region: "us-central1",
///     network: custom_test.id,
///     logConfig: {
///         aggregationInterval: "INTERVAL_10_MIN",
///         flowSampling: 0.5,
///         metadata: "INCLUDE_ALL_METADATA",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="log-test-network",
///     auto_create_subnetworks=False)
/// subnet_with_logging = gcp.compute.Subnetwork("subnet-with-logging",
///     name="log-test-subnetwork",
///     ip_cidr_range="10.2.0.0/16",
///     region="us-central1",
///     network=custom_test.id,
///     log_config={
///         "aggregation_interval": "INTERVAL_10_MIN",
///         "flow_sampling": 0.5,
///         "metadata": "INCLUDE_ALL_METADATA",
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
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "log-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnet_with_logging = new Gcp.Compute.Subnetwork("subnet-with-logging", new()
///     {
///         Name = "log-test-subnetwork",
///         IpCidrRange = "10.2.0.0/16",
///         Region = "us-central1",
///         Network = custom_test.Id,
///         LogConfig = new Gcp.Compute.Inputs.SubnetworkLogConfigArgs
///         {
///             AggregationInterval = "INTERVAL_10_MIN",
///             FlowSampling = 0.5,
///             Metadata = "INCLUDE_ALL_METADATA",
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
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("log-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnet-with-logging", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("log-test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     custom_test.ID().ToIDOutput().ToStringOutput(),
/// 			LogConfig: &compute.SubnetworkLogConfigArgs{
/// 				AggregationInterval: pulumi.String("INTERVAL_10_MIN"),
/// 				FlowSampling:        pulumi.Float64(0.5),
/// 				Metadata:            pulumi.String("INCLUDE_ALL_METADATA"),
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
/// resource "gcp_compute_subnetwork" "subnet-with-logging" {
///   name          = "log-test-subnetwork"
///   ip_cidr_range = "10.2.0.0/16"
///   region        = "us-central1"
///   network       = gcp_compute_network.custom-test.id
///   log_config = {
///     aggregation_interval = "INTERVAL_10_MIN"
///     flow_sampling        = 0.5
///     metadata             = "INCLUDE_ALL_METADATA"
///   }
/// }
/// resource "gcp_compute_network" "custom-test" {
///   name                    = "log-test-network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.compute.inputs.SubnetworkLogConfigArgs;
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("log-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnet_with_logging = new Subnetwork("subnet-with-logging", SubnetworkArgs.builder()
///             .name("log-test-subnetwork")
///             .ipCidrRange("10.2.0.0/16")
///             .region("us-central1")
///             .network(custom_test.id())
///             .logConfig(SubnetworkLogConfigArgs.builder()
///                 .aggregationInterval("INTERVAL_10_MIN")
///                 .flowSampling(0.5)
///                 .metadata("INCLUDE_ALL_METADATA")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnet-with-logging:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: log-test-subnetwork
///       ipCidrRange: 10.2.0.0/16
///       region: us-central1
///       network: ${["custom-test"].id}
///       logConfig:
///         aggregationInterval: INTERVAL_10_MIN
///         flowSampling: 0.5
///         metadata: INCLUDE_ALL_METADATA
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: log-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Internal L7lb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "l7lb-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const network_for_l7lb = new gcp.compute.Subnetwork("network-for-l7lb", {
///     name: "l7lb-test-subnetwork",
///     ipCidrRange: "10.0.0.0/22",
///     region: "us-central1",
///     purpose: "REGIONAL_MANAGED_PROXY",
///     role: "ACTIVE",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="l7lb-test-network",
///     auto_create_subnetworks=False)
/// network_for_l7lb = gcp.compute.Subnetwork("network-for-l7lb",
///     name="l7lb-test-subnetwork",
///     ip_cidr_range="10.0.0.0/22",
///     region="us-central1",
///     purpose="REGIONAL_MANAGED_PROXY",
///     role="ACTIVE",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "l7lb-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_for_l7lb = new Gcp.Compute.Subnetwork("network-for-l7lb", new()
///     {
///         Name = "l7lb-test-subnetwork",
///         IpCidrRange = "10.0.0.0/22",
///         Region = "us-central1",
///         Purpose = "REGIONAL_MANAGED_PROXY",
///         Role = "ACTIVE",
///         Network = custom_test.Id,
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
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("l7lb-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "network-for-l7lb", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("l7lb-test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/22"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// 			Role:        pulumi.String("ACTIVE"),
/// 			Network:     custom_test.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_subnetwork" "network-for-l7lb" {
///   name          = "l7lb-test-subnetwork"
///   ip_cidr_range = "10.0.0.0/22"
///   region        = "us-central1"
///   purpose       = "REGIONAL_MANAGED_PROXY"
///   role          = "ACTIVE"
///   network       = gcp_compute_network.custom-test.id
/// }
/// resource "gcp_compute_network" "custom-test" {
///   name                    = "l7lb-test-network"
///   auto_create_subnetworks = false
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("l7lb-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_for_l7lb = new Subnetwork("network-for-l7lb", SubnetworkArgs.builder()
///             .name("l7lb-test-subnetwork")
///             .ipCidrRange("10.0.0.0/22")
///             .region("us-central1")
///             .purpose("REGIONAL_MANAGED_PROXY")
///             .role("ACTIVE")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-for-l7lb:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: l7lb-test-subnetwork
///       ipCidrRange: 10.0.0.0/22
///       region: us-central1
///       purpose: REGIONAL_MANAGED_PROXY
///       role: ACTIVE
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: l7lb-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Ipv6
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "ipv6-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_ipv6 = new gcp.compute.Subnetwork("subnetwork-ipv6", {
///     name: "ipv6-test-subnetwork",
///     ipCidrRange: "10.0.0.0/22",
///     region: "us-west2",
///     stackType: "IPV4_IPV6",
///     ipv6AccessType: "EXTERNAL",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="ipv6-test-network",
///     auto_create_subnetworks=False)
/// subnetwork_ipv6 = gcp.compute.Subnetwork("subnetwork-ipv6",
///     name="ipv6-test-subnetwork",
///     ip_cidr_range="10.0.0.0/22",
///     region="us-west2",
///     stack_type="IPV4_IPV6",
///     ipv6_access_type="EXTERNAL",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "ipv6-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_ipv6 = new Gcp.Compute.Subnetwork("subnetwork-ipv6", new()
///     {
///         Name = "ipv6-test-subnetwork",
///         IpCidrRange = "10.0.0.0/22",
///         Region = "us-west2",
///         StackType = "IPV4_IPV6",
///         Ipv6AccessType = "EXTERNAL",
///         Network = custom_test.Id,
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
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("ipv6-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-ipv6", &compute.SubnetworkArgs{
/// 			Name:           pulumi.String("ipv6-test-subnetwork"),
/// 			IpCidrRange:    pulumi.String("10.0.0.0/22"),
/// 			Region:         pulumi.String("us-west2"),
/// 			StackType:      pulumi.String("IPV4_IPV6"),
/// 			Ipv6AccessType: pulumi.String("EXTERNAL"),
/// 			Network:        custom_test.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_subnetwork" "subnetwork-ipv6" {
///   name             = "ipv6-test-subnetwork"
///   ip_cidr_range    = "10.0.0.0/22"
///   region           = "us-west2"
///   stack_type       = "IPV4_IPV6"
///   ipv6_access_type = "EXTERNAL"
///   network          = gcp_compute_network.custom-test.id
/// }
/// resource "gcp_compute_network" "custom-test" {
///   name                    = "ipv6-test-network"
///   auto_create_subnetworks = false
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("ipv6-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_ipv6 = new Subnetwork("subnetwork-ipv6", SubnetworkArgs.builder()
///             .name("ipv6-test-subnetwork")
///             .ipCidrRange("10.0.0.0/22")
///             .region("us-west2")
///             .stackType("IPV4_IPV6")
///             .ipv6AccessType("EXTERNAL")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-ipv6:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: ipv6-test-subnetwork
///       ipCidrRange: 10.0.0.0/22
///       region: us-west2
///       stackType: IPV4_IPV6
///       ipv6AccessType: EXTERNAL
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: ipv6-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Internal Ipv6
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "internal-ipv6-test-network",
///     autoCreateSubnetworks: false,
///     enableUlaInternalIpv6: true,
/// });
/// const subnetwork_internal_ipv6 = new gcp.compute.Subnetwork("subnetwork-internal-ipv6", {
///     name: "internal-ipv6-test-subnetwork",
///     ipCidrRange: "10.0.0.0/22",
///     region: "us-west2",
///     stackType: "IPV4_IPV6",
///     ipv6AccessType: "INTERNAL",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="internal-ipv6-test-network",
///     auto_create_subnetworks=False,
///     enable_ula_internal_ipv6=True)
/// subnetwork_internal_ipv6 = gcp.compute.Subnetwork("subnetwork-internal-ipv6",
///     name="internal-ipv6-test-subnetwork",
///     ip_cidr_range="10.0.0.0/22",
///     region="us-west2",
///     stack_type="IPV4_IPV6",
///     ipv6_access_type="INTERNAL",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "internal-ipv6-test-network",
///         AutoCreateSubnetworks = false,
///         EnableUlaInternalIpv6 = true,
///     });
///
///     var subnetwork_internal_ipv6 = new Gcp.Compute.Subnetwork("subnetwork-internal-ipv6", new()
///     {
///         Name = "internal-ipv6-test-subnetwork",
///         IpCidrRange = "10.0.0.0/22",
///         Region = "us-west2",
///         StackType = "IPV4_IPV6",
///         Ipv6AccessType = "INTERNAL",
///         Network = custom_test.Id,
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
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("internal-ipv6-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 			EnableUlaInternalIpv6: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-internal-ipv6", &compute.SubnetworkArgs{
/// 			Name:           pulumi.String("internal-ipv6-test-subnetwork"),
/// 			IpCidrRange:    pulumi.String("10.0.0.0/22"),
/// 			Region:         pulumi.String("us-west2"),
/// 			StackType:      pulumi.String("IPV4_IPV6"),
/// 			Ipv6AccessType: pulumi.String("INTERNAL"),
/// 			Network:        custom_test.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_subnetwork" "subnetwork-internal-ipv6" {
///   name             = "internal-ipv6-test-subnetwork"
///   ip_cidr_range    = "10.0.0.0/22"
///   region           = "us-west2"
///   stack_type       = "IPV4_IPV6"
///   ipv6_access_type = "INTERNAL"
///   network          = gcp_compute_network.custom-test.id
/// }
/// resource "gcp_compute_network" "custom-test" {
///   name                     = "internal-ipv6-test-network"
///   auto_create_subnetworks  = false
///   enable_ula_internal_ipv6 = true
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("internal-ipv6-test-network")
///             .autoCreateSubnetworks(false)
///             .enableUlaInternalIpv6(true)
///             .build());
///
///         var subnetwork_internal_ipv6 = new Subnetwork("subnetwork-internal-ipv6", SubnetworkArgs.builder()
///             .name("internal-ipv6-test-subnetwork")
///             .ipCidrRange("10.0.0.0/22")
///             .region("us-west2")
///             .stackType("IPV4_IPV6")
///             .ipv6AccessType("INTERNAL")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-internal-ipv6:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: internal-ipv6-test-subnetwork
///       ipCidrRange: 10.0.0.0/22
///       region: us-west2
///       stackType: IPV4_IPV6
///       ipv6AccessType: INTERNAL
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: internal-ipv6-test-network
///       autoCreateSubnetworks: false
///       enableUlaInternalIpv6: true
/// ```
///
/// ### Subnetwork Purpose Private Nat
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "subnet-purpose-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_purpose_private_nat = new gcp.compute.Subnetwork("subnetwork-purpose-private-nat", {
///     name: "subnet-purpose-test-subnetwork",
///     region: "us-west2",
///     ipCidrRange: "192.168.1.0/24",
///     purpose: "PRIVATE_NAT",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="subnet-purpose-test-network",
///     auto_create_subnetworks=False)
/// subnetwork_purpose_private_nat = gcp.compute.Subnetwork("subnetwork-purpose-private-nat",
///     name="subnet-purpose-test-subnetwork",
///     region="us-west2",
///     ip_cidr_range="192.168.1.0/24",
///     purpose="PRIVATE_NAT",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "subnet-purpose-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_purpose_private_nat = new Gcp.Compute.Subnetwork("subnetwork-purpose-private-nat", new()
///     {
///         Name = "subnet-purpose-test-subnetwork",
///         Region = "us-west2",
///         IpCidrRange = "192.168.1.0/24",
///         Purpose = "PRIVATE_NAT",
///         Network = custom_test.Id,
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
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("subnet-purpose-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-purpose-private-nat", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnet-purpose-test-subnetwork"),
/// 			Region:      pulumi.String("us-west2"),
/// 			IpCidrRange: pulumi.String("192.168.1.0/24"),
/// 			Purpose:     pulumi.String("PRIVATE_NAT"),
/// 			Network:     custom_test.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_subnetwork" "subnetwork-purpose-private-nat" {
///   name          = "subnet-purpose-test-subnetwork"
///   region        = "us-west2"
///   ip_cidr_range = "192.168.1.0/24"
///   purpose       = "PRIVATE_NAT"
///   network       = gcp_compute_network.custom-test.id
/// }
/// resource "gcp_compute_network" "custom-test" {
///   name                    = "subnet-purpose-test-network"
///   auto_create_subnetworks = false
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("subnet-purpose-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_purpose_private_nat = new Subnetwork("subnetwork-purpose-private-nat", SubnetworkArgs.builder()
///             .name("subnet-purpose-test-subnetwork")
///             .region("us-west2")
///             .ipCidrRange("192.168.1.0/24")
///             .purpose("PRIVATE_NAT")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-purpose-private-nat:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnet-purpose-test-subnetwork
///       region: us-west2
///       ipCidrRange: 192.168.1.0/24
///       purpose: PRIVATE_NAT
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: subnet-purpose-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Resolve Subnet Mask
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "subnet-resolve-subnet-mask-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_resolve_subnet_mask = new gcp.compute.Subnetwork("subnetwork-resolve-subnet-mask", {
///     name: "subnet-resolve-subnet-mask-test-subnetwork",
///     region: "us-west2",
///     ipCidrRange: "10.10.0.0/24",
///     purpose: "PRIVATE",
///     resolveSubnetMask: "ARP_PRIMARY_RANGE",
///     network: custom_test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="subnet-resolve-subnet-mask-test-network",
///     auto_create_subnetworks=False)
/// subnetwork_resolve_subnet_mask = gcp.compute.Subnetwork("subnetwork-resolve-subnet-mask",
///     name="subnet-resolve-subnet-mask-test-subnetwork",
///     region="us-west2",
///     ip_cidr_range="10.10.0.0/24",
///     purpose="PRIVATE",
///     resolve_subnet_mask="ARP_PRIMARY_RANGE",
///     network=custom_test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "subnet-resolve-subnet-mask-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_resolve_subnet_mask = new Gcp.Compute.Subnetwork("subnetwork-resolve-subnet-mask", new()
///     {
///         Name = "subnet-resolve-subnet-mask-test-subnetwork",
///         Region = "us-west2",
///         IpCidrRange = "10.10.0.0/24",
///         Purpose = "PRIVATE",
///         ResolveSubnetMask = "ARP_PRIMARY_RANGE",
///         Network = custom_test.Id,
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
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("subnet-resolve-subnet-mask-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-resolve-subnet-mask", &compute.SubnetworkArgs{
/// 			Name:              pulumi.String("subnet-resolve-subnet-mask-test-subnetwork"),
/// 			Region:            pulumi.String("us-west2"),
/// 			IpCidrRange:       pulumi.String("10.10.0.0/24"),
/// 			Purpose:           pulumi.String("PRIVATE"),
/// 			ResolveSubnetMask: pulumi.String("ARP_PRIMARY_RANGE"),
/// 			Network:           custom_test.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_subnetwork" "subnetwork-resolve-subnet-mask" {
///   name                = "subnet-resolve-subnet-mask-test-subnetwork"
///   region              = "us-west2"
///   ip_cidr_range       = "10.10.0.0/24"
///   purpose             = "PRIVATE"
///   resolve_subnet_mask = "ARP_PRIMARY_RANGE"
///   network             = gcp_compute_network.custom-test.id
/// }
/// resource "gcp_compute_network" "custom-test" {
///   name                    = "subnet-resolve-subnet-mask-test-network"
///   auto_create_subnetworks = false
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("subnet-resolve-subnet-mask-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_resolve_subnet_mask = new Subnetwork("subnetwork-resolve-subnet-mask", SubnetworkArgs.builder()
///             .name("subnet-resolve-subnet-mask-test-subnetwork")
///             .region("us-west2")
///             .ipCidrRange("10.10.0.0/24")
///             .purpose("PRIVATE")
///             .resolveSubnetMask("ARP_PRIMARY_RANGE")
///             .network(custom_test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-resolve-subnet-mask:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnet-resolve-subnet-mask-test-subnetwork
///       region: us-west2
///       ipCidrRange: 10.10.0.0/24
///       purpose: PRIVATE
///       resolveSubnetMask: ARP_PRIMARY_RANGE
///       network: ${["custom-test"].id}
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: subnet-resolve-subnet-mask-test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Cidr Overlap
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const net_cidr_overlap = new gcp.compute.Network("net-cidr-overlap", {
///     name: "net-cidr-overlap",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_cidr_overlap = new gcp.compute.Subnetwork("subnetwork-cidr-overlap", {
///     name: "subnet-cidr-overlap",
///     region: "us-west2",
///     ipCidrRange: "192.168.1.0/24",
///     allowSubnetCidrRoutesOverlap: true,
///     network: net_cidr_overlap.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// net_cidr_overlap = gcp.compute.Network("net-cidr-overlap",
///     name="net-cidr-overlap",
///     auto_create_subnetworks=False)
/// subnetwork_cidr_overlap = gcp.compute.Subnetwork("subnetwork-cidr-overlap",
///     name="subnet-cidr-overlap",
///     region="us-west2",
///     ip_cidr_range="192.168.1.0/24",
///     allow_subnet_cidr_routes_overlap=True,
///     network=net_cidr_overlap.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var net_cidr_overlap = new Gcp.Compute.Network("net-cidr-overlap", new()
///     {
///         Name = "net-cidr-overlap",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_cidr_overlap = new Gcp.Compute.Subnetwork("subnetwork-cidr-overlap", new()
///     {
///         Name = "subnet-cidr-overlap",
///         Region = "us-west2",
///         IpCidrRange = "192.168.1.0/24",
///         AllowSubnetCidrRoutesOverlap = true,
///         Network = net_cidr_overlap.Id,
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
/// 		net_cidr_overlap, err := compute.NewNetwork(ctx, "net-cidr-overlap", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net-cidr-overlap"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-cidr-overlap", &compute.SubnetworkArgs{
/// 			Name:                         pulumi.String("subnet-cidr-overlap"),
/// 			Region:                       pulumi.String("us-west2"),
/// 			IpCidrRange:                  pulumi.String("192.168.1.0/24"),
/// 			AllowSubnetCidrRoutesOverlap: pulumi.Bool(true),
/// 			Network:                      net_cidr_overlap.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_subnetwork" "subnetwork-cidr-overlap" {
///   name                             = "subnet-cidr-overlap"
///   region                           = "us-west2"
///   ip_cidr_range                    = "192.168.1.0/24"
///   allow_subnet_cidr_routes_overlap = true
///   network                          = gcp_compute_network.net-cidr-overlap.id
/// }
/// resource "gcp_compute_network" "net-cidr-overlap" {
///   name                    = "net-cidr-overlap"
///   auto_create_subnetworks = false
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
///         var net_cidr_overlap = new Network("net-cidr-overlap", NetworkArgs.builder()
///             .name("net-cidr-overlap")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_cidr_overlap = new Subnetwork("subnetwork-cidr-overlap", SubnetworkArgs.builder()
///             .name("subnet-cidr-overlap")
///             .region("us-west2")
///             .ipCidrRange("192.168.1.0/24")
///             .allowSubnetCidrRoutesOverlap(true)
///             .network(net_cidr_overlap.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-cidr-overlap:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnet-cidr-overlap
///       region: us-west2
///       ipCidrRange: 192.168.1.0/24
///       allowSubnetCidrRoutesOverlap: true
///       network: ${["net-cidr-overlap"].id}
///   net-cidr-overlap:
///     type: gcp:compute:Network
///     properties:
///       name: net-cidr-overlap
///       autoCreateSubnetworks: false
/// ```
///
/// ### Subnetwork Reserved Internal Range
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "network-reserved-internal-range",
///     autoCreateSubnetworks: false,
/// });
/// const reserved = new gcp.networkconnectivity.InternalRange("reserved", {
///     name: "reserved",
///     network: _default.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 24,
///     targetCidrRanges: ["10.0.0.0/8"],
/// });
/// const subnetwork_reserved_internal_range = new gcp.compute.Subnetwork("subnetwork-reserved-internal-range", {
///     name: "subnetwork-reserved-internal-range",
///     region: "us-central1",
///     network: _default.id,
///     reservedInternalRange: pulumi.interpolate`networkconnectivity.googleapis.com/${reserved.id}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="network-reserved-internal-range",
///     auto_create_subnetworks=False)
/// reserved = gcp.networkconnectivity.InternalRange("reserved",
///     name="reserved",
///     network=default.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=24,
///     target_cidr_ranges=["10.0.0.0/8"])
/// subnetwork_reserved_internal_range = gcp.compute.Subnetwork("subnetwork-reserved-internal-range",
///     name="subnetwork-reserved-internal-range",
///     region="us-central1",
///     network=default.id,
///     reserved_internal_range=reserved.id.apply(lambda id: f"networkconnectivity.googleapis.com/{id}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network-reserved-internal-range",
///         AutoCreateSubnetworks = false,
///     });
///
///     var reserved = new Gcp.NetworkConnectivity.InternalRange("reserved", new()
///     {
///         Name = "reserved",
///         Network = @default.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 24,
///         TargetCidrRanges = new[]
///         {
///             "10.0.0.0/8",
///         },
///     });
///
///     var subnetwork_reserved_internal_range = new Gcp.Compute.Subnetwork("subnetwork-reserved-internal-range", new()
///     {
///         Name = "subnetwork-reserved-internal-range",
///         Region = "us-central1",
///         Network = @default.Id,
///         ReservedInternalRange = reserved.Id.Apply(id => $"networkconnectivity.googleapis.com/{id}"),
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
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-reserved-internal-range"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reserved, err := networkconnectivity.NewInternalRange(ctx, "reserved", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("reserved"),
/// 			Network:      _default.ID().ToIDOutput().ToStringOutput(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(24),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/8"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-reserved-internal-range", &compute.SubnetworkArgs{
/// 			Name:    pulumi.String("subnetwork-reserved-internal-range"),
/// 			Region:  pulumi.String("us-central1"),
/// 			Network: _default.ID().ToIDOutput().ToStringOutput(),
/// 			ReservedInternalRange: reserved.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 				return fmt.Sprintf("networkconnectivity.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
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
/// resource "gcp_compute_subnetwork" "subnetwork-reserved-internal-range" {
///   name                    = "subnetwork-reserved-internal-range"
///   region                  = "us-central1"
///   network                 = gcp_compute_network.default.id
///   reserved_internal_range ="networkconnectivity.googleapis.com/${gcp_networkconnectivity_internalrange.reserved.id}"
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "network-reserved-internal-range"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networkconnectivity_internalrange" "reserved" {
///   name               = "reserved"
///   network            = gcp_compute_network.default.id
///   usage              = "FOR_VPC"
///   peering            = "FOR_SELF"
///   prefix_length      = 24
///   target_cidr_ranges = ["10.0.0.0/8"]
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
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network-reserved-internal-range")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var reserved = new InternalRange("reserved", InternalRangeArgs.builder()
///             .name("reserved")
///             .network(default_.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(24)
///             .targetCidrRanges("10.0.0.0/8")
///             .build());
///
///         var subnetwork_reserved_internal_range = new Subnetwork("subnetwork-reserved-internal-range", SubnetworkArgs.builder()
///             .name("subnetwork-reserved-internal-range")
///             .region("us-central1")
///             .network(default_.id())
///             .reservedInternalRange(reserved.id().applyValue(_id -> String.format("networkconnectivity.googleapis.com/%s", _id)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-reserved-internal-range:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnetwork-reserved-internal-range
///       region: us-central1
///       network: ${default.id}
///       reservedInternalRange: networkconnectivity.googleapis.com/${reserved.id}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network-reserved-internal-range
///       autoCreateSubnetworks: false
///   reserved:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: reserved
///       network: ${default.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 24
///       targetCidrRanges:
///         - 10.0.0.0/8
/// ```
///
/// ### Subnetwork Reserved Secondary Range
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "network-reserved-secondary-range",
///     autoCreateSubnetworks: false,
/// });
/// const reserved = new gcp.networkconnectivity.InternalRange("reserved", {
///     name: "reserved-primary",
///     network: _default.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 24,
///     targetCidrRanges: ["10.0.0.0/8"],
/// });
/// const reservedSecondary = new gcp.networkconnectivity.InternalRange("reserved_secondary", {
///     name: "reserved-secondary",
///     network: _default.id,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     prefixLength: 16,
///     targetCidrRanges: ["10.0.0.0/8"],
/// });
/// const subnetwork_reserved_secondary_range = new gcp.compute.Subnetwork("subnetwork-reserved-secondary-range", {
///     name: "subnetwork-reserved-secondary-range",
///     region: "us-central1",
///     network: _default.id,
///     reservedInternalRange: pulumi.interpolate`networkconnectivity.googleapis.com/${reserved.id}`,
///     secondaryIpRanges: [{
///         rangeName: "secondary",
///         reservedInternalRange: pulumi.interpolate`networkconnectivity.googleapis.com/${reservedSecondary.id}`,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="network-reserved-secondary-range",
///     auto_create_subnetworks=False)
/// reserved = gcp.networkconnectivity.InternalRange("reserved",
///     name="reserved-primary",
///     network=default.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=24,
///     target_cidr_ranges=["10.0.0.0/8"])
/// reserved_secondary = gcp.networkconnectivity.InternalRange("reserved_secondary",
///     name="reserved-secondary",
///     network=default.id,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     prefix_length=16,
///     target_cidr_ranges=["10.0.0.0/8"])
/// subnetwork_reserved_secondary_range = gcp.compute.Subnetwork("subnetwork-reserved-secondary-range",
///     name="subnetwork-reserved-secondary-range",
///     region="us-central1",
///     network=default.id,
///     reserved_internal_range=reserved.id.apply(lambda id: f"networkconnectivity.googleapis.com/{id}"),
///     secondary_ip_ranges=[{
///         "range_name": "secondary",
///         "reserved_internal_range": reserved_secondary.id.apply(lambda id: f"networkconnectivity.googleapis.com/{id}"),
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
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "network-reserved-secondary-range",
///         AutoCreateSubnetworks = false,
///     });
///
///     var reserved = new Gcp.NetworkConnectivity.InternalRange("reserved", new()
///     {
///         Name = "reserved-primary",
///         Network = @default.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 24,
///         TargetCidrRanges = new[]
///         {
///             "10.0.0.0/8",
///         },
///     });
///
///     var reservedSecondary = new Gcp.NetworkConnectivity.InternalRange("reserved_secondary", new()
///     {
///         Name = "reserved-secondary",
///         Network = @default.Id,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         PrefixLength = 16,
///         TargetCidrRanges = new[]
///         {
///             "10.0.0.0/8",
///         },
///     });
///
///     var subnetwork_reserved_secondary_range = new Gcp.Compute.Subnetwork("subnetwork-reserved-secondary-range", new()
///     {
///         Name = "subnetwork-reserved-secondary-range",
///         Region = "us-central1",
///         Network = @default.Id,
///         ReservedInternalRange = reserved.Id.Apply(id => $"networkconnectivity.googleapis.com/{id}"),
///         SecondaryIpRanges = new[]
///         {
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "secondary",
///                 ReservedInternalRange = reservedSecondary.Id.Apply(id => $"networkconnectivity.googleapis.com/{id}"),
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
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-reserved-secondary-range"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reserved, err := networkconnectivity.NewInternalRange(ctx, "reserved", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("reserved-primary"),
/// 			Network:      _default.ID().ToIDOutput().ToStringOutput(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(24),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/8"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reservedSecondary, err := networkconnectivity.NewInternalRange(ctx, "reserved_secondary", &networkconnectivity.InternalRangeArgs{
/// 			Name:         pulumi.String("reserved-secondary"),
/// 			Network:      _default.ID().ToIDOutput().ToStringOutput(),
/// 			Usage:        pulumi.String("FOR_VPC"),
/// 			Peering:      pulumi.String("FOR_SELF"),
/// 			PrefixLength: pulumi.Int(16),
/// 			TargetCidrRanges: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/8"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork-reserved-secondary-range", &compute.SubnetworkArgs{
/// 			Name:    pulumi.String("subnetwork-reserved-secondary-range"),
/// 			Region:  pulumi.String("us-central1"),
/// 			Network: _default.ID().ToIDOutput().ToStringOutput(),
/// 			ReservedInternalRange: reserved.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 				return fmt.Sprintf("networkconnectivity.googleapis.com/%v", id), nil
/// 			}).(pulumi.StringOutput),
/// 			SecondaryIpRanges: compute.SubnetworkSecondaryIpRangeArray{
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName: pulumi.String("secondary"),
/// 					ReservedInternalRange: reservedSecondary.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 						return fmt.Sprintf("networkconnectivity.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
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
/// resource "gcp_compute_subnetwork" "subnetwork-reserved-secondary-range" {
///   name                    = "subnetwork-reserved-secondary-range"
///   region                  = "us-central1"
///   network                 = gcp_compute_network.default.id
///   reserved_internal_range ="networkconnectivity.googleapis.com/${gcp_networkconnectivity_internalrange.reserved.id}"
///   secondary_ip_ranges {
///     range_name              = "secondary"
///     reserved_internal_range ="networkconnectivity.googleapis.com/${gcp_networkconnectivity_internalrange.reserved_secondary.id}"
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "network-reserved-secondary-range"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networkconnectivity_internalrange" "reserved" {
///   name               = "reserved-primary"
///   network            = gcp_compute_network.default.id
///   usage              = "FOR_VPC"
///   peering            = "FOR_SELF"
///   prefix_length      = 24
///   target_cidr_ranges = ["10.0.0.0/8"]
/// }
/// resource "gcp_networkconnectivity_internalrange" "reserved_secondary" {
///   name               = "reserved-secondary"
///   network            = gcp_compute_network.default.id
///   usage              = "FOR_VPC"
///   peering            = "FOR_SELF"
///   prefix_length      = 16
///   target_cidr_ranges = ["10.0.0.0/8"]
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
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkSecondaryIpRangeArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("network-reserved-secondary-range")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var reserved = new InternalRange("reserved", InternalRangeArgs.builder()
///             .name("reserved-primary")
///             .network(default_.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(24)
///             .targetCidrRanges("10.0.0.0/8")
///             .build());
///
///         var reservedSecondary = new InternalRange("reservedSecondary", InternalRangeArgs.builder()
///             .name("reserved-secondary")
///             .network(default_.id())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .prefixLength(16)
///             .targetCidrRanges("10.0.0.0/8")
///             .build());
///
///         var subnetwork_reserved_secondary_range = new Subnetwork("subnetwork-reserved-secondary-range", SubnetworkArgs.builder()
///             .name("subnetwork-reserved-secondary-range")
///             .region("us-central1")
///             .network(default_.id())
///             .reservedInternalRange(reserved.id().applyValue(_id -> String.format("networkconnectivity.googleapis.com/%s", _id)))
///             .secondaryIpRanges(SubnetworkSecondaryIpRangeArgs.builder()
///                 .rangeName("secondary")
///                 .reservedInternalRange(reservedSecondary.id().applyValue(_id -> String.format("networkconnectivity.googleapis.com/%s", _id)))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetwork-reserved-secondary-range:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnetwork-reserved-secondary-range
///       region: us-central1
///       network: ${default.id}
///       reservedInternalRange: networkconnectivity.googleapis.com/${reserved.id}
///       secondaryIpRanges:
///         - rangeName: secondary
///           reservedInternalRange: networkconnectivity.googleapis.com/${reservedSecondary.id}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: network-reserved-secondary-range
///       autoCreateSubnetworks: false
///   reserved:
///     type: gcp:networkconnectivity:InternalRange
///     properties:
///       name: reserved-primary
///       network: ${default.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 24
///       targetCidrRanges:
///         - 10.0.0.0/8
///   reservedSecondary:
///     type: gcp:networkconnectivity:InternalRange
///     name: reserved_secondary
///     properties:
///       name: reserved-secondary
///       network: ${default.id}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       prefixLength: 16
///       targetCidrRanges:
///         - 10.0.0.0/8
/// ```
///
/// ### Subnetwork With Secondary Ipv6 Range
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_test = new gcp.compute.Network("custom-test", {
///     name: "network-with-secondary-ranges",
///     autoCreateSubnetworks: false,
///     enableUlaInternalIpv6: true,
/// });
/// const ipv6Pap = new gcp.compute.PublicAdvertisedPrefix("ipv6_pap", {
///     name: "pap-for-secondary-ranges",
///     ipCidrRange: "2001:db8::/40",
///     pdpScope: "REGIONAL",
///     ipv6AccessType: "INTERNAL",
///     description: "GOOGLE_INTERNAL_TEST_PREFIX",
/// });
/// const ipv6Pdp = new gcp.compute.PublicDelegatedPrefix("ipv6_pdp", {
///     name: "pdp-for-secondary-ranges",
///     region: "us-central1",
///     description: "PDP in internal subnet mode",
///     ipCidrRange: "2001:db8::/48",
///     parentPrefix: ipv6Pap.id,
///     mode: "DELEGATION",
/// });
/// const ipv6SubPdp = new gcp.compute.PublicDelegatedPrefix("ipv6_sub_pdp", {
///     name: "sub-pdp-for-secondary-ranges",
///     region: "us-central1",
///     ipCidrRange: "2001:db8::/56",
///     parentPrefix: ipv6Pdp.id,
///     mode: "INTERNAL_IPV6_SUBNETWORK_CREATION",
/// });
/// const subnetworkWithSecondaryIpv6Range = new gcp.compute.Subnetwork("subnetwork_with_secondary_ipv6_range", {
///     name: "subnet-with-secondary-ranges",
///     region: "us-central1",
///     network: custom_test.id,
///     stackType: "IPV6_ONLY",
///     ipv6AccessType: "INTERNAL",
///     secondaryIpRanges: [
///         {
///             rangeName: "v6-ula",
///             ipVersion: "IPV6",
///         },
///         {
///             rangeName: "v6-byogua-auto",
///             ipVersion: "IPV6",
///             ipCollection: ipv6SubPdp.selfLink,
///         },
///         {
///             rangeName: "v6-byogua-manual",
///             ipVersion: "IPV6",
///             ipCollection: ipv6SubPdp.selfLink,
///             ipCidrRange: "2001:db8:0:2::/64",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_test = gcp.compute.Network("custom-test",
///     name="network-with-secondary-ranges",
///     auto_create_subnetworks=False,
///     enable_ula_internal_ipv6=True)
/// ipv6_pap = gcp.compute.PublicAdvertisedPrefix("ipv6_pap",
///     name="pap-for-secondary-ranges",
///     ip_cidr_range="2001:db8::/40",
///     pdp_scope="REGIONAL",
///     ipv6_access_type="INTERNAL",
///     description="GOOGLE_INTERNAL_TEST_PREFIX")
/// ipv6_pdp = gcp.compute.PublicDelegatedPrefix("ipv6_pdp",
///     name="pdp-for-secondary-ranges",
///     region="us-central1",
///     description="PDP in internal subnet mode",
///     ip_cidr_range="2001:db8::/48",
///     parent_prefix=ipv6_pap.id,
///     mode="DELEGATION")
/// ipv6_sub_pdp = gcp.compute.PublicDelegatedPrefix("ipv6_sub_pdp",
///     name="sub-pdp-for-secondary-ranges",
///     region="us-central1",
///     ip_cidr_range="2001:db8::/56",
///     parent_prefix=ipv6_pdp.id,
///     mode="INTERNAL_IPV6_SUBNETWORK_CREATION")
/// subnetwork_with_secondary_ipv6_range = gcp.compute.Subnetwork("subnetwork_with_secondary_ipv6_range",
///     name="subnet-with-secondary-ranges",
///     region="us-central1",
///     network=custom_test.id,
///     stack_type="IPV6_ONLY",
///     ipv6_access_type="INTERNAL",
///     secondary_ip_ranges=[
///         {
///             "range_name": "v6-ula",
///             "ip_version": "IPV6",
///         },
///         {
///             "range_name": "v6-byogua-auto",
///             "ip_version": "IPV6",
///             "ip_collection": ipv6_sub_pdp.self_link,
///         },
///         {
///             "range_name": "v6-byogua-manual",
///             "ip_version": "IPV6",
///             "ip_collection": ipv6_sub_pdp.self_link,
///             "ip_cidr_range": "2001:db8:0:2::/64",
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
///     var custom_test = new Gcp.Compute.Network("custom-test", new()
///     {
///         Name = "network-with-secondary-ranges",
///         AutoCreateSubnetworks = false,
///         EnableUlaInternalIpv6 = true,
///     });
///
///     var ipv6Pap = new Gcp.Compute.PublicAdvertisedPrefix("ipv6_pap", new()
///     {
///         Name = "pap-for-secondary-ranges",
///         IpCidrRange = "2001:db8::/40",
///         PdpScope = "REGIONAL",
///         Ipv6AccessType = "INTERNAL",
///         Description = "GOOGLE_INTERNAL_TEST_PREFIX",
///     });
///
///     var ipv6Pdp = new Gcp.Compute.PublicDelegatedPrefix("ipv6_pdp", new()
///     {
///         Name = "pdp-for-secondary-ranges",
///         Region = "us-central1",
///         Description = "PDP in internal subnet mode",
///         IpCidrRange = "2001:db8::/48",
///         ParentPrefix = ipv6Pap.Id,
///         Mode = "DELEGATION",
///     });
///
///     var ipv6SubPdp = new Gcp.Compute.PublicDelegatedPrefix("ipv6_sub_pdp", new()
///     {
///         Name = "sub-pdp-for-secondary-ranges",
///         Region = "us-central1",
///         IpCidrRange = "2001:db8::/56",
///         ParentPrefix = ipv6Pdp.Id,
///         Mode = "INTERNAL_IPV6_SUBNETWORK_CREATION",
///     });
///
///     var subnetworkWithSecondaryIpv6Range = new Gcp.Compute.Subnetwork("subnetwork_with_secondary_ipv6_range", new()
///     {
///         Name = "subnet-with-secondary-ranges",
///         Region = "us-central1",
///         Network = custom_test.Id,
///         StackType = "IPV6_ONLY",
///         Ipv6AccessType = "INTERNAL",
///         SecondaryIpRanges = new[]
///         {
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "v6-ula",
///                 IpVersion = "IPV6",
///             },
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "v6-byogua-auto",
///                 IpVersion = "IPV6",
///                 IpCollection = ipv6SubPdp.SelfLink,
///             },
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "v6-byogua-manual",
///                 IpVersion = "IPV6",
///                 IpCollection = ipv6SubPdp.SelfLink,
///                 IpCidrRange = "2001:db8:0:2::/64",
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
/// 		custom_test, err := compute.NewNetwork(ctx, "custom-test", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-with-secondary-ranges"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 			EnableUlaInternalIpv6: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ipv6Pap, err := compute.NewPublicAdvertisedPrefix(ctx, "ipv6_pap", &compute.PublicAdvertisedPrefixArgs{
/// 			Name:           pulumi.String("pap-for-secondary-ranges"),
/// 			IpCidrRange:    pulumi.String("2001:db8::/40"),
/// 			PdpScope:       pulumi.String("REGIONAL"),
/// 			Ipv6AccessType: pulumi.String("INTERNAL"),
/// 			Description:    pulumi.String("GOOGLE_INTERNAL_TEST_PREFIX"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ipv6Pdp, err := compute.NewPublicDelegatedPrefix(ctx, "ipv6_pdp", &compute.PublicDelegatedPrefixArgs{
/// 			Name:         pulumi.String("pdp-for-secondary-ranges"),
/// 			Region:       pulumi.String("us-central1"),
/// 			Description:  pulumi.String("PDP in internal subnet mode"),
/// 			IpCidrRange:  pulumi.String("2001:db8::/48"),
/// 			ParentPrefix: ipv6Pap.ID().ToIDOutput().ToStringOutput(),
/// 			Mode:         pulumi.String("DELEGATION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ipv6SubPdp, err := compute.NewPublicDelegatedPrefix(ctx, "ipv6_sub_pdp", &compute.PublicDelegatedPrefixArgs{
/// 			Name:         pulumi.String("sub-pdp-for-secondary-ranges"),
/// 			Region:       pulumi.String("us-central1"),
/// 			IpCidrRange:  pulumi.String("2001:db8::/56"),
/// 			ParentPrefix: ipv6Pdp.ID().ToIDOutput().ToStringOutput(),
/// 			Mode:         pulumi.String("INTERNAL_IPV6_SUBNETWORK_CREATION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork_with_secondary_ipv6_range", &compute.SubnetworkArgs{
/// 			Name:           pulumi.String("subnet-with-secondary-ranges"),
/// 			Region:         pulumi.String("us-central1"),
/// 			Network:        custom_test.ID().ToIDOutput().ToStringOutput(),
/// 			StackType:      pulumi.String("IPV6_ONLY"),
/// 			Ipv6AccessType: pulumi.String("INTERNAL"),
/// 			SecondaryIpRanges: compute.SubnetworkSecondaryIpRangeArray{
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName: pulumi.String("v6-ula"),
/// 					IpVersion: pulumi.String("IPV6"),
/// 				},
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName:    pulumi.String("v6-byogua-auto"),
/// 					IpVersion:    pulumi.String("IPV6"),
/// 					IpCollection: ipv6SubPdp.SelfLink,
/// 				},
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName:    pulumi.String("v6-byogua-manual"),
/// 					IpVersion:    pulumi.String("IPV6"),
/// 					IpCollection: ipv6SubPdp.SelfLink,
/// 					IpCidrRange:  pulumi.String("2001:db8:0:2::/64"),
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
/// resource "gcp_compute_subnetwork" "subnetwork_with_secondary_ipv6_range" {
///   name             = "subnet-with-secondary-ranges"
///   region           = "us-central1"
///   network          = gcp_compute_network.custom-test.id
///   stack_type       = "IPV6_ONLY"
///   ipv6_access_type = "INTERNAL"
///   secondary_ip_ranges {
///     range_name = "v6-ula"
///     ip_version = "IPV6"
///   }
///   secondary_ip_ranges {
///     range_name    = "v6-byogua-auto"
///     ip_version    = "IPV6"
///     ip_collection = gcp_compute_publicdelegatedprefix.ipv6_sub_pdp.self_link
///   }
///   secondary_ip_ranges {
///     range_name    = "v6-byogua-manual"
///     ip_version    = "IPV6"
///     ip_collection = gcp_compute_publicdelegatedprefix.ipv6_sub_pdp.self_link
///     ip_cidr_range = "2001:db8:0:2::/64"
///   }
/// }
/// resource "gcp_compute_network" "custom-test" {
///   name                     = "network-with-secondary-ranges"
///   auto_create_subnetworks  = false
///   enable_ula_internal_ipv6 = true
/// }
/// resource "gcp_compute_publicadvertisedprefix" "ipv6_pap" {
///   name             = "pap-for-secondary-ranges"
///   ip_cidr_range    = "2001:db8::/40"
///   pdp_scope        = "REGIONAL"
///   ipv6_access_type = "INTERNAL"
///   description      = "GOOGLE_INTERNAL_TEST_PREFIX"
/// }
/// resource "gcp_compute_publicdelegatedprefix" "ipv6_pdp" {
///   name          = "pdp-for-secondary-ranges"
///   region        = "us-central1"
///   description   = "PDP in internal subnet mode"
///   ip_cidr_range = "2001:db8::/48"
///   parent_prefix = gcp_compute_publicadvertisedprefix.ipv6_pap.id
///   mode          = "DELEGATION"
/// }
/// resource "gcp_compute_publicdelegatedprefix" "ipv6_sub_pdp" {
///   name          = "sub-pdp-for-secondary-ranges"
///   region        = "us-central1"
///   ip_cidr_range = "2001:db8::/56"
///   parent_prefix = gcp_compute_publicdelegatedprefix.ipv6_pdp.id
///   mode          = "INTERNAL_IPV6_SUBNETWORK_CREATION"
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
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefix;
/// import com.pulumi.gcp.compute.PublicAdvertisedPrefixArgs;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefix;
/// import com.pulumi.gcp.compute.PublicDelegatedPrefixArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkSecondaryIpRangeArgs;
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
///         var custom_test = new Network("custom-test", NetworkArgs.builder()
///             .name("network-with-secondary-ranges")
///             .autoCreateSubnetworks(false)
///             .enableUlaInternalIpv6(true)
///             .build());
///
///         var ipv6Pap = new PublicAdvertisedPrefix("ipv6Pap", PublicAdvertisedPrefixArgs.builder()
///             .name("pap-for-secondary-ranges")
///             .ipCidrRange("2001:db8::/40")
///             .pdpScope("REGIONAL")
///             .ipv6AccessType("INTERNAL")
///             .description("GOOGLE_INTERNAL_TEST_PREFIX")
///             .build());
///
///         var ipv6Pdp = new PublicDelegatedPrefix("ipv6Pdp", PublicDelegatedPrefixArgs.builder()
///             .name("pdp-for-secondary-ranges")
///             .region("us-central1")
///             .description("PDP in internal subnet mode")
///             .ipCidrRange("2001:db8::/48")
///             .parentPrefix(ipv6Pap.id())
///             .mode("DELEGATION")
///             .build());
///
///         var ipv6SubPdp = new PublicDelegatedPrefix("ipv6SubPdp", PublicDelegatedPrefixArgs.builder()
///             .name("sub-pdp-for-secondary-ranges")
///             .region("us-central1")
///             .ipCidrRange("2001:db8::/56")
///             .parentPrefix(ipv6Pdp.id())
///             .mode("INTERNAL_IPV6_SUBNETWORK_CREATION")
///             .build());
///
///         var subnetworkWithSecondaryIpv6Range = new Subnetwork("subnetworkWithSecondaryIpv6Range", SubnetworkArgs.builder()
///             .name("subnet-with-secondary-ranges")
///             .region("us-central1")
///             .network(custom_test.id())
///             .stackType("IPV6_ONLY")
///             .ipv6AccessType("INTERNAL")
///             .secondaryIpRanges(
///                 SubnetworkSecondaryIpRangeArgs.builder()
///                     .rangeName("v6-ula")
///                     .ipVersion("IPV6")
///                     .build(),
///                 SubnetworkSecondaryIpRangeArgs.builder()
///                     .rangeName("v6-byogua-auto")
///                     .ipVersion("IPV6")
///                     .ipCollection(ipv6SubPdp.selfLink())
///                     .build(),
///                 SubnetworkSecondaryIpRangeArgs.builder()
///                     .rangeName("v6-byogua-manual")
///                     .ipVersion("IPV6")
///                     .ipCollection(ipv6SubPdp.selfLink())
///                     .ipCidrRange("2001:db8:0:2::/64")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnetworkWithSecondaryIpv6Range:
///     type: gcp:compute:Subnetwork
///     name: subnetwork_with_secondary_ipv6_range
///     properties:
///       name: subnet-with-secondary-ranges
///       region: us-central1
///       network: ${["custom-test"].id}
///       stackType: IPV6_ONLY
///       ipv6AccessType: INTERNAL
///       secondaryIpRanges:
///         - rangeName: v6-ula
///           ipVersion: IPV6
///         - rangeName: v6-byogua-auto
///           ipVersion: IPV6
///           ipCollection: ${ipv6SubPdp.selfLink}
///         - rangeName: v6-byogua-manual
///           ipVersion: IPV6
///           ipCollection: ${ipv6SubPdp.selfLink}
///           ipCidrRange: 2001:db8:0:2::/64
///   custom-test:
///     type: gcp:compute:Network
///     properties:
///       name: network-with-secondary-ranges
///       autoCreateSubnetworks: false
///       enableUlaInternalIpv6: true
///   ipv6Pap:
///     type: gcp:compute:PublicAdvertisedPrefix
///     name: ipv6_pap
///     properties:
///       name: pap-for-secondary-ranges
///       ipCidrRange: 2001:db8::/40
///       pdpScope: REGIONAL
///       ipv6AccessType: INTERNAL
///       description: GOOGLE_INTERNAL_TEST_PREFIX
///   ipv6Pdp:
///     type: gcp:compute:PublicDelegatedPrefix
///     name: ipv6_pdp
///     properties:
///       name: pdp-for-secondary-ranges
///       region: us-central1
///       description: PDP in internal subnet mode
///       ipCidrRange: 2001:db8::/48
///       parentPrefix: ${ipv6Pap.id}
///       mode: DELEGATION
///   ipv6SubPdp:
///     type: gcp:compute:PublicDelegatedPrefix
///     name: ipv6_sub_pdp
///     properties:
///       name: sub-pdp-for-secondary-ranges
///       region: us-central1
///       ipCidrRange: 2001:db8::/56
///       parentPrefix: ${ipv6Pdp.id}
///       mode: INTERNAL_IPV6_SUBNETWORK_CREATION
/// ```
///
///
/// ## Import
///
/// Subnetwork can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/subnetworks/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Subnetwork can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default projects/{{project}}/regions/{{region}}/subnetworks/{{name}}
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{region}}/{{name}}
/// $ pulumi import gcp:compute/subnetwork:Subnetwork default {{name}}
/// ```
class Subnetwork extends pulumi.CustomResource {
  /// Typically packets destined to IPs within the subnetwork range that do not match
  /// existing resources are dropped and prevented from leaving the VPC.
  /// Setting this field to true will allow these packets to match dynamic routes injected
  /// via BGP even if their destinations match existing subnet ranges.
  late final pulumi.Output<bool> allowSubnetCidrRoutesOverlap;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource. This field can be set only at resource
  /// creation time.
  late final pulumi.Output<String?> description;
  /// The range of external IPv6 addresses that are owned by this subnetwork.
  late final pulumi.Output<String> externalIpv6Prefix;
  /// Fingerprint of this resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;
  /// The gateway address for default routes to reach destination addresses
  /// outside this subnetwork.
  late final pulumi.Output<String> gatewayAddress;
  /// The internal IPv6 address range that is assigned to this subnetwork.
  late final pulumi.Output<String> internalIpv6Prefix;
  /// The range of internal addresses that are owned by this subnetwork.
  /// Provide this property when you create the subnetwork. For example,
  /// 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
  /// non-overlapping within a network. Only IPv4 is supported.
  /// Field is optional when `reservedInternalRange` is defined, otherwise required.
  late final pulumi.Output<String> ipCidrRange;
  /// Resource reference of a PublicDelegatedPrefix. The PDP must be a sub-PDP
  /// in EXTERNAL_IPV6_SUBNETWORK_CREATION or INTERNAL_IPV6_SUBNETWORK_CREATION
  /// mode. Use one of the following formats to specify a sub-PDP when creating
  /// a dual stack or IPv6-only subnetwork using BYOIP:
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{sub-pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{sub-pdp-name}}`
  late final pulumi.Output<String?> ipCollection;
  /// The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation
  /// or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6Type is EXTERNAL then this subnet
  /// cannot enable direct path.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  late final pulumi.Output<String?> ipv6AccessType;
  /// The range of internal IPv6 addresses that are owned by this subnetwork.
  late final pulumi.Output<String> ipv6CidrRange;
  /// Possible endpoints of this subnetwork. It can be one of the following:
  /// * VM_ONLY: The subnetwork can be used for creating instances and IPv6 addresses with VM endpoint type. Such a subnetwork
  /// gets external IPv6 ranges from a public delegated prefix and cannot be used to create NetLb.
  /// * VM_AND_FR: The subnetwork can be used for creating both VM instances and Forwarding Rules. It can also be used to reserve
  /// IPv6 addresses with both VM and FR endpoint types. Such a subnetwork gets its IPv6 range from Google IP Pool directly.
  late final pulumi.Output<String> ipv6GceEndpoint;
  /// This field denotes the VPC flow logging options for this subnetwork. If
  /// logging is enabled, logs are exported to Cloud Logging. Flow logging
  /// isn't supported if the subnet `purpose` field is set to subnetwork is
  /// `REGIONAL_MANAGED_PROXY` or `GLOBAL_MANAGED_PROXY`.
  /// Structure is documented below.
  late final pulumi.Output<SubnetworkLogConfig?> logConfig;
  /// The name of the resource, provided by the client when initially
  /// creating the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The network this subnet belongs to.
  /// Only networks that are in the distributed mode can have subnetworks.
  late final pulumi.Output<String> network;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<SubnetworkParams?> params;
  /// When enabled, VMs in this subnetwork without external IP addresses can
  /// access Google APIs and services by using Private Google Access.
  late final pulumi.Output<bool> privateIpGoogleAccess;
  /// The private IPv6 google access type for the VMs in this subnet.
  late final pulumi.Output<String> privateIpv6GoogleAccess;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The purpose of the resource. This field can be either `PRIVATE`, `REGIONAL_MANAGED_PROXY`, `GLOBAL_MANAGED_PROXY`, `PRIVATE_SERVICE_CONNECT`, `PEER_MIGRATION` or `PRIVATE_NAT`(Beta).
  /// A subnet with purpose set to `REGIONAL_MANAGED_PROXY` is a user-created subnetwork that is reserved for regional Envoy-based load balancers.
  /// A subnetwork in a given region with purpose set to `GLOBAL_MANAGED_PROXY` is a proxy-only subnet and is shared between all the cross-regional Envoy-based load balancers.
  /// A subnetwork with purpose set to `PRIVATE_SERVICE_CONNECT` reserves the subnet for hosting a Private Service Connect published service.
  /// A subnetwork with purpose set to `PEER_MIGRATION` is a user created subnetwork that is reserved for migrating resources from one peered network to another.
  /// A subnetwork with purpose set to `PRIVATE_NAT` is used as source range for Private NAT gateways.
  /// Note that `REGIONAL_MANAGED_PROXY` is the preferred setting for all regional Envoy load balancers.
  /// If unspecified, the purpose defaults to `PRIVATE`.
  late final pulumi.Output<String> purpose;
  /// The GCP region for this subnetwork.
  late final pulumi.Output<String> region;
  /// The ID of the reserved internal range. Must be prefixed with `networkconnectivity.googleapis.com`
  /// E.g. `networkconnectivity.googleapis.com/projects/{project}/locations/global/internalRanges/{rangeId}`
  late final pulumi.Output<String?> reservedInternalRange;
  /// 'Configures subnet mask resolution for this subnetwork.'
  /// Possible values are: `ARP_ALL_RANGES`, `ARP_PRIMARY_RANGE`, `ARP_BROADCAST_PRIMARY_RANGE`, `ARP_BROADCAST_PRIMARY_RANGE_WITH_LEARNING`.
  late final pulumi.Output<String?> resolveSubnetMask;
  /// The role of subnetwork.
  /// Currently, this field is only used when `purpose` is `REGIONAL_MANAGED_PROXY`.
  /// The value can be set to `ACTIVE` or `BACKUP`.
  /// An `ACTIVE` subnetwork is one that is currently being used for Envoy-based load balancers in a region.
  /// A `BACKUP` subnetwork is one that is ready to be promoted to `ACTIVE` or is currently draining.
  /// Possible values are: `ACTIVE`, `BACKUP`.
  late final pulumi.Output<String?> role;
  /// An array of configurations for secondary IP ranges for VM instances
  /// contained in this subnetwork. The primary IP of such VM must belong
  /// to the primary ipCidrRange of the subnetwork. The alias IPs may belong
  /// to either primary or secondary ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> secondaryIpRanges;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Controls the removal behavior of secondary_ip_range.
  /// When false, removing secondaryIpRange from config will not produce a diff as
  /// the provider will default to the API's value.
  /// When true, the provider will treat removing secondaryIpRange as sending an
  /// empty list of secondary IP ranges to the API.
  /// Defaults to false.
  late final pulumi.Output<bool?> sendSecondaryIpRangeIfEmpty;
  /// The stack type for this subnet to identify whether the IPv6 feature is enabled or not.
  /// If not specified IPV4_ONLY will be used.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  late final pulumi.Output<String> stackType;
  /// 'The state of the subnetwork, which can be one of the following values:
  /// READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose
  /// set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained.
  /// A subnetwork that is draining cannot be used or modified until it reaches a status of READY'
  late final pulumi.Output<String> state;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> subnetworkId;

  /// Creates a new [Subnetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnetwork]. {@macro pulumi_compute_subnetwork_subnetwork_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnetwork(
    String name, {
    SubnetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/subnetwork:Subnetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowSubnetCidrRoutesOverlap = registerOutput<bool>('allowSubnetCidrRoutesOverlap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    externalIpv6Prefix = registerOutput<String>('externalIpv6Prefix');
    fingerprint = registerOutput<String>('fingerprint');
    gatewayAddress = registerOutput<String>('gatewayAddress');
    internalIpv6Prefix = registerOutput<String>('internalIpv6Prefix');
    ipCidrRange = registerOutput<String>('ipCidrRange');
    ipCollection = registerOutput<String?>('ipCollection');
    ipv6AccessType = registerOutput<String?>('ipv6AccessType');
    ipv6CidrRange = registerOutput<String>('ipv6CidrRange');
    ipv6GceEndpoint = registerOutput<String>('ipv6GceEndpoint');
    logConfig = registerOutput<SubnetworkLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubnetworkLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    params = registerOutput<SubnetworkParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubnetworkParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateIpGoogleAccess = registerOutput<bool>('privateIpGoogleAccess');
    privateIpv6GoogleAccess = registerOutput<String>('privateIpv6GoogleAccess');
    project = registerOutput<String>('project');
    purpose = registerOutput<String>('purpose');
    region = registerOutput<String>('region');
    reservedInternalRange = registerOutput<String?>('reservedInternalRange');
    resolveSubnetMask = registerOutput<String?>('resolveSubnetMask');
    role = registerOutput<String?>('role');
    secondaryIpRanges = registerOutput<List<Map<String, dynamic>>>('secondaryIpRanges');
    selfLink = registerOutput<String>('selfLink');
    sendSecondaryIpRangeIfEmpty = registerOutput<bool?>('sendSecondaryIpRangeIfEmpty');
    stackType = registerOutput<String>('stackType');
    state = registerOutput<String>('state');
    subnetworkId = registerOutput<int>('subnetworkId');
  }

  /// Gets an existing [Subnetwork] resource's state with the given [name] and [id].
  static Subnetwork get(
    String name,
    pulumi.Input<String> id, {
    SubnetworkState? state,
  }) {
    return Subnetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Subnetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/subnetwork:Subnetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowSubnetCidrRoutesOverlap = registerOutput<bool>('allowSubnetCidrRoutesOverlap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    externalIpv6Prefix = registerOutput<String>('externalIpv6Prefix');
    fingerprint = registerOutput<String>('fingerprint');
    gatewayAddress = registerOutput<String>('gatewayAddress');
    internalIpv6Prefix = registerOutput<String>('internalIpv6Prefix');
    ipCidrRange = registerOutput<String>('ipCidrRange');
    ipCollection = registerOutput<String?>('ipCollection');
    ipv6AccessType = registerOutput<String?>('ipv6AccessType');
    ipv6CidrRange = registerOutput<String>('ipv6CidrRange');
    ipv6GceEndpoint = registerOutput<String>('ipv6GceEndpoint');
    logConfig = registerOutput<SubnetworkLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubnetworkLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    params = registerOutput<SubnetworkParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubnetworkParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateIpGoogleAccess = registerOutput<bool>('privateIpGoogleAccess');
    privateIpv6GoogleAccess = registerOutput<String>('privateIpv6GoogleAccess');
    project = registerOutput<String>('project');
    purpose = registerOutput<String>('purpose');
    region = registerOutput<String>('region');
    reservedInternalRange = registerOutput<String?>('reservedInternalRange');
    resolveSubnetMask = registerOutput<String?>('resolveSubnetMask');
    role = registerOutput<String?>('role');
    secondaryIpRanges = registerOutput<List<Map<String, dynamic>>>('secondaryIpRanges');
    selfLink = registerOutput<String>('selfLink');
    sendSecondaryIpRangeIfEmpty = registerOutput<bool?>('sendSecondaryIpRangeIfEmpty');
    stackType = registerOutput<String>('stackType');
    this.state = registerOutput<String>('state');
    subnetworkId = registerOutput<int>('subnetworkId');
  }
}

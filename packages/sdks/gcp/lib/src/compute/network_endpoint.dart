import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_args.dart';
import 'network_endpoint_state.dart';

/// A Network endpoint represents a IP address and port combination that is
/// part of a specific network endpoint group (NEG). NEGs are zonal
/// collections of these endpoints for GCP resources within a
/// single subnet. **NOTE**: Network endpoints cannot be created outside of a
/// network endpoint group.
///
/// &gt; **NOTE** In case the Endpoint's Instance is recreated, it's needed to
/// perform `apply` twice. To avoid situations like this, please use this resource
/// with the lifecycle `replaceTriggeredBy` method, with the passed Instance's ID.
///
///
/// To get more information about NetworkEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
///
/// ## Example Usage
///
/// ### Network Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-13",
///     project: "debian-cloud",
/// });
/// const _default = new gcp.compute.Network("default", {
///     name: "neg-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "neg-subnetwork",
///     ipCidrRange: "10.0.0.1/16",
///     region: "us-central1",
///     network: _default.id,
///     stackType: "IPV4_IPV6",
///     ipv6AccessType: "EXTERNAL",
/// });
/// const endpoint_instance1 = new gcp.compute.Instance("endpoint-instance1", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         subnetwork: defaultSubnetwork.id,
///         stackType: "IPV4_IPV6",
///         ipv6AccessConfigs: [{
///             networkTier: "PREMIUM",
///         }],
///     }],
///     name: "endpoint-instance1",
///     machineType: "e2-micro",
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
/// });
/// const neg = new gcp.compute.NetworkEndpointGroup("neg", {
///     name: "my-lb-neg",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     defaultPort: 90,
///     zone: "us-central1-a",
/// });
/// const default_endpoint = new gcp.compute.NetworkEndpoint("default-endpoint", {
///     networkEndpointGroup: neg.name,
///     instance: endpoint_instance1.name,
///     port: neg.defaultPort,
///     ipAddress: endpoint_instance1.networkInterfaces[0].networkIp,
/// });
/// const ipv6_endpoint1 = new gcp.compute.NetworkEndpoint("ipv6-endpoint1", {
///     networkEndpointGroup: neg.name,
///     instance: endpoint_instance1.name,
///     port: neg.defaultPort,
///     ipv6Address: endpoint_instance1.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].ipv6AccessConfigs?.[0]?.externalIpv6),
/// });
/// const endpoint_instance2 = new gcp.compute.Instance("endpoint-instance2", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         subnetwork: defaultSubnetwork.id,
///         stackType: "IPV4_IPV6",
///         ipv6AccessConfigs: [{
///             networkTier: "PREMIUM",
///         }],
///     }],
///     name: "endpoint-instance2",
///     machineType: "e2-micro",
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
/// });
/// const ipv6_endpoint2 = new gcp.compute.NetworkEndpoint("ipv6-endpoint2", {
///     networkEndpointGroup: neg.name,
///     instance: endpoint_instance2.name,
///     port: neg.defaultPort,
///     ipv6Address: endpoint_instance2.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].ipv6AccessConfigs?.[0]?.externalIpv6),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-13",
///     project="debian-cloud")
/// default = gcp.compute.Network("default",
///     name="neg-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="neg-subnetwork",
///     ip_cidr_range="10.0.0.1/16",
///     region="us-central1",
///     network=default.id,
///     stack_type="IPV4_IPV6",
///     ipv6_access_type="EXTERNAL")
/// endpoint_instance1 = gcp.compute.Instance("endpoint-instance1",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "subnetwork": default_subnetwork.id,
///         "stack_type": "IPV4_IPV6",
///         "ipv6_access_configs": [{
///             "network_tier": "PREMIUM",
///         }],
///     }],
///     name="endpoint-instance1",
///     machine_type="e2-micro",
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     })
/// neg = gcp.compute.NetworkEndpointGroup("neg",
///     name="my-lb-neg",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     default_port=90,
///     zone="us-central1-a")
/// default_endpoint = gcp.compute.NetworkEndpoint("default-endpoint",
///     network_endpoint_group=neg.name,
///     instance=endpoint_instance1.name,
///     port=neg.default_port,
///     ip_address=endpoint_instance1.network_interfaces[0].network_ip)
/// ipv6_endpoint1 = gcp.compute.NetworkEndpoint("ipv6-endpoint1",
///     network_endpoint_group=neg.name,
///     instance=endpoint_instance1.name,
///     port=neg.default_port,
///     ipv6_address=endpoint_instance1.network_interfaces[0].ipv6_access_configs[0].external_ipv6)
/// endpoint_instance2 = gcp.compute.Instance("endpoint-instance2",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "subnetwork": default_subnetwork.id,
///         "stack_type": "IPV4_IPV6",
///         "ipv6_access_configs": [{
///             "network_tier": "PREMIUM",
///         }],
///     }],
///     name="endpoint-instance2",
///     machine_type="e2-micro",
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     })
/// ipv6_endpoint2 = gcp.compute.NetworkEndpoint("ipv6-endpoint2",
///     network_endpoint_group=neg.name,
///     instance=endpoint_instance2.name,
///     port=neg.default_port,
///     ipv6_address=endpoint_instance2.network_interfaces[0].ipv6_access_configs[0].external_ipv6)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-13",
///         Project = "debian-cloud",
///     });
///
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "neg-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "neg-subnetwork",
///         IpCidrRange = "10.0.0.1/16",
///         Region = "us-central1",
///         Network = @default.Id,
///         StackType = "IPV4_IPV6",
///         Ipv6AccessType = "EXTERNAL",
///     });
///
///     var endpoint_instance1 = new Gcp.Compute.Instance("endpoint-instance1", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Subnetwork = defaultSubnetwork.Id,
///                 StackType = "IPV4_IPV6",
///                 Ipv6AccessConfigs = new[]
///                 {
///                     new Gcp.Compute.Inputs.InstanceNetworkInterfaceIpv6AccessConfigArgs
///                     {
///                         NetworkTier = "PREMIUM",
///                     },
///                 },
///             },
///         },
///         Name = "endpoint-instance1",
///         MachineType = "e2-micro",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///     });
///
///     var neg = new Gcp.Compute.NetworkEndpointGroup("neg", new()
///     {
///         Name = "my-lb-neg",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         DefaultPort = 90,
///         Zone = "us-central1-a",
///     });
///
///     var default_endpoint = new Gcp.Compute.NetworkEndpoint("default-endpoint", new()
///     {
///         NetworkEndpointGroup = neg.Name,
///         Instance = endpoint_instance1.Name,
///         Port = neg.DefaultPort,
///         IpAddress = endpoint_instance1.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].NetworkIp),
///     });
///
///     var ipv6_endpoint1 = new Gcp.Compute.NetworkEndpoint("ipv6-endpoint1", new()
///     {
///         NetworkEndpointGroup = neg.Name,
///         Instance = endpoint_instance1.Name,
///         Port = neg.DefaultPort,
///         Ipv6Address = endpoint_instance1.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].Ipv6AccessConfigs[0]?.ExternalIpv6),
///     });
///
///     var endpoint_instance2 = new Gcp.Compute.Instance("endpoint-instance2", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Subnetwork = defaultSubnetwork.Id,
///                 StackType = "IPV4_IPV6",
///                 Ipv6AccessConfigs = new[]
///                 {
///                     new Gcp.Compute.Inputs.InstanceNetworkInterfaceIpv6AccessConfigArgs
///                     {
///                         NetworkTier = "PREMIUM",
///                     },
///                 },
///             },
///         },
///         Name = "endpoint-instance2",
///         MachineType = "e2-micro",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///     });
///
///     var ipv6_endpoint2 = new Gcp.Compute.NetworkEndpoint("ipv6-endpoint2", new()
///     {
///         NetworkEndpointGroup = neg.Name,
///         Instance = endpoint_instance2.Name,
///         Port = neg.DefaultPort,
///         Ipv6Address = endpoint_instance2.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].Ipv6AccessConfigs[0]?.ExternalIpv6),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-13"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("neg-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:           pulumi.String("neg-subnetwork"),
/// 			IpCidrRange:    pulumi.String("10.0.0.1/16"),
/// 			Region:         pulumi.String("us-central1"),
/// 			Network:        _default.ID(),
/// 			StackType:      pulumi.String("IPV4_IPV6"),
/// 			Ipv6AccessType: pulumi.String("EXTERNAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		endpoint_instance1, err := compute.NewInstance(ctx, "endpoint-instance1", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Subnetwork: defaultSubnetwork.ID(),
/// 					StackType:  pulumi.String("IPV4_IPV6"),
/// 					Ipv6AccessConfigs: compute.InstanceNetworkInterfaceIpv6AccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceIpv6AccessConfigArgs{
/// 							NetworkTier: pulumi.String("PREMIUM"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("endpoint-instance1"),
/// 			MachineType: pulumi.String("e2-micro"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(myImage.SelfLink),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		neg, err := compute.NewNetworkEndpointGroup(ctx, "neg", &compute.NetworkEndpointGroupArgs{
/// 			Name:        pulumi.String("my-lb-neg"),
/// 			Network:     _default.ID(),
/// 			Subnetwork:  defaultSubnetwork.ID(),
/// 			DefaultPort: pulumi.Int(90),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpoint(ctx, "default-endpoint", &compute.NetworkEndpointArgs{
/// 			NetworkEndpointGroup: neg.Name,
/// 			Instance:             endpoint_instance1.Name,
/// 			Port:                 neg.DefaultPort,
/// 			IpAddress: endpoint_instance1.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 				return networkInterfaces[0].NetworkIp, nil
/// 			}).(pulumi.StringPtrOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpoint(ctx, "ipv6-endpoint1", &compute.NetworkEndpointArgs{
/// 			NetworkEndpointGroup: neg.Name,
/// 			Instance:             endpoint_instance1.Name,
/// 			Port:                 neg.DefaultPort,
/// 			Ipv6Address: endpoint_instance1.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 				return networkInterfaces[0].Ipv6AccessConfigs[0].ExternalIpv6, nil
/// 			}).(pulumi.StringPtrOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		endpoint_instance2, err := compute.NewInstance(ctx, "endpoint-instance2", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Subnetwork: defaultSubnetwork.ID(),
/// 					StackType:  pulumi.String("IPV4_IPV6"),
/// 					Ipv6AccessConfigs: compute.InstanceNetworkInterfaceIpv6AccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceIpv6AccessConfigArgs{
/// 							NetworkTier: pulumi.String("PREMIUM"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:        pulumi.String("endpoint-instance2"),
/// 			MachineType: pulumi.String("e2-micro"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(myImage.SelfLink),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpoint(ctx, "ipv6-endpoint2", &compute.NetworkEndpointArgs{
/// 			NetworkEndpointGroup: neg.Name,
/// 			Instance:             endpoint_instance2.Name,
/// 			Port:                 neg.DefaultPort,
/// 			Ipv6Address: endpoint_instance2.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 				return networkInterfaces[0].Ipv6AccessConfigs[0].ExternalIpv6, nil
/// 			}).(pulumi.StringPtrOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_image" "myImage" {
///   family  = "debian-13"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_network_endpoint" "default-endpoint" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   network_endpoint_group = gcp_compute_network_endpoint_group.neg.name
///   instance               = gcp_compute_instance.endpoint-instance1.name
///   port                   = gcp_compute_network_endpoint_group.neg.default_port
///   ip_address             = gcp_compute_instance.endpoint-instance1.network_interfaces[0].network_ip
/// }
/// resource "gcp_compute_network_endpoint" "ipv6-endpoint1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   network_endpoint_group = gcp_compute_network_endpoint_group.neg.name
///   instance               = gcp_compute_instance.endpoint-instance1.name
///   port                   = gcp_compute_network_endpoint_group.neg.default_port
///   ipv6_address           = gcp_compute_instance.endpoint-instance1.network_interfaces[0].ipv6_access_configs[0].external_ipv6
/// }
/// resource "gcp_compute_network_endpoint" "ipv6-endpoint2" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   network_endpoint_group = gcp_compute_network_endpoint_group.neg.name
///   instance               = gcp_compute_instance.endpoint-instance2.name
///   port                   = gcp_compute_network_endpoint_group.neg.default_port
///   ipv6_address           = gcp_compute_instance.endpoint-instance2.network_interfaces[0].ipv6_access_configs[0].external_ipv6
/// }
/// resource "gcp_compute_instance" "endpoint-instance1" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   network_interfaces {
///     access_configs {
///     }
///     subnetwork = gcp_compute_subnetwork.default.id
///     stack_type = "IPV4_IPV6"
///     ipv6_access_configs {
///       network_tier = "PREMIUM"
///     }
///   }
///   name         = "endpoint-instance1"
///   machine_type = "e2-micro"
///   boot_disk = {
///     initialize_params = {
///       image = data.gcp_compute_image.myImage.self_link
///     }
///   }
/// }
/// resource "gcp_compute_instance" "endpoint-instance2" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   network_interfaces {
///     access_configs {
///     }
///     subnetwork = gcp_compute_subnetwork.default.id
///     stack_type = "IPV4_IPV6"
///     ipv6_access_configs {
///       network_tier = "PREMIUM"
///     }
///   }
///   name         = "endpoint-instance2"
///   machine_type = "e2-micro"
///   boot_disk = {
///     initialize_params = {
///       image = data.gcp_compute_image.myImage.self_link
///     }
///   }
/// }
/// resource "gcp_compute_network_endpoint_group" "neg" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name         = "my-lb-neg"
///   network      = gcp_compute_network.default.id
///   subnetwork   = gcp_compute_subnetwork.default.id
///   default_port = "90"
///   zone         = "us-central1-a"
/// }
/// resource "gcp_compute_network" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "neg-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name             = "neg-subnetwork"
///   ip_cidr_range    = "10.0.0.1/16"
///   region           = "us-central1"
///   network          = gcp_compute_network.default.id
///   stack_type       = "IPV4_IPV6"
///   ipv6_access_type = "EXTERNAL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceIpv6AccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.NetworkEndpoint;
/// import com.pulumi.gcp.compute.NetworkEndpointArgs;
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
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-13")
///             .project("debian-cloud")
///             .build());
///
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("neg-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("neg-subnetwork")
///             .ipCidrRange("10.0.0.1/16")
///             .region("us-central1")
///             .network(default_.id())
///             .stackType("IPV4_IPV6")
///             .ipv6AccessType("EXTERNAL")
///             .build());
///
///         var endpoint_instance1 = new Instance("endpoint-instance1", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .subnetwork(defaultSubnetwork.id())
///                 .stackType("IPV4_IPV6")
///                 .ipv6AccessConfigs(InstanceNetworkInterfaceIpv6AccessConfigArgs.builder()
///                     .networkTier("PREMIUM")
///                     .build())
///                 .build())
///             .name("endpoint-instance1")
///             .machineType("e2-micro")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///         var neg = new NetworkEndpointGroup("neg", NetworkEndpointGroupArgs.builder()
///             .name("my-lb-neg")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .defaultPort(90)
///             .zone("us-central1-a")
///             .build());
///
///         var default_endpoint = new NetworkEndpoint("default-endpoint", NetworkEndpointArgs.builder()
///             .networkEndpointGroup(neg.name())
///             .instance(endpoint_instance1.name())
///             .port(neg.defaultPort())
///             .ipAddress(endpoint_instance1.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces.get(0).networkIp()))
///             .build());
///
///         var ipv6_endpoint1 = new NetworkEndpoint("ipv6-endpoint1", NetworkEndpointArgs.builder()
///             .networkEndpointGroup(neg.name())
///             .instance(endpoint_instance1.name())
///             .port(neg.defaultPort())
///             .ipv6Address(endpoint_instance1.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces.get(0).ipv6AccessConfigs().get(0).externalIpv6()))
///             .build());
///
///         var endpoint_instance2 = new Instance("endpoint-instance2", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .subnetwork(defaultSubnetwork.id())
///                 .stackType("IPV4_IPV6")
///                 .ipv6AccessConfigs(InstanceNetworkInterfaceIpv6AccessConfigArgs.builder()
///                     .networkTier("PREMIUM")
///                     .build())
///                 .build())
///             .name("endpoint-instance2")
///             .machineType("e2-micro")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///         var ipv6_endpoint2 = new NetworkEndpoint("ipv6-endpoint2", NetworkEndpointArgs.builder()
///             .networkEndpointGroup(neg.name())
///             .instance(endpoint_instance2.name())
///             .port(neg.defaultPort())
///             .ipv6Address(endpoint_instance2.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces.get(0).ipv6AccessConfigs().get(0).externalIpv6()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default-endpoint:
///     type: gcp:compute:NetworkEndpoint
///     properties:
///       networkEndpointGroup: ${neg.name}
///       instance: ${["endpoint-instance1"].name}
///       port: ${neg.defaultPort}
///       ipAddress: ${["endpoint-instance1"].networkInterfaces[0].networkIp}
///   ipv6-endpoint1:
///     type: gcp:compute:NetworkEndpoint
///     properties:
///       networkEndpointGroup: ${neg.name}
///       instance: ${["endpoint-instance1"].name}
///       port: ${neg.defaultPort}
///       ipv6Address: ${["endpoint-instance1"].networkInterfaces[0].ipv6AccessConfigs[0].externalIpv6}
///   ipv6-endpoint2:
///     type: gcp:compute:NetworkEndpoint
///     properties:
///       networkEndpointGroup: ${neg.name}
///       instance: ${["endpoint-instance2"].name}
///       port: ${neg.defaultPort}
///       ipv6Address: ${["endpoint-instance2"].networkInterfaces[0].ipv6AccessConfigs[0].externalIpv6}
///   endpoint-instance1:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           subnetwork: ${defaultSubnetwork.id}
///           stackType: IPV4_IPV6
///           ipv6AccessConfigs:
///             - networkTier: PREMIUM
///       name: endpoint-instance1
///       machineType: e2-micro
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
///   endpoint-instance2:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           subnetwork: ${defaultSubnetwork.id}
///           stackType: IPV4_IPV6
///           ipv6AccessConfigs:
///             - networkTier: PREMIUM
///       name: endpoint-instance2
///       machineType: e2-micro
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
///   neg:
///     type: gcp:compute:NetworkEndpointGroup
///     properties:
///       name: my-lb-neg
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       defaultPort: '90'
///       zone: us-central1-a
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: neg-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: neg-subnetwork
///       ipCidrRange: 10.0.0.1/16
///       region: us-central1
///       network: ${default.id}
///       stackType: IPV4_IPV6
///       ipv6AccessType: EXTERNAL
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-13
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// NetworkEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
/// * `{{project}}/{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
/// * `{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
/// * `{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
///
///
/// When using the `pulumi import` command, NetworkEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{project}}/{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// ```
class NetworkEndpoint extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORT.
  /// The instance must be in the same zone of network endpoint group.
  late final pulumi.Output<String?> instance;
  /// IPv4 address of network endpoint. The IP address must belong
  /// to a VM in GCE (either the primary IP or as part of an aliased IP
  /// range).
  late final pulumi.Output<String?> ipAddress;
  /// IPv6 address of network endpoint. The result of parsing the endpoint config,
  /// or empty if IPv6 is not used.
  late final pulumi.Output<String?> ipv6Address;
  /// The network endpoint group this endpoint is part of.
  late final pulumi.Output<String> networkEndpointGroup;
  /// Port number of network endpoint.
  /// **Note** `port` is required unless the Network Endpoint Group is created
  /// with the type of `GCE_VM_IP`
  late final pulumi.Output<int?> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Zone where the containing network endpoint group is located.
  late final pulumi.Output<String> zone;

  /// Creates a new [NetworkEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkEndpoint]. {@macro pulumi_compute_network_endpoint_network_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkEndpoint(
    String name, {
    NetworkEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpoint:NetworkEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String?>('instance');
    ipAddress = registerOutput<String?>('ipAddress');
    ipv6Address = registerOutput<String?>('ipv6Address');
    networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [NetworkEndpoint] resource's state with the given [name] and [id].
  static NetworkEndpoint get(
    String name,
    pulumi.Input<String> id, {
    NetworkEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpoint:NetworkEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String?>('instance');
    ipAddress = registerOutput<String?>('ipAddress');
    ipv6Address = registerOutput<String?>('ipv6Address');
    networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [NetworkEndpoint] resource.
  NetworkEndpoint.reference(String urn)
    : super(
        'gcp:compute/networkEndpoint:NetworkEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String?>('instance');
    ipAddress = registerOutput<String?>('ipAddress');
    ipv6Address = registerOutput<String?>('ipv6Address');
    networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }
}

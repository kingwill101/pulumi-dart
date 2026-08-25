import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_test_args.dart';
import 'connectivity_test_destination.dart';
import 'connectivity_test_source.dart';
import 'connectivity_test_state.dart';

/// A connectivity test are a static analysis of your resource configurations
/// that enables you to evaluate connectivity to and from Google Cloud
/// resources in your Virtual Private Cloud (VPC) network.
///
///
/// To get more information about ConnectivityTest, see:
///
/// * [API documentation](https://cloud.google.com/network-intelligence-center/docs/connectivity-tests/reference/networkmanagement/rest/v1/projects.locations.global.connectivityTests)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-intelligence-center/docs)
///
/// ## Example Usage
///
/// ### Network Management Connectivity Test Instances
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpc = new gcp.compute.Network("vpc", {name: "conn-test-net"});
/// const debian9 = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const source = new gcp.compute.Instance("source", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: vpc.id,
///     }],
///     name: "source-vm",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: debian9.then(debian9 => debian9.id),
///         },
///     },
/// });
/// const destination = new gcp.compute.Instance("destination", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: vpc.id,
///     }],
///     name: "dest-vm",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: debian9.then(debian9 => debian9.id),
///         },
///     },
/// });
/// const instance_test = new gcp.networkmanagement.ConnectivityTest("instance-test", {
///     name: "conn-test-instances",
///     source: {
///         instance: source.id,
///     },
///     destination: {
///         instance: destination.id,
///     },
///     protocol: "TCP",
///     labels: {
///         env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc = gcp.compute.Network("vpc", name="conn-test-net")
/// debian9 = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// source = gcp.compute.Instance("source",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": vpc.id,
///     }],
///     name="source-vm",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": debian9.id,
///         },
///     })
/// destination = gcp.compute.Instance("destination",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": vpc.id,
///     }],
///     name="dest-vm",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": debian9.id,
///         },
///     })
/// instance_test = gcp.networkmanagement.ConnectivityTest("instance-test",
///     name="conn-test-instances",
///     source={
///         "instance": source.id,
///     },
///     destination={
///         "instance": destination.id,
///     },
///     protocol="TCP",
///     labels={
///         "env": "test",
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
///     var vpc = new Gcp.Compute.Network("vpc", new()
///     {
///         Name = "conn-test-net",
///     });
///
///     var debian9 = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var source = new Gcp.Compute.Instance("source", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = vpc.Id,
///             },
///         },
///         Name = "source-vm",
///         MachineType = "e2-medium",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = debian9.Apply(getImageResult => getImageResult.Id),
///             },
///         },
///     });
///
///     var destination = new Gcp.Compute.Instance("destination", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = vpc.Id,
///             },
///         },
///         Name = "dest-vm",
///         MachineType = "e2-medium",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = debian9.Apply(getImageResult => getImageResult.Id),
///             },
///         },
///     });
///
///     var instance_test = new Gcp.NetworkManagement.ConnectivityTest("instance-test", new()
///     {
///         Name = "conn-test-instances",
///         Source = new Gcp.NetworkManagement.Inputs.ConnectivityTestSourceArgs
///         {
///             Instance = source.Id,
///         },
///         Destination = new Gcp.NetworkManagement.Inputs.ConnectivityTestDestinationArgs
///         {
///             Instance = destination.Id,
///         },
///         Protocol = "TCP",
///         Labels =
///         {
///             { "env", "test" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vpc, err := compute.NewNetwork(ctx, "vpc", &compute.NetworkArgs{
/// 			Name: pulumi.String("conn-test-net"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		debian9, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := compute.NewInstance(ctx, "source", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: vpc.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("source-vm"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(debian9.Id),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := compute.NewInstance(ctx, "destination", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: vpc.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("dest-vm"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(debian9.Id),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanagement.NewConnectivityTest(ctx, "instance-test", &networkmanagement.ConnectivityTestArgs{
/// 			Name: pulumi.String("conn-test-instances"),
/// 			Source: &networkmanagement.ConnectivityTestSourceArgs{
/// 				Instance: source.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Destination: &networkmanagement.ConnectivityTestDestinationArgs{
/// 				Instance: destination.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Protocol: pulumi.String("TCP"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
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
/// data "gcp_compute_getimage" "debian9" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_networkmanagement_connectivitytest" "instance-test" {
///   name = "conn-test-instances"
///   source = {
///     instance = gcp_compute_instance.source.id
///   }
///   destination = {
///     instance = gcp_compute_instance.destination.id
///   }
///   protocol = "TCP"
///   labels = {
///     "env" = "test"
///   }
/// }
/// resource "gcp_compute_instance" "source" {
///   network_interfaces {
///     access_configs {
///     }
///     network = gcp_compute_network.vpc.id
///   }
///   name         = "source-vm"
///   machine_type = "e2-medium"
///   boot_disk = {
///     initialize_params = {
///       image = data.gcp_compute_getimage.debian9.id
///     }
///   }
/// }
/// resource "gcp_compute_instance" "destination" {
///   network_interfaces {
///     access_configs {
///     }
///     network = gcp_compute_network.vpc.id
///   }
///   name         = "dest-vm"
///   machine_type = "e2-medium"
///   boot_disk = {
///     initialize_params = {
///       image = data.gcp_compute_getimage.debian9.id
///     }
///   }
/// }
/// resource "gcp_compute_network" "vpc" {
///   name = "conn-test-net"
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTest;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTestArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestSourceArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestDestinationArgs;
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
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .name("conn-test-net")
///             .build());
///
///         final var debian9 = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var source = new Instance("source", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network(vpc.id())
///                 .build())
///             .name("source-vm")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(debian9.id())
///                     .build())
///                 .build())
///             .build());
///
///         var destination = new Instance("destination", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network(vpc.id())
///                 .build())
///             .name("dest-vm")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(debian9.id())
///                     .build())
///                 .build())
///             .build());
///
///         var instance_test = new ConnectivityTest("instance-test", ConnectivityTestArgs.builder()
///             .name("conn-test-instances")
///             .source(ConnectivityTestSourceArgs.builder()
///                 .instance(source.id())
///                 .build())
///             .destination(ConnectivityTestDestinationArgs.builder()
///                 .instance(destination.id())
///                 .build())
///             .protocol("TCP")
///             .labels(Map.of("env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance-test:
///     type: gcp:networkmanagement:ConnectivityTest
///     properties:
///       name: conn-test-instances
///       source:
///         instance: ${source.id}
///       destination:
///         instance: ${destination.id}
///       protocol: TCP
///       labels:
///         env: test
///   source:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: ${vpc.id}
///       name: source-vm
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: ${debian9.id}
///   destination:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: ${vpc.id}
///       name: dest-vm
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: ${debian9.id}
///   vpc:
///     type: gcp:compute:Network
///     properties:
///       name: conn-test-net
/// variables:
///   debian9:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Network Management Connectivity Test Addresses
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vpc = new gcp.compute.Network("vpc", {name: "connectivity-vpc"});
/// const subnet = new gcp.compute.Subnetwork("subnet", {
///     name: "connectivity-vpc-subnet",
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
///     network: vpc.id,
/// });
/// const source_addr = new gcp.compute.Address("source-addr", {
///     name: "src-addr",
///     subnetwork: subnet.id,
///     addressType: "INTERNAL",
///     address: "10.0.42.42",
///     region: "us-central1",
/// });
/// const dest_addr = new gcp.compute.Address("dest-addr", {
///     name: "dest-addr",
///     subnetwork: subnet.id,
///     addressType: "INTERNAL",
///     address: "10.0.43.43",
///     region: "us-central1",
/// });
/// const address_test = new gcp.networkmanagement.ConnectivityTest("address-test", {
///     name: "conn-test-addr",
///     source: {
///         ipAddress: source_addr.address,
///         projectId: source_addr.project,
///         network: vpc.id,
///         networkType: "GCP_NETWORK",
///     },
///     destination: {
///         ipAddress: dest_addr.address,
///         projectId: dest_addr.project,
///         network: vpc.id,
///     },
///     protocol: "UDP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vpc = gcp.compute.Network("vpc", name="connectivity-vpc")
/// subnet = gcp.compute.Subnetwork("subnet",
///     name="connectivity-vpc-subnet",
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1",
///     network=vpc.id)
/// source_addr = gcp.compute.Address("source-addr",
///     name="src-addr",
///     subnetwork=subnet.id,
///     address_type="INTERNAL",
///     address="10.0.42.42",
///     region="us-central1")
/// dest_addr = gcp.compute.Address("dest-addr",
///     name="dest-addr",
///     subnetwork=subnet.id,
///     address_type="INTERNAL",
///     address="10.0.43.43",
///     region="us-central1")
/// address_test = gcp.networkmanagement.ConnectivityTest("address-test",
///     name="conn-test-addr",
///     source={
///         "ip_address": source_addr.address,
///         "project_id": source_addr.project,
///         "network": vpc.id,
///         "network_type": "GCP_NETWORK",
///     },
///     destination={
///         "ip_address": dest_addr.address,
///         "project_id": dest_addr.project,
///         "network": vpc.id,
///     },
///     protocol="UDP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Gcp.Compute.Network("vpc", new()
///     {
///         Name = "connectivity-vpc",
///     });
///
///     var subnet = new Gcp.Compute.Subnetwork("subnet", new()
///     {
///         Name = "connectivity-vpc-subnet",
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///         Network = vpc.Id,
///     });
///
///     var source_addr = new Gcp.Compute.Address("source-addr", new()
///     {
///         Name = "src-addr",
///         Subnetwork = subnet.Id,
///         AddressType = "INTERNAL",
///         IPAddress = "10.0.42.42",
///         Region = "us-central1",
///     });
///
///     var dest_addr = new Gcp.Compute.Address("dest-addr", new()
///     {
///         Name = "dest-addr",
///         Subnetwork = subnet.Id,
///         AddressType = "INTERNAL",
///         IPAddress = "10.0.43.43",
///         Region = "us-central1",
///     });
///
///     var address_test = new Gcp.NetworkManagement.ConnectivityTest("address-test", new()
///     {
///         Name = "conn-test-addr",
///         Source = new Gcp.NetworkManagement.Inputs.ConnectivityTestSourceArgs
///         {
///             IpAddress = source_addr.IPAddress,
///             ProjectId = source_addr.Project,
///             Network = vpc.Id,
///             NetworkType = "GCP_NETWORK",
///         },
///         Destination = new Gcp.NetworkManagement.Inputs.ConnectivityTestDestinationArgs
///         {
///             IpAddress = dest_addr.IPAddress,
///             ProjectId = dest_addr.Project,
///             Network = vpc.Id,
///         },
///         Protocol = "UDP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vpc, err := compute.NewNetwork(ctx, "vpc", &compute.NetworkArgs{
/// 			Name: pulumi.String("connectivity-vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := compute.NewSubnetwork(ctx, "subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("connectivity-vpc-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     vpc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source_addr, err := compute.NewAddress(ctx, "source-addr", &compute.AddressArgs{
/// 			Name:        pulumi.String("src-addr"),
/// 			Subnetwork:  subnet.ID().ToIDOutput().ToStringOutput(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Address:     pulumi.String("10.0.42.42"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dest_addr, err := compute.NewAddress(ctx, "dest-addr", &compute.AddressArgs{
/// 			Name:        pulumi.String("dest-addr"),
/// 			Subnetwork:  subnet.ID().ToIDOutput().ToStringOutput(),
/// 			AddressType: pulumi.String("INTERNAL"),
/// 			Address:     pulumi.String("10.0.43.43"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanagement.NewConnectivityTest(ctx, "address-test", &networkmanagement.ConnectivityTestArgs{
/// 			Name: pulumi.String("conn-test-addr"),
/// 			Source: &networkmanagement.ConnectivityTestSourceArgs{
/// 				IpAddress:   source_addr.Address,
/// 				ProjectId:   source_addr.Project,
/// 				Network:     vpc.ID().ToIDOutput().ToStringOutput(),
/// 				NetworkType: pulumi.String("GCP_NETWORK"),
/// 			},
/// 			Destination: &networkmanagement.ConnectivityTestDestinationArgs{
/// 				IpAddress: dest_addr.Address,
/// 				ProjectId: dest_addr.Project,
/// 				Network:   vpc.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Protocol: pulumi.String("UDP"),
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
/// resource "gcp_networkmanagement_connectivitytest" "address-test" {
///   name = "conn-test-addr"
///   source = {
///     ip_address   = gcp_compute_address.source-addr.address
///     project_id   = gcp_compute_address.source-addr.project
///     network      = gcp_compute_network.vpc.id
///     network_type = "GCP_NETWORK"
///   }
///   destination = {
///     ip_address = gcp_compute_address.dest-addr.address
///     project_id = gcp_compute_address.dest-addr.project
///     network    = gcp_compute_network.vpc.id
///   }
///   protocol = "UDP"
/// }
/// resource "gcp_compute_network" "vpc" {
///   name = "connectivity-vpc"
/// }
/// resource "gcp_compute_subnetwork" "subnet" {
///   name          = "connectivity-vpc-subnet"
///   ip_cidr_range = "10.0.0.0/16"
///   region        = "us-central1"
///   network       = gcp_compute_network.vpc.id
/// }
/// resource "gcp_compute_address" "source-addr" {
///   name         = "src-addr"
///   subnetwork   = gcp_compute_subnetwork.subnet.id
///   address_type = "INTERNAL"
///   address      = "10.0.42.42"
///   region       = "us-central1"
/// }
/// resource "gcp_compute_address" "dest-addr" {
///   name         = "dest-addr"
///   subnetwork   = gcp_compute_subnetwork.subnet.id
///   address_type = "INTERNAL"
///   address      = "10.0.43.43"
///   region       = "us-central1"
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
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTest;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTestArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestSourceArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestDestinationArgs;
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
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .name("connectivity-vpc")
///             .build());
///
///         var subnet = new Subnetwork("subnet", SubnetworkArgs.builder()
///             .name("connectivity-vpc-subnet")
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .network(vpc.id())
///             .build());
///
///         var source_addr = new Address("source-addr", AddressArgs.builder()
///             .name("src-addr")
///             .subnetwork(subnet.id())
///             .addressType("INTERNAL")
///             .address("10.0.42.42")
///             .region("us-central1")
///             .build());
///
///         var dest_addr = new Address("dest-addr", AddressArgs.builder()
///             .name("dest-addr")
///             .subnetwork(subnet.id())
///             .addressType("INTERNAL")
///             .address("10.0.43.43")
///             .region("us-central1")
///             .build());
///
///         var address_test = new ConnectivityTest("address-test", ConnectivityTestArgs.builder()
///             .name("conn-test-addr")
///             .source(ConnectivityTestSourceArgs.builder()
///                 .ipAddress(source_addr.address())
///                 .projectId(source_addr.project())
///                 .network(vpc.id())
///                 .networkType("GCP_NETWORK")
///                 .build())
///             .destination(ConnectivityTestDestinationArgs.builder()
///                 .ipAddress(dest_addr.address())
///                 .projectId(dest_addr.project())
///                 .network(vpc.id())
///                 .build())
///             .protocol("UDP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   address-test:
///     type: gcp:networkmanagement:ConnectivityTest
///     properties:
///       name: conn-test-addr
///       source:
///         ipAddress: ${["source-addr"].address}
///         projectId: ${["source-addr"].project}
///         network: ${vpc.id}
///         networkType: GCP_NETWORK
///       destination:
///         ipAddress: ${["dest-addr"].address}
///         projectId: ${["dest-addr"].project}
///         network: ${vpc.id}
///       protocol: UDP
///   vpc:
///     type: gcp:compute:Network
///     properties:
///       name: connectivity-vpc
///   subnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: connectivity-vpc-subnet
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///       network: ${vpc.id}
///   source-addr:
///     type: gcp:compute:Address
///     properties:
///       name: src-addr
///       subnetwork: ${subnet.id}
///       addressType: INTERNAL
///       address: 10.0.42.42
///       region: us-central1
///   dest-addr:
///     type: gcp:compute:Address
///     properties:
///       name: dest-addr
///       subnetwork: ${subnet.id}
///       addressType: INTERNAL
///       address: 10.0.43.43
///       region: us-central1
/// ```
///
/// ### Network Management Connectivity Test Endpoints
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const endpoints_test = new gcp.networkmanagement.ConnectivityTest("endpoints-test", {
///     name: "conn-test-endpoints",
///     source: {
///         gkeMasterCluster: "projects/test-project/locations/us-central1/clusters/name",
///         cloudSqlInstance: "projects/test-project/instances/name",
///         appEngineVersion: {
///             uri: "apps/test-project/services/default/versions/name",
///         },
///         cloudFunction: {
///             uri: "projects/test-project/locations/us-central1/functions/name",
///         },
///         cloudRunRevision: {
///             uri: "projects/test-project/locations/us-central1/revisions/name",
///         },
///         port: 80,
///     },
///     destination: {
///         port: 443,
///         forwardingRule: "projects/test-project/regions/us-central1/forwardingRules/name",
///         gkeMasterCluster: "projects/test-project/locations/us-central1/clusters/name",
///         fqdn: "name.us-central1.gke.goog",
///         cloudSqlInstance: "projects/test-project/instances/name",
///         redisInstance: "projects/test-project/locations/us-central1/instances/name",
///         redisCluster: "projects/test-project/locations/us-central1/clusters/name",
///     },
///     bypassFirewallChecks: true,
///     roundTrip: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// endpoints_test = gcp.networkmanagement.ConnectivityTest("endpoints-test",
///     name="conn-test-endpoints",
///     source={
///         "gke_master_cluster": "projects/test-project/locations/us-central1/clusters/name",
///         "cloud_sql_instance": "projects/test-project/instances/name",
///         "app_engine_version": {
///             "uri": "apps/test-project/services/default/versions/name",
///         },
///         "cloud_function": {
///             "uri": "projects/test-project/locations/us-central1/functions/name",
///         },
///         "cloud_run_revision": {
///             "uri": "projects/test-project/locations/us-central1/revisions/name",
///         },
///         "port": 80,
///     },
///     destination={
///         "port": 443,
///         "forwarding_rule": "projects/test-project/regions/us-central1/forwardingRules/name",
///         "gke_master_cluster": "projects/test-project/locations/us-central1/clusters/name",
///         "fqdn": "name.us-central1.gke.goog",
///         "cloud_sql_instance": "projects/test-project/instances/name",
///         "redis_instance": "projects/test-project/locations/us-central1/instances/name",
///         "redis_cluster": "projects/test-project/locations/us-central1/clusters/name",
///     },
///     bypass_firewall_checks=True,
///     round_trip=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoints_test = new Gcp.NetworkManagement.ConnectivityTest("endpoints-test", new()
///     {
///         Name = "conn-test-endpoints",
///         Source = new Gcp.NetworkManagement.Inputs.ConnectivityTestSourceArgs
///         {
///             GkeMasterCluster = "projects/test-project/locations/us-central1/clusters/name",
///             CloudSqlInstance = "projects/test-project/instances/name",
///             AppEngineVersion = new Gcp.NetworkManagement.Inputs.ConnectivityTestSourceAppEngineVersionArgs
///             {
///                 Uri = "apps/test-project/services/default/versions/name",
///             },
///             CloudFunction = new Gcp.NetworkManagement.Inputs.ConnectivityTestSourceCloudFunctionArgs
///             {
///                 Uri = "projects/test-project/locations/us-central1/functions/name",
///             },
///             CloudRunRevision = new Gcp.NetworkManagement.Inputs.ConnectivityTestSourceCloudRunRevisionArgs
///             {
///                 Uri = "projects/test-project/locations/us-central1/revisions/name",
///             },
///             Port = 80,
///         },
///         Destination = new Gcp.NetworkManagement.Inputs.ConnectivityTestDestinationArgs
///         {
///             Port = 443,
///             ForwardingRule = "projects/test-project/regions/us-central1/forwardingRules/name",
///             GkeMasterCluster = "projects/test-project/locations/us-central1/clusters/name",
///             Fqdn = "name.us-central1.gke.goog",
///             CloudSqlInstance = "projects/test-project/instances/name",
///             RedisInstance = "projects/test-project/locations/us-central1/instances/name",
///             RedisCluster = "projects/test-project/locations/us-central1/clusters/name",
///         },
///         BypassFirewallChecks = true,
///         RoundTrip = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanagement.NewConnectivityTest(ctx, "endpoints-test", &networkmanagement.ConnectivityTestArgs{
/// 			Name: pulumi.String("conn-test-endpoints"),
/// 			Source: &networkmanagement.ConnectivityTestSourceArgs{
/// 				GkeMasterCluster: pulumi.String("projects/test-project/locations/us-central1/clusters/name"),
/// 				CloudSqlInstance: pulumi.String("projects/test-project/instances/name"),
/// 				AppEngineVersion: &networkmanagement.ConnectivityTestSourceAppEngineVersionArgs{
/// 					Uri: pulumi.String("apps/test-project/services/default/versions/name"),
/// 				},
/// 				CloudFunction: &networkmanagement.ConnectivityTestSourceCloudFunctionArgs{
/// 					Uri: pulumi.String("projects/test-project/locations/us-central1/functions/name"),
/// 				},
/// 				CloudRunRevision: &networkmanagement.ConnectivityTestSourceCloudRunRevisionArgs{
/// 					Uri: pulumi.String("projects/test-project/locations/us-central1/revisions/name"),
/// 				},
/// 				Port: pulumi.Int(80),
/// 			},
/// 			Destination: &networkmanagement.ConnectivityTestDestinationArgs{
/// 				Port:             pulumi.Int(443),
/// 				ForwardingRule:   pulumi.String("projects/test-project/regions/us-central1/forwardingRules/name"),
/// 				GkeMasterCluster: pulumi.String("projects/test-project/locations/us-central1/clusters/name"),
/// 				Fqdn:             pulumi.String("name.us-central1.gke.goog"),
/// 				CloudSqlInstance: pulumi.String("projects/test-project/instances/name"),
/// 				RedisInstance:    pulumi.String("projects/test-project/locations/us-central1/instances/name"),
/// 				RedisCluster:     pulumi.String("projects/test-project/locations/us-central1/clusters/name"),
/// 			},
/// 			BypassFirewallChecks: pulumi.Bool(true),
/// 			RoundTrip:            pulumi.Bool(true),
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
/// resource "gcp_networkmanagement_connectivitytest" "endpoints-test" {
///   name = "conn-test-endpoints"
///   source = {
///     gke_master_cluster = "projects/test-project/locations/us-central1/clusters/name"
///     cloud_sql_instance = "projects/test-project/instances/name"
///     app_engine_version = {
///       uri = "apps/test-project/services/default/versions/name"
///     }
///     cloud_function = {
///       uri = "projects/test-project/locations/us-central1/functions/name"
///     }
///     cloud_run_revision = {
///       uri = "projects/test-project/locations/us-central1/revisions/name"
///     }
///     port = 80
///   }
///   destination = {
///     port               = 443
///     forwarding_rule    = "projects/test-project/regions/us-central1/forwardingRules/name"
///     gke_master_cluster = "projects/test-project/locations/us-central1/clusters/name"
///     fqdn               = "name.us-central1.gke.goog"
///     cloud_sql_instance = "projects/test-project/instances/name"
///     redis_instance     = "projects/test-project/locations/us-central1/instances/name"
///     redis_cluster      = "projects/test-project/locations/us-central1/clusters/name"
///   }
///   bypass_firewall_checks = true
///   round_trip             = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTest;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTestArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestSourceArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestSourceAppEngineVersionArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestSourceCloudFunctionArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestSourceCloudRunRevisionArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestDestinationArgs;
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
///         var endpoints_test = new ConnectivityTest("endpoints-test", ConnectivityTestArgs.builder()
///             .name("conn-test-endpoints")
///             .source(ConnectivityTestSourceArgs.builder()
///                 .gkeMasterCluster("projects/test-project/locations/us-central1/clusters/name")
///                 .cloudSqlInstance("projects/test-project/instances/name")
///                 .appEngineVersion(ConnectivityTestSourceAppEngineVersionArgs.builder()
///                     .uri("apps/test-project/services/default/versions/name")
///                     .build())
///                 .cloudFunction(ConnectivityTestSourceCloudFunctionArgs.builder()
///                     .uri("projects/test-project/locations/us-central1/functions/name")
///                     .build())
///                 .cloudRunRevision(ConnectivityTestSourceCloudRunRevisionArgs.builder()
///                     .uri("projects/test-project/locations/us-central1/revisions/name")
///                     .build())
///                 .port(80)
///                 .build())
///             .destination(ConnectivityTestDestinationArgs.builder()
///                 .port(443)
///                 .forwardingRule("projects/test-project/regions/us-central1/forwardingRules/name")
///                 .gkeMasterCluster("projects/test-project/locations/us-central1/clusters/name")
///                 .fqdn("name.us-central1.gke.goog")
///                 .cloudSqlInstance("projects/test-project/instances/name")
///                 .redisInstance("projects/test-project/locations/us-central1/instances/name")
///                 .redisCluster("projects/test-project/locations/us-central1/clusters/name")
///                 .build())
///             .bypassFirewallChecks(true)
///             .roundTrip(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   endpoints-test:
///     type: gcp:networkmanagement:ConnectivityTest
///     properties:
///       name: conn-test-endpoints
///       source:
///         gkeMasterCluster: projects/test-project/locations/us-central1/clusters/name
///         cloudSqlInstance: projects/test-project/instances/name
///         appEngineVersion:
///           uri: apps/test-project/services/default/versions/name
///         cloudFunction:
///           uri: projects/test-project/locations/us-central1/functions/name
///         cloudRunRevision:
///           uri: projects/test-project/locations/us-central1/revisions/name
///         port: 80
///       destination:
///         port: 443
///         forwardingRule: projects/test-project/regions/us-central1/forwardingRules/name
///         gkeMasterCluster: projects/test-project/locations/us-central1/clusters/name
///         fqdn: name.us-central1.gke.goog
///         cloudSqlInstance: projects/test-project/instances/name
///         redisInstance: projects/test-project/locations/us-central1/instances/name
///         redisCluster: projects/test-project/locations/us-central1/clusters/name
///       bypassFirewallChecks: true
///       roundTrip: true
/// ```
///
/// ### Network Management Connectivity Test Gke Pod
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pod_test = new gcp.networkmanagement.ConnectivityTest("pod-test", {
///     name: "conn-test-pod",
///     source: {
///         ipAddress: "10.0.0.1",
///         projectId: "test-project",
///         networkType: "GCP_NETWORK",
///     },
///     destination: {
///         ipAddress: "10.0.0.2",
///         projectId: "test-project",
///         networkType: "GCP_NETWORK",
///         gkePod: "projects/test-project/locations/us-central1/clusters/cluster-name/namespaces/default/pods/pod-name",
///     },
///     protocol: "TCP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pod_test = gcp.networkmanagement.ConnectivityTest("pod-test",
///     name="conn-test-pod",
///     source={
///         "ip_address": "10.0.0.1",
///         "project_id": "test-project",
///         "network_type": "GCP_NETWORK",
///     },
///     destination={
///         "ip_address": "10.0.0.2",
///         "project_id": "test-project",
///         "network_type": "GCP_NETWORK",
///         "gke_pod": "projects/test-project/locations/us-central1/clusters/cluster-name/namespaces/default/pods/pod-name",
///     },
///     protocol="TCP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pod_test = new Gcp.NetworkManagement.ConnectivityTest("pod-test", new()
///     {
///         Name = "conn-test-pod",
///         Source = new Gcp.NetworkManagement.Inputs.ConnectivityTestSourceArgs
///         {
///             IpAddress = "10.0.0.1",
///             ProjectId = "test-project",
///             NetworkType = "GCP_NETWORK",
///         },
///         Destination = new Gcp.NetworkManagement.Inputs.ConnectivityTestDestinationArgs
///         {
///             IpAddress = "10.0.0.2",
///             ProjectId = "test-project",
///             NetworkType = "GCP_NETWORK",
///             GkePod = "projects/test-project/locations/us-central1/clusters/cluster-name/namespaces/default/pods/pod-name",
///         },
///         Protocol = "TCP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanagement.NewConnectivityTest(ctx, "pod-test", &networkmanagement.ConnectivityTestArgs{
/// 			Name: pulumi.String("conn-test-pod"),
/// 			Source: &networkmanagement.ConnectivityTestSourceArgs{
/// 				IpAddress:   pulumi.String("10.0.0.1"),
/// 				ProjectId:   pulumi.String("test-project"),
/// 				NetworkType: pulumi.String("GCP_NETWORK"),
/// 			},
/// 			Destination: &networkmanagement.ConnectivityTestDestinationArgs{
/// 				IpAddress:   pulumi.String("10.0.0.2"),
/// 				ProjectId:   pulumi.String("test-project"),
/// 				NetworkType: pulumi.String("GCP_NETWORK"),
/// 				GkePod:      pulumi.String("projects/test-project/locations/us-central1/clusters/cluster-name/namespaces/default/pods/pod-name"),
/// 			},
/// 			Protocol: pulumi.String("TCP"),
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
/// resource "gcp_networkmanagement_connectivitytest" "pod-test" {
///   name = "conn-test-pod"
///   source = {
///     ip_address   = "10.0.0.1"
///     project_id   = "test-project"
///     network_type = "GCP_NETWORK"
///   }
///   destination = {
///     ip_address   = "10.0.0.2"
///     project_id   = "test-project"
///     network_type = "GCP_NETWORK"
///     gke_pod      = "projects/test-project/locations/us-central1/clusters/cluster-name/namespaces/default/pods/pod-name"
///   }
///   protocol = "TCP"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTest;
/// import com.pulumi.gcp.networkmanagement.ConnectivityTestArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestSourceArgs;
/// import com.pulumi.gcp.networkmanagement.inputs.ConnectivityTestDestinationArgs;
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
///         var pod_test = new ConnectivityTest("pod-test", ConnectivityTestArgs.builder()
///             .name("conn-test-pod")
///             .source(ConnectivityTestSourceArgs.builder()
///                 .ipAddress("10.0.0.1")
///                 .projectId("test-project")
///                 .networkType("GCP_NETWORK")
///                 .build())
///             .destination(ConnectivityTestDestinationArgs.builder()
///                 .ipAddress("10.0.0.2")
///                 .projectId("test-project")
///                 .networkType("GCP_NETWORK")
///                 .gkePod("projects/test-project/locations/us-central1/clusters/cluster-name/namespaces/default/pods/pod-name")
///                 .build())
///             .protocol("TCP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pod-test:
///     type: gcp:networkmanagement:ConnectivityTest
///     properties:
///       name: conn-test-pod
///       source:
///         ipAddress: 10.0.0.1
///         projectId: test-project
///         networkType: GCP_NETWORK
///       destination:
///         ipAddress: 10.0.0.2
///         projectId: test-project
///         networkType: GCP_NETWORK
///         gkePod: projects/test-project/locations/us-central1/clusters/cluster-name/namespaces/default/pods/pod-name
///       protocol: TCP
/// ```
///
///
/// ## Import
///
/// ConnectivityTest can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/connectivityTests/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ConnectivityTest can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/connectivityTest:ConnectivityTest default projects/{{project}}/locations/global/connectivityTests/{{name}}
/// $ pulumi import gcp:networkmanagement/connectivityTest:ConnectivityTest default {{project}}/{{name}}
/// $ pulumi import gcp:networkmanagement/connectivityTest:ConnectivityTest default {{name}}
/// ```
class ConnectivityTest extends pulumi.CustomResource {
  /// Whether the analysis should skip firewall checking. Default value is false.
  late final pulumi.Output<bool?> bypassFirewallChecks;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user-supplied description of the Connectivity Test.
  /// Maximum of 512 characters.
  late final pulumi.Output<String?> description;
  /// Required. Destination specification of the Connectivity Test.
  /// You can use a combination of destination IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the destination location.
  /// Reachability analysis proceeds even if the destination location is
  /// ambiguous. However, the test result might include endpoints or use a
  /// destination that you don't intend to test.
  /// Structure is documented below.
  late final pulumi.Output<ConnectivityTestDestination> destination;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Unique name for the connectivity test.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  late final pulumi.Output<String?> protocol;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Other projects that may be relevant for reachability analysis.
  /// This is applicable to scenarios where a test can cross project
  /// boundaries.
  late final pulumi.Output<List<String>?> relatedProjects;
  /// Whether run analysis for the return path from destination to source.
  /// Default value is false.
  late final pulumi.Output<bool?> roundTrip;
  /// Required. Source specification of the Connectivity Test.
  /// You can use a combination of source IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the source location.
  /// Reachability analysis might proceed even if the source location is
  /// ambiguous. However, the test result might include endpoints or use a source
  /// that you don't intend to test.
  /// Structure is documented below.
  late final pulumi.Output<ConnectivityTestSource> source;

  /// Creates a new [ConnectivityTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectivityTest]. {@macro pulumi_networkmanagement_connectivity_test_connectivity_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectivityTest(
    String name, {
    ConnectivityTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/connectivityTest:ConnectivityTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    bypassFirewallChecks = registerOutput<bool?>('bypassFirewallChecks');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destination = registerOutput<ConnectivityTestDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityTestDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protocol = registerOutput<String?>('protocol');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    relatedProjects = registerOutput<List<String>?>('relatedProjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    roundTrip = registerOutput<bool?>('roundTrip');
    source = registerOutput<ConnectivityTestSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityTestSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ConnectivityTest] resource's state with the given [name] and [id].
  static ConnectivityTest get(
    String name,
    pulumi.Input<String> id, {
    ConnectivityTestState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConnectivityTest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConnectivityTest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkmanagement/connectivityTest:ConnectivityTest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bypassFirewallChecks = registerOutput<bool?>('bypassFirewallChecks');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destination = registerOutput<ConnectivityTestDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityTestDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protocol = registerOutput<String?>('protocol');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    relatedProjects = registerOutput<List<String>?>('relatedProjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    roundTrip = registerOutput<bool?>('roundTrip');
    source = registerOutput<ConnectivityTestSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityTestSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ConnectivityTest] resource.
  ConnectivityTest.reference(String urn)
    : super(
        'gcp:networkmanagement/connectivityTest:ConnectivityTest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    bypassFirewallChecks = registerOutput<bool?>('bypassFirewallChecks');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destination = registerOutput<ConnectivityTestDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityTestDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protocol = registerOutput<String?>('protocol');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    relatedProjects = registerOutput<List<String>?>('relatedProjects', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    roundTrip = registerOutput<bool?>('roundTrip');
    source = registerOutput<ConnectivityTestSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityTestSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

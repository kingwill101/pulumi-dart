import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_instance_args.dart';
import 'target_instance_state.dart';

/// Represents a TargetInstance resource which defines an endpoint instance
/// that terminates traffic of certain protocols. In particular, they are used
/// in Protocol Forwarding, where forwarding rules can send packets to a
/// non-NAT'ed target instance. Each target instance contains a single
/// virtual machine instance that receives and handles traffic from the
/// corresponding forwarding rules.
///
///
/// To get more information about TargetInstance, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetInstances)
/// * How-to Guides
/// * [Using Protocol Forwarding](https://cloud.google.com/compute/docs/protocol-forwarding)
///
/// ## Example Usage
///
/// ### Target Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vmimage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const target_vm = new gcp.compute.Instance("target-vm", {
///     name: "target-vm",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: vmimage.then(vmimage => vmimage.selfLink),
///         },
///     },
///     networkInterfaces: [{
///         network: "default",
///     }],
/// });
/// const _default = new gcp.compute.TargetInstance("default", {
///     name: "target",
///     instance: target_vm.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vmimage = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// target_vm = gcp.compute.Instance("target-vm",
///     name="target-vm",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": vmimage.self_link,
///         },
///     },
///     network_interfaces=[{
///         "network": "default",
///     }])
/// default = gcp.compute.TargetInstance("default",
///     name="target",
///     instance=target_vm.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vmimage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var target_vm = new Gcp.Compute.Instance("target-vm", new()
///     {
///         Name = "target-vm",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = vmimage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///     });
///
///     var @default = new Gcp.Compute.TargetInstance("default", new()
///     {
///         Name = "target",
///         Instance = target_vm.Id,
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
/// 		vmimage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		target_vm, err := compute.NewInstance(ctx, "target-vm", &compute.InstanceArgs{
/// 			Name:        pulumi.String("target-vm"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(vmimage.SelfLink),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetInstance(ctx, "default", &compute.TargetInstanceArgs{
/// 			Name:     pulumi.String("target"),
/// 			Instance: target_vm.ID(),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.TargetInstance;
/// import com.pulumi.gcp.compute.TargetInstanceArgs;
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
///         final var vmimage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var target_vm = new Instance("target-vm", InstanceArgs.builder()
///             .name("target-vm")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(vmimage.selfLink())
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .build());
///
///         var default_ = new TargetInstance("default", TargetInstanceArgs.builder()
///             .name("target")
///             .instance(target_vm.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetInstance
///     properties:
///       name: target
///       instance: ${["target-vm"].id}
///   target-vm:
///     type: gcp:compute:Instance
///     properties:
///       name: target-vm
///       machineType: e2-medium
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: ${vmimage.selfLink}
///       networkInterfaces:
///         - network: default
/// variables:
///   vmimage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Target Instance Custom Network
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const target_vm = gcp.compute.getNetwork({
///     name: "default",
/// });
/// const vmimage = gcp.compute.getImage({
///     family: "debian-12",
///     project: "debian-cloud",
/// });
/// const target_vmInstance = new gcp.compute.Instance("target-vm", {
///     name: "custom-network-target-vm",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: vmimage.then(vmimage => vmimage.selfLink),
///         },
///     },
///     networkInterfaces: [{
///         network: "default",
///     }],
/// });
/// const customNetwork = new gcp.compute.TargetInstance("custom_network", {
///     name: "custom-network",
///     instance: target_vmInstance.id,
///     network: target_vm.then(target_vm => target_vm.selfLink),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// target_vm = gcp.compute.get_network(name="default")
/// vmimage = gcp.compute.get_image(family="debian-12",
///     project="debian-cloud")
/// target_vm_instance = gcp.compute.Instance("target-vm",
///     name="custom-network-target-vm",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": vmimage.self_link,
///         },
///     },
///     network_interfaces=[{
///         "network": "default",
///     }])
/// custom_network = gcp.compute.TargetInstance("custom_network",
///     name="custom-network",
///     instance=target_vm_instance.id,
///     network=target_vm.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var target_vm = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "default",
///     });
///
///     var vmimage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-12",
///         Project = "debian-cloud",
///     });
///
///     var target_vmInstance = new Gcp.Compute.Instance("target-vm", new()
///     {
///         Name = "custom-network-target-vm",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = vmimage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///     });
///
///     var customNetwork = new Gcp.Compute.TargetInstance("custom_network", new()
///     {
///         Name = "custom-network",
///         Instance = target_vmInstance.Id,
///         Network = target_vm.Apply(target_vm => target_vm.Apply(getNetworkResult => getNetworkResult.SelfLink)),
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
/// 		target_vm, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "default",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vmimage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-12"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		target_vmInstance, err := compute.NewInstance(ctx, "target-vm", &compute.InstanceArgs{
/// 			Name:        pulumi.String("custom-network-target-vm"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(vmimage.SelfLink),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetInstance(ctx, "custom_network", &compute.TargetInstanceArgs{
/// 			Name:     pulumi.String("custom-network"),
/// 			Instance: target_vmInstance.ID(),
/// 			Network:  pulumi.String(target_vm.SelfLink),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.TargetInstance;
/// import com.pulumi.gcp.compute.TargetInstanceArgs;
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
///         final var target-vm = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("default")
///             .build());
///
///         final var vmimage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-12")
///             .project("debian-cloud")
///             .build());
///
///         var target_vmInstance = new Instance("target-vmInstance", InstanceArgs.builder()
///             .name("custom-network-target-vm")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(vmimage.selfLink())
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .build());
///
///         var customNetwork = new TargetInstance("customNetwork", TargetInstanceArgs.builder()
///             .name("custom-network")
///             .instance(target_vmInstance.id())
///             .network(target_vm.selfLink())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customNetwork:
///     type: gcp:compute:TargetInstance
///     name: custom_network
///     properties:
///       name: custom-network
///       instance: ${["target-vmInstance"].id}
///       network: ${["target-vm"].selfLink}
///   target-vmInstance:
///     type: gcp:compute:Instance
///     name: target-vm
///     properties:
///       name: custom-network-target-vm
///       machineType: e2-medium
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: ${vmimage.selfLink}
///       networkInterfaces:
///         - network: default
/// variables:
///   target-vm:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: default
///   vmimage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-12
///         project: debian-cloud
/// ```
///
/// ### Target Instance With Security Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "custom-default-network",
///     autoCreateSubnetworks: false,
///     routingMode: "REGIONAL",
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "custom-default-subnet",
///     ipCidrRange: "10.1.2.0/24",
///     network: _default.id,
///     privateIpv6GoogleAccess: "DISABLE_GOOGLE_ACCESS",
///     purpose: "PRIVATE",
///     region: "southamerica-west1",
///     stackType: "IPV4_ONLY",
/// });
/// const vmimage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const target_vm = new gcp.compute.Instance("target-vm", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: _default.selfLink,
///         subnetwork: defaultSubnetwork.selfLink,
///     }],
///     name: "target-vm",
///     machineType: "e2-medium",
///     zone: "southamerica-west1-a",
///     bootDisk: {
///         initializeParams: {
///             image: vmimage.then(vmimage => vmimage.selfLink),
///         },
///     },
/// });
/// const policyddosprotection = new gcp.compute.RegionSecurityPolicy("policyddosprotection", {
///     region: "southamerica-west1",
///     name: "tf-test-policyddos_85840",
///     description: "ddos protection security policy to set target instance",
///     type: "CLOUD_ARMOR_NETWORK",
///     ddosProtectionConfig: {
///         ddosProtection: "ADVANCED_PREVIEW",
///     },
/// });
/// const edgeSecService = new gcp.compute.NetworkEdgeSecurityService("edge_sec_service", {
///     region: "southamerica-west1",
///     name: "tf-test-edgesec_60302",
///     securityPolicy: policyddosprotection.selfLink,
/// });
/// const regionsecuritypolicy = new gcp.compute.RegionSecurityPolicy("regionsecuritypolicy", {
///     name: "region-secpolicy",
///     region: "southamerica-west1",
///     description: "basic security policy for target instance",
///     type: "CLOUD_ARMOR_NETWORK",
/// }, {
///     dependsOn: [edgeSecService],
/// });
/// const defaultTargetInstance = new gcp.compute.TargetInstance("default", {
///     name: "target-instance",
///     zone: "southamerica-west1-a",
///     instance: target_vm.id,
///     securityPolicy: regionsecuritypolicy.selfLink,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="custom-default-network",
///     auto_create_subnetworks=False,
///     routing_mode="REGIONAL")
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="custom-default-subnet",
///     ip_cidr_range="10.1.2.0/24",
///     network=default.id,
///     private_ipv6_google_access="DISABLE_GOOGLE_ACCESS",
///     purpose="PRIVATE",
///     region="southamerica-west1",
///     stack_type="IPV4_ONLY")
/// vmimage = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// target_vm = gcp.compute.Instance("target-vm",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": default.self_link,
///         "subnetwork": default_subnetwork.self_link,
///     }],
///     name="target-vm",
///     machine_type="e2-medium",
///     zone="southamerica-west1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": vmimage.self_link,
///         },
///     })
/// policyddosprotection = gcp.compute.RegionSecurityPolicy("policyddosprotection",
///     region="southamerica-west1",
///     name="tf-test-policyddos_85840",
///     description="ddos protection security policy to set target instance",
///     type="CLOUD_ARMOR_NETWORK",
///     ddos_protection_config={
///         "ddos_protection": "ADVANCED_PREVIEW",
///     })
/// edge_sec_service = gcp.compute.NetworkEdgeSecurityService("edge_sec_service",
///     region="southamerica-west1",
///     name="tf-test-edgesec_60302",
///     security_policy=policyddosprotection.self_link)
/// regionsecuritypolicy = gcp.compute.RegionSecurityPolicy("regionsecuritypolicy",
///     name="region-secpolicy",
///     region="southamerica-west1",
///     description="basic security policy for target instance",
///     type="CLOUD_ARMOR_NETWORK",
///     opts = pulumi.ResourceOptions(depends_on=[edge_sec_service]))
/// default_target_instance = gcp.compute.TargetInstance("default",
///     name="target-instance",
///     zone="southamerica-west1-a",
///     instance=target_vm.id,
///     security_policy=regionsecuritypolicy.self_link)
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
///         Name = "custom-default-network",
///         AutoCreateSubnetworks = false,
///         RoutingMode = "REGIONAL",
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "custom-default-subnet",
///         IpCidrRange = "10.1.2.0/24",
///         Network = @default.Id,
///         PrivateIpv6GoogleAccess = "DISABLE_GOOGLE_ACCESS",
///         Purpose = "PRIVATE",
///         Region = "southamerica-west1",
///         StackType = "IPV4_ONLY",
///     });
///
///     var vmimage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var target_vm = new Gcp.Compute.Instance("target-vm", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = @default.SelfLink,
///                 Subnetwork = defaultSubnetwork.SelfLink,
///             },
///         },
///         Name = "target-vm",
///         MachineType = "e2-medium",
///         Zone = "southamerica-west1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = vmimage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///     });
///
///     var policyddosprotection = new Gcp.Compute.RegionSecurityPolicy("policyddosprotection", new()
///     {
///         Region = "southamerica-west1",
///         Name = "tf-test-policyddos_85840",
///         Description = "ddos protection security policy to set target instance",
///         Type = "CLOUD_ARMOR_NETWORK",
///         DdosProtectionConfig = new Gcp.Compute.Inputs.RegionSecurityPolicyDdosProtectionConfigArgs
///         {
///             DdosProtection = "ADVANCED_PREVIEW",
///         },
///     });
///
///     var edgeSecService = new Gcp.Compute.NetworkEdgeSecurityService("edge_sec_service", new()
///     {
///         Region = "southamerica-west1",
///         Name = "tf-test-edgesec_60302",
///         SecurityPolicy = policyddosprotection.SelfLink,
///     });
///
///     var regionsecuritypolicy = new Gcp.Compute.RegionSecurityPolicy("regionsecuritypolicy", new()
///     {
///         Name = "region-secpolicy",
///         Region = "southamerica-west1",
///         Description = "basic security policy for target instance",
///         Type = "CLOUD_ARMOR_NETWORK",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             edgeSecService,
///         },
///     });
///
///     var defaultTargetInstance = new Gcp.Compute.TargetInstance("default", new()
///     {
///         Name = "target-instance",
///         Zone = "southamerica-west1-a",
///         Instance = target_vm.Id,
///         SecurityPolicy = regionsecuritypolicy.SelfLink,
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
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("custom-default-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 			RoutingMode:           pulumi.String("REGIONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:                    pulumi.String("custom-default-subnet"),
/// 			IpCidrRange:             pulumi.String("10.1.2.0/24"),
/// 			Network:                 _default.ID(),
/// 			PrivateIpv6GoogleAccess: pulumi.String("DISABLE_GOOGLE_ACCESS"),
/// 			Purpose:                 pulumi.String("PRIVATE"),
/// 			Region:                  pulumi.String("southamerica-west1"),
/// 			StackType:               pulumi.String("IPV4_ONLY"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vmimage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		target_vm, err := compute.NewInstance(ctx, "target-vm", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network:    _default.SelfLink,
/// 					Subnetwork: defaultSubnetwork.SelfLink,
/// 				},
/// 			},
/// 			Name:        pulumi.String("target-vm"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("southamerica-west1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(vmimage.SelfLink),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policyddosprotection, err := compute.NewRegionSecurityPolicy(ctx, "policyddosprotection", &compute.RegionSecurityPolicyArgs{
/// 			Region:      pulumi.String("southamerica-west1"),
/// 			Name:        pulumi.String("tf-test-policyddos_85840"),
/// 			Description: pulumi.String("ddos protection security policy to set target instance"),
/// 			Type:        pulumi.String("CLOUD_ARMOR_NETWORK"),
/// 			DdosProtectionConfig: &compute.RegionSecurityPolicyDdosProtectionConfigArgs{
/// 				DdosProtection: pulumi.String("ADVANCED_PREVIEW"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		edgeSecService, err := compute.NewNetworkEdgeSecurityService(ctx, "edge_sec_service", &compute.NetworkEdgeSecurityServiceArgs{
/// 			Region:         pulumi.String("southamerica-west1"),
/// 			Name:           pulumi.String("tf-test-edgesec_60302"),
/// 			SecurityPolicy: policyddosprotection.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		regionsecuritypolicy, err := compute.NewRegionSecurityPolicy(ctx, "regionsecuritypolicy", &compute.RegionSecurityPolicyArgs{
/// 			Name:        pulumi.String("region-secpolicy"),
/// 			Region:      pulumi.String("southamerica-west1"),
/// 			Description: pulumi.String("basic security policy for target instance"),
/// 			Type:        pulumi.String("CLOUD_ARMOR_NETWORK"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			edgeSecService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetInstance(ctx, "default", &compute.TargetInstanceArgs{
/// 			Name:           pulumi.String("target-instance"),
/// 			Zone:           pulumi.String("southamerica-west1-a"),
/// 			Instance:       target_vm.ID(),
/// 			SecurityPolicy: regionsecuritypolicy.SelfLink,
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyDdosProtectionConfigArgs;
/// import com.pulumi.gcp.compute.NetworkEdgeSecurityService;
/// import com.pulumi.gcp.compute.NetworkEdgeSecurityServiceArgs;
/// import com.pulumi.gcp.compute.TargetInstance;
/// import com.pulumi.gcp.compute.TargetInstanceArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("custom-default-network")
///             .autoCreateSubnetworks(false)
///             .routingMode("REGIONAL")
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("custom-default-subnet")
///             .ipCidrRange("10.1.2.0/24")
///             .network(default_.id())
///             .privateIpv6GoogleAccess("DISABLE_GOOGLE_ACCESS")
///             .purpose("PRIVATE")
///             .region("southamerica-west1")
///             .stackType("IPV4_ONLY")
///             .build());
///
///         final var vmimage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var target_vm = new Instance("target-vm", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network(default_.selfLink())
///                 .subnetwork(defaultSubnetwork.selfLink())
///                 .build())
///             .name("target-vm")
///             .machineType("e2-medium")
///             .zone("southamerica-west1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(vmimage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///         var policyddosprotection = new RegionSecurityPolicy("policyddosprotection", RegionSecurityPolicyArgs.builder()
///             .region("southamerica-west1")
///             .name("tf-test-policyddos_85840")
///             .description("ddos protection security policy to set target instance")
///             .type("CLOUD_ARMOR_NETWORK")
///             .ddosProtectionConfig(RegionSecurityPolicyDdosProtectionConfigArgs.builder()
///                 .ddosProtection("ADVANCED_PREVIEW")
///                 .build())
///             .build());
///
///         var edgeSecService = new NetworkEdgeSecurityService("edgeSecService", NetworkEdgeSecurityServiceArgs.builder()
///             .region("southamerica-west1")
///             .name("tf-test-edgesec_60302")
///             .securityPolicy(policyddosprotection.selfLink())
///             .build());
///
///         var regionsecuritypolicy = new RegionSecurityPolicy("regionsecuritypolicy", RegionSecurityPolicyArgs.builder()
///             .name("region-secpolicy")
///             .region("southamerica-west1")
///             .description("basic security policy for target instance")
///             .type("CLOUD_ARMOR_NETWORK")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(edgeSecService)
///                 .build());
///
///         var defaultTargetInstance = new TargetInstance("defaultTargetInstance", TargetInstanceArgs.builder()
///             .name("target-instance")
///             .zone("southamerica-west1-a")
///             .instance(target_vm.id())
///             .securityPolicy(regionsecuritypolicy.selfLink())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: custom-default-network
///       autoCreateSubnetworks: false
///       routingMode: REGIONAL
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: custom-default-subnet
///       ipCidrRange: 10.1.2.0/24
///       network: ${default.id}
///       privateIpv6GoogleAccess: DISABLE_GOOGLE_ACCESS
///       purpose: PRIVATE
///       region: southamerica-west1
///       stackType: IPV4_ONLY
///   target-vm:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: ${default.selfLink}
///           subnetwork: ${defaultSubnetwork.selfLink}
///       name: target-vm
///       machineType: e2-medium
///       zone: southamerica-west1-a
///       bootDisk:
///         initializeParams:
///           image: ${vmimage.selfLink}
///   policyddosprotection:
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       region: southamerica-west1
///       name: tf-test-policyddos_85840
///       description: ddos protection security policy to set target instance
///       type: CLOUD_ARMOR_NETWORK
///       ddosProtectionConfig:
///         ddosProtection: ADVANCED_PREVIEW
///   edgeSecService:
///     type: gcp:compute:NetworkEdgeSecurityService
///     name: edge_sec_service
///     properties:
///       region: southamerica-west1
///       name: tf-test-edgesec_60302
///       securityPolicy: ${policyddosprotection.selfLink}
///   regionsecuritypolicy:
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       name: region-secpolicy
///       region: southamerica-west1
///       description: basic security policy for target instance
///       type: CLOUD_ARMOR_NETWORK
///     options:
///       dependsOn:
///         - ${edgeSecService}
///   defaultTargetInstance:
///     type: gcp:compute:TargetInstance
///     name: default
///     properties:
///       name: target-instance
///       zone: southamerica-west1-a
///       instance: ${["target-vm"].id}
///       securityPolicy: ${regionsecuritypolicy.selfLink}
/// variables:
///   vmimage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// TargetInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/targetInstances/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetInstance:TargetInstance default projects/{{project}}/zones/{{zone}}/targetInstances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetInstance:TargetInstance default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetInstance:TargetInstance default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetInstance:TargetInstance default {{name}}
/// ```
class TargetInstance extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// The Compute instance VM handling traffic for this target instance.
  /// Accepts the instance self-link, relative path
  /// (e.g. `projects/project/zones/zone/instances/instance`) or name. If
  /// name is given, the zone will default to the given zone or
  /// the provider-default zone and the project will default to the
  /// provider-level project.
  late final pulumi.Output<String> instance;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// NAT option controlling how IPs are NAT'ed to the instance.
  /// Currently only NO_NAT (default value) is supported.
  /// Default value is `NO_NAT`.
  /// Possible values are: `NO_NAT`.
  late final pulumi.Output<String?> natPolicy;

  /// The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  late final pulumi.Output<String?> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The resource URL for the security policy associated with this target instance.
  late final pulumi.Output<String?> securityPolicy;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// URL of the zone where the target instance resides.
  late final pulumi.Output<String> zone;

  /// Creates a new [TargetInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetInstance]. {@macro pulumi_compute_target_instance_target_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetInstance(
    String name, {
    TargetInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/targetInstance:TargetInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    natPolicy = registerOutput<String?>('natPolicy');
    network = registerOutput<String?>('network');
    project = registerOutput<String>('project');
    securityPolicy = registerOutput<String?>('securityPolicy');
    selfLink = registerOutput<String>('selfLink');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [TargetInstance] resource's state with the given [name] and [id].
  static TargetInstance get(
    String name,
    pulumi.Input<String> id, {
    TargetInstanceState? state,
  }) {
    return TargetInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/targetInstance:TargetInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    natPolicy = registerOutput<String?>('natPolicy');
    network = registerOutput<String?>('network');
    project = registerOutput<String>('project');
    securityPolicy = registerOutput<String?>('securityPolicy');
    selfLink = registerOutput<String>('selfLink');
    zone = registerOutput<String>('zone');
  }
}

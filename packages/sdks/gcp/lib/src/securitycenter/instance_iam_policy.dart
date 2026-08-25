import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_policy_args.dart';
import 'instance_iam_policy_state.dart';

/// Represents a Data Fusion instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/data-fusion/docs/reference/rest/v1beta1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-fusion/docs/)
///
/// ## Example Usage
///
/// ### Data Fusion Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicInstance = new gcp.datafusion.Instance("basic_instance", {
///     name: "my-instance",
///     region: "us-central1",
///     type: "BASIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_instance = gcp.datafusion.Instance("basic_instance",
///     name="my-instance",
///     region="us-central1",
///     type="BASIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicInstance = new Gcp.DataFusion.Instance("basic_instance", new()
///     {
///         Name = "my-instance",
///         Region = "us-central1",
///         Type = "BASIC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafusion.NewInstance(ctx, "basic_instance", &datafusion.InstanceArgs{
/// 			Name:   pulumi.String("my-instance"),
/// 			Region: pulumi.String("us-central1"),
/// 			Type:   pulumi.String("BASIC"),
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
/// resource "gcp_datafusion_instance" "basic_instance" {
///   name   = "my-instance"
///   region = "us-central1"
///   type   = "BASIC"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datafusion.Instance;
/// import com.pulumi.gcp.datafusion.InstanceArgs;
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
///         var basicInstance = new Instance("basicInstance", InstanceArgs.builder()
///             .name("my-instance")
///             .region("us-central1")
///             .type("BASIC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicInstance:
///     type: gcp:datafusion:Instance
///     name: basic_instance
///     properties:
///       name: my-instance
///       region: us-central1
///       type: BASIC
/// ```
///
/// ### Data Fusion Instance Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.appengine.getDefaultServiceAccount({});
/// const network = new gcp.compute.Network("network", {name: "datafusion-full-network"});
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: "datafusion-ip-alloc",
///     addressType: "INTERNAL",
///     purpose: "VPC_PEERING",
///     prefixLength: 22,
///     network: network.id,
/// });
/// const extendedInstance = new gcp.datafusion.Instance("extended_instance", {
///     name: "my-instance",
///     description: "My Data Fusion instance",
///     displayName: "My Data Fusion instance",
///     region: "us-central1",
///     type: "BASIC",
///     enableStackdriverLogging: true,
///     enableStackdriverMonitoring: true,
///     privateInstance: true,
///     dataprocServiceAccount: _default.then(_default => _default.email),
///     labels: {
///         example_key: "example_value",
///     },
///     networkConfig: {
///         network: "default",
///         ipAllocation: pulumi.interpolate`${privateIpAlloc.address}/${privateIpAlloc.prefixLength}`,
///     },
///     accelerators: [{
///         acceleratorType: "CDC",
///         state: "ENABLED",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.appengine.get_default_service_account()
/// network = gcp.compute.Network("network", name="datafusion-full-network")
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name="datafusion-ip-alloc",
///     address_type="INTERNAL",
///     purpose="VPC_PEERING",
///     prefix_length=22,
///     network=network.id)
/// extended_instance = gcp.datafusion.Instance("extended_instance",
///     name="my-instance",
///     description="My Data Fusion instance",
///     display_name="My Data Fusion instance",
///     region="us-central1",
///     type="BASIC",
///     enable_stackdriver_logging=True,
///     enable_stackdriver_monitoring=True,
///     private_instance=True,
///     dataproc_service_account=default.email,
///     labels={
///         "example_key": "example_value",
///     },
///     network_config={
///         "network": "default",
///         "ip_allocation": pulumi.Output.all(
///             address=private_ip_alloc.address,
///             prefix_length=private_ip_alloc.prefix_length
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['address']}/{resolved_outputs['prefix_length']}")
/// ,
///     },
///     accelerators=[{
///         "accelerator_type": "CDC",
///         "state": "ENABLED",
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
///     var @default = Gcp.AppEngine.GetDefaultServiceAccount.Invoke();
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "datafusion-full-network",
///     });
///
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = "datafusion-ip-alloc",
///         AddressType = "INTERNAL",
///         Purpose = "VPC_PEERING",
///         PrefixLength = 22,
///         Network = network.Id,
///     });
///
///     var extendedInstance = new Gcp.DataFusion.Instance("extended_instance", new()
///     {
///         Name = "my-instance",
///         Description = "My Data Fusion instance",
///         DisplayName = "My Data Fusion instance",
///         Region = "us-central1",
///         Type = "BASIC",
///         EnableStackdriverLogging = true,
///         EnableStackdriverMonitoring = true,
///         PrivateInstance = true,
///         DataprocServiceAccount = @default.Apply(@default => @default.Apply(getDefaultServiceAccountResult => getDefaultServiceAccountResult.Email)),
///         Labels =
///         {
///             { "example_key", "example_value" },
///         },
///         NetworkConfig = new Gcp.DataFusion.Inputs.InstanceNetworkConfigArgs
///         {
///             Network = "default",
///             IpAllocation = Output.Tuple(privateIpAlloc.Address, privateIpAlloc.PrefixLength).Apply(values =>
///             {
///                 var address = values.Item1;
///                 var prefixLength = values.Item2;
///                 return $"{address}/{prefixLength}";
///             }),
///         },
///         Accelerators = new[]
///         {
///             new Gcp.DataFusion.Inputs.InstanceAcceleratorArgs
///             {
///                 AcceleratorType = "CDC",
///                 State = "ENABLED",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := appengine.GetDefaultServiceAccount(ctx, &appengine.GetDefaultServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name: pulumi.String("datafusion-full-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("datafusion-ip-alloc"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(22),
/// 			Network:      network.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafusion.NewInstance(ctx, "extended_instance", &datafusion.InstanceArgs{
/// 			Name:                        pulumi.String("my-instance"),
/// 			Description:                 pulumi.String("My Data Fusion instance"),
/// 			DisplayName:                 pulumi.String("My Data Fusion instance"),
/// 			Region:                      pulumi.String("us-central1"),
/// 			Type:                        pulumi.String("BASIC"),
/// 			EnableStackdriverLogging:    pulumi.Bool(true),
/// 			EnableStackdriverMonitoring: pulumi.Bool(true),
/// 			PrivateInstance:             pulumi.Bool(true),
/// 			DataprocServiceAccount:      pulumi.String(_default.Email),
/// 			Labels: pulumi.StringMap{
/// 				"example_key": pulumi.String("example_value"),
/// 			},
/// 			NetworkConfig: &datafusion.InstanceNetworkConfigArgs{
/// 				Network: pulumi.String("default"),
/// 				IpAllocation: pulumi.All(privateIpAlloc.Address, privateIpAlloc.PrefixLength).ApplyT(func(_args []interface{}) (string, error) {
/// 					address := _args[0].(string)
/// 					prefixLength := _args[1].(int)
/// 					return fmt.Sprintf("%v/%v", address, prefixLength), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Accelerators: datafusion.InstanceAcceleratorArray{
/// 				&datafusion.InstanceAcceleratorArgs{
/// 					AcceleratorType: pulumi.String("CDC"),
/// 					State:           pulumi.String("ENABLED"),
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
/// data "gcp_appengine_getdefaultserviceaccount" "default" {
/// }
///
/// resource "gcp_datafusion_instance" "extended_instance" {
///   name                          = "my-instance"
///   description                   = "My Data Fusion instance"
///   display_name                  = "My Data Fusion instance"
///   region                        = "us-central1"
///   type                          = "BASIC"
///   enable_stackdriver_logging    = true
///   enable_stackdriver_monitoring = true
///   private_instance              = true
///   dataproc_service_account      = data.gcp_appengine_getdefaultserviceaccount.default.email
///   labels = {
///     "example_key" = "example_value"
///   }
///   network_config = {
///     network       = "default"
///     ip_allocation ="${gcp_compute_globaladdress.private_ip_alloc.address}/${gcp_compute_globaladdress.private_ip_alloc.prefix_length}"
///   }
///   accelerators {
///     accelerator_type = "CDC"
///     state            = "ENABLED"
///   }
/// }
/// resource "gcp_compute_network" "network" {
///   name = "datafusion-full-network"
/// }
/// resource "gcp_compute_globaladdress" "private_ip_alloc" {
///   name          = "datafusion-ip-alloc"
///   address_type  = "INTERNAL"
///   purpose       = "VPC_PEERING"
///   prefix_length = 22
///   network       = gcp_compute_network.network.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.appengine.AppengineFunctions;
/// import com.pulumi.gcp.appengine.inputs.GetDefaultServiceAccountArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.datafusion.Instance;
/// import com.pulumi.gcp.datafusion.InstanceArgs;
/// import com.pulumi.gcp.datafusion.inputs.InstanceNetworkConfigArgs;
/// import com.pulumi.gcp.datafusion.inputs.InstanceAcceleratorArgs;
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
///         final var default = AppengineFunctions.getDefaultServiceAccount(GetDefaultServiceAccountArgs.builder()
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("datafusion-full-network")
///             .build());
///
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name("datafusion-ip-alloc")
///             .addressType("INTERNAL")
///             .purpose("VPC_PEERING")
///             .prefixLength(22)
///             .network(network.id())
///             .build());
///
///         var extendedInstance = new Instance("extendedInstance", InstanceArgs.builder()
///             .name("my-instance")
///             .description("My Data Fusion instance")
///             .displayName("My Data Fusion instance")
///             .region("us-central1")
///             .type("BASIC")
///             .enableStackdriverLogging(true)
///             .enableStackdriverMonitoring(true)
///             .privateInstance(true)
///             .dataprocServiceAccount(default_.email())
///             .labels(Map.of("example_key", "example_value"))
///             .networkConfig(InstanceNetworkConfigArgs.builder()
///                 .network("default")
///                 .ipAllocation(Output.tuple(privateIpAlloc.address(), privateIpAlloc.prefixLength()).applyValue(values -> {
///                     var address = values.t1;
///                     var prefixLength = values.t2;
///                     return String.format("%s/%s", address,prefixLength);
///                 }))
///                 .build())
///             .accelerators(InstanceAcceleratorArgs.builder()
///                 .acceleratorType("CDC")
///                 .state("ENABLED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   extendedInstance:
///     type: gcp:datafusion:Instance
///     name: extended_instance
///     properties:
///       name: my-instance
///       description: My Data Fusion instance
///       displayName: My Data Fusion instance
///       region: us-central1
///       type: BASIC
///       enableStackdriverLogging: true
///       enableStackdriverMonitoring: true
///       privateInstance: true
///       dataprocServiceAccount: ${default.email}
///       labels:
///         example_key: example_value
///       networkConfig:
///         network: default
///         ipAllocation: ${privateIpAlloc.address}/${privateIpAlloc.prefixLength}
///       accelerators:
///         - acceleratorType: CDC
///           state: ENABLED
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: datafusion-full-network
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: datafusion-ip-alloc
///       addressType: INTERNAL
///       purpose: VPC_PEERING
///       prefixLength: 22
///       network: ${network.id}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:appengine:getDefaultServiceAccount
///       arguments: {}
/// ```
///
/// ### Data Fusion Instance Psc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const psc = new gcp.compute.Network("psc", {
///     name: "datafusion-psc-network",
///     autoCreateSubnetworks: false,
/// });
/// const pscSubnetwork = new gcp.compute.Subnetwork("psc", {
///     name: "datafusion-psc-subnet",
///     region: "us-central1",
///     network: psc.id,
///     ipCidrRange: "10.0.0.0/16",
/// });
/// const pscNetworkAttachment = new gcp.compute.NetworkAttachment("psc", {
///     name: "datafusion-psc-attachment",
///     region: "us-central1",
///     connectionPreference: "ACCEPT_AUTOMATIC",
///     subnetworks: [pscSubnetwork.selfLink],
/// });
/// const pscInstance = new gcp.datafusion.Instance("psc_instance", {
///     name: "psc-instance",
///     region: "us-central1",
///     type: "BASIC",
///     privateInstance: true,
///     networkConfig: {
///         connectionType: "PRIVATE_SERVICE_CONNECT_INTERFACES",
///         privateServiceConnectConfig: {
///             networkAttachment: pscNetworkAttachment.id,
///             unreachableCidrBlock: "192.168.0.0/25",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// psc = gcp.compute.Network("psc",
///     name="datafusion-psc-network",
///     auto_create_subnetworks=False)
/// psc_subnetwork = gcp.compute.Subnetwork("psc",
///     name="datafusion-psc-subnet",
///     region="us-central1",
///     network=psc.id,
///     ip_cidr_range="10.0.0.0/16")
/// psc_network_attachment = gcp.compute.NetworkAttachment("psc",
///     name="datafusion-psc-attachment",
///     region="us-central1",
///     connection_preference="ACCEPT_AUTOMATIC",
///     subnetworks=[psc_subnetwork.self_link])
/// psc_instance = gcp.datafusion.Instance("psc_instance",
///     name="psc-instance",
///     region="us-central1",
///     type="BASIC",
///     private_instance=True,
///     network_config={
///         "connection_type": "PRIVATE_SERVICE_CONNECT_INTERFACES",
///         "private_service_connect_config": {
///             "network_attachment": psc_network_attachment.id,
///             "unreachable_cidr_block": "192.168.0.0/25",
///         },
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
///     var psc = new Gcp.Compute.Network("psc", new()
///     {
///         Name = "datafusion-psc-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var pscSubnetwork = new Gcp.Compute.Subnetwork("psc", new()
///     {
///         Name = "datafusion-psc-subnet",
///         Region = "us-central1",
///         Network = psc.Id,
///         IpCidrRange = "10.0.0.0/16",
///     });
///
///     var pscNetworkAttachment = new Gcp.Compute.NetworkAttachment("psc", new()
///     {
///         Name = "datafusion-psc-attachment",
///         Region = "us-central1",
///         ConnectionPreference = "ACCEPT_AUTOMATIC",
///         Subnetworks = new[]
///         {
///             pscSubnetwork.SelfLink,
///         },
///     });
///
///     var pscInstance = new Gcp.DataFusion.Instance("psc_instance", new()
///     {
///         Name = "psc-instance",
///         Region = "us-central1",
///         Type = "BASIC",
///         PrivateInstance = true,
///         NetworkConfig = new Gcp.DataFusion.Inputs.InstanceNetworkConfigArgs
///         {
///             ConnectionType = "PRIVATE_SERVICE_CONNECT_INTERFACES",
///             PrivateServiceConnectConfig = new Gcp.DataFusion.Inputs.InstanceNetworkConfigPrivateServiceConnectConfigArgs
///             {
///                 NetworkAttachment = pscNetworkAttachment.Id,
///                 UnreachableCidrBlock = "192.168.0.0/25",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		psc, err := compute.NewNetwork(ctx, "psc", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("datafusion-psc-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscSubnetwork, err := compute.NewSubnetwork(ctx, "psc", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("datafusion-psc-subnet"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     psc.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pscNetworkAttachment, err := compute.NewNetworkAttachment(ctx, "psc", &compute.NetworkAttachmentArgs{
/// 			Name:                 pulumi.String("datafusion-psc-attachment"),
/// 			Region:               pulumi.String("us-central1"),
/// 			ConnectionPreference: pulumi.String("ACCEPT_AUTOMATIC"),
/// 			Subnetworks: pulumi.StringArray{
/// 				pscSubnetwork.SelfLink,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafusion.NewInstance(ctx, "psc_instance", &datafusion.InstanceArgs{
/// 			Name:            pulumi.String("psc-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Type:            pulumi.String("BASIC"),
/// 			PrivateInstance: pulumi.Bool(true),
/// 			NetworkConfig: &datafusion.InstanceNetworkConfigArgs{
/// 				ConnectionType: pulumi.String("PRIVATE_SERVICE_CONNECT_INTERFACES"),
/// 				PrivateServiceConnectConfig: &datafusion.InstanceNetworkConfigPrivateServiceConnectConfigArgs{
/// 					NetworkAttachment:    pscNetworkAttachment.ID().ToIDOutput().ToStringOutput(),
/// 					UnreachableCidrBlock: pulumi.String("192.168.0.0/25"),
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
/// resource "gcp_datafusion_instance" "psc_instance" {
///   name             = "psc-instance"
///   region           = "us-central1"
///   type             = "BASIC"
///   private_instance = true
///   network_config = {
///     connection_type = "PRIVATE_SERVICE_CONNECT_INTERFACES"
///     private_service_connect_config = {
///       network_attachment     = gcp_compute_networkattachment.psc.id
///       unreachable_cidr_block = "192.168.0.0/25"
///     }
///   }
/// }
/// resource "gcp_compute_network" "psc" {
///   name                    = "datafusion-psc-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "psc" {
///   name          = "datafusion-psc-subnet"
///   region        = "us-central1"
///   network       = gcp_compute_network.psc.id
///   ip_cidr_range = "10.0.0.0/16"
/// }
/// resource "gcp_compute_networkattachment" "psc" {
///   name                  = "datafusion-psc-attachment"
///   region                = "us-central1"
///   connection_preference = "ACCEPT_AUTOMATIC"
///   subnetworks           = [gcp_compute_subnetwork.psc.self_link]
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
/// import com.pulumi.gcp.compute.NetworkAttachment;
/// import com.pulumi.gcp.compute.NetworkAttachmentArgs;
/// import com.pulumi.gcp.datafusion.Instance;
/// import com.pulumi.gcp.datafusion.InstanceArgs;
/// import com.pulumi.gcp.datafusion.inputs.InstanceNetworkConfigArgs;
/// import com.pulumi.gcp.datafusion.inputs.InstanceNetworkConfigPrivateServiceConnectConfigArgs;
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
///         var psc = new Network("psc", NetworkArgs.builder()
///             .name("datafusion-psc-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var pscSubnetwork = new Subnetwork("pscSubnetwork", SubnetworkArgs.builder()
///             .name("datafusion-psc-subnet")
///             .region("us-central1")
///             .network(psc.id())
///             .ipCidrRange("10.0.0.0/16")
///             .build());
///
///         var pscNetworkAttachment = new NetworkAttachment("pscNetworkAttachment", NetworkAttachmentArgs.builder()
///             .name("datafusion-psc-attachment")
///             .region("us-central1")
///             .connectionPreference("ACCEPT_AUTOMATIC")
///             .subnetworks(pscSubnetwork.selfLink())
///             .build());
///
///         var pscInstance = new Instance("pscInstance", InstanceArgs.builder()
///             .name("psc-instance")
///             .region("us-central1")
///             .type("BASIC")
///             .privateInstance(true)
///             .networkConfig(InstanceNetworkConfigArgs.builder()
///                 .connectionType("PRIVATE_SERVICE_CONNECT_INTERFACES")
///                 .privateServiceConnectConfig(InstanceNetworkConfigPrivateServiceConnectConfigArgs.builder()
///                     .networkAttachment(pscNetworkAttachment.id())
///                     .unreachableCidrBlock("192.168.0.0/25")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pscInstance:
///     type: gcp:datafusion:Instance
///     name: psc_instance
///     properties:
///       name: psc-instance
///       region: us-central1
///       type: BASIC
///       privateInstance: true
///       networkConfig:
///         connectionType: PRIVATE_SERVICE_CONNECT_INTERFACES
///         privateServiceConnectConfig:
///           networkAttachment: ${pscNetworkAttachment.id}
///           unreachableCidrBlock: 192.168.0.0/25
///   psc:
///     type: gcp:compute:Network
///     properties:
///       name: datafusion-psc-network
///       autoCreateSubnetworks: false
///   pscSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: psc
///     properties:
///       name: datafusion-psc-subnet
///       region: us-central1
///       network: ${psc.id}
///       ipCidrRange: 10.0.0.0/16
///   pscNetworkAttachment:
///     type: gcp:compute:NetworkAttachment
///     name: psc
///     properties:
///       name: datafusion-psc-attachment
///       region: us-central1
///       connectionPreference: ACCEPT_AUTOMATIC
///       subnetworks:
///         - ${pscSubnetwork.selfLink}
/// ```
///
/// ### Data Fusion Instance Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "my-instance",
///     location: "us-central1",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "my-instance",
///     keyRing: keyRing.id,
/// });
/// const project = gcp.organizations.getProject({});
/// const cryptoKeyMemberCdfSa = new gcp.kms.CryptoKeyIAMMember("crypto_key_member_cdf_sa", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-datafusion.iam.gserviceaccount.com`),
/// });
/// const cryptoKeyMemberGcsSa = new gcp.kms.CryptoKeyIAMMember("crypto_key_member_gcs_sa", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gs-project-accounts.iam.gserviceaccount.com`),
/// }, {
///     dependsOn: [cryptoKeyMemberCdfSa],
/// });
/// const cmek = new gcp.datafusion.Instance("cmek", {
///     name: "my-instance",
///     region: "us-central1",
///     type: "BASIC",
///     cryptoKeyConfig: {
///         keyReference: cryptoKey.id,
///     },
/// }, {
///     dependsOn: [cryptoKeyMemberGcsSa],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="my-instance",
///     location="us-central1")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="my-instance",
///     key_ring=key_ring.id)
/// project = gcp.organizations.get_project()
/// crypto_key_member_cdf_sa = gcp.kms.CryptoKeyIAMMember("crypto_key_member_cdf_sa",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-datafusion.iam.gserviceaccount.com")
/// crypto_key_member_gcs_sa = gcp.kms.CryptoKeyIAMMember("crypto_key_member_gcs_sa",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gs-project-accounts.iam.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key_member_cdf_sa]))
/// cmek = gcp.datafusion.Instance("cmek",
///     name="my-instance",
///     region="us-central1",
///     type="BASIC",
///     crypto_key_config={
///         "key_reference": crypto_key.id,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key_member_gcs_sa]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "my-instance",
///         Location = "us-central1",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "my-instance",
///         KeyRing = keyRing.Id,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var cryptoKeyMemberCdfSa = new Gcp.Kms.CryptoKeyIAMMember("crypto_key_member_cdf_sa", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-datafusion.iam.gserviceaccount.com",
///     });
///
///     var cryptoKeyMemberGcsSa = new Gcp.Kms.CryptoKeyIAMMember("crypto_key_member_gcs_sa", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gs-project-accounts.iam.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKeyMemberCdfSa,
///         },
///     });
///
///     var cmek = new Gcp.DataFusion.Instance("cmek", new()
///     {
///         Name = "my-instance",
///         Region = "us-central1",
///         Type = "BASIC",
///         CryptoKeyConfig = new Gcp.DataFusion.Inputs.InstanceCryptoKeyConfigArgs
///         {
///             KeyReference = cryptoKey.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKeyMemberGcsSa,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("my-instance"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("my-instance"),
/// 			KeyRing: keyRing.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKeyMemberCdfSa, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key_member_cdf_sa", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-datafusion.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKeyMemberGcsSa, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key_member_gcs_sa", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gs-project-accounts.iam.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKeyMemberCdfSa,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafusion.NewInstance(ctx, "cmek", &datafusion.InstanceArgs{
/// 			Name:   pulumi.String("my-instance"),
/// 			Region: pulumi.String("us-central1"),
/// 			Type:   pulumi.String("BASIC"),
/// 			CryptoKeyConfig: &datafusion.InstanceCryptoKeyConfigArgs{
/// 				KeyReference: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKeyMemberGcsSa,
/// 		}))
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_datafusion_instance" "cmek" {
///   depends_on = [gcp_kms_cryptokeyiammember.crypto_key_member_gcs_sa]
///   name       = "my-instance"
///   region     = "us-central1"
///   type       = "BASIC"
///   crypto_key_config = {
///     key_reference = gcp_kms_cryptokey.crypto_key.id
///   }
/// }
/// resource "gcp_kms_cryptokey" "crypto_key" {
///   name     = "my-instance"
///   key_ring = gcp_kms_keyring.key_ring.id
/// }
/// resource "gcp_kms_keyring" "key_ring" {
///   name     = "my-instance"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokeyiammember" "crypto_key_member_cdf_sa" {
///   crypto_key_id = gcp_kms_cryptokey.crypto_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-datafusion.iam.gserviceaccount.com"
/// }
/// resource "gcp_kms_cryptokeyiammember" "crypto_key_member_gcs_sa" {
///   depends_on    = [gcp_kms_cryptokeyiammember.crypto_key_member_cdf_sa]
///   crypto_key_id = gcp_kms_cryptokey.crypto_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gs-project-accounts.iam.gserviceaccount.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.datafusion.Instance;
/// import com.pulumi.gcp.datafusion.InstanceArgs;
/// import com.pulumi.gcp.datafusion.inputs.InstanceCryptoKeyConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("my-instance")
///             .location("us-central1")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("my-instance")
///             .keyRing(keyRing.id())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cryptoKeyMemberCdfSa = new CryptoKeyIAMMember("cryptoKeyMemberCdfSa", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-datafusion.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var cryptoKeyMemberGcsSa = new CryptoKeyIAMMember("cryptoKeyMemberGcsSa", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gs-project-accounts.iam.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyMemberCdfSa)
///                 .build());
///
///         var cmek = new Instance("cmek", InstanceArgs.builder()
///             .name("my-instance")
///             .region("us-central1")
///             .type("BASIC")
///             .cryptoKeyConfig(InstanceCryptoKeyConfigArgs.builder()
///                 .keyReference(cryptoKey.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyMemberGcsSa)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cmek:
///     type: gcp:datafusion:Instance
///     properties:
///       name: my-instance
///       region: us-central1
///       type: BASIC
///       cryptoKeyConfig:
///         keyReference: ${cryptoKey.id}
///     options:
///       dependsOn:
///         - ${cryptoKeyMemberGcsSa}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: my-instance
///       keyRing: ${keyRing.id}
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: my-instance
///       location: us-central1
///   cryptoKeyMemberCdfSa:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key_member_cdf_sa
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-datafusion.iam.gserviceaccount.com
///   cryptoKeyMemberGcsSa:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key_member_gcs_sa
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gs-project-accounts.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${cryptoKeyMemberCdfSa}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Data Fusion Instance Enterprise
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const enterpriseInstance = new gcp.datafusion.Instance("enterprise_instance", {
///     name: "my-instance",
///     region: "us-central1",
///     type: "ENTERPRISE",
///     enableRbac: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// enterprise_instance = gcp.datafusion.Instance("enterprise_instance",
///     name="my-instance",
///     region="us-central1",
///     type="ENTERPRISE",
///     enable_rbac=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enterpriseInstance = new Gcp.DataFusion.Instance("enterprise_instance", new()
///     {
///         Name = "my-instance",
///         Region = "us-central1",
///         Type = "ENTERPRISE",
///         EnableRbac = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafusion.NewInstance(ctx, "enterprise_instance", &datafusion.InstanceArgs{
/// 			Name:       pulumi.String("my-instance"),
/// 			Region:     pulumi.String("us-central1"),
/// 			Type:       pulumi.String("ENTERPRISE"),
/// 			EnableRbac: pulumi.Bool(true),
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
/// resource "gcp_datafusion_instance" "enterprise_instance" {
///   name        = "my-instance"
///   region      = "us-central1"
///   type        = "ENTERPRISE"
///   enable_rbac = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datafusion.Instance;
/// import com.pulumi.gcp.datafusion.InstanceArgs;
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
///         var enterpriseInstance = new Instance("enterpriseInstance", InstanceArgs.builder()
///             .name("my-instance")
///             .region("us-central1")
///             .type("ENTERPRISE")
///             .enableRbac(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   enterpriseInstance:
///     type: gcp:datafusion:Instance
///     name: enterprise_instance
///     properties:
///       name: my-instance
///       region: us-central1
///       type: ENTERPRISE
///       enableRbac: true
/// ```
///
/// ### Data Fusion Instance Event
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const eventTopic = new gcp.pubsub.Topic("event", {name: "my-instance"});
/// const event = new gcp.datafusion.Instance("event", {
///     name: "my-instance",
///     region: "us-central1",
///     type: "BASIC",
///     eventPublishConfig: {
///         enabled: true,
///         topic: eventTopic.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// event_topic = gcp.pubsub.Topic("event", name="my-instance")
/// event = gcp.datafusion.Instance("event",
///     name="my-instance",
///     region="us-central1",
///     type="BASIC",
///     event_publish_config={
///         "enabled": True,
///         "topic": event_topic.id,
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
///     var eventTopic = new Gcp.PubSub.Topic("event", new()
///     {
///         Name = "my-instance",
///     });
///
///     var @event = new Gcp.DataFusion.Instance("event", new()
///     {
///         Name = "my-instance",
///         Region = "us-central1",
///         Type = "BASIC",
///         EventPublishConfig = new Gcp.DataFusion.Inputs.InstanceEventPublishConfigArgs
///         {
///             Enabled = true,
///             Topic = eventTopic.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		eventTopic, err := pubsub.NewTopic(ctx, "event", &pubsub.TopicArgs{
/// 			Name: pulumi.String("my-instance"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafusion.NewInstance(ctx, "event", &datafusion.InstanceArgs{
/// 			Name:   pulumi.String("my-instance"),
/// 			Region: pulumi.String("us-central1"),
/// 			Type:   pulumi.String("BASIC"),
/// 			EventPublishConfig: &datafusion.InstanceEventPublishConfigArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Topic:   eventTopic.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_datafusion_instance" "event" {
///   name   = "my-instance"
///   region = "us-central1"
///   type   = "BASIC"
///   event_publish_config = {
///     enabled = true
///     topic   = gcp_pubsub_topic.event.id
///   }
/// }
/// resource "gcp_pubsub_topic" "event" {
///   name = "my-instance"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.datafusion.Instance;
/// import com.pulumi.gcp.datafusion.InstanceArgs;
/// import com.pulumi.gcp.datafusion.inputs.InstanceEventPublishConfigArgs;
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
///         var eventTopic = new Topic("eventTopic", TopicArgs.builder()
///             .name("my-instance")
///             .build());
///
///         var event = new Instance("event", InstanceArgs.builder()
///             .name("my-instance")
///             .region("us-central1")
///             .type("BASIC")
///             .eventPublishConfig(InstanceEventPublishConfigArgs.builder()
///                 .enabled(true)
///                 .topic(eventTopic.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   event:
///     type: gcp:datafusion:Instance
///     properties:
///       name: my-instance
///       region: us-central1
///       type: BASIC
///       eventPublishConfig:
///         enabled: true
///         topic: ${eventTopic.id}
///   eventTopic:
///     type: gcp:pubsub:Topic
///     name: event
///     properties:
///       name: my-instance
/// ```
///
/// ### Data Fusion Instance Zone
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const zone = new gcp.datafusion.Instance("zone", {
///     name: "my-instance",
///     region: "us-central1",
///     zone: "us-central1-a",
///     type: "DEVELOPER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// zone = gcp.datafusion.Instance("zone",
///     name="my-instance",
///     region="us-central1",
///     zone="us-central1-a",
///     type="DEVELOPER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zone = new Gcp.DataFusion.Instance("zone", new()
///     {
///         Name = "my-instance",
///         Region = "us-central1",
///         Zone = "us-central1-a",
///         Type = "DEVELOPER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafusion.NewInstance(ctx, "zone", &datafusion.InstanceArgs{
/// 			Name:   pulumi.String("my-instance"),
/// 			Region: pulumi.String("us-central1"),
/// 			Zone:   pulumi.String("us-central1-a"),
/// 			Type:   pulumi.String("DEVELOPER"),
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
/// resource "gcp_datafusion_instance" "zone" {
///   name   = "my-instance"
///   region = "us-central1"
///   zone   = "us-central1-a"
///   type   = "DEVELOPER"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datafusion.Instance;
/// import com.pulumi.gcp.datafusion.InstanceArgs;
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
///         var zone = new Instance("zone", InstanceArgs.builder()
///             .name("my-instance")
///             .region("us-central1")
///             .zone("us-central1-a")
///             .type("DEVELOPER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   zone:
///     type: gcp:datafusion:Instance
///     properties:
///       name: my-instance
///       region: us-central1
///       zone: us-central1-a
///       type: DEVELOPER
/// ```
///
/// ### Data Fusion Instance Patch Revision
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataFusionInstancePatchRevision = new gcp.datafusion.Instance("data_fusion_instance_patch_revision", {
///     name: "my-instance",
///     region: "us-central1",
///     type: "BASIC",
///     version: "6.10.1",
///     patchRevision: "6.10.1.5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// data_fusion_instance_patch_revision = gcp.datafusion.Instance("data_fusion_instance_patch_revision",
///     name="my-instance",
///     region="us-central1",
///     type="BASIC",
///     version="6.10.1",
///     patch_revision="6.10.1.5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataFusionInstancePatchRevision = new Gcp.DataFusion.Instance("data_fusion_instance_patch_revision", new()
///     {
///         Name = "my-instance",
///         Region = "us-central1",
///         Type = "BASIC",
///         Version = "6.10.1",
///         PatchRevision = "6.10.1.5",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafusion.NewInstance(ctx, "data_fusion_instance_patch_revision", &datafusion.InstanceArgs{
/// 			Name:          pulumi.String("my-instance"),
/// 			Region:        pulumi.String("us-central1"),
/// 			Type:          pulumi.String("BASIC"),
/// 			Version:       pulumi.String("6.10.1"),
/// 			PatchRevision: pulumi.String("6.10.1.5"),
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
/// resource "gcp_datafusion_instance" "data_fusion_instance_patch_revision" {
///   name           = "my-instance"
///   region         = "us-central1"
///   type           = "BASIC"
///   version        = "6.10.1"
///   patch_revision = "6.10.1.5"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datafusion.Instance;
/// import com.pulumi.gcp.datafusion.InstanceArgs;
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
///         var dataFusionInstancePatchRevision = new Instance("dataFusionInstancePatchRevision", InstanceArgs.builder()
///             .name("my-instance")
///             .region("us-central1")
///             .type("BASIC")
///             .version("6.10.1")
///             .patchRevision("6.10.1.5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataFusionInstancePatchRevision:
///     type: gcp:datafusion:Instance
///     name: data_fusion_instance_patch_revision
///     properties:
///       name: my-instance
///       region: us-central1
///       type: BASIC
///       version: 6.10.1
///       patchRevision: 6.10.1.5
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// $ pulumi import gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy default {{region}}/{{name}}
/// $ pulumi import gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy default {{name}}
/// ```
class InstanceIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  /// The ID of the instance or a fully qualified identifier for the instance.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the Data Fusion instance.
  late final pulumi.Output<String> region;

  /// Creates a new [InstanceIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceIamPolicy]. {@macro pulumi_securitycenter_instance_iam_policy_instance_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceIamPolicy(
    String name, {
    InstanceIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [InstanceIamPolicy] resource's state with the given [name] and [id].
  static InstanceIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    InstanceIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [InstanceIamPolicy] resource.
  InstanceIamPolicy.reference(String urn)
    : super(
        'gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
  }
}

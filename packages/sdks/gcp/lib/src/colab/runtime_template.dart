import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_template_args.dart';
import 'runtime_template_data_persistent_disk_spec.dart';
import 'runtime_template_encryption_spec.dart';
import 'runtime_template_euc_config.dart';
import 'runtime_template_idle_shutdown_config.dart';
import 'runtime_template_machine_spec.dart';
import 'runtime_template_network_spec.dart';
import 'runtime_template_shielded_vm_config.dart';
import 'runtime_template_software_config.dart';
import 'runtime_template_state.dart';

/// 'A runtime template is a VM configuration that specifies a machine type and other characteristics of the VM,
/// as well as common settings such as the network and whether public internet access is enabled. When you create
/// a runtime, its VM is created according to the specifications of a runtime template.'
///
///
/// To get more information about RuntimeTemplate, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.notebookRuntimeTemplates)
/// * How-to Guides
/// * [Create a runtime template](https://cloud.google.com/colab/docs/create-runtime-template)
///
/// ## Example Usage
///
/// ### Colab Runtime Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const runtime_template = new gcp.colab.RuntimeTemplate("runtime-template", {
///     name: "colab-runtime-template",
///     displayName: "Runtime template basic",
///     location: "us-central1",
///     machineSpec: {
///         machineType: "e2-standard-4",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// runtime_template = gcp.colab.RuntimeTemplate("runtime-template",
///     name="colab-runtime-template",
///     display_name="Runtime template basic",
///     location="us-central1",
///     machine_spec={
///         "machine_type": "e2-standard-4",
///     },
///     network_spec={
///         "enable_internet_access": True,
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
///     var runtime_template = new Gcp.Colab.RuntimeTemplate("runtime-template", new()
///     {
///         Name = "colab-runtime-template",
///         DisplayName = "Runtime template basic",
///         Location = "us-central1",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "e2-standard-4",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := colab.NewRuntimeTemplate(ctx, "runtime-template", &colab.RuntimeTemplateArgs{
/// 			Name:        pulumi.String("colab-runtime-template"),
/// 			DisplayName: pulumi.String("Runtime template basic"),
/// 			Location:    pulumi.String("us-central1"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
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
/// resource "gcp_colab_runtimetemplate" "runtime-template" {
///   name         = "colab-runtime-template"
///   display_name = "Runtime template basic"
///   location     = "us-central1"
///   machine_spec = {
///     machine_type = "e2-standard-4"
///   }
///   network_spec = {
///     enable_internet_access = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
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
///         var runtime_template = new RuntimeTemplate("runtime-template", RuntimeTemplateArgs.builder()
///             .name("colab-runtime-template")
///             .displayName("Runtime template basic")
///             .location("us-central1")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("e2-standard-4")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   runtime-template:
///     type: gcp:colab:RuntimeTemplate
///     properties:
///       name: colab-runtime-template
///       displayName: Runtime template basic
///       location: us-central1
///       machineSpec:
///         machineType: e2-standard-4
///       networkSpec:
///         enableInternetAccess: true
/// ```
///
/// ### Colab Runtime Template No Name
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const runtime_template = new gcp.colab.RuntimeTemplate("runtime-template", {
///     displayName: "Runtime template no name",
///     location: "us-central1",
///     machineSpec: {
///         machineType: "e2-standard-4",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///     },
///     softwareConfig: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// runtime_template = gcp.colab.RuntimeTemplate("runtime-template",
///     display_name="Runtime template no name",
///     location="us-central1",
///     machine_spec={
///         "machine_type": "e2-standard-4",
///     },
///     network_spec={
///         "enable_internet_access": True,
///     },
///     software_config={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var runtime_template = new Gcp.Colab.RuntimeTemplate("runtime-template", new()
///     {
///         DisplayName = "Runtime template no name",
///         Location = "us-central1",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "e2-standard-4",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///         },
///         SoftwareConfig = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := colab.NewRuntimeTemplate(ctx, "runtime-template", &colab.RuntimeTemplateArgs{
/// 			DisplayName: pulumi.String("Runtime template no name"),
/// 			Location:    pulumi.String("us-central1"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
/// 			},
/// 			SoftwareConfig: &colab.RuntimeTemplateSoftwareConfigArgs{},
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
/// resource "gcp_colab_runtimetemplate" "runtime-template" {
///   display_name = "Runtime template no name"
///   location     = "us-central1"
///   machine_spec = {
///     machine_type = "e2-standard-4"
///   }
///   network_spec = {
///     enable_internet_access = true
///   }
///   software_config = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateSoftwareConfigArgs;
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
///         var runtime_template = new RuntimeTemplate("runtime-template", RuntimeTemplateArgs.builder()
///             .displayName("Runtime template no name")
///             .location("us-central1")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("e2-standard-4")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .build())
///             .softwareConfig(RuntimeTemplateSoftwareConfigArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   runtime-template:
///     type: gcp:colab:RuntimeTemplate
///     properties:
///       displayName: Runtime template no name
///       location: us-central1
///       machineSpec:
///         machineType: e2-standard-4
///       networkSpec:
///         enableInternetAccess: true
///       softwareConfig: {}
/// ```
///
/// ### Colab Runtime Template Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetwork = new gcp.compute.Network("my_network", {
///     name: "colab-test-default",
///     autoCreateSubnetworks: false,
/// });
/// const mySubnetwork = new gcp.compute.Subnetwork("my_subnetwork", {
///     name: "colab-test-default",
///     network: myNetwork.id,
///     region: "us-central1",
///     ipCidrRange: "10.0.1.0/24",
/// });
/// const runtime_template = new gcp.colab.RuntimeTemplate("runtime-template", {
///     name: "colab-runtime-template",
///     displayName: "Runtime template full",
///     location: "us-central1",
///     description: "Full runtime template",
///     machineSpec: {
///         machineType: "n1-standard-2",
///         acceleratorType: "NVIDIA_TESLA_T4",
///         acceleratorCount: 1,
///     },
///     dataPersistentDiskSpec: {
///         diskType: "pd-standard",
///         diskSizeGb: "200",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///         network: myNetwork.id,
///         subnetwork: mySubnetwork.id,
///     },
///     labels: {
///         k: "val",
///     },
///     idleShutdownConfig: {
///         idleTimeout: "3600s",
///     },
///     eucConfig: {
///         eucDisabled: false,
///     },
///     shieldedVmConfig: {
///         enableSecureBoot: false,
///     },
///     networkTags: [
///         "abc",
///         "def",
///     ],
///     encryptionSpec: {
///         kmsKeyName: "my-crypto-key",
///     },
///     softwareConfig: {
///         envs: [{
///             name: "TEST",
///             value: "1",
///         }],
///         postStartupScriptConfig: {
///             postStartupScript: "echo 'hello world'",
///             postStartupScriptUrl: "gs://colab-enterprise-pss-secure/secure_pss.sh",
///             postStartupScriptBehavior: "RUN_ONCE",
///         },
///         colabImage: {
///             releaseName: "py312",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.Network("my_network",
///     name="colab-test-default",
///     auto_create_subnetworks=False)
/// my_subnetwork = gcp.compute.Subnetwork("my_subnetwork",
///     name="colab-test-default",
///     network=my_network.id,
///     region="us-central1",
///     ip_cidr_range="10.0.1.0/24")
/// runtime_template = gcp.colab.RuntimeTemplate("runtime-template",
///     name="colab-runtime-template",
///     display_name="Runtime template full",
///     location="us-central1",
///     description="Full runtime template",
///     machine_spec={
///         "machine_type": "n1-standard-2",
///         "accelerator_type": "NVIDIA_TESLA_T4",
///         "accelerator_count": 1,
///     },
///     data_persistent_disk_spec={
///         "disk_type": "pd-standard",
///         "disk_size_gb": "200",
///     },
///     network_spec={
///         "enable_internet_access": True,
///         "network": my_network.id,
///         "subnetwork": my_subnetwork.id,
///     },
///     labels={
///         "k": "val",
///     },
///     idle_shutdown_config={
///         "idle_timeout": "3600s",
///     },
///     euc_config={
///         "euc_disabled": False,
///     },
///     shielded_vm_config={
///         "enable_secure_boot": False,
///     },
///     network_tags=[
///         "abc",
///         "def",
///     ],
///     encryption_spec={
///         "kms_key_name": "my-crypto-key",
///     },
///     software_config={
///         "envs": [{
///             "name": "TEST",
///             "value": "1",
///         }],
///         "post_startup_script_config": {
///             "post_startup_script": "echo 'hello world'",
///             "post_startup_script_url": "gs://colab-enterprise-pss-secure/secure_pss.sh",
///             "post_startup_script_behavior": "RUN_ONCE",
///         },
///         "colab_image": {
///             "release_name": "py312",
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
///     var myNetwork = new Gcp.Compute.Network("my_network", new()
///     {
///         Name = "colab-test-default",
///         AutoCreateSubnetworks = false,
///     });
///
///     var mySubnetwork = new Gcp.Compute.Subnetwork("my_subnetwork", new()
///     {
///         Name = "colab-test-default",
///         Network = myNetwork.Id,
///         Region = "us-central1",
///         IpCidrRange = "10.0.1.0/24",
///     });
///
///     var runtime_template = new Gcp.Colab.RuntimeTemplate("runtime-template", new()
///     {
///         Name = "colab-runtime-template",
///         DisplayName = "Runtime template full",
///         Location = "us-central1",
///         Description = "Full runtime template",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "n1-standard-2",
///             AcceleratorType = "NVIDIA_TESLA_T4",
///             AcceleratorCount = 1,
///         },
///         DataPersistentDiskSpec = new Gcp.Colab.Inputs.RuntimeTemplateDataPersistentDiskSpecArgs
///         {
///             DiskType = "pd-standard",
///             DiskSizeGb = "200",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///             Network = myNetwork.Id,
///             Subnetwork = mySubnetwork.Id,
///         },
///         Labels =
///         {
///             { "k", "val" },
///         },
///         IdleShutdownConfig = new Gcp.Colab.Inputs.RuntimeTemplateIdleShutdownConfigArgs
///         {
///             IdleTimeout = "3600s",
///         },
///         EucConfig = new Gcp.Colab.Inputs.RuntimeTemplateEucConfigArgs
///         {
///             EucDisabled = false,
///         },
///         ShieldedVmConfig = new Gcp.Colab.Inputs.RuntimeTemplateShieldedVmConfigArgs
///         {
///             EnableSecureBoot = false,
///         },
///         NetworkTags = new[]
///         {
///             "abc",
///             "def",
///         },
///         EncryptionSpec = new Gcp.Colab.Inputs.RuntimeTemplateEncryptionSpecArgs
///         {
///             KmsKeyName = "my-crypto-key",
///         },
///         SoftwareConfig = new Gcp.Colab.Inputs.RuntimeTemplateSoftwareConfigArgs
///         {
///             Envs = new[]
///             {
///                 new Gcp.Colab.Inputs.RuntimeTemplateSoftwareConfigEnvArgs
///                 {
///                     Name = "TEST",
///                     Value = "1",
///                 },
///             },
///             PostStartupScriptConfig = new Gcp.Colab.Inputs.RuntimeTemplateSoftwareConfigPostStartupScriptConfigArgs
///             {
///                 PostStartupScript = "echo 'hello world'",
///                 PostStartupScriptUrl = "gs://colab-enterprise-pss-secure/secure_pss.sh",
///                 PostStartupScriptBehavior = "RUN_ONCE",
///             },
///             ColabImage = new Gcp.Colab.Inputs.RuntimeTemplateSoftwareConfigColabImageArgs
///             {
///                 ReleaseName = "py312",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("colab-test-default"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySubnetwork, err := compute.NewSubnetwork(ctx, "my_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("colab-test-default"),
/// 			Network:     myNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Region:      pulumi.String("us-central1"),
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = colab.NewRuntimeTemplate(ctx, "runtime-template", &colab.RuntimeTemplateArgs{
/// 			Name:        pulumi.String("colab-runtime-template"),
/// 			DisplayName: pulumi.String("Runtime template full"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("Full runtime template"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType:      pulumi.String("n1-standard-2"),
/// 				AcceleratorType:  pulumi.String("NVIDIA_TESLA_T4"),
/// 				AcceleratorCount: pulumi.Int(1),
/// 			},
/// 			DataPersistentDiskSpec: &colab.RuntimeTemplateDataPersistentDiskSpecArgs{
/// 				DiskType:   pulumi.String("pd-standard"),
/// 				DiskSizeGb: pulumi.String("200"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
/// 				Network:              myNetwork.ID().ToIDOutput().ToStringOutput(),
/// 				Subnetwork:           mySubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"k": pulumi.String("val"),
/// 			},
/// 			IdleShutdownConfig: &colab.RuntimeTemplateIdleShutdownConfigArgs{
/// 				IdleTimeout: pulumi.String("3600s"),
/// 			},
/// 			EucConfig: &colab.RuntimeTemplateEucConfigArgs{
/// 				EucDisabled: pulumi.Bool(false),
/// 			},
/// 			ShieldedVmConfig: &colab.RuntimeTemplateShieldedVmConfigArgs{
/// 				EnableSecureBoot: pulumi.Bool(false),
/// 			},
/// 			NetworkTags: pulumi.StringArray{
/// 				pulumi.String("abc"),
/// 				pulumi.String("def"),
/// 			},
/// 			EncryptionSpec: &colab.RuntimeTemplateEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("my-crypto-key"),
/// 			},
/// 			SoftwareConfig: &colab.RuntimeTemplateSoftwareConfigArgs{
/// 				Envs: colab.RuntimeTemplateSoftwareConfigEnvArray{
/// 					&colab.RuntimeTemplateSoftwareConfigEnvArgs{
/// 						Name:  pulumi.String("TEST"),
/// 						Value: pulumi.String("1"),
/// 					},
/// 				},
/// 				PostStartupScriptConfig: &colab.RuntimeTemplateSoftwareConfigPostStartupScriptConfigArgs{
/// 					PostStartupScript:         pulumi.String("echo 'hello world'"),
/// 					PostStartupScriptUrl:      pulumi.String("gs://colab-enterprise-pss-secure/secure_pss.sh"),
/// 					PostStartupScriptBehavior: pulumi.String("RUN_ONCE"),
/// 				},
/// 				ColabImage: &colab.RuntimeTemplateSoftwareConfigColabImageArgs{
/// 					ReleaseName: pulumi.String("py312"),
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
///   name                    = "colab-test-default"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "my_subnetwork" {
///   name          = "colab-test-default"
///   network       = gcp_compute_network.my_network.id
///   region        = "us-central1"
///   ip_cidr_range = "10.0.1.0/24"
/// }
/// resource "gcp_colab_runtimetemplate" "runtime-template" {
///   name         = "colab-runtime-template"
///   display_name = "Runtime template full"
///   location     = "us-central1"
///   description  = "Full runtime template"
///   machine_spec = {
///     machine_type      = "n1-standard-2"
///     accelerator_type  = "NVIDIA_TESLA_T4"
///     accelerator_count = "1"
///   }
///   data_persistent_disk_spec = {
///     disk_type    = "pd-standard"
///     disk_size_gb = 200
///   }
///   network_spec = {
///     enable_internet_access = true
///     network                = gcp_compute_network.my_network.id
///     subnetwork             = gcp_compute_subnetwork.my_subnetwork.id
///   }
///   labels = {
///     "k" = "val"
///   }
///   idle_shutdown_config = {
///     idle_timeout = "3600s"
///   }
///   euc_config = {
///     euc_disabled = false
///   }
///   shielded_vm_config = {
///     enable_secure_boot = false
///   }
///   network_tags = ["abc", "def"]
///   encryption_spec = {
///     kms_key_name = "my-crypto-key"
///   }
///   software_config = {
///     envs = [{
///       "name"  = "TEST"
///       "value" = 1
///     }]
///     post_startup_script_config = {
///       post_startup_script          = "echo 'hello world'"
///       post_startup_script_url      = "gs://colab-enterprise-pss-secure/secure_pss.sh"
///       post_startup_script_behavior = "RUN_ONCE"
///     }
///     colab_image = {
///       release_name = "py312"
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateDataPersistentDiskSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateIdleShutdownConfigArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateEucConfigArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateShieldedVmConfigArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateEncryptionSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateSoftwareConfigArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateSoftwareConfigEnvArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateSoftwareConfigPostStartupScriptConfigArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateSoftwareConfigColabImageArgs;
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
///             .name("colab-test-default")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var mySubnetwork = new Subnetwork("mySubnetwork", SubnetworkArgs.builder()
///             .name("colab-test-default")
///             .network(myNetwork.id())
///             .region("us-central1")
///             .ipCidrRange("10.0.1.0/24")
///             .build());
///
///         var runtime_template = new RuntimeTemplate("runtime-template", RuntimeTemplateArgs.builder()
///             .name("colab-runtime-template")
///             .displayName("Runtime template full")
///             .location("us-central1")
///             .description("Full runtime template")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("n1-standard-2")
///                 .acceleratorType("NVIDIA_TESLA_T4")
///                 .acceleratorCount(1)
///                 .build())
///             .dataPersistentDiskSpec(RuntimeTemplateDataPersistentDiskSpecArgs.builder()
///                 .diskType("pd-standard")
///                 .diskSizeGb("200")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .network(myNetwork.id())
///                 .subnetwork(mySubnetwork.id())
///                 .build())
///             .labels(Map.of("k", "val"))
///             .idleShutdownConfig(RuntimeTemplateIdleShutdownConfigArgs.builder()
///                 .idleTimeout("3600s")
///                 .build())
///             .eucConfig(RuntimeTemplateEucConfigArgs.builder()
///                 .eucDisabled(false)
///                 .build())
///             .shieldedVmConfig(RuntimeTemplateShieldedVmConfigArgs.builder()
///                 .enableSecureBoot(false)
///                 .build())
///             .networkTags(
///                 "abc",
///                 "def")
///             .encryptionSpec(RuntimeTemplateEncryptionSpecArgs.builder()
///                 .kmsKeyName("my-crypto-key")
///                 .build())
///             .softwareConfig(RuntimeTemplateSoftwareConfigArgs.builder()
///                 .envs(RuntimeTemplateSoftwareConfigEnvArgs.builder()
///                     .name("TEST")
///                     .value("1")
///                     .build())
///                 .postStartupScriptConfig(RuntimeTemplateSoftwareConfigPostStartupScriptConfigArgs.builder()
///                     .postStartupScript("echo 'hello world'")
///                     .postStartupScriptUrl("gs://colab-enterprise-pss-secure/secure_pss.sh")
///                     .postStartupScriptBehavior("RUN_ONCE")
///                     .build())
///                 .colabImage(RuntimeTemplateSoftwareConfigColabImageArgs.builder()
///                     .releaseName("py312")
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
///       name: colab-test-default
///       autoCreateSubnetworks: false
///   mySubnetwork:
///     type: gcp:compute:Subnetwork
///     name: my_subnetwork
///     properties:
///       name: colab-test-default
///       network: ${myNetwork.id}
///       region: us-central1
///       ipCidrRange: 10.0.1.0/24
///   runtime-template:
///     type: gcp:colab:RuntimeTemplate
///     properties:
///       name: colab-runtime-template
///       displayName: Runtime template full
///       location: us-central1
///       description: Full runtime template
///       machineSpec:
///         machineType: n1-standard-2
///         acceleratorType: NVIDIA_TESLA_T4
///         acceleratorCount: '1'
///       dataPersistentDiskSpec:
///         diskType: pd-standard
///         diskSizeGb: 200
///       networkSpec:
///         enableInternetAccess: true
///         network: ${myNetwork.id}
///         subnetwork: ${mySubnetwork.id}
///       labels:
///         k: val
///       idleShutdownConfig:
///         idleTimeout: 3600s
///       eucConfig:
///         eucDisabled: false
///       shieldedVmConfig:
///         enableSecureBoot: false
///       networkTags:
///         - abc
///         - def
///       encryptionSpec:
///         kmsKeyName: my-crypto-key
///       softwareConfig:
///         envs:
///           - name: TEST
///             value: 1
///         postStartupScriptConfig:
///           postStartupScript: echo 'hello world'
///           postStartupScriptUrl: gs://colab-enterprise-pss-secure/secure_pss.sh
///           postStartupScriptBehavior: RUN_ONCE
///         colabImage:
///           releaseName: py312
/// ```
///
///
/// ## Import
///
/// RuntimeTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, RuntimeTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplate:RuntimeTemplate default projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{name}}
/// $ pulumi import gcp:colab/runtimeTemplate:RuntimeTemplate default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:colab/runtimeTemplate:RuntimeTemplate default {{location}}/{{name}}
/// ```
class RuntimeTemplate extends pulumi.CustomResource {
  /// The configuration for the data disk of the runtime.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeTemplateDataPersistentDiskSpec> dataPersistentDiskSpec;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the Runtime Template.
  late final pulumi.Output<String?> description;
  /// Required. The display name of the Runtime Template.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Customer-managed encryption key spec for the notebook runtime.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeTemplateEncryptionSpec?> encryptionSpec;
  /// EUC configuration of the NotebookRuntimeTemplate.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeTemplateEucConfig> eucConfig;
  /// Notebook Idle Shutdown configuration for the runtime.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeTemplateIdleShutdownConfig> idleShutdownConfig;
  /// Labels to identify and group the runtime template.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>> labels;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final pulumi.Output<String> location;
  /// 'The machine configuration of the runtime.'
  /// Structure is documented below.
  late final pulumi.Output<RuntimeTemplateMachineSpec> machineSpec;
  /// The resource name of the Runtime Template
  late final pulumi.Output<String> name;
  /// The network configuration for the runtime.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeTemplateNetworkSpec> networkSpec;
  /// Applies the given Compute Engine tags to the runtime.
  late final pulumi.Output<List<String>?> networkTags;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Runtime Shielded VM spec.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeTemplateShieldedVmConfig> shieldedVmConfig;
  /// The notebook software configuration of the notebook runtime.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeTemplateSoftwareConfig> softwareConfig;

  /// Creates a new [RuntimeTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeTemplate]. {@macro pulumi_colab_runtime_template_runtime_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeTemplate(
    String name, {
    RuntimeTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtimeTemplate:RuntimeTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    dataPersistentDiskSpec = registerOutput<RuntimeTemplateDataPersistentDiskSpec>('dataPersistentDiskSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateDataPersistentDiskSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<RuntimeTemplateEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eucConfig = registerOutput<RuntimeTemplateEucConfig>('eucConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateEucConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleShutdownConfig = registerOutput<RuntimeTemplateIdleShutdownConfig>('idleShutdownConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateIdleShutdownConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    machineSpec = registerOutput<RuntimeTemplateMachineSpec>('machineSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateMachineSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkSpec = registerOutput<RuntimeTemplateNetworkSpec>('networkSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateNetworkSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkTags = registerOutput<List<String>?>('networkTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    shieldedVmConfig = registerOutput<RuntimeTemplateShieldedVmConfig>('shieldedVmConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateShieldedVmConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    softwareConfig = registerOutput<RuntimeTemplateSoftwareConfig>('softwareConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [RuntimeTemplate] resource's state with the given [name] and [id].
  static RuntimeTemplate get(
    String name,
    pulumi.Input<String> id, {
    RuntimeTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RuntimeTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RuntimeTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtimeTemplate:RuntimeTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataPersistentDiskSpec = registerOutput<RuntimeTemplateDataPersistentDiskSpec>('dataPersistentDiskSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateDataPersistentDiskSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<RuntimeTemplateEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eucConfig = registerOutput<RuntimeTemplateEucConfig>('eucConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateEucConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleShutdownConfig = registerOutput<RuntimeTemplateIdleShutdownConfig>('idleShutdownConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateIdleShutdownConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    machineSpec = registerOutput<RuntimeTemplateMachineSpec>('machineSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateMachineSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkSpec = registerOutput<RuntimeTemplateNetworkSpec>('networkSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateNetworkSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkTags = registerOutput<List<String>?>('networkTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    shieldedVmConfig = registerOutput<RuntimeTemplateShieldedVmConfig>('shieldedVmConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateShieldedVmConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    softwareConfig = registerOutput<RuntimeTemplateSoftwareConfig>('softwareConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [RuntimeTemplate] resource.
  RuntimeTemplate.reference(String urn)
    : super(
        'gcp:colab/runtimeTemplate:RuntimeTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    dataPersistentDiskSpec = registerOutput<RuntimeTemplateDataPersistentDiskSpec>('dataPersistentDiskSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateDataPersistentDiskSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<RuntimeTemplateEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eucConfig = registerOutput<RuntimeTemplateEucConfig>('eucConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateEucConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    idleShutdownConfig = registerOutput<RuntimeTemplateIdleShutdownConfig>('idleShutdownConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateIdleShutdownConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    machineSpec = registerOutput<RuntimeTemplateMachineSpec>('machineSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateMachineSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkSpec = registerOutput<RuntimeTemplateNetworkSpec>('networkSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateNetworkSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkTags = registerOutput<List<String>?>('networkTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    shieldedVmConfig = registerOutput<RuntimeTemplateShieldedVmConfig>('shieldedVmConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateShieldedVmConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    softwareConfig = registerOutput<RuntimeTemplateSoftwareConfig>('softwareConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeTemplateSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

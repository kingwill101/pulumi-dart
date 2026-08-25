import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config.dart';
import 'runtime_args.dart';
import 'runtime_metric.dart';
import 'runtime_software_config.dart';
import 'runtime_state.dart';
import 'runtime_virtual_machine.dart';

/// &gt; **Warning:** `gcp.notebooks.Runtime` is deprecated and will be removed in a future major release. Use `gcp.workbench.Instance` instead.
///
/// A Cloud AI Platform Notebook runtime.
///
/// &gt; **Note:** Due to limitations of the Notebooks Runtime API, many fields
/// in this resource do not properly detect drift. These fields will also not
/// appear in state once imported.
///
///
/// To get more information about Runtime, see:
///
/// * [API documentation](https://cloud.google.com/ai-platform/notebooks/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/ai-platform-notebooks)
///
/// ## Example Usage
///
/// ### Notebook Runtime Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const runtime = new gcp.notebooks.Runtime("runtime", {
///     name: "notebooks-runtime",
///     location: "us-central1",
///     accessConfig: {
///         accessType: "SINGLE_USER",
///         runtimeOwner: "admin@hashicorptest.com",
///     },
///     virtualMachine: {
///         virtualMachineConfig: {
///             machineType: "n1-standard-4",
///             dataDisk: {
///                 initializeParams: {
///                     diskSizeGb: 100,
///                     diskType: "PD_STANDARD",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// runtime = gcp.notebooks.Runtime("runtime",
///     name="notebooks-runtime",
///     location="us-central1",
///     access_config={
///         "access_type": "SINGLE_USER",
///         "runtime_owner": "admin@hashicorptest.com",
///     },
///     virtual_machine={
///         "virtual_machine_config": {
///             "machine_type": "n1-standard-4",
///             "data_disk": {
///                 "initialize_params": {
///                     "disk_size_gb": 100,
///                     "disk_type": "PD_STANDARD",
///                 },
///             },
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
///     var runtime = new Gcp.Notebooks.Runtime("runtime", new()
///     {
///         Name = "notebooks-runtime",
///         Location = "us-central1",
///         AccessConfig = new Gcp.Notebooks.Inputs.RuntimeAccessConfigArgs
///         {
///             AccessType = "SINGLE_USER",
///             RuntimeOwner = "admin@hashicorptest.com",
///         },
///         VirtualMachine = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineArgs
///         {
///             VirtualMachineConfig = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigArgs
///             {
///                 MachineType = "n1-standard-4",
///                 DataDisk = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs
///                 {
///                     InitializeParams = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs
///                     {
///                         DiskSizeGb = 100,
///                         DiskType = "PD_STANDARD",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntime(ctx, "runtime", &notebooks.RuntimeArgs{
/// 			Name:     pulumi.String("notebooks-runtime"),
/// 			Location: pulumi.String("us-central1"),
/// 			AccessConfig: &notebooks.RuntimeAccessConfigArgs{
/// 				AccessType:   pulumi.String("SINGLE_USER"),
/// 				RuntimeOwner: pulumi.String("admin@hashicorptest.com"),
/// 			},
/// 			VirtualMachine: &notebooks.RuntimeVirtualMachineArgs{
/// 				VirtualMachineConfig: &notebooks.RuntimeVirtualMachineVirtualMachineConfigArgs{
/// 					MachineType: pulumi.String("n1-standard-4"),
/// 					DataDisk: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs{
/// 						InitializeParams: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs{
/// 							DiskSizeGb: pulumi.Int(100),
/// 							DiskType:   pulumi.String("PD_STANDARD"),
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
/// resource "gcp_notebooks_runtime" "runtime" {
///   name     = "notebooks-runtime"
///   location = "us-central1"
///   access_config = {
///     access_type   = "SINGLE_USER"
///     runtime_owner = "admin@hashicorptest.com"
///   }
///   virtual_machine = {
///     virtual_machine_config = {
///       machine_type = "n1-standard-4"
///       data_disk = {
///         initialize_params = {
///           disk_size_gb = "100"
///           disk_type    = "PD_STANDARD"
///         }
///       }
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
/// import com.pulumi.gcp.notebooks.Runtime;
/// import com.pulumi.gcp.notebooks.RuntimeArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeAccessConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs;
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
///         var runtime = new Runtime("runtime", RuntimeArgs.builder()
///             .name("notebooks-runtime")
///             .location("us-central1")
///             .accessConfig(RuntimeAccessConfigArgs.builder()
///                 .accessType("SINGLE_USER")
///                 .runtimeOwner("admin@hashicorptest.com")
///                 .build())
///             .virtualMachine(RuntimeVirtualMachineArgs.builder()
///                 .virtualMachineConfig(RuntimeVirtualMachineVirtualMachineConfigArgs.builder()
///                     .machineType("n1-standard-4")
///                     .dataDisk(RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs.builder()
///                         .initializeParams(RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs.builder()
///                             .diskSizeGb(100)
///                             .diskType("PD_STANDARD")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   runtime:
///     type: gcp:notebooks:Runtime
///     properties:
///       name: notebooks-runtime
///       location: us-central1
///       accessConfig:
///         accessType: SINGLE_USER
///         runtimeOwner: admin@hashicorptest.com
///       virtualMachine:
///         virtualMachineConfig:
///           machineType: n1-standard-4
///           dataDisk:
///             initializeParams:
///               diskSizeGb: '100'
///               diskType: PD_STANDARD
/// ```
///
/// ### Notebook Runtime Basic Gpu
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const runtimeGpu = new gcp.notebooks.Runtime("runtime_gpu", {
///     name: "notebooks-runtime-gpu",
///     location: "us-central1",
///     accessConfig: {
///         accessType: "SINGLE_USER",
///         runtimeOwner: "admin@hashicorptest.com",
///     },
///     softwareConfig: {
///         installGpuDriver: true,
///     },
///     virtualMachine: {
///         virtualMachineConfig: {
///             machineType: "n1-standard-4",
///             dataDisk: {
///                 initializeParams: {
///                     diskSizeGb: 100,
///                     diskType: "PD_STANDARD",
///                 },
///             },
///             acceleratorConfig: {
///                 coreCount: 1,
///                 type: "NVIDIA_TESLA_V100",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// runtime_gpu = gcp.notebooks.Runtime("runtime_gpu",
///     name="notebooks-runtime-gpu",
///     location="us-central1",
///     access_config={
///         "access_type": "SINGLE_USER",
///         "runtime_owner": "admin@hashicorptest.com",
///     },
///     software_config={
///         "install_gpu_driver": True,
///     },
///     virtual_machine={
///         "virtual_machine_config": {
///             "machine_type": "n1-standard-4",
///             "data_disk": {
///                 "initialize_params": {
///                     "disk_size_gb": 100,
///                     "disk_type": "PD_STANDARD",
///                 },
///             },
///             "accelerator_config": {
///                 "core_count": 1,
///                 "type": "NVIDIA_TESLA_V100",
///             },
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
///     var runtimeGpu = new Gcp.Notebooks.Runtime("runtime_gpu", new()
///     {
///         Name = "notebooks-runtime-gpu",
///         Location = "us-central1",
///         AccessConfig = new Gcp.Notebooks.Inputs.RuntimeAccessConfigArgs
///         {
///             AccessType = "SINGLE_USER",
///             RuntimeOwner = "admin@hashicorptest.com",
///         },
///         SoftwareConfig = new Gcp.Notebooks.Inputs.RuntimeSoftwareConfigArgs
///         {
///             InstallGpuDriver = true,
///         },
///         VirtualMachine = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineArgs
///         {
///             VirtualMachineConfig = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigArgs
///             {
///                 MachineType = "n1-standard-4",
///                 DataDisk = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs
///                 {
///                     InitializeParams = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs
///                     {
///                         DiskSizeGb = 100,
///                         DiskType = "PD_STANDARD",
///                     },
///                 },
///                 AcceleratorConfig = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfigArgs
///                 {
///                     CoreCount = 1,
///                     Type = "NVIDIA_TESLA_V100",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntime(ctx, "runtime_gpu", &notebooks.RuntimeArgs{
/// 			Name:     pulumi.String("notebooks-runtime-gpu"),
/// 			Location: pulumi.String("us-central1"),
/// 			AccessConfig: &notebooks.RuntimeAccessConfigArgs{
/// 				AccessType:   pulumi.String("SINGLE_USER"),
/// 				RuntimeOwner: pulumi.String("admin@hashicorptest.com"),
/// 			},
/// 			SoftwareConfig: &notebooks.RuntimeSoftwareConfigArgs{
/// 				InstallGpuDriver: pulumi.Bool(true),
/// 			},
/// 			VirtualMachine: &notebooks.RuntimeVirtualMachineArgs{
/// 				VirtualMachineConfig: &notebooks.RuntimeVirtualMachineVirtualMachineConfigArgs{
/// 					MachineType: pulumi.String("n1-standard-4"),
/// 					DataDisk: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs{
/// 						InitializeParams: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs{
/// 							DiskSizeGb: pulumi.Int(100),
/// 							DiskType:   pulumi.String("PD_STANDARD"),
/// 						},
/// 					},
/// 					AcceleratorConfig: &notebooks.RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfigArgs{
/// 						CoreCount: pulumi.Int(1),
/// 						Type:      pulumi.String("NVIDIA_TESLA_V100"),
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
/// resource "gcp_notebooks_runtime" "runtime_gpu" {
///   name     = "notebooks-runtime-gpu"
///   location = "us-central1"
///   access_config = {
///     access_type   = "SINGLE_USER"
///     runtime_owner = "admin@hashicorptest.com"
///   }
///   software_config = {
///     install_gpu_driver = true
///   }
///   virtual_machine = {
///     virtual_machine_config = {
///       machine_type = "n1-standard-4"
///       data_disk = {
///         initialize_params = {
///           disk_size_gb = "100"
///           disk_type    = "PD_STANDARD"
///         }
///       }
///       accelerator_config = {
///         core_count = "1"
///         type       = "NVIDIA_TESLA_V100"
///       }
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
/// import com.pulumi.gcp.notebooks.Runtime;
/// import com.pulumi.gcp.notebooks.RuntimeArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeAccessConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeSoftwareConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfigArgs;
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
///         var runtimeGpu = new Runtime("runtimeGpu", RuntimeArgs.builder()
///             .name("notebooks-runtime-gpu")
///             .location("us-central1")
///             .accessConfig(RuntimeAccessConfigArgs.builder()
///                 .accessType("SINGLE_USER")
///                 .runtimeOwner("admin@hashicorptest.com")
///                 .build())
///             .softwareConfig(RuntimeSoftwareConfigArgs.builder()
///                 .installGpuDriver(true)
///                 .build())
///             .virtualMachine(RuntimeVirtualMachineArgs.builder()
///                 .virtualMachineConfig(RuntimeVirtualMachineVirtualMachineConfigArgs.builder()
///                     .machineType("n1-standard-4")
///                     .dataDisk(RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs.builder()
///                         .initializeParams(RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs.builder()
///                             .diskSizeGb(100)
///                             .diskType("PD_STANDARD")
///                             .build())
///                         .build())
///                     .acceleratorConfig(RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfigArgs.builder()
///                         .coreCount(1)
///                         .type("NVIDIA_TESLA_V100")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   runtimeGpu:
///     type: gcp:notebooks:Runtime
///     name: runtime_gpu
///     properties:
///       name: notebooks-runtime-gpu
///       location: us-central1
///       accessConfig:
///         accessType: SINGLE_USER
///         runtimeOwner: admin@hashicorptest.com
///       softwareConfig:
///         installGpuDriver: true
///       virtualMachine:
///         virtualMachineConfig:
///           machineType: n1-standard-4
///           dataDisk:
///             initializeParams:
///               diskSizeGb: '100'
///               diskType: PD_STANDARD
///           acceleratorConfig:
///             coreCount: '1'
///             type: NVIDIA_TESLA_V100
/// ```
///
/// ### Notebook Runtime Basic Container
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const runtimeContainer = new gcp.notebooks.Runtime("runtime_container", {
///     name: "notebooks-runtime-container",
///     location: "us-central1",
///     accessConfig: {
///         accessType: "SINGLE_USER",
///         runtimeOwner: "admin@hashicorptest.com",
///     },
///     virtualMachine: {
///         virtualMachineConfig: {
///             machineType: "n1-standard-4",
///             dataDisk: {
///                 initializeParams: {
///                     diskSizeGb: 100,
///                     diskType: "PD_STANDARD",
///                 },
///             },
///             containerImages: [
///                 {
///                     repository: "gcr.io/deeplearning-platform-release/base-cpu",
///                     tag: "latest",
///                 },
///                 {
///                     repository: "gcr.io/deeplearning-platform-release/beam-notebooks",
///                     tag: "latest",
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// runtime_container = gcp.notebooks.Runtime("runtime_container",
///     name="notebooks-runtime-container",
///     location="us-central1",
///     access_config={
///         "access_type": "SINGLE_USER",
///         "runtime_owner": "admin@hashicorptest.com",
///     },
///     virtual_machine={
///         "virtual_machine_config": {
///             "machine_type": "n1-standard-4",
///             "data_disk": {
///                 "initialize_params": {
///                     "disk_size_gb": 100,
///                     "disk_type": "PD_STANDARD",
///                 },
///             },
///             "container_images": [
///                 {
///                     "repository": "gcr.io/deeplearning-platform-release/base-cpu",
///                     "tag": "latest",
///                 },
///                 {
///                     "repository": "gcr.io/deeplearning-platform-release/beam-notebooks",
///                     "tag": "latest",
///                 },
///             ],
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
///     var runtimeContainer = new Gcp.Notebooks.Runtime("runtime_container", new()
///     {
///         Name = "notebooks-runtime-container",
///         Location = "us-central1",
///         AccessConfig = new Gcp.Notebooks.Inputs.RuntimeAccessConfigArgs
///         {
///             AccessType = "SINGLE_USER",
///             RuntimeOwner = "admin@hashicorptest.com",
///         },
///         VirtualMachine = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineArgs
///         {
///             VirtualMachineConfig = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigArgs
///             {
///                 MachineType = "n1-standard-4",
///                 DataDisk = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs
///                 {
///                     InitializeParams = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs
///                     {
///                         DiskSizeGb = 100,
///                         DiskType = "PD_STANDARD",
///                     },
///                 },
///                 ContainerImages = new[]
///                 {
///                     new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigContainerImageArgs
///                     {
///                         Repository = "gcr.io/deeplearning-platform-release/base-cpu",
///                         Tag = "latest",
///                     },
///                     new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigContainerImageArgs
///                     {
///                         Repository = "gcr.io/deeplearning-platform-release/beam-notebooks",
///                         Tag = "latest",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntime(ctx, "runtime_container", &notebooks.RuntimeArgs{
/// 			Name:     pulumi.String("notebooks-runtime-container"),
/// 			Location: pulumi.String("us-central1"),
/// 			AccessConfig: &notebooks.RuntimeAccessConfigArgs{
/// 				AccessType:   pulumi.String("SINGLE_USER"),
/// 				RuntimeOwner: pulumi.String("admin@hashicorptest.com"),
/// 			},
/// 			VirtualMachine: &notebooks.RuntimeVirtualMachineArgs{
/// 				VirtualMachineConfig: &notebooks.RuntimeVirtualMachineVirtualMachineConfigArgs{
/// 					MachineType: pulumi.String("n1-standard-4"),
/// 					DataDisk: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs{
/// 						InitializeParams: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs{
/// 							DiskSizeGb: pulumi.Int(100),
/// 							DiskType:   pulumi.String("PD_STANDARD"),
/// 						},
/// 					},
/// 					ContainerImages: notebooks.RuntimeVirtualMachineVirtualMachineConfigContainerImageArray{
/// 						&notebooks.RuntimeVirtualMachineVirtualMachineConfigContainerImageArgs{
/// 							Repository: pulumi.String("gcr.io/deeplearning-platform-release/base-cpu"),
/// 							Tag:        pulumi.String("latest"),
/// 						},
/// 						&notebooks.RuntimeVirtualMachineVirtualMachineConfigContainerImageArgs{
/// 							Repository: pulumi.String("gcr.io/deeplearning-platform-release/beam-notebooks"),
/// 							Tag:        pulumi.String("latest"),
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
/// resource "gcp_notebooks_runtime" "runtime_container" {
///   name     = "notebooks-runtime-container"
///   location = "us-central1"
///   access_config = {
///     access_type   = "SINGLE_USER"
///     runtime_owner = "admin@hashicorptest.com"
///   }
///   virtual_machine = {
///     virtual_machine_config = {
///       machine_type = "n1-standard-4"
///       data_disk = {
///         initialize_params = {
///           disk_size_gb = "100"
///           disk_type    = "PD_STANDARD"
///         }
///       }
///       container_images = [{
///         "repository" = "gcr.io/deeplearning-platform-release/base-cpu"
///         "tag"        = "latest"
///         }, {
///         "repository" = "gcr.io/deeplearning-platform-release/beam-notebooks"
///         "tag"        = "latest"
///       }]
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
/// import com.pulumi.gcp.notebooks.Runtime;
/// import com.pulumi.gcp.notebooks.RuntimeArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeAccessConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigContainerImageArgs;
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
///         var runtimeContainer = new Runtime("runtimeContainer", RuntimeArgs.builder()
///             .name("notebooks-runtime-container")
///             .location("us-central1")
///             .accessConfig(RuntimeAccessConfigArgs.builder()
///                 .accessType("SINGLE_USER")
///                 .runtimeOwner("admin@hashicorptest.com")
///                 .build())
///             .virtualMachine(RuntimeVirtualMachineArgs.builder()
///                 .virtualMachineConfig(RuntimeVirtualMachineVirtualMachineConfigArgs.builder()
///                     .machineType("n1-standard-4")
///                     .dataDisk(RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs.builder()
///                         .initializeParams(RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs.builder()
///                             .diskSizeGb(100)
///                             .diskType("PD_STANDARD")
///                             .build())
///                         .build())
///                     .containerImages(
///                         RuntimeVirtualMachineVirtualMachineConfigContainerImageArgs.builder()
///                             .repository("gcr.io/deeplearning-platform-release/base-cpu")
///                             .tag("latest")
///                             .build(),
///                         RuntimeVirtualMachineVirtualMachineConfigContainerImageArgs.builder()
///                             .repository("gcr.io/deeplearning-platform-release/beam-notebooks")
///                             .tag("latest")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   runtimeContainer:
///     type: gcp:notebooks:Runtime
///     name: runtime_container
///     properties:
///       name: notebooks-runtime-container
///       location: us-central1
///       accessConfig:
///         accessType: SINGLE_USER
///         runtimeOwner: admin@hashicorptest.com
///       virtualMachine:
///         virtualMachineConfig:
///           machineType: n1-standard-4
///           dataDisk:
///             initializeParams:
///               diskSizeGb: '100'
///               diskType: PD_STANDARD
///           containerImages:
///             - repository: gcr.io/deeplearning-platform-release/base-cpu
///               tag: latest
///             - repository: gcr.io/deeplearning-platform-release/beam-notebooks
///               tag: latest
/// ```
///
/// ### Notebook Runtime Kernels
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const runtimeContainer = new gcp.notebooks.Runtime("runtime_container", {
///     name: "notebooks-runtime-kernel",
///     location: "us-central1",
///     accessConfig: {
///         accessType: "SINGLE_USER",
///         runtimeOwner: "admin@hashicorptest.com",
///     },
///     softwareConfig: {
///         kernels: [{
///             repository: "gcr.io/deeplearning-platform-release/base-cpu",
///             tag: "latest",
///         }],
///     },
///     virtualMachine: {
///         virtualMachineConfig: {
///             machineType: "n1-standard-4",
///             dataDisk: {
///                 initializeParams: {
///                     diskSizeGb: 100,
///                     diskType: "PD_STANDARD",
///                 },
///             },
///         },
///     },
///     labels: {
///         k: "val",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// runtime_container = gcp.notebooks.Runtime("runtime_container",
///     name="notebooks-runtime-kernel",
///     location="us-central1",
///     access_config={
///         "access_type": "SINGLE_USER",
///         "runtime_owner": "admin@hashicorptest.com",
///     },
///     software_config={
///         "kernels": [{
///             "repository": "gcr.io/deeplearning-platform-release/base-cpu",
///             "tag": "latest",
///         }],
///     },
///     virtual_machine={
///         "virtual_machine_config": {
///             "machine_type": "n1-standard-4",
///             "data_disk": {
///                 "initialize_params": {
///                     "disk_size_gb": 100,
///                     "disk_type": "PD_STANDARD",
///                 },
///             },
///         },
///     },
///     labels={
///         "k": "val",
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
///     var runtimeContainer = new Gcp.Notebooks.Runtime("runtime_container", new()
///     {
///         Name = "notebooks-runtime-kernel",
///         Location = "us-central1",
///         AccessConfig = new Gcp.Notebooks.Inputs.RuntimeAccessConfigArgs
///         {
///             AccessType = "SINGLE_USER",
///             RuntimeOwner = "admin@hashicorptest.com",
///         },
///         SoftwareConfig = new Gcp.Notebooks.Inputs.RuntimeSoftwareConfigArgs
///         {
///             Kernels = new[]
///             {
///                 new Gcp.Notebooks.Inputs.RuntimeSoftwareConfigKernelArgs
///                 {
///                     Repository = "gcr.io/deeplearning-platform-release/base-cpu",
///                     Tag = "latest",
///                 },
///             },
///         },
///         VirtualMachine = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineArgs
///         {
///             VirtualMachineConfig = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigArgs
///             {
///                 MachineType = "n1-standard-4",
///                 DataDisk = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs
///                 {
///                     InitializeParams = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs
///                     {
///                         DiskSizeGb = 100,
///                         DiskType = "PD_STANDARD",
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "k", "val" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntime(ctx, "runtime_container", &notebooks.RuntimeArgs{
/// 			Name:     pulumi.String("notebooks-runtime-kernel"),
/// 			Location: pulumi.String("us-central1"),
/// 			AccessConfig: &notebooks.RuntimeAccessConfigArgs{
/// 				AccessType:   pulumi.String("SINGLE_USER"),
/// 				RuntimeOwner: pulumi.String("admin@hashicorptest.com"),
/// 			},
/// 			SoftwareConfig: &notebooks.RuntimeSoftwareConfigArgs{
/// 				Kernels: notebooks.RuntimeSoftwareConfigKernelArray{
/// 					&notebooks.RuntimeSoftwareConfigKernelArgs{
/// 						Repository: pulumi.String("gcr.io/deeplearning-platform-release/base-cpu"),
/// 						Tag:        pulumi.String("latest"),
/// 					},
/// 				},
/// 			},
/// 			VirtualMachine: &notebooks.RuntimeVirtualMachineArgs{
/// 				VirtualMachineConfig: &notebooks.RuntimeVirtualMachineVirtualMachineConfigArgs{
/// 					MachineType: pulumi.String("n1-standard-4"),
/// 					DataDisk: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs{
/// 						InitializeParams: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs{
/// 							DiskSizeGb: pulumi.Int(100),
/// 							DiskType:   pulumi.String("PD_STANDARD"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"k": pulumi.String("val"),
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
/// resource "gcp_notebooks_runtime" "runtime_container" {
///   name     = "notebooks-runtime-kernel"
///   location = "us-central1"
///   access_config = {
///     access_type   = "SINGLE_USER"
///     runtime_owner = "admin@hashicorptest.com"
///   }
///   software_config = {
///     kernels = [{
///       "repository" = "gcr.io/deeplearning-platform-release/base-cpu"
///       "tag"        = "latest"
///     }]
///   }
///   virtual_machine = {
///     virtual_machine_config = {
///       machine_type = "n1-standard-4"
///       data_disk = {
///         initialize_params = {
///           disk_size_gb = "100"
///           disk_type    = "PD_STANDARD"
///         }
///       }
///     }
///   }
///   labels = {
///     "k" = "val"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.notebooks.Runtime;
/// import com.pulumi.gcp.notebooks.RuntimeArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeAccessConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeSoftwareConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeSoftwareConfigKernelArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs;
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
///         var runtimeContainer = new Runtime("runtimeContainer", RuntimeArgs.builder()
///             .name("notebooks-runtime-kernel")
///             .location("us-central1")
///             .accessConfig(RuntimeAccessConfigArgs.builder()
///                 .accessType("SINGLE_USER")
///                 .runtimeOwner("admin@hashicorptest.com")
///                 .build())
///             .softwareConfig(RuntimeSoftwareConfigArgs.builder()
///                 .kernels(RuntimeSoftwareConfigKernelArgs.builder()
///                     .repository("gcr.io/deeplearning-platform-release/base-cpu")
///                     .tag("latest")
///                     .build())
///                 .build())
///             .virtualMachine(RuntimeVirtualMachineArgs.builder()
///                 .virtualMachineConfig(RuntimeVirtualMachineVirtualMachineConfigArgs.builder()
///                     .machineType("n1-standard-4")
///                     .dataDisk(RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs.builder()
///                         .initializeParams(RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs.builder()
///                             .diskSizeGb(100)
///                             .diskType("PD_STANDARD")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .labels(Map.of("k", "val"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   runtimeContainer:
///     type: gcp:notebooks:Runtime
///     name: runtime_container
///     properties:
///       name: notebooks-runtime-kernel
///       location: us-central1
///       accessConfig:
///         accessType: SINGLE_USER
///         runtimeOwner: admin@hashicorptest.com
///       softwareConfig:
///         kernels:
///           - repository: gcr.io/deeplearning-platform-release/base-cpu
///             tag: latest
///       virtualMachine:
///         virtualMachineConfig:
///           machineType: n1-standard-4
///           dataDisk:
///             initializeParams:
///               diskSizeGb: '100'
///               diskType: PD_STANDARD
///       labels:
///         k: val
/// ```
///
/// ### Notebook Runtime Script
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const runtimeContainer = new gcp.notebooks.Runtime("runtime_container", {
///     name: "notebooks-runtime-script",
///     location: "us-central1",
///     accessConfig: {
///         accessType: "SINGLE_USER",
///         runtimeOwner: "admin@hashicorptest.com",
///     },
///     softwareConfig: {
///         postStartupScriptBehavior: "RUN_EVERY_START",
///     },
///     virtualMachine: {
///         virtualMachineConfig: {
///             machineType: "n1-standard-4",
///             dataDisk: {
///                 initializeParams: {
///                     diskSizeGb: 100,
///                     diskType: "PD_STANDARD",
///                 },
///             },
///         },
///     },
///     labels: {
///         k: "val",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// runtime_container = gcp.notebooks.Runtime("runtime_container",
///     name="notebooks-runtime-script",
///     location="us-central1",
///     access_config={
///         "access_type": "SINGLE_USER",
///         "runtime_owner": "admin@hashicorptest.com",
///     },
///     software_config={
///         "post_startup_script_behavior": "RUN_EVERY_START",
///     },
///     virtual_machine={
///         "virtual_machine_config": {
///             "machine_type": "n1-standard-4",
///             "data_disk": {
///                 "initialize_params": {
///                     "disk_size_gb": 100,
///                     "disk_type": "PD_STANDARD",
///                 },
///             },
///         },
///     },
///     labels={
///         "k": "val",
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
///     var runtimeContainer = new Gcp.Notebooks.Runtime("runtime_container", new()
///     {
///         Name = "notebooks-runtime-script",
///         Location = "us-central1",
///         AccessConfig = new Gcp.Notebooks.Inputs.RuntimeAccessConfigArgs
///         {
///             AccessType = "SINGLE_USER",
///             RuntimeOwner = "admin@hashicorptest.com",
///         },
///         SoftwareConfig = new Gcp.Notebooks.Inputs.RuntimeSoftwareConfigArgs
///         {
///             PostStartupScriptBehavior = "RUN_EVERY_START",
///         },
///         VirtualMachine = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineArgs
///         {
///             VirtualMachineConfig = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigArgs
///             {
///                 MachineType = "n1-standard-4",
///                 DataDisk = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs
///                 {
///                     InitializeParams = new Gcp.Notebooks.Inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs
///                     {
///                         DiskSizeGb = 100,
///                         DiskType = "PD_STANDARD",
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "k", "val" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/notebooks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notebooks.NewRuntime(ctx, "runtime_container", &notebooks.RuntimeArgs{
/// 			Name:     pulumi.String("notebooks-runtime-script"),
/// 			Location: pulumi.String("us-central1"),
/// 			AccessConfig: &notebooks.RuntimeAccessConfigArgs{
/// 				AccessType:   pulumi.String("SINGLE_USER"),
/// 				RuntimeOwner: pulumi.String("admin@hashicorptest.com"),
/// 			},
/// 			SoftwareConfig: &notebooks.RuntimeSoftwareConfigArgs{
/// 				PostStartupScriptBehavior: pulumi.String("RUN_EVERY_START"),
/// 			},
/// 			VirtualMachine: &notebooks.RuntimeVirtualMachineArgs{
/// 				VirtualMachineConfig: &notebooks.RuntimeVirtualMachineVirtualMachineConfigArgs{
/// 					MachineType: pulumi.String("n1-standard-4"),
/// 					DataDisk: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs{
/// 						InitializeParams: &notebooks.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs{
/// 							DiskSizeGb: pulumi.Int(100),
/// 							DiskType:   pulumi.String("PD_STANDARD"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"k": pulumi.String("val"),
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
/// resource "gcp_notebooks_runtime" "runtime_container" {
///   name     = "notebooks-runtime-script"
///   location = "us-central1"
///   access_config = {
///     access_type   = "SINGLE_USER"
///     runtime_owner = "admin@hashicorptest.com"
///   }
///   software_config = {
///     post_startup_script_behavior = "RUN_EVERY_START"
///   }
///   virtual_machine = {
///     virtual_machine_config = {
///       machine_type = "n1-standard-4"
///       data_disk = {
///         initialize_params = {
///           disk_size_gb = "100"
///           disk_type    = "PD_STANDARD"
///         }
///       }
///     }
///   }
///   labels = {
///     "k" = "val"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.notebooks.Runtime;
/// import com.pulumi.gcp.notebooks.RuntimeArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeAccessConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeSoftwareConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs;
/// import com.pulumi.gcp.notebooks.inputs.RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs;
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
///         var runtimeContainer = new Runtime("runtimeContainer", RuntimeArgs.builder()
///             .name("notebooks-runtime-script")
///             .location("us-central1")
///             .accessConfig(RuntimeAccessConfigArgs.builder()
///                 .accessType("SINGLE_USER")
///                 .runtimeOwner("admin@hashicorptest.com")
///                 .build())
///             .softwareConfig(RuntimeSoftwareConfigArgs.builder()
///                 .postStartupScriptBehavior("RUN_EVERY_START")
///                 .build())
///             .virtualMachine(RuntimeVirtualMachineArgs.builder()
///                 .virtualMachineConfig(RuntimeVirtualMachineVirtualMachineConfigArgs.builder()
///                     .machineType("n1-standard-4")
///                     .dataDisk(RuntimeVirtualMachineVirtualMachineConfigDataDiskArgs.builder()
///                         .initializeParams(RuntimeVirtualMachineVirtualMachineConfigDataDiskInitializeParamsArgs.builder()
///                             .diskSizeGb(100)
///                             .diskType("PD_STANDARD")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .labels(Map.of("k", "val"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   runtimeContainer:
///     type: gcp:notebooks:Runtime
///     name: runtime_container
///     properties:
///       name: notebooks-runtime-script
///       location: us-central1
///       accessConfig:
///         accessType: SINGLE_USER
///         runtimeOwner: admin@hashicorptest.com
///       softwareConfig:
///         postStartupScriptBehavior: RUN_EVERY_START
///       virtualMachine:
///         virtualMachineConfig:
///           machineType: n1-standard-4
///           dataDisk:
///             initializeParams:
///               diskSizeGb: '100'
///               diskType: PD_STANDARD
///       labels:
///         k: val
/// ```
///
///
/// ## Import
///
/// Runtime can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/runtimes/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Runtime can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:notebooks/runtime:Runtime default projects/{{project}}/locations/{{location}}/runtimes/{{name}}
/// $ pulumi import gcp:notebooks/runtime:Runtime default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:notebooks/runtime:Runtime default {{location}}/{{name}}
/// ```
class Runtime extends pulumi.CustomResource {
  /// The config settings for accessing runtime.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeAccessConfig?> accessConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The health state of this runtime. For a list of possible output
  /// values, see `https://cloud.google.com/vertex-ai/docs/workbench/
  /// reference/rest/v1/projects.locations.runtimes#healthstate`.
  late final pulumi.Output<String> healthState;
  /// The labels to associate with this runtime. Label **keys** must
  /// contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
  /// more than 32 labels can be associated with a cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// A reference to the zone where the machine resides.
  late final pulumi.Output<String> location;
  /// Contains Runtime daemon metrics such as Service status and JupyterLab
  /// status
  /// Structure is documented below.
  late final pulumi.Output<List<RuntimeMetric>> metrics;
  /// The name specified for the Notebook runtime.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The config settings for software inside the runtime.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeSoftwareConfig> softwareConfig;
  /// The state of this runtime.
  late final pulumi.Output<String> state;
  /// Use a Compute Engine VM image to start the managed notebook instance.
  /// Structure is documented below.
  late final pulumi.Output<RuntimeVirtualMachine?> virtualMachine;

  /// Creates a new [Runtime].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Runtime]. {@macro pulumi_notebooks_runtime_runtime_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Runtime(
    String name, {
    RuntimeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/runtime:Runtime',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    accessConfig = registerOutput<RuntimeAccessConfig?>('accessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    healthState = registerOutput<String>('healthState');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    metrics = registerOutput<List<RuntimeMetric>>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuntimeMetric>(guardedValue, (value) => RuntimeMetric.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    softwareConfig = registerOutput<RuntimeSoftwareConfig>('softwareConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    virtualMachine = registerOutput<RuntimeVirtualMachine?>('virtualMachine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Runtime] resource's state with the given [name] and [id].
  static Runtime get(
    String name,
    pulumi.Input<String> id, {
    RuntimeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Runtime._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Runtime._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/runtime:Runtime',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessConfig = registerOutput<RuntimeAccessConfig?>('accessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    healthState = registerOutput<String>('healthState');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    metrics = registerOutput<List<RuntimeMetric>>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuntimeMetric>(guardedValue, (value) => RuntimeMetric.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    softwareConfig = registerOutput<RuntimeSoftwareConfig>('softwareConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    virtualMachine = registerOutput<RuntimeVirtualMachine?>('virtualMachine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Runtime] resource.
  Runtime.reference(String urn)
    : super(
        'gcp:notebooks/runtime:Runtime',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    accessConfig = registerOutput<RuntimeAccessConfig?>('accessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    healthState = registerOutput<String>('healthState');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    metrics = registerOutput<List<RuntimeMetric>>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuntimeMetric>(guardedValue, (value) => RuntimeMetric.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    softwareConfig = registerOutput<RuntimeSoftwareConfig>('softwareConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    virtualMachine = registerOutput<RuntimeVirtualMachine?>('virtualMachine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

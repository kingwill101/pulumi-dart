import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_gce_setup.dart';
import 'instance_state.dart';
import 'instance_upgrade_history.dart';

/// A Workbench instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/workbench/reference/rest/v2/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs/workbench/instances/introduction)
///
/// ## Example Usage
///
/// ### Workbench Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.workbench.Instance("instance", {
///     name: "workbench-instance",
///     location: "us-west1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.workbench.Instance("instance",
///     name="workbench-instance",
///     location="us-west1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Workbench.Instance("instance", new()
///     {
///         Name = "workbench-instance",
///         Location = "us-west1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workbench"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workbench.NewInstance(ctx, "instance", &workbench.InstanceArgs{
/// 			Name:     pulumi.String("workbench-instance"),
/// 			Location: pulumi.String("us-west1-a"),
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
/// import com.pulumi.gcp.workbench.Instance;
/// import com.pulumi.gcp.workbench.InstanceArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("workbench-instance")
///             .location("us-west1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:workbench:Instance
///     properties:
///       name: workbench-instance
///       location: us-west1-a
/// ```
///
/// ### Workbench Instance Basic Container
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.workbench.Instance("instance", {
///     name: "workbench-instance",
///     location: "us-west1-a",
///     gceSetup: {
///         containerImage: {
///             repository: "us-docker.pkg.dev/deeplearning-platform-release/gcr.io/base-cu113.py310",
///             tag: "latest",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.workbench.Instance("instance",
///     name="workbench-instance",
///     location="us-west1-a",
///     gce_setup={
///         "container_image": {
///             "repository": "us-docker.pkg.dev/deeplearning-platform-release/gcr.io/base-cu113.py310",
///             "tag": "latest",
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
///     var instance = new Gcp.Workbench.Instance("instance", new()
///     {
///         Name = "workbench-instance",
///         Location = "us-west1-a",
///         GceSetup = new Gcp.Workbench.Inputs.InstanceGceSetupArgs
///         {
///             ContainerImage = new Gcp.Workbench.Inputs.InstanceGceSetupContainerImageArgs
///             {
///                 Repository = "us-docker.pkg.dev/deeplearning-platform-release/gcr.io/base-cu113.py310",
///                 Tag = "latest",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workbench"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workbench.NewInstance(ctx, "instance", &workbench.InstanceArgs{
/// 			Name:     pulumi.String("workbench-instance"),
/// 			Location: pulumi.String("us-west1-a"),
/// 			GceSetup: &workbench.InstanceGceSetupArgs{
/// 				ContainerImage: &workbench.InstanceGceSetupContainerImageArgs{
/// 					Repository: pulumi.String("us-docker.pkg.dev/deeplearning-platform-release/gcr.io/base-cu113.py310"),
/// 					Tag:        pulumi.String("latest"),
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
/// import com.pulumi.gcp.workbench.Instance;
/// import com.pulumi.gcp.workbench.InstanceArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupContainerImageArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("workbench-instance")
///             .location("us-west1-a")
///             .gceSetup(InstanceGceSetupArgs.builder()
///                 .containerImage(InstanceGceSetupContainerImageArgs.builder()
///                     .repository("us-docker.pkg.dev/deeplearning-platform-release/gcr.io/base-cu113.py310")
///                     .tag("latest")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:workbench:Instance
///     properties:
///       name: workbench-instance
///       location: us-west1-a
///       gceSetup:
///         containerImage:
///           repository: us-docker.pkg.dev/deeplearning-platform-release/gcr.io/base-cu113.py310
///           tag: latest
/// ```
///
/// ### Workbench Instance Basic Gpu
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gpuReservation = new gcp.compute.Reservation("gpu_reservation", {
///     name: "wbi-reservation",
///     zone: "us-central1-a",
///     specificReservation: {
///         count: 1,
///         instanceProperties: {
///             machineType: "n1-standard-1",
///             guestAccelerators: [{
///                 acceleratorType: "nvidia-tesla-t4",
///                 acceleratorCount: 1,
///             }],
///         },
///     },
///     specificReservationRequired: false,
/// });
/// const instance = new gcp.workbench.Instance("instance", {
///     name: "workbench-instance",
///     location: "us-central1-a",
///     gceSetup: {
///         machineType: "n1-standard-1",
///         acceleratorConfigs: [{
///             type: "NVIDIA_TESLA_T4",
///             coreCount: "1",
///         }],
///         vmImage: {
///             project: "cloud-notebooks-managed",
///             family: "workbench-instances",
///         },
///         reservationAffinity: {
///             consumeReservationType: "RESERVATION_ANY",
///         },
///     },
/// }, {
///     dependsOn: [gpuReservation],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gpu_reservation = gcp.compute.Reservation("gpu_reservation",
///     name="wbi-reservation",
///     zone="us-central1-a",
///     specific_reservation={
///         "count": 1,
///         "instance_properties": {
///             "machine_type": "n1-standard-1",
///             "guest_accelerators": [{
///                 "accelerator_type": "nvidia-tesla-t4",
///                 "accelerator_count": 1,
///             }],
///         },
///     },
///     specific_reservation_required=False)
/// instance = gcp.workbench.Instance("instance",
///     name="workbench-instance",
///     location="us-central1-a",
///     gce_setup={
///         "machine_type": "n1-standard-1",
///         "accelerator_configs": [{
///             "type": "NVIDIA_TESLA_T4",
///             "core_count": "1",
///         }],
///         "vm_image": {
///             "project": "cloud-notebooks-managed",
///             "family": "workbench-instances",
///         },
///         "reservation_affinity": {
///             "consume_reservation_type": "RESERVATION_ANY",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[gpu_reservation]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gpuReservation = new Gcp.Compute.Reservation("gpu_reservation", new()
///     {
///         Name = "wbi-reservation",
///         Zone = "us-central1-a",
///         SpecificReservation = new Gcp.Compute.Inputs.ReservationSpecificReservationArgs
///         {
///             Count = 1,
///             InstanceProperties = new Gcp.Compute.Inputs.ReservationSpecificReservationInstancePropertiesArgs
///             {
///                 MachineType = "n1-standard-1",
///                 GuestAccelerators = new[]
///                 {
///                     new Gcp.Compute.Inputs.ReservationSpecificReservationInstancePropertiesGuestAcceleratorArgs
///                     {
///                         AcceleratorType = "nvidia-tesla-t4",
///                         AcceleratorCount = 1,
///                     },
///                 },
///             },
///         },
///         SpecificReservationRequired = false,
///     });
///
///     var instance = new Gcp.Workbench.Instance("instance", new()
///     {
///         Name = "workbench-instance",
///         Location = "us-central1-a",
///         GceSetup = new Gcp.Workbench.Inputs.InstanceGceSetupArgs
///         {
///             MachineType = "n1-standard-1",
///             AcceleratorConfigs = new[]
///             {
///                 new Gcp.Workbench.Inputs.InstanceGceSetupAcceleratorConfigArgs
///                 {
///                     Type = "NVIDIA_TESLA_T4",
///                     CoreCount = "1",
///                 },
///             },
///             VmImage = new Gcp.Workbench.Inputs.InstanceGceSetupVmImageArgs
///             {
///                 Project = "cloud-notebooks-managed",
///                 Family = "workbench-instances",
///             },
///             ReservationAffinity = new Gcp.Workbench.Inputs.InstanceGceSetupReservationAffinityArgs
///             {
///                 ConsumeReservationType = "RESERVATION_ANY",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gpuReservation,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workbench"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		gpuReservation, err := compute.NewReservation(ctx, "gpu_reservation", &compute.ReservationArgs{
/// 			Name: pulumi.String("wbi-reservation"),
/// 			Zone: pulumi.String("us-central1-a"),
/// 			SpecificReservation: &compute.ReservationSpecificReservationArgs{
/// 				Count: pulumi.Int(1),
/// 				InstanceProperties: &compute.ReservationSpecificReservationInstancePropertiesArgs{
/// 					MachineType: pulumi.String("n1-standard-1"),
/// 					GuestAccelerators: compute.ReservationSpecificReservationInstancePropertiesGuestAcceleratorArray{
/// 						&compute.ReservationSpecificReservationInstancePropertiesGuestAcceleratorArgs{
/// 							AcceleratorType:  pulumi.String("nvidia-tesla-t4"),
/// 							AcceleratorCount: pulumi.Int(1),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			SpecificReservationRequired: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workbench.NewInstance(ctx, "instance", &workbench.InstanceArgs{
/// 			Name:     pulumi.String("workbench-instance"),
/// 			Location: pulumi.String("us-central1-a"),
/// 			GceSetup: &workbench.InstanceGceSetupArgs{
/// 				MachineType: pulumi.String("n1-standard-1"),
/// 				AcceleratorConfigs: workbench.InstanceGceSetupAcceleratorConfigArray{
/// 					&workbench.InstanceGceSetupAcceleratorConfigArgs{
/// 						Type:      pulumi.String("NVIDIA_TESLA_T4"),
/// 						CoreCount: pulumi.String("1"),
/// 					},
/// 				},
/// 				VmImage: &workbench.InstanceGceSetupVmImageArgs{
/// 					Project: pulumi.String("cloud-notebooks-managed"),
/// 					Family:  pulumi.String("workbench-instances"),
/// 				},
/// 				ReservationAffinity: &workbench.InstanceGceSetupReservationAffinityArgs{
/// 					ConsumeReservationType: pulumi.String("RESERVATION_ANY"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gpuReservation,
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
/// import com.pulumi.gcp.compute.Reservation;
/// import com.pulumi.gcp.compute.ReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationInstancePropertiesArgs;
/// import com.pulumi.gcp.workbench.Instance;
/// import com.pulumi.gcp.workbench.InstanceArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupVmImageArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupReservationAffinityArgs;
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
///         var gpuReservation = new Reservation("gpuReservation", ReservationArgs.builder()
///             .name("wbi-reservation")
///             .zone("us-central1-a")
///             .specificReservation(ReservationSpecificReservationArgs.builder()
///                 .count(1)
///                 .instanceProperties(ReservationSpecificReservationInstancePropertiesArgs.builder()
///                     .machineType("n1-standard-1")
///                     .guestAccelerators(ReservationSpecificReservationInstancePropertiesGuestAcceleratorArgs.builder()
///                         .acceleratorType("nvidia-tesla-t4")
///                         .acceleratorCount(1)
///                         .build())
///                     .build())
///                 .build())
///             .specificReservationRequired(false)
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("workbench-instance")
///             .location("us-central1-a")
///             .gceSetup(InstanceGceSetupArgs.builder()
///                 .machineType("n1-standard-1")
///                 .acceleratorConfigs(InstanceGceSetupAcceleratorConfigArgs.builder()
///                     .type("NVIDIA_TESLA_T4")
///                     .coreCount("1")
///                     .build())
///                 .vmImage(InstanceGceSetupVmImageArgs.builder()
///                     .project("cloud-notebooks-managed")
///                     .family("workbench-instances")
///                     .build())
///                 .reservationAffinity(InstanceGceSetupReservationAffinityArgs.builder()
///                     .consumeReservationType("RESERVATION_ANY")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gpuReservation)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gpuReservation:
///     type: gcp:compute:Reservation
///     name: gpu_reservation
///     properties:
///       name: wbi-reservation
///       zone: us-central1-a
///       specificReservation:
///         count: 1
///         instanceProperties:
///           machineType: n1-standard-1
///           guestAccelerators:
///             - acceleratorType: nvidia-tesla-t4
///               acceleratorCount: 1
///       specificReservationRequired: false
///   instance:
///     type: gcp:workbench:Instance
///     properties:
///       name: workbench-instance
///       location: us-central1-a
///       gceSetup:
///         machineType: n1-standard-1
///         acceleratorConfigs:
///           - type: NVIDIA_TESLA_T4
///             coreCount: 1
///         vmImage:
///           project: cloud-notebooks-managed
///           family: workbench-instances
///         reservationAffinity:
///           consumeReservationType: RESERVATION_ANY
///     options:
///       dependsOn:
///         - ${gpuReservation}
/// ```
///
/// ### Workbench Instance Labels Stopped
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.workbench.Instance("instance", {
///     name: "workbench-instance",
///     location: "us-central1-a",
///     gceSetup: {
///         machineType: "e2-standard-4",
///         shieldedInstanceConfig: {
///             enableSecureBoot: false,
///             enableVtpm: false,
///             enableIntegrityMonitoring: false,
///         },
///         serviceAccounts: [{
///             email: "my@service-account.com",
///         }],
///         metadata: {
///             terraform: "true",
///         },
///     },
///     labels: {
///         k: "val",
///     },
///     desiredState: "STOPPED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.workbench.Instance("instance",
///     name="workbench-instance",
///     location="us-central1-a",
///     gce_setup={
///         "machine_type": "e2-standard-4",
///         "shielded_instance_config": {
///             "enable_secure_boot": False,
///             "enable_vtpm": False,
///             "enable_integrity_monitoring": False,
///         },
///         "service_accounts": [{
///             "email": "my@service-account.com",
///         }],
///         "metadata": {
///             "terraform": "true",
///         },
///     },
///     labels={
///         "k": "val",
///     },
///     desired_state="STOPPED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Workbench.Instance("instance", new()
///     {
///         Name = "workbench-instance",
///         Location = "us-central1-a",
///         GceSetup = new Gcp.Workbench.Inputs.InstanceGceSetupArgs
///         {
///             MachineType = "e2-standard-4",
///             ShieldedInstanceConfig = new Gcp.Workbench.Inputs.InstanceGceSetupShieldedInstanceConfigArgs
///             {
///                 EnableSecureBoot = false,
///                 EnableVtpm = false,
///                 EnableIntegrityMonitoring = false,
///             },
///             ServiceAccounts = new[]
///             {
///                 new Gcp.Workbench.Inputs.InstanceGceSetupServiceAccountArgs
///                 {
///                     Email = "my@service-account.com",
///                 },
///             },
///             Metadata =
///             {
///                 { "terraform", "true" },
///             },
///         },
///         Labels =
///         {
///             { "k", "val" },
///         },
///         DesiredState = "STOPPED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workbench"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workbench.NewInstance(ctx, "instance", &workbench.InstanceArgs{
/// 			Name:     pulumi.String("workbench-instance"),
/// 			Location: pulumi.String("us-central1-a"),
/// 			GceSetup: &workbench.InstanceGceSetupArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 				ShieldedInstanceConfig: &workbench.InstanceGceSetupShieldedInstanceConfigArgs{
/// 					EnableSecureBoot:          pulumi.Bool(false),
/// 					EnableVtpm:                pulumi.Bool(false),
/// 					EnableIntegrityMonitoring: pulumi.Bool(false),
/// 				},
/// 				ServiceAccounts: workbench.InstanceGceSetupServiceAccountArray{
/// 					&workbench.InstanceGceSetupServiceAccountArgs{
/// 						Email: pulumi.String("my@service-account.com"),
/// 					},
/// 				},
/// 				Metadata: pulumi.StringMap{
/// 					"terraform": pulumi.String("true"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"k": pulumi.String("val"),
/// 			},
/// 			DesiredState: pulumi.String("STOPPED"),
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
/// import com.pulumi.gcp.workbench.Instance;
/// import com.pulumi.gcp.workbench.InstanceArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupShieldedInstanceConfigArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("workbench-instance")
///             .location("us-central1-a")
///             .gceSetup(InstanceGceSetupArgs.builder()
///                 .machineType("e2-standard-4")
///                 .shieldedInstanceConfig(InstanceGceSetupShieldedInstanceConfigArgs.builder()
///                     .enableSecureBoot(false)
///                     .enableVtpm(false)
///                     .enableIntegrityMonitoring(false)
///                     .build())
///                 .serviceAccounts(InstanceGceSetupServiceAccountArgs.builder()
///                     .email("my@service-account.com")
///                     .build())
///                 .metadata(Map.of("terraform", "true"))
///                 .build())
///             .labels(Map.of("k", "val"))
///             .desiredState("STOPPED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:workbench:Instance
///     properties:
///       name: workbench-instance
///       location: us-central1-a
///       gceSetup:
///         machineType: e2-standard-4
///         shieldedInstanceConfig:
///           enableSecureBoot: false
///           enableVtpm: false
///           enableIntegrityMonitoring: false
///         serviceAccounts:
///           - email: my@service-account.com
///         metadata:
///           terraform: 'true'
///       labels:
///         k: val
///       desiredState: STOPPED
/// ```
///
/// ### Workbench Instance Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetwork = new gcp.compute.Network("my_network", {
///     name: "wbi-test-default",
///     autoCreateSubnetworks: false,
/// });
/// const mySubnetwork = new gcp.compute.Subnetwork("my_subnetwork", {
///     name: "wbi-test-default",
///     network: myNetwork.id,
///     region: "us-central1",
///     ipCidrRange: "10.0.1.0/24",
/// });
/// const static = new gcp.compute.Address("static", {name: "wbi-test-default"});
/// const actAsPermission = new gcp.serviceaccount.IAMBinding("act_as_permission", {
///     serviceAccountId: "projects/my-project-name/serviceAccounts/my@service-account.com",
///     role: "roles/iam.serviceAccountUser",
///     members: ["user:example@example.com"],
/// });
/// const gpuReservation = new gcp.compute.Reservation("gpu_reservation", {
///     name: "wbi-reservation",
///     zone: "us-central1-a",
///     specificReservation: {
///         count: 1,
///         instanceProperties: {
///             machineType: "n1-standard-4",
///             guestAccelerators: [{
///                 acceleratorType: "nvidia-tesla-t4",
///                 acceleratorCount: 1,
///             }],
///         },
///     },
///     specificReservationRequired: true,
/// });
/// const instance = new gcp.workbench.Instance("instance", {
///     name: "workbench-instance",
///     location: "us-central1-a",
///     gceSetup: {
///         machineType: "n1-standard-4",
///         acceleratorConfigs: [{
///             type: "NVIDIA_TESLA_T4",
///             coreCount: "1",
///         }],
///         shieldedInstanceConfig: {
///             enableSecureBoot: true,
///             enableVtpm: true,
///             enableIntegrityMonitoring: true,
///         },
///         disablePublicIp: false,
///         serviceAccounts: [{
///             email: "my@service-account.com",
///         }],
///         bootDisk: {
///             diskSizeGb: "310",
///             diskType: "PD_SSD",
///             diskEncryption: "CMEK",
///             kmsKey: "my-crypto-key",
///         },
///         dataDisks: {
///             diskSizeGb: "330",
///             diskType: "PD_SSD",
///             diskEncryption: "CMEK",
///             kmsKey: "my-crypto-key",
///         },
///         networkInterfaces: [{
///             network: myNetwork.id,
///             subnet: mySubnetwork.id,
///             nicType: "GVNIC",
///             accessConfigs: [{
///                 externalIp: static.address,
///             }],
///         }],
///         metadata: {
///             terraform: "true",
///             "serial-port-logging-enable": "false",
///             "enable-jupyterlab4": "false",
///         },
///         reservationAffinity: {
///             consumeReservationType: "RESERVATION_SPECIFIC",
///             key: "compute.googleapis.com/reservation-name",
///             values: [gpuReservation.name],
///         },
///         enableIpForwarding: true,
///         tags: [
///             "abc",
///             "def",
///         ],
///     },
///     disableProxyAccess: true,
///     instanceOwners: ["example@example.com"],
///     labels: {
///         k: "val",
///     },
///     desiredState: "ACTIVE",
///     enableThirdPartyIdentity: true,
/// }, {
///     dependsOn: [
///         myNetwork,
///         mySubnetwork,
///         static,
///         actAsPermission,
///         gpuReservation,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network = gcp.compute.Network("my_network",
///     name="wbi-test-default",
///     auto_create_subnetworks=False)
/// my_subnetwork = gcp.compute.Subnetwork("my_subnetwork",
///     name="wbi-test-default",
///     network=my_network.id,
///     region="us-central1",
///     ip_cidr_range="10.0.1.0/24")
/// static = gcp.compute.Address("static", name="wbi-test-default")
/// act_as_permission = gcp.serviceaccount.IAMBinding("act_as_permission",
///     service_account_id="projects/my-project-name/serviceAccounts/my@service-account.com",
///     role="roles/iam.serviceAccountUser",
///     members=["user:example@example.com"])
/// gpu_reservation = gcp.compute.Reservation("gpu_reservation",
///     name="wbi-reservation",
///     zone="us-central1-a",
///     specific_reservation={
///         "count": 1,
///         "instance_properties": {
///             "machine_type": "n1-standard-4",
///             "guest_accelerators": [{
///                 "accelerator_type": "nvidia-tesla-t4",
///                 "accelerator_count": 1,
///             }],
///         },
///     },
///     specific_reservation_required=True)
/// instance = gcp.workbench.Instance("instance",
///     name="workbench-instance",
///     location="us-central1-a",
///     gce_setup={
///         "machine_type": "n1-standard-4",
///         "accelerator_configs": [{
///             "type": "NVIDIA_TESLA_T4",
///             "core_count": "1",
///         }],
///         "shielded_instance_config": {
///             "enable_secure_boot": True,
///             "enable_vtpm": True,
///             "enable_integrity_monitoring": True,
///         },
///         "disable_public_ip": False,
///         "service_accounts": [{
///             "email": "my@service-account.com",
///         }],
///         "boot_disk": {
///             "disk_size_gb": "310",
///             "disk_type": "PD_SSD",
///             "disk_encryption": "CMEK",
///             "kms_key": "my-crypto-key",
///         },
///         "data_disks": {
///             "disk_size_gb": "330",
///             "disk_type": "PD_SSD",
///             "disk_encryption": "CMEK",
///             "kms_key": "my-crypto-key",
///         },
///         "network_interfaces": [{
///             "network": my_network.id,
///             "subnet": my_subnetwork.id,
///             "nic_type": "GVNIC",
///             "access_configs": [{
///                 "external_ip": static.address,
///             }],
///         }],
///         "metadata": {
///             "terraform": "true",
///             "serial-port-logging-enable": "false",
///             "enable-jupyterlab4": "false",
///         },
///         "reservation_affinity": {
///             "consume_reservation_type": "RESERVATION_SPECIFIC",
///             "key": "compute.googleapis.com/reservation-name",
///             "values": [gpu_reservation.name],
///         },
///         "enable_ip_forwarding": True,
///         "tags": [
///             "abc",
///             "def",
///         ],
///     },
///     disable_proxy_access=True,
///     instance_owners=["example@example.com"],
///     labels={
///         "k": "val",
///     },
///     desired_state="ACTIVE",
///     enable_third_party_identity=True,
///     opts = pulumi.ResourceOptions(depends_on=[
///             my_network,
///             my_subnetwork,
///             static,
///             act_as_permission,
///             gpu_reservation,
///         ]))
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
///         Name = "wbi-test-default",
///         AutoCreateSubnetworks = false,
///     });
///
///     var mySubnetwork = new Gcp.Compute.Subnetwork("my_subnetwork", new()
///     {
///         Name = "wbi-test-default",
///         Network = myNetwork.Id,
///         Region = "us-central1",
///         IpCidrRange = "10.0.1.0/24",
///     });
///
///     var @static = new Gcp.Compute.Address("static", new()
///     {
///         Name = "wbi-test-default",
///     });
///
///     var actAsPermission = new Gcp.ServiceAccount.IAMBinding("act_as_permission", new()
///     {
///         ServiceAccountId = "projects/my-project-name/serviceAccounts/my@service-account.com",
///         Role = "roles/iam.serviceAccountUser",
///         Members = new[]
///         {
///             "user:example@example.com",
///         },
///     });
///
///     var gpuReservation = new Gcp.Compute.Reservation("gpu_reservation", new()
///     {
///         Name = "wbi-reservation",
///         Zone = "us-central1-a",
///         SpecificReservation = new Gcp.Compute.Inputs.ReservationSpecificReservationArgs
///         {
///             Count = 1,
///             InstanceProperties = new Gcp.Compute.Inputs.ReservationSpecificReservationInstancePropertiesArgs
///             {
///                 MachineType = "n1-standard-4",
///                 GuestAccelerators = new[]
///                 {
///                     new Gcp.Compute.Inputs.ReservationSpecificReservationInstancePropertiesGuestAcceleratorArgs
///                     {
///                         AcceleratorType = "nvidia-tesla-t4",
///                         AcceleratorCount = 1,
///                     },
///                 },
///             },
///         },
///         SpecificReservationRequired = true,
///     });
///
///     var instance = new Gcp.Workbench.Instance("instance", new()
///     {
///         Name = "workbench-instance",
///         Location = "us-central1-a",
///         GceSetup = new Gcp.Workbench.Inputs.InstanceGceSetupArgs
///         {
///             MachineType = "n1-standard-4",
///             AcceleratorConfigs = new[]
///             {
///                 new Gcp.Workbench.Inputs.InstanceGceSetupAcceleratorConfigArgs
///                 {
///                     Type = "NVIDIA_TESLA_T4",
///                     CoreCount = "1",
///                 },
///             },
///             ShieldedInstanceConfig = new Gcp.Workbench.Inputs.InstanceGceSetupShieldedInstanceConfigArgs
///             {
///                 EnableSecureBoot = true,
///                 EnableVtpm = true,
///                 EnableIntegrityMonitoring = true,
///             },
///             DisablePublicIp = false,
///             ServiceAccounts = new[]
///             {
///                 new Gcp.Workbench.Inputs.InstanceGceSetupServiceAccountArgs
///                 {
///                     Email = "my@service-account.com",
///                 },
///             },
///             BootDisk = new Gcp.Workbench.Inputs.InstanceGceSetupBootDiskArgs
///             {
///                 DiskSizeGb = "310",
///                 DiskType = "PD_SSD",
///                 DiskEncryption = "CMEK",
///                 KmsKey = "my-crypto-key",
///             },
///             DataDisks = new Gcp.Workbench.Inputs.InstanceGceSetupDataDisksArgs
///             {
///                 DiskSizeGb = "330",
///                 DiskType = "PD_SSD",
///                 DiskEncryption = "CMEK",
///                 KmsKey = "my-crypto-key",
///             },
///             NetworkInterfaces = new[]
///             {
///                 new Gcp.Workbench.Inputs.InstanceGceSetupNetworkInterfaceArgs
///                 {
///                     Network = myNetwork.Id,
///                     Subnet = mySubnetwork.Id,
///                     NicType = "GVNIC",
///                     AccessConfigs = new[]
///                     {
///                         new Gcp.Workbench.Inputs.InstanceGceSetupNetworkInterfaceAccessConfigArgs
///                         {
///                             ExternalIp = @static.IPAddress,
///                         },
///                     },
///                 },
///             },
///             Metadata =
///             {
///                 { "terraform", "true" },
///                 { "serial-port-logging-enable", "false" },
///                 { "enable-jupyterlab4", "false" },
///             },
///             ReservationAffinity = new Gcp.Workbench.Inputs.InstanceGceSetupReservationAffinityArgs
///             {
///                 ConsumeReservationType = "RESERVATION_SPECIFIC",
///                 Key = "compute.googleapis.com/reservation-name",
///                 Values = new[]
///                 {
///                     gpuReservation.Name,
///                 },
///             },
///             EnableIpForwarding = true,
///             Tags = new[]
///             {
///                 "abc",
///                 "def",
///             },
///         },
///         DisableProxyAccess = true,
///         InstanceOwners = new[]
///         {
///             "example@example.com",
///         },
///         Labels =
///         {
///             { "k", "val" },
///         },
///         DesiredState = "ACTIVE",
///         EnableThirdPartyIdentity = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myNetwork,
///             mySubnetwork,
///             @static,
///             actAsPermission,
///             gpuReservation,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workbench"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myNetwork, err := compute.NewNetwork(ctx, "my_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("wbi-test-default"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mySubnetwork, err := compute.NewSubnetwork(ctx, "my_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("wbi-test-default"),
/// 			Network:     myNetwork.ID(),
/// 			Region:      pulumi.String("us-central1"),
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		static, err := compute.NewAddress(ctx, "static", &compute.AddressArgs{
/// 			Name: pulumi.String("wbi-test-default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		actAsPermission, err := serviceaccount.NewIAMBinding(ctx, "act_as_permission", &serviceaccount.IAMBindingArgs{
/// 			ServiceAccountId: pulumi.String("projects/my-project-name/serviceAccounts/my@service-account.com"),
/// 			Role:             pulumi.String("roles/iam.serviceAccountUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:example@example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gpuReservation, err := compute.NewReservation(ctx, "gpu_reservation", &compute.ReservationArgs{
/// 			Name: pulumi.String("wbi-reservation"),
/// 			Zone: pulumi.String("us-central1-a"),
/// 			SpecificReservation: &compute.ReservationSpecificReservationArgs{
/// 				Count: pulumi.Int(1),
/// 				InstanceProperties: &compute.ReservationSpecificReservationInstancePropertiesArgs{
/// 					MachineType: pulumi.String("n1-standard-4"),
/// 					GuestAccelerators: compute.ReservationSpecificReservationInstancePropertiesGuestAcceleratorArray{
/// 						&compute.ReservationSpecificReservationInstancePropertiesGuestAcceleratorArgs{
/// 							AcceleratorType:  pulumi.String("nvidia-tesla-t4"),
/// 							AcceleratorCount: pulumi.Int(1),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			SpecificReservationRequired: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workbench.NewInstance(ctx, "instance", &workbench.InstanceArgs{
/// 			Name:     pulumi.String("workbench-instance"),
/// 			Location: pulumi.String("us-central1-a"),
/// 			GceSetup: &workbench.InstanceGceSetupArgs{
/// 				MachineType: pulumi.String("n1-standard-4"),
/// 				AcceleratorConfigs: workbench.InstanceGceSetupAcceleratorConfigArray{
/// 					&workbench.InstanceGceSetupAcceleratorConfigArgs{
/// 						Type:      pulumi.String("NVIDIA_TESLA_T4"),
/// 						CoreCount: pulumi.String("1"),
/// 					},
/// 				},
/// 				ShieldedInstanceConfig: &workbench.InstanceGceSetupShieldedInstanceConfigArgs{
/// 					EnableSecureBoot:          pulumi.Bool(true),
/// 					EnableVtpm:                pulumi.Bool(true),
/// 					EnableIntegrityMonitoring: pulumi.Bool(true),
/// 				},
/// 				DisablePublicIp: pulumi.Bool(false),
/// 				ServiceAccounts: workbench.InstanceGceSetupServiceAccountArray{
/// 					&workbench.InstanceGceSetupServiceAccountArgs{
/// 						Email: pulumi.String("my@service-account.com"),
/// 					},
/// 				},
/// 				BootDisk: &workbench.InstanceGceSetupBootDiskArgs{
/// 					DiskSizeGb:     pulumi.String("310"),
/// 					DiskType:       pulumi.String("PD_SSD"),
/// 					DiskEncryption: pulumi.String("CMEK"),
/// 					KmsKey:         pulumi.String("my-crypto-key"),
/// 				},
/// 				DataDisks: &workbench.InstanceGceSetupDataDisksArgs{
/// 					DiskSizeGb:     pulumi.String("330"),
/// 					DiskType:       pulumi.String("PD_SSD"),
/// 					DiskEncryption: pulumi.String("CMEK"),
/// 					KmsKey:         pulumi.String("my-crypto-key"),
/// 				},
/// 				NetworkInterfaces: workbench.InstanceGceSetupNetworkInterfaceArray{
/// 					&workbench.InstanceGceSetupNetworkInterfaceArgs{
/// 						Network: myNetwork.ID(),
/// 						Subnet:  mySubnetwork.ID(),
/// 						NicType: pulumi.String("GVNIC"),
/// 						AccessConfigs: workbench.InstanceGceSetupNetworkInterfaceAccessConfigArray{
/// 							&workbench.InstanceGceSetupNetworkInterfaceAccessConfigArgs{
/// 								ExternalIp: static.Address,
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Metadata: pulumi.StringMap{
/// 					"terraform":                  pulumi.String("true"),
/// 					"serial-port-logging-enable": pulumi.String("false"),
/// 					"enable-jupyterlab4":         pulumi.String("false"),
/// 				},
/// 				ReservationAffinity: &workbench.InstanceGceSetupReservationAffinityArgs{
/// 					ConsumeReservationType: pulumi.String("RESERVATION_SPECIFIC"),
/// 					Key:                    pulumi.String("compute.googleapis.com/reservation-name"),
/// 					Values: pulumi.StringArray{
/// 						gpuReservation.Name,
/// 					},
/// 				},
/// 				EnableIpForwarding: pulumi.Bool(true),
/// 				Tags: pulumi.StringArray{
/// 					pulumi.String("abc"),
/// 					pulumi.String("def"),
/// 				},
/// 			},
/// 			DisableProxyAccess: pulumi.Bool(true),
/// 			InstanceOwners: pulumi.StringArray{
/// 				pulumi.String("example@example.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"k": pulumi.String("val"),
/// 			},
/// 			DesiredState:             pulumi.String("ACTIVE"),
/// 			EnableThirdPartyIdentity: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myNetwork,
/// 			mySubnetwork,
/// 			static,
/// 			actAsPermission,
/// 			gpuReservation,
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.serviceaccount.IAMBinding;
/// import com.pulumi.gcp.serviceaccount.IAMBindingArgs;
/// import com.pulumi.gcp.compute.Reservation;
/// import com.pulumi.gcp.compute.ReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationInstancePropertiesArgs;
/// import com.pulumi.gcp.workbench.Instance;
/// import com.pulumi.gcp.workbench.InstanceArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupBootDiskArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupDataDisksArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupReservationAffinityArgs;
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
///         var myNetwork = new Network("myNetwork", NetworkArgs.builder()
///             .name("wbi-test-default")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var mySubnetwork = new Subnetwork("mySubnetwork", SubnetworkArgs.builder()
///             .name("wbi-test-default")
///             .network(myNetwork.id())
///             .region("us-central1")
///             .ipCidrRange("10.0.1.0/24")
///             .build());
///
///         var static_ = new Address("static", AddressArgs.builder()
///             .name("wbi-test-default")
///             .build());
///
///         var actAsPermission = new IAMBinding("actAsPermission", IAMBindingArgs.builder()
///             .serviceAccountId("projects/my-project-name/serviceAccounts/my@service-account.com")
///             .role("roles/iam.serviceAccountUser")
///             .members("user:example@example.com")
///             .build());
///
///         var gpuReservation = new Reservation("gpuReservation", ReservationArgs.builder()
///             .name("wbi-reservation")
///             .zone("us-central1-a")
///             .specificReservation(ReservationSpecificReservationArgs.builder()
///                 .count(1)
///                 .instanceProperties(ReservationSpecificReservationInstancePropertiesArgs.builder()
///                     .machineType("n1-standard-4")
///                     .guestAccelerators(ReservationSpecificReservationInstancePropertiesGuestAcceleratorArgs.builder()
///                         .acceleratorType("nvidia-tesla-t4")
///                         .acceleratorCount(1)
///                         .build())
///                     .build())
///                 .build())
///             .specificReservationRequired(true)
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("workbench-instance")
///             .location("us-central1-a")
///             .gceSetup(InstanceGceSetupArgs.builder()
///                 .machineType("n1-standard-4")
///                 .acceleratorConfigs(InstanceGceSetupAcceleratorConfigArgs.builder()
///                     .type("NVIDIA_TESLA_T4")
///                     .coreCount("1")
///                     .build())
///                 .shieldedInstanceConfig(InstanceGceSetupShieldedInstanceConfigArgs.builder()
///                     .enableSecureBoot(true)
///                     .enableVtpm(true)
///                     .enableIntegrityMonitoring(true)
///                     .build())
///                 .disablePublicIp(false)
///                 .serviceAccounts(InstanceGceSetupServiceAccountArgs.builder()
///                     .email("my@service-account.com")
///                     .build())
///                 .bootDisk(InstanceGceSetupBootDiskArgs.builder()
///                     .diskSizeGb("310")
///                     .diskType("PD_SSD")
///                     .diskEncryption("CMEK")
///                     .kmsKey("my-crypto-key")
///                     .build())
///                 .dataDisks(InstanceGceSetupDataDisksArgs.builder()
///                     .diskSizeGb("330")
///                     .diskType("PD_SSD")
///                     .diskEncryption("CMEK")
///                     .kmsKey("my-crypto-key")
///                     .build())
///                 .networkInterfaces(InstanceGceSetupNetworkInterfaceArgs.builder()
///                     .network(myNetwork.id())
///                     .subnet(mySubnetwork.id())
///                     .nicType("GVNIC")
///                     .accessConfigs(InstanceGceSetupNetworkInterfaceAccessConfigArgs.builder()
///                         .externalIp(static_.address())
///                         .build())
///                     .build())
///                 .metadata(Map.ofEntries(
///                     Map.entry("terraform", "true"),
///                     Map.entry("serial-port-logging-enable", "false"),
///                     Map.entry("enable-jupyterlab4", "false")
///                 ))
///                 .reservationAffinity(InstanceGceSetupReservationAffinityArgs.builder()
///                     .consumeReservationType("RESERVATION_SPECIFIC")
///                     .key("compute.googleapis.com/reservation-name")
///                     .values(gpuReservation.name())
///                     .build())
///                 .enableIpForwarding(true)
///                 .tags(
///                     "abc",
///                     "def")
///                 .build())
///             .disableProxyAccess(true)
///             .instanceOwners("example@example.com")
///             .labels(Map.of("k", "val"))
///             .desiredState("ACTIVE")
///             .enableThirdPartyIdentity(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     myNetwork,
///                     mySubnetwork,
///                     static_,
///                     actAsPermission,
///                     gpuReservation)
///                 .build());
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
///       name: wbi-test-default
///       autoCreateSubnetworks: false
///   mySubnetwork:
///     type: gcp:compute:Subnetwork
///     name: my_subnetwork
///     properties:
///       name: wbi-test-default
///       network: ${myNetwork.id}
///       region: us-central1
///       ipCidrRange: 10.0.1.0/24
///   static:
///     type: gcp:compute:Address
///     properties:
///       name: wbi-test-default
///   actAsPermission:
///     type: gcp:serviceaccount:IAMBinding
///     name: act_as_permission
///     properties:
///       serviceAccountId: projects/my-project-name/serviceAccounts/my@service-account.com
///       role: roles/iam.serviceAccountUser
///       members:
///         - user:example@example.com
///   gpuReservation:
///     type: gcp:compute:Reservation
///     name: gpu_reservation
///     properties:
///       name: wbi-reservation
///       zone: us-central1-a
///       specificReservation:
///         count: 1
///         instanceProperties:
///           machineType: n1-standard-4
///           guestAccelerators:
///             - acceleratorType: nvidia-tesla-t4
///               acceleratorCount: 1
///       specificReservationRequired: true
///   instance:
///     type: gcp:workbench:Instance
///     properties:
///       name: workbench-instance
///       location: us-central1-a
///       gceSetup:
///         machineType: n1-standard-4
///         acceleratorConfigs:
///           - type: NVIDIA_TESLA_T4
///             coreCount: 1
///         shieldedInstanceConfig:
///           enableSecureBoot: true
///           enableVtpm: true
///           enableIntegrityMonitoring: true
///         disablePublicIp: false
///         serviceAccounts:
///           - email: my@service-account.com
///         bootDisk:
///           diskSizeGb: 310
///           diskType: PD_SSD
///           diskEncryption: CMEK
///           kmsKey: my-crypto-key
///         dataDisks:
///           diskSizeGb: 330
///           diskType: PD_SSD
///           diskEncryption: CMEK
///           kmsKey: my-crypto-key
///         networkInterfaces:
///           - network: ${myNetwork.id}
///             subnet: ${mySubnetwork.id}
///             nicType: GVNIC
///             accessConfigs:
///               - externalIp: ${static.address}
///         metadata:
///           terraform: 'true'
///           serial-port-logging-enable: 'false'
///           enable-jupyterlab4: 'false'
///         reservationAffinity:
///           consumeReservationType: RESERVATION_SPECIFIC
///           key: compute.googleapis.com/reservation-name
///           values:
///             - ${gpuReservation.name}
///         enableIpForwarding: true
///         tags:
///           - abc
///           - def
///       disableProxyAccess: 'true'
///       instanceOwners:
///         - example@example.com
///       labels:
///         k: val
///       desiredState: ACTIVE
///       enableThirdPartyIdentity: 'true'
///     options:
///       dependsOn:
///         - ${myNetwork}
///         - ${mySubnetwork}
///         - ${static}
///         - ${actAsPermission}
///         - ${gpuReservation}
/// ```
///
/// ### Workbench Instance Confidential Compute
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.workbench.Instance("instance", {
///     name: "workbench-instance",
///     location: "us-central1-a",
///     gceSetup: {
///         machineType: "n2d-standard-2",
///         shieldedInstanceConfig: {
///             enableSecureBoot: true,
///             enableVtpm: true,
///             enableIntegrityMonitoring: true,
///         },
///         metadata: {
///             terraform: "true",
///         },
///         confidentialInstanceConfig: {
///             confidentialInstanceType: "SEV",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.workbench.Instance("instance",
///     name="workbench-instance",
///     location="us-central1-a",
///     gce_setup={
///         "machine_type": "n2d-standard-2",
///         "shielded_instance_config": {
///             "enable_secure_boot": True,
///             "enable_vtpm": True,
///             "enable_integrity_monitoring": True,
///         },
///         "metadata": {
///             "terraform": "true",
///         },
///         "confidential_instance_config": {
///             "confidential_instance_type": "SEV",
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
///     var instance = new Gcp.Workbench.Instance("instance", new()
///     {
///         Name = "workbench-instance",
///         Location = "us-central1-a",
///         GceSetup = new Gcp.Workbench.Inputs.InstanceGceSetupArgs
///         {
///             MachineType = "n2d-standard-2",
///             ShieldedInstanceConfig = new Gcp.Workbench.Inputs.InstanceGceSetupShieldedInstanceConfigArgs
///             {
///                 EnableSecureBoot = true,
///                 EnableVtpm = true,
///                 EnableIntegrityMonitoring = true,
///             },
///             Metadata =
///             {
///                 { "terraform", "true" },
///             },
///             ConfidentialInstanceConfig = new Gcp.Workbench.Inputs.InstanceGceSetupConfidentialInstanceConfigArgs
///             {
///                 ConfidentialInstanceType = "SEV",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workbench"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workbench.NewInstance(ctx, "instance", &workbench.InstanceArgs{
/// 			Name:     pulumi.String("workbench-instance"),
/// 			Location: pulumi.String("us-central1-a"),
/// 			GceSetup: &workbench.InstanceGceSetupArgs{
/// 				MachineType: pulumi.String("n2d-standard-2"),
/// 				ShieldedInstanceConfig: &workbench.InstanceGceSetupShieldedInstanceConfigArgs{
/// 					EnableSecureBoot:          pulumi.Bool(true),
/// 					EnableVtpm:                pulumi.Bool(true),
/// 					EnableIntegrityMonitoring: pulumi.Bool(true),
/// 				},
/// 				Metadata: pulumi.StringMap{
/// 					"terraform": pulumi.String("true"),
/// 				},
/// 				ConfidentialInstanceConfig: &workbench.InstanceGceSetupConfidentialInstanceConfigArgs{
/// 					ConfidentialInstanceType: pulumi.String("SEV"),
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
/// import com.pulumi.gcp.workbench.Instance;
/// import com.pulumi.gcp.workbench.InstanceArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupShieldedInstanceConfigArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupConfidentialInstanceConfigArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("workbench-instance")
///             .location("us-central1-a")
///             .gceSetup(InstanceGceSetupArgs.builder()
///                 .machineType("n2d-standard-2")
///                 .shieldedInstanceConfig(InstanceGceSetupShieldedInstanceConfigArgs.builder()
///                     .enableSecureBoot(true)
///                     .enableVtpm(true)
///                     .enableIntegrityMonitoring(true)
///                     .build())
///                 .metadata(Map.of("terraform", "true"))
///                 .confidentialInstanceConfig(InstanceGceSetupConfidentialInstanceConfigArgs.builder()
///                     .confidentialInstanceType("SEV")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:workbench:Instance
///     properties:
///       name: workbench-instance
///       location: us-central1-a
///       gceSetup:
///         machineType: n2d-standard-2
///         shieldedInstanceConfig:
///           enableSecureBoot: true
///           enableVtpm: true
///           enableIntegrityMonitoring: true
///         metadata:
///           terraform: 'true'
///         confidentialInstanceConfig:
///           confidentialInstanceType: SEV
/// ```
///
/// ### Workbench Instance Euc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const actAsPermission = new gcp.serviceaccount.IAMBinding("act_as_permission", {
///     serviceAccountId: "projects/my-project-name/serviceAccounts/1111111111111-compute@developer.gserviceaccount.com",
///     role: "roles/iam.serviceAccountUser",
///     members: ["user:example@example.com"],
/// });
/// const instance = new gcp.workbench.Instance("instance", {
///     name: "workbench-instance",
///     location: "us-central1-a",
///     gceSetup: {
///         machineType: "e2-standard-4",
///         metadata: {
///             terraform: "true",
///         },
///     },
///     instanceOwners: ["example@example.com"],
///     enableManagedEuc: true,
/// }, {
///     dependsOn: [actAsPermission],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// act_as_permission = gcp.serviceaccount.IAMBinding("act_as_permission",
///     service_account_id="projects/my-project-name/serviceAccounts/1111111111111-compute@developer.gserviceaccount.com",
///     role="roles/iam.serviceAccountUser",
///     members=["user:example@example.com"])
/// instance = gcp.workbench.Instance("instance",
///     name="workbench-instance",
///     location="us-central1-a",
///     gce_setup={
///         "machine_type": "e2-standard-4",
///         "metadata": {
///             "terraform": "true",
///         },
///     },
///     instance_owners=["example@example.com"],
///     enable_managed_euc=True,
///     opts = pulumi.ResourceOptions(depends_on=[act_as_permission]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var actAsPermission = new Gcp.ServiceAccount.IAMBinding("act_as_permission", new()
///     {
///         ServiceAccountId = "projects/my-project-name/serviceAccounts/1111111111111-compute@developer.gserviceaccount.com",
///         Role = "roles/iam.serviceAccountUser",
///         Members = new[]
///         {
///             "user:example@example.com",
///         },
///     });
///
///     var instance = new Gcp.Workbench.Instance("instance", new()
///     {
///         Name = "workbench-instance",
///         Location = "us-central1-a",
///         GceSetup = new Gcp.Workbench.Inputs.InstanceGceSetupArgs
///         {
///             MachineType = "e2-standard-4",
///             Metadata =
///             {
///                 { "terraform", "true" },
///             },
///         },
///         InstanceOwners = new[]
///         {
///             "example@example.com",
///         },
///         EnableManagedEuc = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             actAsPermission,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/workbench"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		actAsPermission, err := serviceaccount.NewIAMBinding(ctx, "act_as_permission", &serviceaccount.IAMBindingArgs{
/// 			ServiceAccountId: pulumi.String("projects/my-project-name/serviceAccounts/1111111111111-compute@developer.gserviceaccount.com"),
/// 			Role:             pulumi.String("roles/iam.serviceAccountUser"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:example@example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workbench.NewInstance(ctx, "instance", &workbench.InstanceArgs{
/// 			Name:     pulumi.String("workbench-instance"),
/// 			Location: pulumi.String("us-central1-a"),
/// 			GceSetup: &workbench.InstanceGceSetupArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 				Metadata: pulumi.StringMap{
/// 					"terraform": pulumi.String("true"),
/// 				},
/// 			},
/// 			InstanceOwners: pulumi.StringArray{
/// 				pulumi.String("example@example.com"),
/// 			},
/// 			EnableManagedEuc: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			actAsPermission,
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
/// import com.pulumi.gcp.serviceaccount.IAMBinding;
/// import com.pulumi.gcp.serviceaccount.IAMBindingArgs;
/// import com.pulumi.gcp.workbench.Instance;
/// import com.pulumi.gcp.workbench.InstanceArgs;
/// import com.pulumi.gcp.workbench.inputs.InstanceGceSetupArgs;
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
///         var actAsPermission = new IAMBinding("actAsPermission", IAMBindingArgs.builder()
///             .serviceAccountId("projects/my-project-name/serviceAccounts/1111111111111-compute@developer.gserviceaccount.com")
///             .role("roles/iam.serviceAccountUser")
///             .members("user:example@example.com")
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("workbench-instance")
///             .location("us-central1-a")
///             .gceSetup(InstanceGceSetupArgs.builder()
///                 .machineType("e2-standard-4")
///                 .metadata(Map.of("terraform", "true"))
///                 .build())
///             .instanceOwners("example@example.com")
///             .enableManagedEuc(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(actAsPermission)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   actAsPermission:
///     type: gcp:serviceaccount:IAMBinding
///     name: act_as_permission
///     properties:
///       serviceAccountId: projects/my-project-name/serviceAccounts/1111111111111-compute@developer.gserviceaccount.com
///       role: roles/iam.serviceAccountUser
///       members:
///         - user:example@example.com
///   instance:
///     type: gcp:workbench:Instance
///     properties:
///       name: workbench-instance
///       location: us-central1-a
///       gceSetup:
///         machineType: e2-standard-4
///         metadata:
///           terraform: 'true'
///       instanceOwners:
///         - example@example.com
///       enableManagedEuc: 'true'
///     options:
///       dependsOn:
///         - ${actAsPermission}
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workbench/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workbench/instance:Instance default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workbench/instance:Instance default {{location}}/{{name}}
/// ```
class Instance extends pulumi.CustomResource {
  /// An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// The milliseconds portion (".SSS") is optional.
  late final pulumi.Output<String> createTime;
  /// Output only. Email address of entity that sent original CreateInstance request.
  late final pulumi.Output<String> creator;
  /// Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  late final pulumi.Output<String?> desiredState;
  /// Optional. If true, the workbench instance will not register with the proxy.
  late final pulumi.Output<bool?> disableProxyAccess;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Flag to enable managed end user credentials for the instance.
  late final pulumi.Output<bool?> enableManagedEuc;
  /// Flag that specifies that a notebook can be accessed with third party
  /// identity provider.
  late final pulumi.Output<bool?> enableThirdPartyIdentity;
  /// The definition of how to configure a VM instance outside of Resources and Identity.
  /// Structure is documented below.
  late final pulumi.Output<InstanceGceSetup> gceSetup;
  /// 'Output only. Additional information about instance health. Example:
  /// healthInfo": { "docker_proxy_agent_status": "1", "docker_status": "1", "jupyterlab_api_status":
  /// "-1", "jupyterlab_status": "-1", "updated": "2020-10-18 09:40:03.573409" }'
  late final pulumi.Output<List<Map<String, dynamic>>> healthInfos;
  /// Output only. Instance health_state.
  late final pulumi.Output<String> healthState;
  /// Required. User-defined unique ID of this instance.
  late final pulumi.Output<String?> instanceId;
  /// 'Optional. Input only. The owner of this instance after creation. Format:
  /// `alias@example.com` Currently supports one owner only. If not specified, all of
  /// the service account users of your VM instance''s service account can use the instance.
  /// If specified, sets the access mode to `Single user`. For more details, see
  /// https://cloud.google.com/vertex-ai/docs/workbench/instances/manage-access-jupyterlab'
  late final pulumi.Output<List<String>?> instanceOwners;
  /// Optional. Labels to apply to this instance. These can be later modified
  /// by the UpdateInstance method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Part of `parent`. See documentation of `projectsId`.
  late final pulumi.Output<String> location;
  /// The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The proxy endpoint that is used to access the Jupyter notebook.
  late final pulumi.Output<String> proxyUri;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// (Output)
  /// Output only. The state of this instance upgrade history entry.
  late final pulumi.Output<String> state;
  /// An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// The milliseconds portion (".SSS") is optional.
  late final pulumi.Output<String> updateTime;
  /// Output only. The upgrade history of this instance.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceUpgradeHistory>> upgradeHistories;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_workbench_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.desiredState = registerOutput<String?>('desiredState');
    this.disableProxyAccess = registerOutput<bool?>('disableProxyAccess');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableManagedEuc = registerOutput<bool?>('enableManagedEuc');
    this.enableThirdPartyIdentity = registerOutput<bool?>('enableThirdPartyIdentity');
    this.gceSetup = registerOutput<InstanceGceSetup>('gceSetup');
    this.healthInfos = registerOutput<List<Map<String, dynamic>>>('healthInfos');
    this.healthState = registerOutput<String>('healthState');
    this.instanceId = registerOutput<String?>('instanceId');
    this.instanceOwners = registerOutput<List<String>?>('instanceOwners');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyUri = registerOutput<String>('proxyUri');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradeHistories = registerOutput<List<InstanceUpgradeHistory>>('upgradeHistories');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.desiredState = registerOutput<String?>('desiredState');
    this.disableProxyAccess = registerOutput<bool?>('disableProxyAccess');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableManagedEuc = registerOutput<bool?>('enableManagedEuc');
    this.enableThirdPartyIdentity = registerOutput<bool?>('enableThirdPartyIdentity');
    this.gceSetup = registerOutput<InstanceGceSetup>('gceSetup');
    this.healthInfos = registerOutput<List<Map<String, dynamic>>>('healthInfos');
    this.healthState = registerOutput<String>('healthState');
    this.instanceId = registerOutput<String?>('instanceId');
    this.instanceOwners = registerOutput<List<String>?>('instanceOwners');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyUri = registerOutput<String>('proxyUri');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradeHistories = registerOutput<List<InstanceUpgradeHistory>>('upgradeHistories');
  }
}

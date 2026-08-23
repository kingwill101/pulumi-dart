import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_all_instances_config.dart';
import 'instance_group_manager_args.dart';
import 'instance_group_manager_auto_healing_policies.dart';
import 'instance_group_manager_instance_lifecycle_policy.dart';
import 'instance_group_manager_params.dart';
import 'instance_group_manager_resource_policies.dart';
import 'instance_group_manager_standby_policy.dart';
import 'instance_group_manager_state.dart';
import 'instance_group_manager_update_policy.dart';

/// The Google Compute Engine Instance Group Manager API creates and manages pools
/// of homogeneous Compute Engine virtual machine instances from a common instance
/// template. For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/manager)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers)
///
/// &gt; **Note:** Use [gcp.compute.RegionInstanceGroupManager](https://www.terraform.io/docs/providers/google/r/compute_region_instance_group_manager.html) to create a regional (multi-zone) instance group manager.
///
/// ## Example Usage
///
/// ### With Top Level Instance Template (`Google` Provider)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const autohealing = new gcp.compute.HealthCheck("autohealing", {
///     name: "autohealing-health-check",
///     checkIntervalSec: 5,
///     timeoutSec: 5,
///     healthyThreshold: 2,
///     unhealthyThreshold: 10,
///     httpHealthCheck: {
///         requestPath: "/healthz",
///         port: 8080,
///     },
/// });
/// const appserver = new gcp.compute.InstanceGroupManager("appserver", {
///     name: "appserver-igm",
///     baseInstanceName: "app",
///     zone: "us-central1-a",
///     versions: [{
///         instanceTemplate: appserverGoogleComputeInstanceTemplate.selfLinkUnique,
///     }],
///     allInstancesConfig: {
///         metadata: {
///             metadata_key: "metadata_value",
///         },
///         labels: {
///             label_key: "label_value",
///         },
///     },
///     targetPools: [appserverGoogleComputeTargetPool.id],
///     targetSize: 2,
///     namedPorts: [{
///         name: "customhttp",
///         port: 8888,
///     }],
///     autoHealingPolicies: {
///         healthCheck: autohealing.id,
///         initialDelaySec: 300,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// autohealing = gcp.compute.HealthCheck("autohealing",
///     name="autohealing-health-check",
///     check_interval_sec=5,
///     timeout_sec=5,
///     healthy_threshold=2,
///     unhealthy_threshold=10,
///     http_health_check={
///         "request_path": "/healthz",
///         "port": 8080,
///     })
/// appserver = gcp.compute.InstanceGroupManager("appserver",
///     name="appserver-igm",
///     base_instance_name="app",
///     zone="us-central1-a",
///     versions=[{
///         "instance_template": appserver_google_compute_instance_template["selfLinkUnique"],
///     }],
///     all_instances_config={
///         "metadata": {
///             "metadata_key": "metadata_value",
///         },
///         "labels": {
///             "label_key": "label_value",
///         },
///     },
///     target_pools=[appserver_google_compute_target_pool["id"]],
///     target_size=2,
///     named_ports=[{
///         "name": "customhttp",
///         "port": 8888,
///     }],
///     auto_healing_policies={
///         "health_check": autohealing.id,
///         "initial_delay_sec": 300,
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
///     var autohealing = new Gcp.Compute.HealthCheck("autohealing", new()
///     {
///         Name = "autohealing-health-check",
///         CheckIntervalSec = 5,
///         TimeoutSec = 5,
///         HealthyThreshold = 2,
///         UnhealthyThreshold = 10,
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             RequestPath = "/healthz",
///             Port = 8080,
///         },
///     });
///
///     var appserver = new Gcp.Compute.InstanceGroupManager("appserver", new()
///     {
///         Name = "appserver-igm",
///         BaseInstanceName = "app",
///         Zone = "us-central1-a",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = appserverGoogleComputeInstanceTemplate.SelfLinkUnique,
///             },
///         },
///         AllInstancesConfig = new Gcp.Compute.Inputs.InstanceGroupManagerAllInstancesConfigArgs
///         {
///             Metadata =
///             {
///                 { "metadata_key", "metadata_value" },
///             },
///             Labels =
///             {
///                 { "label_key", "label_value" },
///             },
///         },
///         TargetPools = new[]
///         {
///             appserverGoogleComputeTargetPool.Id,
///         },
///         TargetSize = 2,
///         NamedPorts = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerNamedPortArgs
///             {
///                 Name = "customhttp",
///                 Port = 8888,
///             },
///         },
///         AutoHealingPolicies = new Gcp.Compute.Inputs.InstanceGroupManagerAutoHealingPoliciesArgs
///         {
///             HealthCheck = autohealing.Id,
///             InitialDelaySec = 300,
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
/// 		autohealing, err := compute.NewHealthCheck(ctx, "autohealing", &compute.HealthCheckArgs{
/// 			Name:               pulumi.String("autohealing-health-check"),
/// 			CheckIntervalSec:   pulumi.Int(5),
/// 			TimeoutSec:         pulumi.Int(5),
/// 			HealthyThreshold:   pulumi.Int(2),
/// 			UnhealthyThreshold: pulumi.Int(10),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				RequestPath: pulumi.String("/healthz"),
/// 				Port:        pulumi.Int(8080),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceGroupManager(ctx, "appserver", &compute.InstanceGroupManagerArgs{
/// 			Name:             pulumi.String("appserver-igm"),
/// 			BaseInstanceName: pulumi.String("app"),
/// 			Zone:             pulumi.String("us-central1-a"),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: pulumi.Any(appserverGoogleComputeInstanceTemplate.SelfLinkUnique),
/// 				},
/// 			},
/// 			AllInstancesConfig: &compute.InstanceGroupManagerAllInstancesConfigArgs{
/// 				Metadata: pulumi.StringMap{
/// 					"metadata_key": pulumi.String("metadata_value"),
/// 				},
/// 				Labels: pulumi.StringMap{
/// 					"label_key": pulumi.String("label_value"),
/// 				},
/// 			},
/// 			TargetPools: pulumi.StringArray{
/// 				appserverGoogleComputeTargetPool.Id,
/// 			},
/// 			TargetSize: pulumi.Int(2),
/// 			NamedPorts: compute.InstanceGroupManagerNamedPortArray{
/// 				&compute.InstanceGroupManagerNamedPortArgs{
/// 					Name: pulumi.String("customhttp"),
/// 					Port: pulumi.Int(8888),
/// 				},
/// 			},
/// 			AutoHealingPolicies: &compute.InstanceGroupManagerAutoHealingPoliciesArgs{
/// 				HealthCheck:     autohealing.ID().ToIDOutput().ToStringOutput(),
/// 				InitialDelaySec: pulumi.Int(300),
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
/// resource "gcp_compute_healthcheck" "autohealing" {
///   name                = "autohealing-health-check"
///   check_interval_sec  = 5
///   timeout_sec         = 5
///   healthy_threshold   = 2
///   unhealthy_threshold = 10 # 50 seconds
///   http_health_check = {
///     request_path = "/healthz"
///     port         = "8080"
///   }
/// }
/// resource "gcp_compute_instancegroupmanager" "appserver" {
///   name               = "appserver-igm"
///   base_instance_name = "app"
///   zone               = "us-central1-a"
///   versions {
///     instance_template = appserverGoogleComputeInstanceTemplate.selfLinkUnique
///   }
///   all_instances_config = {
///     metadata = {
///       "metadata_key" = "metadata_value"
///     }
///     labels = {
///       "label_key" = "label_value"
///     }
///   }
///   target_pools = [appserverGoogleComputeTargetPool.id]
///   target_size  = 2
///   named_ports {
///     name = "customhttp"
///     port = 8888
///   }
///   auto_healing_policies = {
///     health_check      = gcp_compute_healthcheck.autohealing.id
///     initial_delay_sec = 300
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerAllInstancesConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerNamedPortArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerAutoHealingPoliciesArgs;
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
///         var autohealing = new HealthCheck("autohealing", HealthCheckArgs.builder()
///             .name("autohealing-health-check")
///             .checkIntervalSec(5)
///             .timeoutSec(5)
///             .healthyThreshold(2)
///             .unhealthyThreshold(10)
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .requestPath("/healthz")
///                 .port(8080)
///                 .build())
///             .build());
///
///         var appserver = new InstanceGroupManager("appserver", InstanceGroupManagerArgs.builder()
///             .name("appserver-igm")
///             .baseInstanceName("app")
///             .zone("us-central1-a")
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(appserverGoogleComputeInstanceTemplate.get("selfLinkUnique"))
///                 .build())
///             .allInstancesConfig(InstanceGroupManagerAllInstancesConfigArgs.builder()
///                 .metadata(Map.of("metadata_key", "metadata_value"))
///                 .labels(Map.of("label_key", "label_value"))
///                 .build())
///             .targetPools(appserverGoogleComputeTargetPool.get("id"))
///             .targetSize(2)
///             .namedPorts(InstanceGroupManagerNamedPortArgs.builder()
///                 .name("customhttp")
///                 .port(8888)
///                 .build())
///             .autoHealingPolicies(InstanceGroupManagerAutoHealingPoliciesArgs.builder()
///                 .healthCheck(autohealing.id())
///                 .initialDelaySec(300)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   autohealing:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: autohealing-health-check
///       checkIntervalSec: 5
///       timeoutSec: 5
///       healthyThreshold: 2
///       unhealthyThreshold: 10 # 50 seconds
///       httpHealthCheck:
///         requestPath: /healthz
///         port: '8080'
///   appserver:
///     type: gcp:compute:InstanceGroupManager
///     properties:
///       name: appserver-igm
///       baseInstanceName: app
///       zone: us-central1-a
///       versions:
///         - instanceTemplate: ${appserverGoogleComputeInstanceTemplate.selfLinkUnique}
///       allInstancesConfig:
///         metadata:
///           metadata_key: metadata_value
///         labels:
///           label_key: label_value
///       targetPools:
///         - ${appserverGoogleComputeTargetPool.id}
///       targetSize: 2
///       namedPorts:
///         - name: customhttp
///           port: 8888
///       autoHealingPolicies:
///         healthCheck: ${autohealing.id}
///         initialDelaySec: 300
/// ```
///
///
///
/// ### With Multiple Versions (`Google-Beta` Provider)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appserver = new gcp.compute.InstanceGroupManager("appserver", {
///     name: "appserver-igm",
///     baseInstanceName: "app",
///     zone: "us-central1-a",
///     targetSize: 5,
///     versions: [
///         {
///             name: "appserver",
///             instanceTemplate: appserverGoogleComputeInstanceTemplate.selfLinkUnique,
///         },
///         {
///             name: "appserver-canary",
///             instanceTemplate: appserver_canary.selfLinkUnique,
///             targetSize: {
///                 fixed: 1,
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appserver = gcp.compute.InstanceGroupManager("appserver",
///     name="appserver-igm",
///     base_instance_name="app",
///     zone="us-central1-a",
///     target_size=5,
///     versions=[
///         {
///             "name": "appserver",
///             "instance_template": appserver_google_compute_instance_template["selfLinkUnique"],
///         },
///         {
///             "name": "appserver-canary",
///             "instance_template": appserver_canary["selfLinkUnique"],
///             "target_size": {
///                 "fixed": 1,
///             },
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
///     var appserver = new Gcp.Compute.InstanceGroupManager("appserver", new()
///     {
///         Name = "appserver-igm",
///         BaseInstanceName = "app",
///         Zone = "us-central1-a",
///         TargetSize = 5,
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 Name = "appserver",
///                 InstanceTemplate = appserverGoogleComputeInstanceTemplate.SelfLinkUnique,
///             },
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 Name = "appserver-canary",
///                 InstanceTemplate = appserver_canary.SelfLinkUnique,
///                 TargetSize = new Gcp.Compute.Inputs.InstanceGroupManagerVersionTargetSizeArgs
///                 {
///                     Fixed = 1,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewInstanceGroupManager(ctx, "appserver", &compute.InstanceGroupManagerArgs{
/// 			Name:             pulumi.String("appserver-igm"),
/// 			BaseInstanceName: pulumi.String("app"),
/// 			Zone:             pulumi.String("us-central1-a"),
/// 			TargetSize:       pulumi.Int(5),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					Name:             pulumi.String("appserver"),
/// 					InstanceTemplate: pulumi.Any(appserverGoogleComputeInstanceTemplate.SelfLinkUnique),
/// 				},
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					Name:             pulumi.String("appserver-canary"),
/// 					InstanceTemplate: pulumi.Any(appserver_canary.SelfLinkUnique),
/// 					TargetSize: &compute.InstanceGroupManagerVersionTargetSizeArgs{
/// 						Fixed: pulumi.Int(1),
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
/// resource "gcp_compute_instancegroupmanager" "appserver" {
///   name               = "appserver-igm"
///   base_instance_name = "app"
///   zone               = "us-central1-a"
///   target_size        = 5
///   versions {
///     name              = "appserver"
///     instance_template = appserverGoogleComputeInstanceTemplate.selfLinkUnique
///   }
///   versions {
///     name              = "appserver-canary"
///     instance_template = appserver-canary.selfLinkUnique
///     target_size = {
///       fixed = 1
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
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionTargetSizeArgs;
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
///         var appserver = new InstanceGroupManager("appserver", InstanceGroupManagerArgs.builder()
///             .name("appserver-igm")
///             .baseInstanceName("app")
///             .zone("us-central1-a")
///             .targetSize(5)
///             .versions(
///                 InstanceGroupManagerVersionArgs.builder()
///                     .name("appserver")
///                     .instanceTemplate(appserverGoogleComputeInstanceTemplate.get("selfLinkUnique"))
///                     .build(),
///                 InstanceGroupManagerVersionArgs.builder()
///                     .name("appserver-canary")
///                     .instanceTemplate(appserver_canary.get("selfLinkUnique"))
///                     .targetSize(InstanceGroupManagerVersionTargetSizeArgs.builder()
///                         .fixed(1)
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appserver:
///     type: gcp:compute:InstanceGroupManager
///     properties:
///       name: appserver-igm
///       baseInstanceName: app
///       zone: us-central1-a
///       targetSize: 5
///       versions:
///         - name: appserver
///           instanceTemplate: ${appserverGoogleComputeInstanceTemplate.selfLinkUnique}
///         - name: appserver-canary
///           instanceTemplate: ${["appserver-canary"].selfLinkUnique}
///           targetSize:
///             fixed: 1
/// ```
///
///
///
/// ### With Standby Policy (`Google` Provider)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const igm_sr = new gcp.compute.InstanceGroupManager("igm-sr", {
///     name: "tf-sr-igm",
///     baseInstanceName: "tf-sr-igm-instance",
///     zone: "us-central1-a",
///     targetSize: 5,
///     versions: [{
///         instanceTemplate: sr_igm.selfLink,
///         name: "primary",
///     }],
///     standbyPolicy: {
///         initialDelaySec: 30,
///         mode: "MANUAL",
///     },
///     targetSuspendedSize: 2,
///     targetStoppedSize: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// igm_sr = gcp.compute.InstanceGroupManager("igm-sr",
///     name="tf-sr-igm",
///     base_instance_name="tf-sr-igm-instance",
///     zone="us-central1-a",
///     target_size=5,
///     versions=[{
///         "instance_template": sr_igm["selfLink"],
///         "name": "primary",
///     }],
///     standby_policy={
///         "initial_delay_sec": 30,
///         "mode": "MANUAL",
///     },
///     target_suspended_size=2,
///     target_stopped_size=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var igm_sr = new Gcp.Compute.InstanceGroupManager("igm-sr", new()
///     {
///         Name = "tf-sr-igm",
///         BaseInstanceName = "tf-sr-igm-instance",
///         Zone = "us-central1-a",
///         TargetSize = 5,
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = sr_igm.SelfLink,
///                 Name = "primary",
///             },
///         },
///         StandbyPolicy = new Gcp.Compute.Inputs.InstanceGroupManagerStandbyPolicyArgs
///         {
///             InitialDelaySec = 30,
///             Mode = "MANUAL",
///         },
///         TargetSuspendedSize = 2,
///         TargetStoppedSize = 1,
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
/// 		_, err := compute.NewInstanceGroupManager(ctx, "igm-sr", &compute.InstanceGroupManagerArgs{
/// 			Name:             pulumi.String("tf-sr-igm"),
/// 			BaseInstanceName: pulumi.String("tf-sr-igm-instance"),
/// 			Zone:             pulumi.String("us-central1-a"),
/// 			TargetSize:       pulumi.Int(5),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: pulumi.Any(sr_igm.SelfLink),
/// 					Name:             pulumi.String("primary"),
/// 				},
/// 			},
/// 			StandbyPolicy: &compute.InstanceGroupManagerStandbyPolicyArgs{
/// 				InitialDelaySec: pulumi.Int(30),
/// 				Mode:            pulumi.String("MANUAL"),
/// 			},
/// 			TargetSuspendedSize: pulumi.Int(2),
/// 			TargetStoppedSize:   pulumi.Int(1),
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
/// resource "gcp_compute_instancegroupmanager" "igm-sr" {
///   name               = "tf-sr-igm"
///   base_instance_name = "tf-sr-igm-instance"
///   zone               = "us-central1-a"
///   target_size        = 5
///   versions {
///     instance_template = sr-igm.selfLink
///     name              = "primary"
///   }
///   standby_policy = {
///     initial_delay_sec = 30
///     mode              = "MANUAL"
///   }
///   target_suspended_size = 2
///   target_stopped_size   = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerStandbyPolicyArgs;
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
///         var igm_sr = new InstanceGroupManager("igm-sr", InstanceGroupManagerArgs.builder()
///             .name("tf-sr-igm")
///             .baseInstanceName("tf-sr-igm-instance")
///             .zone("us-central1-a")
///             .targetSize(5)
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(sr_igm.get("selfLink"))
///                 .name("primary")
///                 .build())
///             .standbyPolicy(InstanceGroupManagerStandbyPolicyArgs.builder()
///                 .initialDelaySec(30)
///                 .mode("MANUAL")
///                 .build())
///             .targetSuspendedSize(2)
///             .targetStoppedSize(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   igm-sr:
///     type: gcp:compute:InstanceGroupManager
///     properties:
///       name: tf-sr-igm
///       baseInstanceName: tf-sr-igm-instance
///       zone: us-central1-a
///       targetSize: 5
///       versions:
///         - instanceTemplate: ${["sr-igm"].selfLink}
///           name: primary
///       standbyPolicy:
///         initialDelaySec: 30
///         mode: MANUAL
///       targetSuspendedSize: 2
///       targetStoppedSize: 1
/// ```
///
///
///
/// ### With Resource Policies (`Google` Provider)
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const workloadPolicy = new gcp.compute.ResourcePolicy("workload_policy", {
///     name: "tf-test-gce-policy",
///     region: "us-central1",
///     workloadPolicy: {
///         type: "HIGH_THROUGHPUT",
///     },
/// });
/// const igm_basic = new gcp.compute.InstanceTemplate("igm-basic", {
///     name: "igm-instance-template",
///     machineType: "a4-highgpu-8g",
///     canIpForward: false,
///     tags: [
///         "foo",
///         "bar",
///     ],
///     disks: [{
///         sourceImage: myImage.then(myImage => myImage.selfLink),
///         autoDelete: true,
///         boot: true,
///         diskType: "hyperdisk-balanced",
///     }],
///     networkInterfaces: [{
///         network: "default",
///     }],
///     serviceAccount: {
///         scopes: [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     },
/// });
/// const igm_workload_policy = new gcp.compute.InstanceGroupManager("igm-workload-policy", {
///     description: "Terraform test instance group manager",
///     name: "igm-basic-workload-policy",
///     versions: [{
///         name: "prod",
///         instanceTemplate: igm_basic.selfLink,
///     }],
///     baseInstanceName: "tf-test-igm-no-tp",
///     zone: "us-central1-b",
///     targetSize: 0,
///     resourcePolicies: {
///         workloadPolicy: workloadPolicy.selfLink,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// workload_policy = gcp.compute.ResourcePolicy("workload_policy",
///     name="tf-test-gce-policy",
///     region="us-central1",
///     workload_policy={
///         "type": "HIGH_THROUGHPUT",
///     })
/// igm_basic = gcp.compute.InstanceTemplate("igm-basic",
///     name="igm-instance-template",
///     machine_type="a4-highgpu-8g",
///     can_ip_forward=False,
///     tags=[
///         "foo",
///         "bar",
///     ],
///     disks=[{
///         "source_image": my_image.self_link,
///         "auto_delete": True,
///         "boot": True,
///         "disk_type": "hyperdisk-balanced",
///     }],
///     network_interfaces=[{
///         "network": "default",
///     }],
///     service_account={
///         "scopes": [
///             "userinfo-email",
///             "compute-ro",
///             "storage-ro",
///         ],
///     })
/// igm_workload_policy = gcp.compute.InstanceGroupManager("igm-workload-policy",
///     description="Terraform test instance group manager",
///     name="igm-basic-workload-policy",
///     versions=[{
///         "name": "prod",
///         "instance_template": igm_basic.self_link,
///     }],
///     base_instance_name="tf-test-igm-no-tp",
///     zone="us-central1-b",
///     target_size=0,
///     resource_policies={
///         "workload_policy": workload_policy.self_link,
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
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var workloadPolicy = new Gcp.Compute.ResourcePolicy("workload_policy", new()
///     {
///         Name = "tf-test-gce-policy",
///         Region = "us-central1",
///         WorkloadPolicy = new Gcp.Compute.Inputs.ResourcePolicyWorkloadPolicyArgs
///         {
///             Type = "HIGH_THROUGHPUT",
///         },
///     });
///
///     var igm_basic = new Gcp.Compute.InstanceTemplate("igm-basic", new()
///     {
///         Name = "igm-instance-template",
///         MachineType = "a4-highgpu-8g",
///         CanIpForward = false,
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = myImage.Apply(getImageResult => getImageResult.SelfLink),
///                 AutoDelete = true,
///                 Boot = true,
///                 DiskType = "hyperdisk-balanced",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Scopes = new[]
///             {
///                 "userinfo-email",
///                 "compute-ro",
///                 "storage-ro",
///             },
///         },
///     });
///
///     var igm_workload_policy = new Gcp.Compute.InstanceGroupManager("igm-workload-policy", new()
///     {
///         Description = "Terraform test instance group manager",
///         Name = "igm-basic-workload-policy",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 Name = "prod",
///                 InstanceTemplate = igm_basic.SelfLink,
///             },
///         },
///         BaseInstanceName = "tf-test-igm-no-tp",
///         Zone = "us-central1-b",
///         TargetSize = 0,
///         ResourcePolicies = new Gcp.Compute.Inputs.InstanceGroupManagerResourcePoliciesArgs
///         {
///             WorkloadPolicy = workloadPolicy.SelfLink,
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
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workloadPolicy, err := compute.NewResourcePolicy(ctx, "workload_policy", &compute.ResourcePolicyArgs{
/// 			Name:   pulumi.String("tf-test-gce-policy"),
/// 			Region: pulumi.String("us-central1"),
/// 			WorkloadPolicy: &compute.ResourcePolicyWorkloadPolicyArgs{
/// 				Type: pulumi.String("HIGH_THROUGHPUT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		igm_basic, err := compute.NewInstanceTemplate(ctx, "igm-basic", &compute.InstanceTemplateArgs{
/// 			Name:         pulumi.String("igm-instance-template"),
/// 			MachineType:  pulumi.String("a4-highgpu-8g"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String(myImage.SelfLink),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 					DiskType:    pulumi.String("hyperdisk-balanced"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("userinfo-email"),
/// 					pulumi.String("compute-ro"),
/// 					pulumi.String("storage-ro"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceGroupManager(ctx, "igm-workload-policy", &compute.InstanceGroupManagerArgs{
/// 			Description: pulumi.String("Terraform test instance group manager"),
/// 			Name:        pulumi.String("igm-basic-workload-policy"),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					Name:             pulumi.String("prod"),
/// 					InstanceTemplate: igm_basic.SelfLink,
/// 				},
/// 			},
/// 			BaseInstanceName: pulumi.String("tf-test-igm-no-tp"),
/// 			Zone:             pulumi.String("us-central1-b"),
/// 			TargetSize:       pulumi.Int(0),
/// 			ResourcePolicies: &compute.InstanceGroupManagerResourcePoliciesArgs{
/// 				WorkloadPolicy: workloadPolicy.SelfLink,
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
/// data "gcp_compute_getimage" "myImage" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_resourcepolicy" "workload_policy" {
///   name   = "tf-test-gce-policy"
///   region = "us-central1"
///   workload_policy = {
///     type = "HIGH_THROUGHPUT"
///   }
/// }
/// resource "gcp_compute_instancetemplate" "igm-basic" {
///   name           = "igm-instance-template"
///   machine_type   = "a4-highgpu-8g"
///   can_ip_forward = false
///   tags           = ["foo", "bar"]
///   disks {
///     source_image = data.gcp_compute_getimage.myImage.self_link
///     auto_delete  = true
///     boot         = true
///     disk_type    = "hyperdisk-balanced"
///   }
///   network_interfaces {
///     network = "default"
///   }
///   service_account = {
///     scopes = ["userinfo-email", "compute-ro", "storage-ro"]
///   }
/// }
/// resource "gcp_compute_instancegroupmanager" "igm-workload-policy" {
///   description = "Terraform test instance group manager"
///   name        = "igm-basic-workload-policy"
///   versions {
///     name              = "prod"
///     instance_template = gcp_compute_instancetemplate.igm-basic.self_link
///   }
///   base_instance_name = "tf-test-igm-no-tp"
///   zone               = "us-central1-b"
///   target_size        = 0
///   resource_policies = {
///     workload_policy = gcp_compute_resourcepolicy.workload_policy.self_link
///   }
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyWorkloadPolicyArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerResourcePoliciesArgs;
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
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var workloadPolicy = new ResourcePolicy("workloadPolicy", ResourcePolicyArgs.builder()
///             .name("tf-test-gce-policy")
///             .region("us-central1")
///             .workloadPolicy(ResourcePolicyWorkloadPolicyArgs.builder()
///                 .type("HIGH_THROUGHPUT")
///                 .build())
///             .build());
///
///         var igm_basic = new InstanceTemplate("igm-basic", InstanceTemplateArgs.builder()
///             .name("igm-instance-template")
///             .machineType("a4-highgpu-8g")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage(myImage.selfLink())
///                 .autoDelete(true)
///                 .boot(true)
///                 .diskType("hyperdisk-balanced")
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .scopes(
///                     "userinfo-email",
///                     "compute-ro",
///                     "storage-ro")
///                 .build())
///             .build());
///
///         var igm_workload_policy = new InstanceGroupManager("igm-workload-policy", InstanceGroupManagerArgs.builder()
///             .description("Terraform test instance group manager")
///             .name("igm-basic-workload-policy")
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .name("prod")
///                 .instanceTemplate(igm_basic.selfLink())
///                 .build())
///             .baseInstanceName("tf-test-igm-no-tp")
///             .zone("us-central1-b")
///             .targetSize(0)
///             .resourcePolicies(InstanceGroupManagerResourcePoliciesArgs.builder()
///                 .workloadPolicy(workloadPolicy.selfLink())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   workloadPolicy:
///     type: gcp:compute:ResourcePolicy
///     name: workload_policy
///     properties:
///       name: tf-test-gce-policy
///       region: us-central1
///       workloadPolicy:
///         type: HIGH_THROUGHPUT
///   igm-basic:
///     type: gcp:compute:InstanceTemplate
///     properties:
///       name: igm-instance-template
///       machineType: a4-highgpu-8g
///       canIpForward: false
///       tags:
///         - foo
///         - bar
///       disks:
///         - sourceImage: ${myImage.selfLink}
///           autoDelete: true
///           boot: true
///           diskType: hyperdisk-balanced
///       networkInterfaces:
///         - network: default
///       serviceAccount:
///         scopes:
///           - userinfo-email
///           - compute-ro
///           - storage-ro
///   igm-workload-policy:
///     type: gcp:compute:InstanceGroupManager
///     properties:
///       description: Terraform test instance group manager
///       name: igm-basic-workload-policy
///       versions:
///         - name: prod
///           instanceTemplate: ${["igm-basic"].selfLink}
///       baseInstanceName: tf-test-igm-no-tp
///       zone: us-central1-b
///       targetSize: 0
///       resourcePolicies:
///         workloadPolicy: ${workloadPolicy.selfLink}
/// variables:
///   myImage:
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
/// Instance group managers can be imported using any of these accepted formats:
///
/// ```sh
/// * `projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{name}}`
/// * `{{project}}/{{zone}}/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, instance group managers can be imported using one of the formats above. For example:
///
/// ```
/// $ terraform import google_compute_instance_group_manager.default projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{name}}
/// $ terraform import google_compute_instance_group_manager.default {{project}}/{{zone}}/{{name}}
/// $ terraform import google_compute_instance_group_manager.default {{project}}/{{name}}
/// $ terraform import google_compute_instance_group_manager.default {{name}}
/// ```
///
/// ```
class InstanceGroupManager extends pulumi.CustomResource {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  late final pulumi.Output<InstanceGroupManagerAllInstancesConfig?> allInstancesConfig;
  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  late final pulumi.Output<InstanceGroupManagerAutoHealingPolicies?> autoHealingPolicies;
  /// The base instance name to use for
  /// instances in this group. The value must be a valid
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt) name. Supported characters
  /// are lowercase letters, numbers, and hyphens (-). Instances are named by
  /// appending a hyphen and a random four-character string to the base instance
  /// name.
  late final pulumi.Output<String> baseInstanceName;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  late final pulumi.Output<String> deletionPolicy;
  /// An optional textual description of the instance
  /// group manager.
  late final pulumi.Output<String?> description;
  /// The fingerprint of the instance group manager.
  late final pulumi.Output<String> fingerprint;
  /// The full URL of the instance group created by the manager.
  late final pulumi.Output<String> instanceGroup;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> instanceGroupManagerId;
  /// The instance lifecycle policy for this managed instance group.
  late final pulumi.Output<InstanceGroupManagerInstanceLifecyclePolicy> instanceLifecyclePolicy;
  /// Pagination behavior of the `listManagedInstances` API
  /// method for this managed instance group. Valid values are: `PAGELESS`, `PAGINATED`.
  /// If `PAGELESS` (default), Pagination is disabled for the group's `listManagedInstances` API method.
  /// `maxResults` and `pageToken` query parameters are ignored and all instances are returned in a single
  /// response. If `PAGINATED`, pagination is enabled, `maxResults` and `pageToken` query parameters are
  /// respected.
  late final pulumi.Output<String?> listManagedInstancesResults;
  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> name;
  /// The named port configuration. See the section below
  /// for details on configuration.
  late final pulumi.Output<List<Map<String, dynamic>>?> namedPorts;
  late final pulumi.Output<String> operation;
  /// ) Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  late final pulumi.Output<InstanceGroupManagerParams?> params;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Resource policies for this managed instance group. Structure is documented below.
  late final pulumi.Output<InstanceGroupManagerResourcePolicies?> resourcePolicies;
  /// The URL of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  late final pulumi.Output<InstanceGroupManagerStandbyPolicy> standbyPolicy;
  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs).
  late final pulumi.Output<List<Map<String, dynamic>>?> statefulDisks;
  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> statefulExternalIps;
  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> statefulInternalIps;
  /// The status of this managed instance group.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// The full URL of all target pools to which new
  /// instances in the group are added. Updating the target pools attribute does
  /// not affect existing instances.
  late final pulumi.Output<List<String>?> targetPools;
  /// The target number of running instances for this managed
  /// instance group. This value will fight with autoscaler settings when set, and generally shouldn't be set
  /// when using one. If a value is required, such as to specify a creation-time target size for the MIG,
  /// `lifecycle.ignore_changes` can be used to prevent Terraform from modifying the value. Defaults to `0`.
  late final pulumi.Output<int> targetSize;
  /// The policy that specifies how the MIG creates its VMs to achieve the target size. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> targetSizePolicies;
  /// The target number of stopped instances for this managed instance group.
  late final pulumi.Output<int> targetStoppedSize;
  /// The target number of suspended instances for this managed instance group.
  late final pulumi.Output<int> targetSuspendedSize;
  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/patch).
  late final pulumi.Output<InstanceGroupManagerUpdatePolicy> updatePolicy;
  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> versions;
  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, this provider will
  /// continue trying until it times out.
  late final pulumi.Output<bool?> waitForInstances;
  /// When used with `waitForInstances` it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  late final pulumi.Output<String?> waitForInstancesStatus;
  /// The zone that instances in this group should be created
  /// in.
  ///
  /// - - -
  late final pulumi.Output<String> zone;

  /// Creates a new [InstanceGroupManager].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceGroupManager]. {@macro pulumi_compute_instance_group_manager_instance_group_manager_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceGroupManager(
    String name, {
    InstanceGroupManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroupManager:InstanceGroupManager',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allInstancesConfig = registerOutput<InstanceGroupManagerAllInstancesConfig?>('allInstancesConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerAllInstancesConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoHealingPolicies = registerOutput<InstanceGroupManagerAutoHealingPolicies?>('autoHealingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerAutoHealingPolicies.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    baseInstanceName = registerOutput<String>('baseInstanceName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    instanceGroup = registerOutput<String>('instanceGroup');
    instanceGroupManagerId = registerOutput<int>('instanceGroupManagerId');
    instanceLifecyclePolicy = registerOutput<InstanceGroupManagerInstanceLifecyclePolicy>('instanceLifecyclePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerInstanceLifecyclePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listManagedInstancesResults = registerOutput<String?>('listManagedInstancesResults');
    this.name = registerOutput<String>('name');
    namedPorts = registerOutput<List<Map<String, dynamic>>?>('namedPorts');
    operation = registerOutput<String>('operation');
    params = registerOutput<InstanceGroupManagerParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    resourcePolicies = registerOutput<InstanceGroupManagerResourcePolicies?>('resourcePolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerResourcePolicies.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    standbyPolicy = registerOutput<InstanceGroupManagerStandbyPolicy>('standbyPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerStandbyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statefulDisks = registerOutput<List<Map<String, dynamic>>?>('statefulDisks');
    statefulExternalIps = registerOutput<List<Map<String, dynamic>>?>('statefulExternalIps');
    statefulInternalIps = registerOutput<List<Map<String, dynamic>>?>('statefulInternalIps');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    targetPools = registerOutput<List<String>?>('targetPools');
    targetSize = registerOutput<int>('targetSize');
    targetSizePolicies = registerOutput<List<Map<String, dynamic>>>('targetSizePolicies');
    targetStoppedSize = registerOutput<int>('targetStoppedSize');
    targetSuspendedSize = registerOutput<int>('targetSuspendedSize');
    updatePolicy = registerOutput<InstanceGroupManagerUpdatePolicy>('updatePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    versions = registerOutput<List<Map<String, dynamic>>>('versions');
    waitForInstances = registerOutput<bool?>('waitForInstances');
    waitForInstancesStatus = registerOutput<String?>('waitForInstancesStatus');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [InstanceGroupManager] resource's state with the given [name] and [id].
  static InstanceGroupManager get(
    String name,
    pulumi.Input<String> id, {
    InstanceGroupManagerState? state,
  }) {
    return InstanceGroupManager._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceGroupManager._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroupManager:InstanceGroupManager',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allInstancesConfig = registerOutput<InstanceGroupManagerAllInstancesConfig?>('allInstancesConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerAllInstancesConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoHealingPolicies = registerOutput<InstanceGroupManagerAutoHealingPolicies?>('autoHealingPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerAutoHealingPolicies.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    baseInstanceName = registerOutput<String>('baseInstanceName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    instanceGroup = registerOutput<String>('instanceGroup');
    instanceGroupManagerId = registerOutput<int>('instanceGroupManagerId');
    instanceLifecyclePolicy = registerOutput<InstanceGroupManagerInstanceLifecyclePolicy>('instanceLifecyclePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerInstanceLifecyclePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listManagedInstancesResults = registerOutput<String?>('listManagedInstancesResults');
    this.name = registerOutput<String>('name');
    namedPorts = registerOutput<List<Map<String, dynamic>>?>('namedPorts');
    operation = registerOutput<String>('operation');
    params = registerOutput<InstanceGroupManagerParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    resourcePolicies = registerOutput<InstanceGroupManagerResourcePolicies?>('resourcePolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerResourcePolicies.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    standbyPolicy = registerOutput<InstanceGroupManagerStandbyPolicy>('standbyPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerStandbyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statefulDisks = registerOutput<List<Map<String, dynamic>>?>('statefulDisks');
    statefulExternalIps = registerOutput<List<Map<String, dynamic>>?>('statefulExternalIps');
    statefulInternalIps = registerOutput<List<Map<String, dynamic>>?>('statefulInternalIps');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    targetPools = registerOutput<List<String>?>('targetPools');
    targetSize = registerOutput<int>('targetSize');
    targetSizePolicies = registerOutput<List<Map<String, dynamic>>>('targetSizePolicies');
    targetStoppedSize = registerOutput<int>('targetStoppedSize');
    targetSuspendedSize = registerOutput<int>('targetSuspendedSize');
    updatePolicy = registerOutput<InstanceGroupManagerUpdatePolicy>('updatePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGroupManagerUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    versions = registerOutput<List<Map<String, dynamic>>>('versions');
    waitForInstances = registerOutput<bool?>('waitForInstances');
    waitForInstancesStatus = registerOutput<String?>('waitForInstancesStatus');
    zone = registerOutput<String>('zone');
  }
}

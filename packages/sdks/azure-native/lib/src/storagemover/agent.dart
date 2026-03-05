import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_args.dart';
import 'agent_properties_error_details_response.dart';
import 'system_data_response.dart';
import 'upload_limit_schedule_response.dart';

/// The Agent resource.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Agents_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new AzureNative.StorageMover.Agent("agent", new()
///     {
///         AgentName = "examples-agentName",
///         ArcResourceId = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///         ArcVmUuid = "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///         Description = "Example Agent Description",
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
///         UploadLimitSchedule = new AzureNative.StorageMover.Inputs.UploadLimitScheduleArgs
///         {
///             WeeklyRecurrences = new[]
///             {
///                 new AzureNative.StorageMover.Inputs.UploadLimitWeeklyRecurrenceArgs
///                 {
///                     Days = new[]
///                     {
///                         AzureNative.StorageMover.DayOfWeek.Monday,
///                     },
///                     EndTime = new AzureNative.StorageMover.Inputs.TimeArgs
///                     {
///                         Hour = 18,
///                         Minute = 30,
///                     },
///                     LimitInMbps = 2000,
///                     StartTime = new AzureNative.StorageMover.Inputs.TimeArgs
///                     {
///                         Hour = 9,
///                         Minute = 0,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewAgent(ctx, "agent", &storagemover.AgentArgs{
/// 			AgentName:         pulumi.String("examples-agentName"),
/// 			ArcResourceId:     pulumi.String("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName"),
/// 			ArcVmUuid:         pulumi.String("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9"),
/// 			Description:       pulumi.String("Example Agent Description"),
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
/// 			UploadLimitSchedule: &storagemover.UploadLimitScheduleArgs{
/// 				WeeklyRecurrences: storagemover.UploadLimitWeeklyRecurrenceArray{
/// 					&storagemover.UploadLimitWeeklyRecurrenceArgs{
/// 						Days: storagemover.DayOfWeekArray{
/// 							storagemover.DayOfWeekMonday,
/// 						},
/// 						EndTime: &storagemover.TimeArgs{
/// 							Hour:   pulumi.Int(18),
/// 							Minute: pulumi.Float64(30),
/// 						},
/// 						LimitInMbps: pulumi.Int(2000),
/// 						StartTime: &storagemover.TimeArgs{
/// 							Hour:   pulumi.Int(9),
/// 							Minute: pulumi.Float64(0),
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
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagemover.Agent;
/// import com.pulumi.azurenative.storagemover.AgentArgs;
/// import com.pulumi.azurenative.storagemover.inputs.UploadLimitScheduleArgs;
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
///         var agent = new Agent("agent", AgentArgs.builder()
///             .agentName("examples-agentName")
///             .arcResourceId("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName")
///             .arcVmUuid("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9")
///             .description("Example Agent Description")
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
///             .uploadLimitSchedule(UploadLimitScheduleArgs.builder()
///                 .weeklyRecurrences(UploadLimitWeeklyRecurrenceArgs.builder()
///                     .days("Monday")
///                     .endTime(TimeArgs.builder()
///                         .hour(18)
///                         .minute(30.0)
///                         .build())
///                     .limitInMbps(2000)
///                     .startTime(TimeArgs.builder()
///                         .hour(9)
///                         .minute(0.0)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const agent = new azure_native.storagemover.Agent("agent", {
///     agentName: "examples-agentName",
///     arcResourceId: "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///     arcVmUuid: "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     description: "Example Agent Description",
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
///     uploadLimitSchedule: {
///         weeklyRecurrences: [{
///             days: [azure_native.storagemover.DayOfWeek.Monday],
///             endTime: {
///                 hour: 18,
///                 minute: 30,
///             },
///             limitInMbps: 2000,
///             startTime: {
///                 hour: 9,
///                 minute: 0,
///             },
///         }],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent = azure_native.storagemover.Agent("agent",
///     agent_name="examples-agentName",
///     arc_resource_id="/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///     arc_vm_uuid="3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     description="Example Agent Description",
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName",
///     upload_limit_schedule={
///         "weekly_recurrences": [{
///             "days": [azure_native.storagemover.DayOfWeek.MONDAY],
///             "end_time": {
///                 "hour": 18,
///                 "minute": 30,
///             },
///             "limit_in_mbps": 2000,
///             "start_time": {
///                 "hour": 9,
///                 "minute": 0,
///             },
///         }],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   agent:
///     type: azure-native:storagemover:Agent
///     properties:
///       agentName: examples-agentName
///       arcResourceId: /subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName
///       arcVmUuid: 3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9
///       description: Example Agent Description
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
///       uploadLimitSchedule:
///         weeklyRecurrences:
///           - days:
///               - Monday
///             endTime:
///               hour: 18
///               minute: 30
///             limitInMbps: 2000
///             startTime:
///               hour: 9
///               minute: 0
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Agents_CreateOrUpdate_MinimumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new AzureNative.StorageMover.Agent("agent", new()
///     {
///         AgentName = "examples-agentName",
///         ArcResourceId = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///         ArcVmUuid = "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewAgent(ctx, "agent", &storagemover.AgentArgs{
/// 			AgentName:         pulumi.String("examples-agentName"),
/// 			ArcResourceId:     pulumi.String("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName"),
/// 			ArcVmUuid:         pulumi.String("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9"),
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagemover.Agent;
/// import com.pulumi.azurenative.storagemover.AgentArgs;
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
///         var agent = new Agent("agent", AgentArgs.builder()
///             .agentName("examples-agentName")
///             .arcResourceId("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName")
///             .arcVmUuid("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9")
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const agent = new azure_native.storagemover.Agent("agent", {
///     agentName: "examples-agentName",
///     arcResourceId: "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///     arcVmUuid: "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent = azure_native.storagemover.Agent("agent",
///     agent_name="examples-agentName",
///     arc_resource_id="/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///     arc_vm_uuid="3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName")
///
/// ```
///
/// ```yaml
/// resources:
///   agent:
///     type: azure-native:storagemover:Agent
///     properties:
///       agentName: examples-agentName
///       arcResourceId: /subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName
///       arcVmUuid: 3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Agents_CreateOrUpdate_WithOvernightUploadLimitSchedule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new AzureNative.StorageMover.Agent("agent", new()
///     {
///         AgentName = "examples-agentName",
///         ArcResourceId = "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///         ArcVmUuid = "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
///         UploadLimitSchedule = new AzureNative.StorageMover.Inputs.UploadLimitScheduleArgs
///         {
///             WeeklyRecurrences = new[]
///             {
///                 new AzureNative.StorageMover.Inputs.UploadLimitWeeklyRecurrenceArgs
///                 {
///                     Days = new[]
///                     {
///                         AzureNative.StorageMover.DayOfWeek.Monday,
///                         AzureNative.StorageMover.DayOfWeek.Tuesday,
///                         AzureNative.StorageMover.DayOfWeek.Wednesday,
///                         AzureNative.StorageMover.DayOfWeek.Thursday,
///                         AzureNative.StorageMover.DayOfWeek.Friday,
///                         AzureNative.StorageMover.DayOfWeek.Saturday,
///                         AzureNative.StorageMover.DayOfWeek.Sunday,
///                     },
///                     EndTime = new AzureNative.StorageMover.Inputs.TimeArgs
///                     {
///                         Hour = 24,
///                         Minute = 0,
///                     },
///                     LimitInMbps = 2000,
///                     StartTime = new AzureNative.StorageMover.Inputs.TimeArgs
///                     {
///                         Hour = 18,
///                         Minute = 0,
///                     },
///                 },
///                 new AzureNative.StorageMover.Inputs.UploadLimitWeeklyRecurrenceArgs
///                 {
///                     Days = new[]
///                     {
///                         AzureNative.StorageMover.DayOfWeek.Monday,
///                         AzureNative.StorageMover.DayOfWeek.Tuesday,
///                         AzureNative.StorageMover.DayOfWeek.Wednesday,
///                         AzureNative.StorageMover.DayOfWeek.Thursday,
///                         AzureNative.StorageMover.DayOfWeek.Friday,
///                         AzureNative.StorageMover.DayOfWeek.Saturday,
///                         AzureNative.StorageMover.DayOfWeek.Sunday,
///                     },
///                     EndTime = new AzureNative.StorageMover.Inputs.TimeArgs
///                     {
///                         Hour = 9,
///                         Minute = 0,
///                     },
///                     LimitInMbps = 2000,
///                     StartTime = new AzureNative.StorageMover.Inputs.TimeArgs
///                     {
///                         Hour = 0,
///                         Minute = 0,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewAgent(ctx, "agent", &storagemover.AgentArgs{
/// 			AgentName:         pulumi.String("examples-agentName"),
/// 			ArcResourceId:     pulumi.String("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName"),
/// 			ArcVmUuid:         pulumi.String("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9"),
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
/// 			UploadLimitSchedule: &storagemover.UploadLimitScheduleArgs{
/// 				WeeklyRecurrences: storagemover.UploadLimitWeeklyRecurrenceArray{
/// 					&storagemover.UploadLimitWeeklyRecurrenceArgs{
/// 						Days: storagemover.DayOfWeekArray{
/// 							storagemover.DayOfWeekMonday,
/// 							storagemover.DayOfWeekTuesday,
/// 							storagemover.DayOfWeekWednesday,
/// 							storagemover.DayOfWeekThursday,
/// 							storagemover.DayOfWeekFriday,
/// 							storagemover.DayOfWeekSaturday,
/// 							storagemover.DayOfWeekSunday,
/// 						},
/// 						EndTime: &storagemover.TimeArgs{
/// 							Hour:   pulumi.Int(24),
/// 							Minute: pulumi.Float64(0),
/// 						},
/// 						LimitInMbps: pulumi.Int(2000),
/// 						StartTime: &storagemover.TimeArgs{
/// 							Hour:   pulumi.Int(18),
/// 							Minute: pulumi.Float64(0),
/// 						},
/// 					},
/// 					&storagemover.UploadLimitWeeklyRecurrenceArgs{
/// 						Days: storagemover.DayOfWeekArray{
/// 							storagemover.DayOfWeekMonday,
/// 							storagemover.DayOfWeekTuesday,
/// 							storagemover.DayOfWeekWednesday,
/// 							storagemover.DayOfWeekThursday,
/// 							storagemover.DayOfWeekFriday,
/// 							storagemover.DayOfWeekSaturday,
/// 							storagemover.DayOfWeekSunday,
/// 						},
/// 						EndTime: &storagemover.TimeArgs{
/// 							Hour:   pulumi.Int(9),
/// 							Minute: pulumi.Float64(0),
/// 						},
/// 						LimitInMbps: pulumi.Int(2000),
/// 						StartTime: &storagemover.TimeArgs{
/// 							Hour:   pulumi.Int(0),
/// 							Minute: pulumi.Float64(0),
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
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagemover.Agent;
/// import com.pulumi.azurenative.storagemover.AgentArgs;
/// import com.pulumi.azurenative.storagemover.inputs.UploadLimitScheduleArgs;
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
///         var agent = new Agent("agent", AgentArgs.builder()
///             .agentName("examples-agentName")
///             .arcResourceId("/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName")
///             .arcVmUuid("3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9")
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
///             .uploadLimitSchedule(UploadLimitScheduleArgs.builder()
///                 .weeklyRecurrences(
///                     UploadLimitWeeklyRecurrenceArgs.builder()
///                         .days(
///                             "Monday",
///                             "Tuesday",
///                             "Wednesday",
///                             "Thursday",
///                             "Friday",
///                             "Saturday",
///                             "Sunday")
///                         .endTime(TimeArgs.builder()
///                             .hour(24)
///                             .minute(0.0)
///                             .build())
///                         .limitInMbps(2000)
///                         .startTime(TimeArgs.builder()
///                             .hour(18)
///                             .minute(0.0)
///                             .build())
///                         .build(),
///                     UploadLimitWeeklyRecurrenceArgs.builder()
///                         .days(
///                             "Monday",
///                             "Tuesday",
///                             "Wednesday",
///                             "Thursday",
///                             "Friday",
///                             "Saturday",
///                             "Sunday")
///                         .endTime(TimeArgs.builder()
///                             .hour(9)
///                             .minute(0.0)
///                             .build())
///                         .limitInMbps(2000)
///                         .startTime(TimeArgs.builder()
///                             .hour(0)
///                             .minute(0.0)
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const agent = new azure_native.storagemover.Agent("agent", {
///     agentName: "examples-agentName",
///     arcResourceId: "/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///     arcVmUuid: "3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
///     uploadLimitSchedule: {
///         weeklyRecurrences: [
///             {
///                 days: [
///                     azure_native.storagemover.DayOfWeek.Monday,
///                     azure_native.storagemover.DayOfWeek.Tuesday,
///                     azure_native.storagemover.DayOfWeek.Wednesday,
///                     azure_native.storagemover.DayOfWeek.Thursday,
///                     azure_native.storagemover.DayOfWeek.Friday,
///                     azure_native.storagemover.DayOfWeek.Saturday,
///                     azure_native.storagemover.DayOfWeek.Sunday,
///                 ],
///                 endTime: {
///                     hour: 24,
///                     minute: 0,
///                 },
///                 limitInMbps: 2000,
///                 startTime: {
///                     hour: 18,
///                     minute: 0,
///                 },
///             },
///             {
///                 days: [
///                     azure_native.storagemover.DayOfWeek.Monday,
///                     azure_native.storagemover.DayOfWeek.Tuesday,
///                     azure_native.storagemover.DayOfWeek.Wednesday,
///                     azure_native.storagemover.DayOfWeek.Thursday,
///                     azure_native.storagemover.DayOfWeek.Friday,
///                     azure_native.storagemover.DayOfWeek.Saturday,
///                     azure_native.storagemover.DayOfWeek.Sunday,
///                 ],
///                 endTime: {
///                     hour: 9,
///                     minute: 0,
///                 },
///                 limitInMbps: 2000,
///                 startTime: {
///                     hour: 0,
///                     minute: 0,
///                 },
///             },
///         ],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent = azure_native.storagemover.Agent("agent",
///     agent_name="examples-agentName",
///     arc_resource_id="/subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName",
///     arc_vm_uuid="3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9",
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName",
///     upload_limit_schedule={
///         "weekly_recurrences": [
///             {
///                 "days": [
///                     azure_native.storagemover.DayOfWeek.MONDAY,
///                     azure_native.storagemover.DayOfWeek.TUESDAY,
///                     azure_native.storagemover.DayOfWeek.WEDNESDAY,
///                     azure_native.storagemover.DayOfWeek.THURSDAY,
///                     azure_native.storagemover.DayOfWeek.FRIDAY,
///                     azure_native.storagemover.DayOfWeek.SATURDAY,
///                     azure_native.storagemover.DayOfWeek.SUNDAY,
///                 ],
///                 "end_time": {
///                     "hour": 24,
///                     "minute": 0,
///                 },
///                 "limit_in_mbps": 2000,
///                 "start_time": {
///                     "hour": 18,
///                     "minute": 0,
///                 },
///             },
///             {
///                 "days": [
///                     azure_native.storagemover.DayOfWeek.MONDAY,
///                     azure_native.storagemover.DayOfWeek.TUESDAY,
///                     azure_native.storagemover.DayOfWeek.WEDNESDAY,
///                     azure_native.storagemover.DayOfWeek.THURSDAY,
///                     azure_native.storagemover.DayOfWeek.FRIDAY,
///                     azure_native.storagemover.DayOfWeek.SATURDAY,
///                     azure_native.storagemover.DayOfWeek.SUNDAY,
///                 ],
///                 "end_time": {
///                     "hour": 9,
///                     "minute": 0,
///                 },
///                 "limit_in_mbps": 2000,
///                 "start_time": {
///                     "hour": 0,
///                     "minute": 0,
///                 },
///             },
///         ],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   agent:
///     type: azure-native:storagemover:Agent
///     properties:
///       agentName: examples-agentName
///       arcResourceId: /subscriptions/60bcfc77-6589-4da2-b7fd-f9ec9322cf95/resourceGroups/examples-rg/providers/Microsoft.HybridCompute/machines/examples-hybridComputeName
///       arcVmUuid: 3bb2c024-eba9-4d18-9e7a-1d772fcc5fe9
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
///       uploadLimitSchedule:
///         weeklyRecurrences:
///           - days:
///               - Monday
///               - Tuesday
///               - Wednesday
///               - Thursday
///               - Friday
///               - Saturday
///               - Sunday
///             endTime:
///               hour: 24
///               minute: 0
///             limitInMbps: 2000
///             startTime:
///               hour: 18
///               minute: 0
///           - days:
///               - Monday
///               - Tuesday
///               - Wednesday
///               - Thursday
///               - Friday
///               - Saturday
///               - Sunday
///             endTime:
///               hour: 9
///               minute: 0
///             limitInMbps: 2000
///             startTime:
///               hour: 0
///               minute: 0
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storagemover:Agent examples-agentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageMover/storageMovers/{storageMoverName}/agents/{agentName}
/// ```
class Agent extends pulumi.CustomResource {
  /// The Agent status.
  late final pulumi.Output<String> agentStatus;
  /// The Agent version.
  late final pulumi.Output<String> agentVersion;
  /// The fully qualified resource ID of the Hybrid Compute resource for the Agent.
  late final pulumi.Output<String> arcResourceId;
  /// The VM UUID of the Hybrid Compute resource for the Agent.
  late final pulumi.Output<String> arcVmUuid;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description for the Agent.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<AgentPropertiesErrorDetailsResponse> errorDetails;
  /// The last updated time of the Agent status.
  late final pulumi.Output<String> lastStatusUpdate;
  /// Local IP address reported by the Agent.
  late final pulumi.Output<String> localIPAddress;
  /// Available memory reported by the Agent, in MB.
  late final pulumi.Output<double> memoryInMB;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Available compute cores reported by the Agent.
  late final pulumi.Output<double> numberOfCores;
  /// The provisioning state of this resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The agent's local time zone represented in Windows format.
  late final pulumi.Output<String> timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The WAN-link upload limit schedule that applies to any Job Run the agent executes. Data plane operations (migrating files) are affected. Control plane operations ensure seamless migration functionality and are not limited by this schedule. The schedule is interpreted with the agent's local time.
  late final pulumi.Output<UploadLimitScheduleResponse?> uploadLimitSchedule;
  /// Uptime of the Agent in seconds.
  late final pulumi.Output<double> uptimeInSeconds;

  /// Creates a new [Agent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Agent]. {@macro pulumi_storagemover_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Agent(
    String name, {
    AgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagemover:Agent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentStatus = registerOutput<String>('agentStatus');
    agentVersion = registerOutput<String>('agentVersion');
    arcResourceId = registerOutput<String>('arcResourceId');
    arcVmUuid = registerOutput<String>('arcVmUuid');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    errorDetails = registerOutput<AgentPropertiesErrorDetailsResponse>('errorDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPropertiesErrorDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastStatusUpdate = registerOutput<String>('lastStatusUpdate');
    localIPAddress = registerOutput<String>('localIPAddress');
    memoryInMB = registerOutput<double>('memoryInMB');
    this.name = registerOutput<String>('name');
    numberOfCores = registerOutput<double>('numberOfCores');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeZone = registerOutput<String>('timeZone');
    type = registerOutput<String>('type');
    uploadLimitSchedule = registerOutput<UploadLimitScheduleResponse?>('uploadLimitSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UploadLimitScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uptimeInSeconds = registerOutput<double>('uptimeInSeconds');
  }
}

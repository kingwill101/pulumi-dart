import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_schedule_args.dart';
import 'system_data_response.dart';

/// Response to put/get patch schedules for Redis cache.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2016-04-01, 2017-02-01, 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisCachePatchSchedulesCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var patchSchedule = new AzureNative.Redis.PatchSchedule("patchSchedule", new()
///     {
///         Default = "default",
///         Name = "cache1",
///         ResourceGroupName = "rg1",
///         ScheduleEntries = new[]
///         {
///             new AzureNative.Redis.Inputs.ScheduleEntryArgs
///             {
///                 DayOfWeek = AzureNative.Redis.DayOfWeek.Monday,
///                 MaintenanceWindow = "PT5H",
///                 StartHourUtc = 12,
///             },
///             new AzureNative.Redis.Inputs.ScheduleEntryArgs
///             {
///                 DayOfWeek = AzureNative.Redis.DayOfWeek.Tuesday,
///                 StartHourUtc = 12,
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
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewPatchSchedule(ctx, "patchSchedule", &redis.PatchScheduleArgs{
/// 			Default:           pulumi.String("default"),
/// 			Name:              pulumi.String("cache1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ScheduleEntries: redis.ScheduleEntryArray{
/// 				&redis.ScheduleEntryArgs{
/// 					DayOfWeek:         redis.DayOfWeekMonday,
/// 					MaintenanceWindow: pulumi.String("PT5H"),
/// 					StartHourUtc:      pulumi.Int(12),
/// 				},
/// 				&redis.ScheduleEntryArgs{
/// 					DayOfWeek:    redis.DayOfWeekTuesday,
/// 					StartHourUtc: pulumi.Int(12),
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
/// import com.pulumi.azurenative.redis.PatchSchedule;
/// import com.pulumi.azurenative.redis.PatchScheduleArgs;
/// import com.pulumi.azurenative.redis.inputs.ScheduleEntryArgs;
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
///         var patchSchedule = new PatchSchedule("patchSchedule", PatchScheduleArgs.builder()
///             .default_("default")
///             .name("cache1")
///             .resourceGroupName("rg1")
///             .scheduleEntries(
///                 ScheduleEntryArgs.builder()
///                     .dayOfWeek("Monday")
///                     .maintenanceWindow("PT5H")
///                     .startHourUtc(12)
///                     .build(),
///                 ScheduleEntryArgs.builder()
///                     .dayOfWeek("Tuesday")
///                     .startHourUtc(12)
///                     .build())
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
/// const patchSchedule = new azure_native.redis.PatchSchedule("patchSchedule", {
///     "default": "default",
///     name: "cache1",
///     resourceGroupName: "rg1",
///     scheduleEntries: [
///         {
///             dayOfWeek: azure_native.redis.DayOfWeek.Monday,
///             maintenanceWindow: "PT5H",
///             startHourUtc: 12,
///         },
///         {
///             dayOfWeek: azure_native.redis.DayOfWeek.Tuesday,
///             startHourUtc: 12,
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// patch_schedule = azure_native.redis.PatchSchedule("patchSchedule",
///     default="default",
///     name="cache1",
///     resource_group_name="rg1",
///     schedule_entries=[
///         {
///             "day_of_week": azure_native.redis.DayOfWeek.MONDAY,
///             "maintenance_window": "PT5H",
///             "start_hour_utc": 12,
///         },
///         {
///             "day_of_week": azure_native.redis.DayOfWeek.TUESDAY,
///             "start_hour_utc": 12,
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   patchSchedule:
///     type: azure-native:redis:PatchSchedule
///     properties:
///       default: default
///       name: cache1
///       resourceGroupName: rg1
///       scheduleEntries:
///         - dayOfWeek: Monday
///           maintenanceWindow: PT5H
///           startHourUtc: 12
///         - dayOfWeek: Tuesday
///           startHourUtc: 12
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
/// $ pulumi import azure-native:redis:PatchSchedule cachename1/default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redis/{name}/patchSchedules/{default}
/// ```
class PatchSchedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of patch schedules for a Redis cache.
  late final pulumi.Output<List<Map<String, dynamic>>> scheduleEntries;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PatchSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PatchSchedule]. {@macro pulumi_redis_patch_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PatchSchedule(
    String name, {
    PatchScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:redis:PatchSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    scheduleEntries = registerOutput<List<Map<String, dynamic>>>('scheduleEntries');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

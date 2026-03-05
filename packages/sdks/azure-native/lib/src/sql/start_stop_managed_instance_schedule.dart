import 'package:pulumi/pulumi.dart' as pulumi;
import 'start_stop_managed_instance_schedule_args.dart';
import 'system_data_response.dart';

/// Managed instance's Start/Stop schedule.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01-preview.
///
/// Other available API versions: 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the managed instance's Start/Stop schedule with all optional parameters specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var startStopManagedInstanceSchedule = new AzureNative.Sql.StartStopManagedInstanceSchedule("startStopManagedInstanceSchedule", new()
///     {
///         Description = "This is a schedule for our Dev/Test environment.",
///         ManagedInstanceName = "schedulemi",
///         ResourceGroupName = "schedulerg",
///         ScheduleList = new[]
///         {
///             new AzureNative.Sql.Inputs.ScheduleItemArgs
///             {
///                 StartDay = AzureNative.Sql.DayOfWeek.Thursday,
///                 StartTime = "18:00",
///                 StopDay = AzureNative.Sql.DayOfWeek.Thursday,
///                 StopTime = "17:00",
///             },
///             new AzureNative.Sql.Inputs.ScheduleItemArgs
///             {
///                 StartDay = AzureNative.Sql.DayOfWeek.Thursday,
///                 StartTime = "15:00",
///                 StopDay = AzureNative.Sql.DayOfWeek.Thursday,
///                 StopTime = "14:00",
///             },
///         },
///         StartStopScheduleName = "default",
///         TimeZoneId = "Central European Standard Time",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewStartStopManagedInstanceSchedule(ctx, "startStopManagedInstanceSchedule", &sql.StartStopManagedInstanceScheduleArgs{
/// 			Description:         pulumi.String("This is a schedule for our Dev/Test environment."),
/// 			ManagedInstanceName: pulumi.String("schedulemi"),
/// 			ResourceGroupName:   pulumi.String("schedulerg"),
/// 			ScheduleList: sql.ScheduleItemArray{
/// 				&sql.ScheduleItemArgs{
/// 					StartDay:  pulumi.String(sql.DayOfWeekThursday),
/// 					StartTime: pulumi.String("18:00"),
/// 					StopDay:   pulumi.String(sql.DayOfWeekThursday),
/// 					StopTime:  pulumi.String("17:00"),
/// 				},
/// 				&sql.ScheduleItemArgs{
/// 					StartDay:  pulumi.String(sql.DayOfWeekThursday),
/// 					StartTime: pulumi.String("15:00"),
/// 					StopDay:   pulumi.String(sql.DayOfWeekThursday),
/// 					StopTime:  pulumi.String("14:00"),
/// 				},
/// 			},
/// 			StartStopScheduleName: pulumi.String("default"),
/// 			TimeZoneId:            pulumi.String("Central European Standard Time"),
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
/// import com.pulumi.azurenative.sql.StartStopManagedInstanceSchedule;
/// import com.pulumi.azurenative.sql.StartStopManagedInstanceScheduleArgs;
/// import com.pulumi.azurenative.sql.inputs.ScheduleItemArgs;
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
///         var startStopManagedInstanceSchedule = new StartStopManagedInstanceSchedule("startStopManagedInstanceSchedule", StartStopManagedInstanceScheduleArgs.builder()
///             .description("This is a schedule for our Dev/Test environment.")
///             .managedInstanceName("schedulemi")
///             .resourceGroupName("schedulerg")
///             .scheduleList(
///                 ScheduleItemArgs.builder()
///                     .startDay("Thursday")
///                     .startTime("18:00")
///                     .stopDay("Thursday")
///                     .stopTime("17:00")
///                     .build(),
///                 ScheduleItemArgs.builder()
///                     .startDay("Thursday")
///                     .startTime("15:00")
///                     .stopDay("Thursday")
///                     .stopTime("14:00")
///                     .build())
///             .startStopScheduleName("default")
///             .timeZoneId("Central European Standard Time")
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
/// const startStopManagedInstanceSchedule = new azure_native.sql.StartStopManagedInstanceSchedule("startStopManagedInstanceSchedule", {
///     description: "This is a schedule for our Dev/Test environment.",
///     managedInstanceName: "schedulemi",
///     resourceGroupName: "schedulerg",
///     scheduleList: [
///         {
///             startDay: azure_native.sql.DayOfWeek.Thursday,
///             startTime: "18:00",
///             stopDay: azure_native.sql.DayOfWeek.Thursday,
///             stopTime: "17:00",
///         },
///         {
///             startDay: azure_native.sql.DayOfWeek.Thursday,
///             startTime: "15:00",
///             stopDay: azure_native.sql.DayOfWeek.Thursday,
///             stopTime: "14:00",
///         },
///     ],
///     startStopScheduleName: "default",
///     timeZoneId: "Central European Standard Time",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// start_stop_managed_instance_schedule = azure_native.sql.StartStopManagedInstanceSchedule("startStopManagedInstanceSchedule",
///     description="This is a schedule for our Dev/Test environment.",
///     managed_instance_name="schedulemi",
///     resource_group_name="schedulerg",
///     schedule_list=[
///         {
///             "start_day": azure_native.sql.DayOfWeek.THURSDAY,
///             "start_time": "18:00",
///             "stop_day": azure_native.sql.DayOfWeek.THURSDAY,
///             "stop_time": "17:00",
///         },
///         {
///             "start_day": azure_native.sql.DayOfWeek.THURSDAY,
///             "start_time": "15:00",
///             "stop_day": azure_native.sql.DayOfWeek.THURSDAY,
///             "stop_time": "14:00",
///         },
///     ],
///     start_stop_schedule_name="default",
///     time_zone_id="Central European Standard Time")
///
/// ```
///
/// ```yaml
/// resources:
///   startStopManagedInstanceSchedule:
///     type: azure-native:sql:StartStopManagedInstanceSchedule
///     properties:
///       description: This is a schedule for our Dev/Test environment.
///       managedInstanceName: schedulemi
///       resourceGroupName: schedulerg
///       scheduleList:
///         - startDay: Thursday
///           startTime: 18:00
///           stopDay: Thursday
///           stopTime: 17:00
///         - startDay: Thursday
///           startTime: 15:00
///           stopDay: Thursday
///           stopTime: 14:00
///       startStopScheduleName: default
///       timeZoneId: Central European Standard Time
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates the managed instance's Start/Stop schedule with no optional parameters specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var startStopManagedInstanceSchedule = new AzureNative.Sql.StartStopManagedInstanceSchedule("startStopManagedInstanceSchedule", new()
///     {
///         ManagedInstanceName = "schedulemi",
///         ResourceGroupName = "schedulerg",
///         ScheduleList = new[]
///         {
///             new AzureNative.Sql.Inputs.ScheduleItemArgs
///             {
///                 StartDay = AzureNative.Sql.DayOfWeek.Thursday,
///                 StartTime = "18:00",
///                 StopDay = AzureNative.Sql.DayOfWeek.Thursday,
///                 StopTime = "17:00",
///             },
///             new AzureNative.Sql.Inputs.ScheduleItemArgs
///             {
///                 StartDay = AzureNative.Sql.DayOfWeek.Thursday,
///                 StartTime = "15:00",
///                 StopDay = AzureNative.Sql.DayOfWeek.Thursday,
///                 StopTime = "14:00",
///             },
///         },
///         StartStopScheduleName = "default",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewStartStopManagedInstanceSchedule(ctx, "startStopManagedInstanceSchedule", &sql.StartStopManagedInstanceScheduleArgs{
/// 			ManagedInstanceName: pulumi.String("schedulemi"),
/// 			ResourceGroupName:   pulumi.String("schedulerg"),
/// 			ScheduleList: sql.ScheduleItemArray{
/// 				&sql.ScheduleItemArgs{
/// 					StartDay:  pulumi.String(sql.DayOfWeekThursday),
/// 					StartTime: pulumi.String("18:00"),
/// 					StopDay:   pulumi.String(sql.DayOfWeekThursday),
/// 					StopTime:  pulumi.String("17:00"),
/// 				},
/// 				&sql.ScheduleItemArgs{
/// 					StartDay:  pulumi.String(sql.DayOfWeekThursday),
/// 					StartTime: pulumi.String("15:00"),
/// 					StopDay:   pulumi.String(sql.DayOfWeekThursday),
/// 					StopTime:  pulumi.String("14:00"),
/// 				},
/// 			},
/// 			StartStopScheduleName: pulumi.String("default"),
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
/// import com.pulumi.azurenative.sql.StartStopManagedInstanceSchedule;
/// import com.pulumi.azurenative.sql.StartStopManagedInstanceScheduleArgs;
/// import com.pulumi.azurenative.sql.inputs.ScheduleItemArgs;
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
///         var startStopManagedInstanceSchedule = new StartStopManagedInstanceSchedule("startStopManagedInstanceSchedule", StartStopManagedInstanceScheduleArgs.builder()
///             .managedInstanceName("schedulemi")
///             .resourceGroupName("schedulerg")
///             .scheduleList(
///                 ScheduleItemArgs.builder()
///                     .startDay("Thursday")
///                     .startTime("18:00")
///                     .stopDay("Thursday")
///                     .stopTime("17:00")
///                     .build(),
///                 ScheduleItemArgs.builder()
///                     .startDay("Thursday")
///                     .startTime("15:00")
///                     .stopDay("Thursday")
///                     .stopTime("14:00")
///                     .build())
///             .startStopScheduleName("default")
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
/// const startStopManagedInstanceSchedule = new azure_native.sql.StartStopManagedInstanceSchedule("startStopManagedInstanceSchedule", {
///     managedInstanceName: "schedulemi",
///     resourceGroupName: "schedulerg",
///     scheduleList: [
///         {
///             startDay: azure_native.sql.DayOfWeek.Thursday,
///             startTime: "18:00",
///             stopDay: azure_native.sql.DayOfWeek.Thursday,
///             stopTime: "17:00",
///         },
///         {
///             startDay: azure_native.sql.DayOfWeek.Thursday,
///             startTime: "15:00",
///             stopDay: azure_native.sql.DayOfWeek.Thursday,
///             stopTime: "14:00",
///         },
///     ],
///     startStopScheduleName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// start_stop_managed_instance_schedule = azure_native.sql.StartStopManagedInstanceSchedule("startStopManagedInstanceSchedule",
///     managed_instance_name="schedulemi",
///     resource_group_name="schedulerg",
///     schedule_list=[
///         {
///             "start_day": azure_native.sql.DayOfWeek.THURSDAY,
///             "start_time": "18:00",
///             "stop_day": azure_native.sql.DayOfWeek.THURSDAY,
///             "stop_time": "17:00",
///         },
///         {
///             "start_day": azure_native.sql.DayOfWeek.THURSDAY,
///             "start_time": "15:00",
///             "stop_day": azure_native.sql.DayOfWeek.THURSDAY,
///             "stop_time": "14:00",
///         },
///     ],
///     start_stop_schedule_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   startStopManagedInstanceSchedule:
///     type: azure-native:sql:StartStopManagedInstanceSchedule
///     properties:
///       managedInstanceName: schedulemi
///       resourceGroupName: schedulerg
///       scheduleList:
///         - startDay: Thursday
///           startTime: 18:00
///           stopDay: Thursday
///           stopTime: 17:00
///         - startDay: Thursday
///           startTime: 15:00
///           stopDay: Thursday
///           stopTime: 14:00
///       startStopScheduleName: default
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
/// $ pulumi import azure-native:sql:StartStopManagedInstanceSchedule default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/startStopSchedules/{startStopScheduleName}
/// ```
class StartStopManagedInstanceSchedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The description of the schedule.
  late final pulumi.Output<String?> description;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Timestamp when the next action will be executed in the corresponding schedule time zone.
  late final pulumi.Output<String> nextExecutionTime;

  /// Next action to be executed (Start or Stop)
  late final pulumi.Output<String> nextRunAction;

  /// Schedule list.
  late final pulumi.Output<List<Map<String, dynamic>>> scheduleList;

  /// System data of the scheduled resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The time zone of the schedule.
  late final pulumi.Output<String?> timeZoneId;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [StartStopManagedInstanceSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StartStopManagedInstanceSchedule]. {@macro pulumi_sql_start_stop_managed_instance_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StartStopManagedInstanceSchedule(
    String name, {
    StartStopManagedInstanceScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:StartStopManagedInstanceSchedule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    nextExecutionTime = registerOutput<String>('nextExecutionTime');
    nextRunAction = registerOutput<String>('nextRunAction');
    scheduleList = registerOutput<List<Map<String, dynamic>>>('scheduleList');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    timeZoneId = registerOutput<String?>('timeZoneId');
    type = registerOutput<String>('type');
  }
}

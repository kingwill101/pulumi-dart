import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_policy_args.dart';
import 'snapshot_policy_daily_schedule.dart';
import 'snapshot_policy_hourly_schedule.dart';
import 'snapshot_policy_monthly_schedule.dart';
import 'snapshot_policy_state.dart';
import 'snapshot_policy_weekly_schedule.dart';

/// Manages a NetApp Snapshot Policy.
///
/// ## NetApp Snapshot Policy Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "resource-group-01",
///     location: "East US",
/// });
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "netappaccount-01",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSnapshotPolicy = new azure.netapp.SnapshotPolicy("example", {
///     name: "snapshotpolicy-01",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     enabled: true,
///     hourlySchedule: {
///         snapshotsToKeep: 4,
///         minute: 15,
///     },
///     dailySchedule: {
///         snapshotsToKeep: 2,
///         hour: 20,
///         minute: 15,
///     },
///     weeklySchedule: {
///         snapshotsToKeep: 1,
///         daysOfWeeks: [
///             "Monday",
///             "Friday",
///         ],
///         hour: 23,
///         minute: 0,
///     },
///     monthlySchedule: {
///         snapshotsToKeep: 1,
///         daysOfMonths: [
///             1,
///             15,
///             20,
///             30,
///         ],
///         hour: 5,
///         minute: 45,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="resource-group-01",
///     location="East US")
/// example_account = azure.netapp.Account("example",
///     name="netappaccount-01",
///     location=example.location,
///     resource_group_name=example.name)
/// example_snapshot_policy = azure.netapp.SnapshotPolicy("example",
///     name="snapshotpolicy-01",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     enabled=True,
///     hourly_schedule={
///         "snapshots_to_keep": 4,
///         "minute": 15,
///     },
///     daily_schedule={
///         "snapshots_to_keep": 2,
///         "hour": 20,
///         "minute": 15,
///     },
///     weekly_schedule={
///         "snapshots_to_keep": 1,
///         "days_of_weeks": [
///             "Monday",
///             "Friday",
///         ],
///         "hour": 23,
///         "minute": 0,
///     },
///     monthly_schedule={
///         "snapshots_to_keep": 1,
///         "days_of_months": [
///             1,
///             15,
///             20,
///             30,
///         ],
///         "hour": 5,
///         "minute": 45,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "resource-group-01",
///         Location = "East US",
///     });
///
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "netappaccount-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSnapshotPolicy = new Azure.NetApp.SnapshotPolicy("example", new()
///     {
///         Name = "snapshotpolicy-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         Enabled = true,
///         HourlySchedule = new Azure.NetApp.Inputs.SnapshotPolicyHourlyScheduleArgs
///         {
///             SnapshotsToKeep = 4,
///             Minute = 15,
///         },
///         DailySchedule = new Azure.NetApp.Inputs.SnapshotPolicyDailyScheduleArgs
///         {
///             SnapshotsToKeep = 2,
///             Hour = 20,
///             Minute = 15,
///         },
///         WeeklySchedule = new Azure.NetApp.Inputs.SnapshotPolicyWeeklyScheduleArgs
///         {
///             SnapshotsToKeep = 1,
///             DaysOfWeeks = new[]
///             {
///                 "Monday",
///                 "Friday",
///             },
///             Hour = 23,
///             Minute = 0,
///         },
///         MonthlySchedule = new Azure.NetApp.Inputs.SnapshotPolicyMonthlyScheduleArgs
///         {
///             SnapshotsToKeep = 1,
///             DaysOfMonths = new[]
///             {
///                 1,
///                 15,
///                 20,
///                 30,
///             },
///             Hour = 5,
///             Minute = 45,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("resource-group-01"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("netappaccount-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewSnapshotPolicy(ctx, "example", &netapp.SnapshotPolicyArgs{
/// 			Name:              pulumi.String("snapshotpolicy-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			Enabled:           pulumi.Bool(true),
/// 			HourlySchedule: &netapp.SnapshotPolicyHourlyScheduleArgs{
/// 				SnapshotsToKeep: pulumi.Int(4),
/// 				Minute:          pulumi.Int(15),
/// 			},
/// 			DailySchedule: &netapp.SnapshotPolicyDailyScheduleArgs{
/// 				SnapshotsToKeep: pulumi.Int(2),
/// 				Hour:            pulumi.Int(20),
/// 				Minute:          pulumi.Int(15),
/// 			},
/// 			WeeklySchedule: &netapp.SnapshotPolicyWeeklyScheduleArgs{
/// 				SnapshotsToKeep: pulumi.Int(1),
/// 				DaysOfWeeks: pulumi.StringArray{
/// 					pulumi.String("Monday"),
/// 					pulumi.String("Friday"),
/// 				},
/// 				Hour:   pulumi.Int(23),
/// 				Minute: pulumi.Int(0),
/// 			},
/// 			MonthlySchedule: &netapp.SnapshotPolicyMonthlyScheduleArgs{
/// 				SnapshotsToKeep: pulumi.Int(1),
/// 				DaysOfMonths: pulumi.IntArray{
/// 					pulumi.Int(1),
/// 					pulumi.Int(15),
/// 					pulumi.Int(20),
/// 					pulumi.Int(30),
/// 				},
/// 				Hour:   pulumi.Int(5),
/// 				Minute: pulumi.Int(45),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "resource-group-01"
///   location = "East US"
/// }
/// resource "azure_netapp_account" "example" {
///   name                = "netappaccount-01"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_netapp_snapshotpolicy" "example" {
///   name                = "snapshotpolicy-01"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_netapp_account.example.name
///   enabled             = true
///   hourly_schedule = {
///     snapshots_to_keep = 4
///     minute            = 15
///   }
///   daily_schedule = {
///     snapshots_to_keep = 2
///     hour              = 20
///     minute            = 15
///   }
///   weekly_schedule = {
///     snapshots_to_keep = 1
///     days_of_weeks     = ["Monday", "Friday"]
///     hour              = 23
///     minute            = 0
///   }
///   monthly_schedule = {
///     snapshots_to_keep = 1
///     days_of_months    = [1, 15, 20, 30]
///     hour              = 5
///     minute            = 45
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.SnapshotPolicy;
/// import com.pulumi.azure.netapp.SnapshotPolicyArgs;
/// import com.pulumi.azure.netapp.inputs.SnapshotPolicyHourlyScheduleArgs;
/// import com.pulumi.azure.netapp.inputs.SnapshotPolicyDailyScheduleArgs;
/// import com.pulumi.azure.netapp.inputs.SnapshotPolicyWeeklyScheduleArgs;
/// import com.pulumi.azure.netapp.inputs.SnapshotPolicyMonthlyScheduleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("resource-group-01")
///             .location("East US")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("netappaccount-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSnapshotPolicy = new SnapshotPolicy("exampleSnapshotPolicy", SnapshotPolicyArgs.builder()
///             .name("snapshotpolicy-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .enabled(true)
///             .hourlySchedule(SnapshotPolicyHourlyScheduleArgs.builder()
///                 .snapshotsToKeep(4)
///                 .minute(15)
///                 .build())
///             .dailySchedule(SnapshotPolicyDailyScheduleArgs.builder()
///                 .snapshotsToKeep(2)
///                 .hour(20)
///                 .minute(15)
///                 .build())
///             .weeklySchedule(SnapshotPolicyWeeklyScheduleArgs.builder()
///                 .snapshotsToKeep(1)
///                 .daysOfWeeks(
///                     "Monday",
///                     "Friday")
///                 .hour(23)
///                 .minute(0)
///                 .build())
///             .monthlySchedule(SnapshotPolicyMonthlyScheduleArgs.builder()
///                 .snapshotsToKeep(1)
///                 .daysOfMonths(
///                     1,
///                     15,
///                     20,
///                     30)
///                 .hour(5)
///                 .minute(45)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: resource-group-01
///       location: East US
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: netappaccount-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSnapshotPolicy:
///     type: azure:netapp:SnapshotPolicy
///     name: example
///     properties:
///       name: snapshotpolicy-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       enabled: true
///       hourlySchedule:
///         snapshotsToKeep: 4
///         minute: 15
///       dailySchedule:
///         snapshotsToKeep: 2
///         hour: 20
///         minute: 15
///       weeklySchedule:
///         snapshotsToKeep: 1
///         daysOfWeeks:
///           - Monday
///           - Friday
///         hour: 23
///         minute: 0
///       monthlySchedule:
///         snapshotsToKeep: 1
///         daysOfMonths:
///           - 1
///           - 15
///           - 20
///           - 30
///         hour: 5
///         minute: 45
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2026-01-01
///
/// ## Import
///
/// NetApp Snapshot Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/snapshotPolicy:SnapshotPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/snapshotPolicies/snapshotpolicy1
/// ```
class SnapshotPolicy extends pulumi.CustomResource {
  /// The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// Sets a daily snapshot schedule. A `dailySchedule` block as defined below.
  late final pulumi.Output<SnapshotPolicyDailySchedule?> dailySchedule;
  /// Defines that the NetApp Snapshot Policy is enabled or not.
  late final pulumi.Output<bool> enabled;
  /// Sets an hourly snapshot schedule. A `hourlySchedule` block as defined below.
  late final pulumi.Output<SnapshotPolicyHourlySchedule?> hourlySchedule;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Sets a monthly snapshot schedule. A `monthlySchedule` block as defined below.
  late final pulumi.Output<SnapshotPolicyMonthlySchedule?> monthlySchedule;
  /// The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Sets a weekly snapshot schedule. A `weeklySchedule` block as defined below.
  late final pulumi.Output<SnapshotPolicyWeeklySchedule?> weeklySchedule;

  /// Creates a new [SnapshotPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotPolicy]. {@macro pulumi_netapp_snapshot_policy_snapshot_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotPolicy(
    String name, {
    SnapshotPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/snapshotPolicy:SnapshotPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    dailySchedule = registerOutput<SnapshotPolicyDailySchedule?>('dailySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPolicyDailySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool>('enabled');
    hourlySchedule = registerOutput<SnapshotPolicyHourlySchedule?>('hourlySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPolicyHourlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    monthlySchedule = registerOutput<SnapshotPolicyMonthlySchedule?>('monthlySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPolicyMonthlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    weeklySchedule = registerOutput<SnapshotPolicyWeeklySchedule?>('weeklySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPolicyWeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SnapshotPolicy] resource's state with the given [name] and [id].
  static SnapshotPolicy get(
    String name,
    pulumi.Input<String> id, {
    SnapshotPolicyState? state,
  }) {
    return SnapshotPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnapshotPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/snapshotPolicy:SnapshotPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    dailySchedule = registerOutput<SnapshotPolicyDailySchedule?>('dailySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPolicyDailySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool>('enabled');
    hourlySchedule = registerOutput<SnapshotPolicyHourlySchedule?>('hourlySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPolicyHourlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    monthlySchedule = registerOutput<SnapshotPolicyMonthlySchedule?>('monthlySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPolicyMonthlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    weeklySchedule = registerOutput<SnapshotPolicyWeeklySchedule?>('weeklySchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPolicyWeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

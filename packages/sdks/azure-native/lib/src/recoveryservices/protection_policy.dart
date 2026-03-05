import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_share_protection_policy_response.dart';
import 'protection_policy_args.dart';

/// Base class for backup policy. Workload-specific backup policies are derived from this class.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Azure Storage Vault Standard Protection Policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionPolicy = new AzureNative.RecoveryServices.ProtectionPolicy("protectionPolicy", new()
///     {
///         PolicyName = "newPolicyV2",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureFileShareProtectionPolicyArgs
///         {
///             BackupManagementType = "AzureStorage",
///             SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyArgs
///             {
///                 SchedulePolicyType = "SimpleSchedulePolicy",
///                 ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Daily,
///                 ScheduleRunTimes = new[]
///                 {
///                     "2023-07-18T09:30:00.000Z",
///                 },
///             },
///             TimeZone = "UTC",
///             VaultRetentionPolicy = new AzureNative.RecoveryServices.Inputs.VaultRetentionPolicyArgs
///             {
///                 SnapshotRetentionInDays = 5,
///                 VaultRetention = new AzureNative.RecoveryServices.Inputs.LongTermRetentionPolicyArgs
///                 {
///                     DailySchedule = new AzureNative.RecoveryServices.Inputs.DailyRetentionScheduleArgs
///                     {
///                         RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                         {
///                             Count = 30,
///                             DurationType = AzureNative.RecoveryServices.RetentionDurationType.Days,
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2023-07-18T09:30:00.000Z",
///                         },
///                     },
///                     MonthlySchedule = new AzureNative.RecoveryServices.Inputs.MonthlyRetentionScheduleArgs
///                     {
///                         RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                         {
///                             Count = 60,
///                             DurationType = AzureNative.RecoveryServices.RetentionDurationType.Months,
///                         },
///                         RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                         RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                         {
///                             DaysOfTheWeek = new[]
///                             {
///                                 AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                             },
///                             WeeksOfTheMonth = new[]
///                             {
///                                 AzureNative.RecoveryServices.WeekOfMonth.First,
///                             },
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2023-07-18T09:30:00.000Z",
///                         },
///                     },
///                     RetentionPolicyType = "LongTermRetentionPolicy",
///                     WeeklySchedule = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionScheduleArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                         {
///                             Count = 12,
///                             DurationType = AzureNative.RecoveryServices.RetentionDurationType.Weeks,
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2023-07-18T09:30:00.000Z",
///                         },
///                     },
///                     YearlySchedule = new AzureNative.RecoveryServices.Inputs.YearlyRetentionScheduleArgs
///                     {
///                         MonthsOfYear = new[]
///                         {
///                             AzureNative.RecoveryServices.MonthOfYear.January,
///                         },
///                         RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                         {
///                             Count = 10,
///                             DurationType = AzureNative.RecoveryServices.RetentionDurationType.Years,
///                         },
///                         RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                         RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                         {
///                             DaysOfTheWeek = new[]
///                             {
///                                 AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                             },
///                             WeeksOfTheMonth = new[]
///                             {
///                                 AzureNative.RecoveryServices.WeekOfMonth.First,
///                             },
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2023-07-18T09:30:00.000Z",
///                         },
///                     },
///                 },
///             },
///             WorkLoadType = AzureNative.RecoveryServices.WorkloadType.AzureFileShare,
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "swaggertestvault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionPolicy(ctx, "protectionPolicy", &recoveryservices.ProtectionPolicyArgs{
/// 			PolicyName: pulumi.String("newPolicyV2"),
/// 			Properties: &recoveryservices.AzureFileShareProtectionPolicyArgs{
/// 				BackupManagementType: pulumi.String("AzureStorage"),
/// 				SchedulePolicy: recoveryservices.SimpleSchedulePolicy{
/// 					SchedulePolicyType:   "SimpleSchedulePolicy",
/// 					ScheduleRunFrequency: recoveryservices.ScheduleRunTypeDaily,
/// 					ScheduleRunTimes: []string{
/// 						"2023-07-18T09:30:00.000Z",
/// 					},
/// 				},
/// 				TimeZone: pulumi.String("UTC"),
/// 				VaultRetentionPolicy: &recoveryservices.VaultRetentionPolicyArgs{
/// 					SnapshotRetentionInDays: pulumi.Int(5),
/// 					VaultRetention: recoveryservices.LongTermRetentionPolicy{
/// 						DailySchedule: recoveryservices.DailyRetentionSchedule{
/// 							RetentionDuration: recoveryservices.RetentionDuration{
/// 								Count:        30,
/// 								DurationType: recoveryservices.RetentionDurationTypeDays,
/// 							},
/// 							RetentionTimes: []string{
/// 								"2023-07-18T09:30:00.000Z",
/// 							},
/// 						},
/// 						MonthlySchedule: recoveryservices.MonthlyRetentionSchedule{
/// 							RetentionDuration: recoveryservices.RetentionDuration{
/// 								Count:        60,
/// 								DurationType: recoveryservices.RetentionDurationTypeMonths,
/// 							},
/// 							RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 							RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 								DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 									recoveryservices.DayOfWeekSunday,
/// 								},
/// 								WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 									recoveryservices.WeekOfMonthFirst,
/// 								},
/// 							},
/// 							RetentionTimes: []string{
/// 								"2023-07-18T09:30:00.000Z",
/// 							},
/// 						},
/// 						RetentionPolicyType: "LongTermRetentionPolicy",
/// 						WeeklySchedule: recoveryservices.WeeklyRetentionSchedule{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							RetentionDuration: recoveryservices.RetentionDuration{
/// 								Count:        12,
/// 								DurationType: recoveryservices.RetentionDurationTypeWeeks,
/// 							},
/// 							RetentionTimes: []string{
/// 								"2023-07-18T09:30:00.000Z",
/// 							},
/// 						},
/// 						YearlySchedule: recoveryservices.YearlyRetentionSchedule{
/// 							MonthsOfYear: []recoveryservices.MonthOfYear{
/// 								recoveryservices.MonthOfYearJanuary,
/// 							},
/// 							RetentionDuration: recoveryservices.RetentionDuration{
/// 								Count:        10,
/// 								DurationType: recoveryservices.RetentionDurationTypeYears,
/// 							},
/// 							RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 							RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 								DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 									recoveryservices.DayOfWeekSunday,
/// 								},
/// 								WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 									recoveryservices.WeekOfMonthFirst,
/// 								},
/// 							},
/// 							RetentionTimes: []string{
/// 								"2023-07-18T09:30:00.000Z",
/// 							},
/// 						},
/// 					},
/// 				},
/// 				WorkLoadType: pulumi.String(recoveryservices.WorkloadTypeAzureFileShare),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("swaggertestvault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicy;
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicyArgs;
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
///         var protectionPolicy = new ProtectionPolicy("protectionPolicy", ProtectionPolicyArgs.builder()
///             .policyName("newPolicyV2")
///             .properties(AzureFileShareProtectionPolicyArgs.builder()
///                 .backupManagementType("AzureStorage")
///                 .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                     .schedulePolicyType("SimpleSchedulePolicy")
///                     .scheduleRunFrequency("Daily")
///                     .scheduleRunTimes("2023-07-18T09:30:00.000Z")
///                     .build())
///                 .timeZone("UTC")
///                 .vaultRetentionPolicy(VaultRetentionPolicyArgs.builder()
///                     .snapshotRetentionInDays(5)
///                     .vaultRetention(LongTermRetentionPolicyArgs.builder()
///                         .dailySchedule(DailyRetentionScheduleArgs.builder()
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(30)
///                                 .durationType("Days")
///                                 .build())
///                             .retentionTimes("2023-07-18T09:30:00.000Z")
///                             .build())
///                         .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(60)
///                                 .durationType("Months")
///                                 .build())
///                             .retentionScheduleFormatType("Weekly")
///                             .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                                 .daysOfTheWeek("Sunday")
///                                 .weeksOfTheMonth("First")
///                                 .build())
///                             .retentionTimes("2023-07-18T09:30:00.000Z")
///                             .build())
///                         .retentionPolicyType("LongTermRetentionPolicy")
///                         .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(12)
///                                 .durationType("Weeks")
///                                 .build())
///                             .retentionTimes("2023-07-18T09:30:00.000Z")
///                             .build())
///                         .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                             .monthsOfYear("January")
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(10)
///                                 .durationType("Years")
///                                 .build())
///                             .retentionScheduleFormatType("Weekly")
///                             .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                                 .daysOfTheWeek("Sunday")
///                                 .weeksOfTheMonth("First")
///                                 .build())
///                             .retentionTimes("2023-07-18T09:30:00.000Z")
///                             .build())
///                         .build())
///                     .build())
///                 .workLoadType("AzureFileShare")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("swaggertestvault")
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
/// const protectionPolicy = new azure_native.recoveryservices.ProtectionPolicy("protectionPolicy", {
///     policyName: "newPolicyV2",
///     properties: {
///         backupManagementType: "AzureStorage",
///         schedulePolicy: {
///             schedulePolicyType: "SimpleSchedulePolicy",
///             scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Daily,
///             scheduleRunTimes: ["2023-07-18T09:30:00.000Z"],
///         },
///         timeZone: "UTC",
///         vaultRetentionPolicy: {
///             snapshotRetentionInDays: 5,
///             vaultRetention: {
///                 dailySchedule: {
///                     retentionDuration: {
///                         count: 30,
///                         durationType: azure_native.recoveryservices.RetentionDurationType.Days,
///                     },
///                     retentionTimes: ["2023-07-18T09:30:00.000Z"],
///                 },
///                 monthlySchedule: {
///                     retentionDuration: {
///                         count: 60,
///                         durationType: azure_native.recoveryservices.RetentionDurationType.Months,
///                     },
///                     retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                     retentionScheduleWeekly: {
///                         daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                         weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                     },
///                     retentionTimes: ["2023-07-18T09:30:00.000Z"],
///                 },
///                 retentionPolicyType: "LongTermRetentionPolicy",
///                 weeklySchedule: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     retentionDuration: {
///                         count: 12,
///                         durationType: azure_native.recoveryservices.RetentionDurationType.Weeks,
///                     },
///                     retentionTimes: ["2023-07-18T09:30:00.000Z"],
///                 },
///                 yearlySchedule: {
///                     monthsOfYear: [azure_native.recoveryservices.MonthOfYear.January],
///                     retentionDuration: {
///                         count: 10,
///                         durationType: azure_native.recoveryservices.RetentionDurationType.Years,
///                     },
///                     retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                     retentionScheduleWeekly: {
///                         daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                         weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                     },
///                     retentionTimes: ["2023-07-18T09:30:00.000Z"],
///                 },
///             },
///         },
///         workLoadType: azure_native.recoveryservices.WorkloadType.AzureFileShare,
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "swaggertestvault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_policy = azure_native.recoveryservices.ProtectionPolicy("protectionPolicy",
///     policy_name="newPolicyV2",
///     properties={
///         "backup_management_type": "AzureStorage",
///         "schedule_policy": {
///             "schedule_policy_type": "SimpleSchedulePolicy",
///             "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.DAILY,
///             "schedule_run_times": ["2023-07-18T09:30:00.000Z"],
///         },
///         "time_zone": "UTC",
///         "vault_retention_policy": {
///             "snapshot_retention_in_days": 5,
///             "vault_retention": {
///                 "daily_schedule": {
///                     "retention_duration": {
///                         "count": 30,
///                         "duration_type": azure_native.recoveryservices.RetentionDurationType.DAYS,
///                     },
///                     "retention_times": ["2023-07-18T09:30:00.000Z"],
///                 },
///                 "monthly_schedule": {
///                     "retention_duration": {
///                         "count": 60,
///                         "duration_type": azure_native.recoveryservices.RetentionDurationType.MONTHS,
///                     },
///                     "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                     "retention_schedule_weekly": {
///                         "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                         "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                     },
///                     "retention_times": ["2023-07-18T09:30:00.000Z"],
///                 },
///                 "retention_policy_type": "LongTermRetentionPolicy",
///                 "weekly_schedule": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "retention_duration": {
///                         "count": 12,
///                         "duration_type": azure_native.recoveryservices.RetentionDurationType.WEEKS,
///                     },
///                     "retention_times": ["2023-07-18T09:30:00.000Z"],
///                 },
///                 "yearly_schedule": {
///                     "months_of_year": [azure_native.recoveryservices.MonthOfYear.JANUARY],
///                     "retention_duration": {
///                         "count": 10,
///                         "duration_type": azure_native.recoveryservices.RetentionDurationType.YEARS,
///                     },
///                     "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                     "retention_schedule_weekly": {
///                         "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                         "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                     },
///                     "retention_times": ["2023-07-18T09:30:00.000Z"],
///                 },
///             },
///         },
///         "work_load_type": azure_native.recoveryservices.WorkloadType.AZURE_FILE_SHARE,
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="swaggertestvault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionPolicy:
///     type: azure-native:recoveryservices:ProtectionPolicy
///     properties:
///       policyName: newPolicyV2
///       properties:
///         backupManagementType: AzureStorage
///         schedulePolicy:
///           schedulePolicyType: SimpleSchedulePolicy
///           scheduleRunFrequency: Daily
///           scheduleRunTimes:
///             - 2023-07-18T09:30:00.000Z
///         timeZone: UTC
///         vaultRetentionPolicy:
///           snapshotRetentionInDays: 5
///           vaultRetention:
///             dailySchedule:
///               retentionDuration:
///                 count: 30
///                 durationType: Days
///               retentionTimes:
///                 - 2023-07-18T09:30:00.000Z
///             monthlySchedule:
///               retentionDuration:
///                 count: 60
///                 durationType: Months
///               retentionScheduleFormatType: Weekly
///               retentionScheduleWeekly:
///                 daysOfTheWeek:
///                   - Sunday
///                 weeksOfTheMonth:
///                   - First
///               retentionTimes:
///                 - 2023-07-18T09:30:00.000Z
///             retentionPolicyType: LongTermRetentionPolicy
///             weeklySchedule:
///               daysOfTheWeek:
///                 - Sunday
///               retentionDuration:
///                 count: 12
///                 durationType: Weeks
///               retentionTimes:
///                 - 2023-07-18T09:30:00.000Z
///             yearlySchedule:
///               monthsOfYear:
///                 - January
///               retentionDuration:
///                 count: 10
///                 durationType: Years
///               retentionScheduleFormatType: Weekly
///               retentionScheduleWeekly:
///                 daysOfTheWeek:
///                   - Sunday
///                 weeksOfTheMonth:
///                   - First
///               retentionTimes:
///                 - 2023-07-18T09:30:00.000Z
///         workLoadType: AzureFileShare
///       resourceGroupName: SwaggerTestRg
///       vaultName: swaggertestvault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Daily Azure Storage Protection Policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionPolicy = new AzureNative.RecoveryServices.ProtectionPolicy("protectionPolicy", new()
///     {
///         PolicyName = "dailyPolicy2",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureFileShareProtectionPolicyArgs
///         {
///             BackupManagementType = "AzureStorage",
///             RetentionPolicy = new AzureNative.RecoveryServices.Inputs.LongTermRetentionPolicyArgs
///             {
///                 DailySchedule = new AzureNative.RecoveryServices.Inputs.DailyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 5,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Days,
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-09-29T08:00:00.000Z",
///                     },
///                 },
///                 MonthlySchedule = new AzureNative.RecoveryServices.Inputs.MonthlyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 60,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Months,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                         },
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-09-29T08:00:00.000Z",
///                     },
///                 },
///                 RetentionPolicyType = "LongTermRetentionPolicy",
///                 WeeklySchedule = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionScheduleArgs
///                 {
///                     DaysOfTheWeek = new[]
///                     {
///                         AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 12,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Weeks,
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-09-29T08:00:00.000Z",
///                     },
///                 },
///                 YearlySchedule = new AzureNative.RecoveryServices.Inputs.YearlyRetentionScheduleArgs
///                 {
///                     MonthsOfYear = new[]
///                     {
///                         AzureNative.RecoveryServices.MonthOfYear.January,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 10,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Years,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                         },
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-09-29T08:00:00.000Z",
///                     },
///                 },
///             },
///             SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyArgs
///             {
///                 SchedulePolicyType = "SimpleSchedulePolicy",
///                 ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Daily,
///                 ScheduleRunTimes = new[]
///                 {
///                     "2021-09-29T08:00:00.000Z",
///                 },
///             },
///             TimeZone = "UTC",
///             WorkLoadType = AzureNative.RecoveryServices.WorkloadType.AzureFileShare,
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "swaggertestvault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionPolicy(ctx, "protectionPolicy", &recoveryservices.ProtectionPolicyArgs{
/// 			PolicyName: pulumi.String("dailyPolicy2"),
/// 			Properties: &recoveryservices.AzureFileShareProtectionPolicyArgs{
/// 				BackupManagementType: pulumi.String("AzureStorage"),
/// 				RetentionPolicy: recoveryservices.LongTermRetentionPolicy{
/// 					DailySchedule: recoveryservices.DailyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        5,
/// 							DurationType: recoveryservices.RetentionDurationTypeDays,
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-09-29T08:00:00.000Z",
/// 						},
/// 					},
/// 					MonthlySchedule: recoveryservices.MonthlyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        60,
/// 							DurationType: recoveryservices.RetentionDurationTypeMonths,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 							},
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-09-29T08:00:00.000Z",
/// 						},
/// 					},
/// 					RetentionPolicyType: "LongTermRetentionPolicy",
/// 					WeeklySchedule: recoveryservices.WeeklyRetentionSchedule{
/// 						DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 							recoveryservices.DayOfWeekSunday,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        12,
/// 							DurationType: recoveryservices.RetentionDurationTypeWeeks,
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-09-29T08:00:00.000Z",
/// 						},
/// 					},
/// 					YearlySchedule: recoveryservices.YearlyRetentionSchedule{
/// 						MonthsOfYear: []recoveryservices.MonthOfYear{
/// 							recoveryservices.MonthOfYearJanuary,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        10,
/// 							DurationType: recoveryservices.RetentionDurationTypeYears,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 							},
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-09-29T08:00:00.000Z",
/// 						},
/// 					},
/// 				},
/// 				SchedulePolicy: recoveryservices.SimpleSchedulePolicy{
/// 					SchedulePolicyType:   "SimpleSchedulePolicy",
/// 					ScheduleRunFrequency: recoveryservices.ScheduleRunTypeDaily,
/// 					ScheduleRunTimes: []string{
/// 						"2021-09-29T08:00:00.000Z",
/// 					},
/// 				},
/// 				TimeZone:     pulumi.String("UTC"),
/// 				WorkLoadType: pulumi.String(recoveryservices.WorkloadTypeAzureFileShare),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("swaggertestvault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicy;
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicyArgs;
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
///         var protectionPolicy = new ProtectionPolicy("protectionPolicy", ProtectionPolicyArgs.builder()
///             .policyName("dailyPolicy2")
///             .properties(AzureFileShareProtectionPolicyArgs.builder()
///                 .backupManagementType("AzureStorage")
///                 .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                     .dailySchedule(DailyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(5)
///                             .durationType("Days")
///                             .build())
///                         .retentionTimes("2021-09-29T08:00:00.000Z")
///                         .build())
///                     .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(60)
///                             .durationType("Months")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .weeksOfTheMonth("First")
///                             .build())
///                         .retentionTimes("2021-09-29T08:00:00.000Z")
///                         .build())
///                     .retentionPolicyType("LongTermRetentionPolicy")
///                     .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                         .daysOfTheWeek("Sunday")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(12)
///                             .durationType("Weeks")
///                             .build())
///                         .retentionTimes("2021-09-29T08:00:00.000Z")
///                         .build())
///                     .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                         .monthsOfYear("January")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(10)
///                             .durationType("Years")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .weeksOfTheMonth("First")
///                             .build())
///                         .retentionTimes("2021-09-29T08:00:00.000Z")
///                         .build())
///                     .build())
///                 .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                     .schedulePolicyType("SimpleSchedulePolicy")
///                     .scheduleRunFrequency("Daily")
///                     .scheduleRunTimes("2021-09-29T08:00:00.000Z")
///                     .build())
///                 .timeZone("UTC")
///                 .workLoadType("AzureFileShare")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("swaggertestvault")
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
/// const protectionPolicy = new azure_native.recoveryservices.ProtectionPolicy("protectionPolicy", {
///     policyName: "dailyPolicy2",
///     properties: {
///         backupManagementType: "AzureStorage",
///         retentionPolicy: {
///             dailySchedule: {
///                 retentionDuration: {
///                     count: 5,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Days,
///                 },
///                 retentionTimes: ["2021-09-29T08:00:00.000Z"],
///             },
///             monthlySchedule: {
///                 retentionDuration: {
///                     count: 60,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Months,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                 },
///                 retentionTimes: ["2021-09-29T08:00:00.000Z"],
///             },
///             retentionPolicyType: "LongTermRetentionPolicy",
///             weeklySchedule: {
///                 daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                 retentionDuration: {
///                     count: 12,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Weeks,
///                 },
///                 retentionTimes: ["2021-09-29T08:00:00.000Z"],
///             },
///             yearlySchedule: {
///                 monthsOfYear: [azure_native.recoveryservices.MonthOfYear.January],
///                 retentionDuration: {
///                     count: 10,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Years,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                 },
///                 retentionTimes: ["2021-09-29T08:00:00.000Z"],
///             },
///         },
///         schedulePolicy: {
///             schedulePolicyType: "SimpleSchedulePolicy",
///             scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Daily,
///             scheduleRunTimes: ["2021-09-29T08:00:00.000Z"],
///         },
///         timeZone: "UTC",
///         workLoadType: azure_native.recoveryservices.WorkloadType.AzureFileShare,
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "swaggertestvault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_policy = azure_native.recoveryservices.ProtectionPolicy("protectionPolicy",
///     policy_name="dailyPolicy2",
///     properties={
///         "backup_management_type": "AzureStorage",
///         "retention_policy": {
///             "daily_schedule": {
///                 "retention_duration": {
///                     "count": 5,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.DAYS,
///                 },
///                 "retention_times": ["2021-09-29T08:00:00.000Z"],
///             },
///             "monthly_schedule": {
///                 "retention_duration": {
///                     "count": 60,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.MONTHS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                 },
///                 "retention_times": ["2021-09-29T08:00:00.000Z"],
///             },
///             "retention_policy_type": "LongTermRetentionPolicy",
///             "weekly_schedule": {
///                 "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                 "retention_duration": {
///                     "count": 12,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.WEEKS,
///                 },
///                 "retention_times": ["2021-09-29T08:00:00.000Z"],
///             },
///             "yearly_schedule": {
///                 "months_of_year": [azure_native.recoveryservices.MonthOfYear.JANUARY],
///                 "retention_duration": {
///                     "count": 10,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.YEARS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                 },
///                 "retention_times": ["2021-09-29T08:00:00.000Z"],
///             },
///         },
///         "schedule_policy": {
///             "schedule_policy_type": "SimpleSchedulePolicy",
///             "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.DAILY,
///             "schedule_run_times": ["2021-09-29T08:00:00.000Z"],
///         },
///         "time_zone": "UTC",
///         "work_load_type": azure_native.recoveryservices.WorkloadType.AZURE_FILE_SHARE,
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="swaggertestvault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionPolicy:
///     type: azure-native:recoveryservices:ProtectionPolicy
///     properties:
///       policyName: dailyPolicy2
///       properties:
///         backupManagementType: AzureStorage
///         retentionPolicy:
///           dailySchedule:
///             retentionDuration:
///               count: 5
///               durationType: Days
///             retentionTimes:
///               - 2021-09-29T08:00:00.000Z
///           monthlySchedule:
///             retentionDuration:
///               count: 60
///               durationType: Months
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Sunday
///               weeksOfTheMonth:
///                 - First
///             retentionTimes:
///               - 2021-09-29T08:00:00.000Z
///           retentionPolicyType: LongTermRetentionPolicy
///           weeklySchedule:
///             daysOfTheWeek:
///               - Sunday
///             retentionDuration:
///               count: 12
///               durationType: Weeks
///             retentionTimes:
///               - 2021-09-29T08:00:00.000Z
///           yearlySchedule:
///             monthsOfYear:
///               - January
///             retentionDuration:
///               count: 10
///               durationType: Years
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Sunday
///               weeksOfTheMonth:
///                 - First
///             retentionTimes:
///               - 2021-09-29T08:00:00.000Z
///         schedulePolicy:
///           schedulePolicyType: SimpleSchedulePolicy
///           scheduleRunFrequency: Daily
///           scheduleRunTimes:
///             - 2021-09-29T08:00:00.000Z
///         timeZone: UTC
///         workLoadType: AzureFileShare
///       resourceGroupName: SwaggerTestRg
///       vaultName: swaggertestvault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Enhanced Azure Vm Protection Policy with Hourly backup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionPolicy = new AzureNative.RecoveryServices.ProtectionPolicy("protectionPolicy", new()
///     {
///         PolicyName = "v2-daily-sample",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureIaaSVMProtectionPolicyArgs
///         {
///             BackupManagementType = "AzureIaasVM",
///             InstantRpRetentionRangeInDays = 30,
///             PolicyType = AzureNative.RecoveryServices.IAASVMPolicyType.V2,
///             RetentionPolicy = new AzureNative.RecoveryServices.Inputs.LongTermRetentionPolicyArgs
///             {
///                 DailySchedule = new AzureNative.RecoveryServices.Inputs.DailyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 180,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Days,
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-12-17T08:00:00+00:00",
///                     },
///                 },
///                 MonthlySchedule = new AzureNative.RecoveryServices.Inputs.MonthlyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 60,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Months,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                         },
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-12-17T08:00:00+00:00",
///                     },
///                 },
///                 RetentionPolicyType = "LongTermRetentionPolicy",
///                 WeeklySchedule = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionScheduleArgs
///                 {
///                     DaysOfTheWeek = new[]
///                     {
///                         AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 12,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Weeks,
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-12-17T08:00:00+00:00",
///                     },
///                 },
///                 YearlySchedule = new AzureNative.RecoveryServices.Inputs.YearlyRetentionScheduleArgs
///                 {
///                     MonthsOfYear = new[]
///                     {
///                         AzureNative.RecoveryServices.MonthOfYear.January,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 10,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Years,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                         },
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-12-17T08:00:00+00:00",
///                     },
///                 },
///             },
///             SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyV2Args
///             {
///                 HourlySchedule = new AzureNative.RecoveryServices.Inputs.HourlyScheduleArgs
///                 {
///                     Interval = 4,
///                     ScheduleWindowDuration = 16,
///                     ScheduleWindowStartTime = "2021-12-17T08:00:00Z",
///                 },
///                 SchedulePolicyType = "SimpleSchedulePolicyV2",
///                 ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Hourly,
///             },
///             SnapshotConsistencyType = AzureNative.RecoveryServices.IaasVMSnapshotConsistencyType.OnlyCrashConsistent,
///             TimeZone = "India Standard Time",
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "NetSDKTestRsVault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionPolicy(ctx, "protectionPolicy", &recoveryservices.ProtectionPolicyArgs{
/// 			PolicyName: pulumi.String("v2-daily-sample"),
/// 			Properties: &recoveryservices.AzureIaaSVMProtectionPolicyArgs{
/// 				BackupManagementType:          pulumi.String("AzureIaasVM"),
/// 				InstantRpRetentionRangeInDays: pulumi.Int(30),
/// 				PolicyType:                    pulumi.String(recoveryservices.IAASVMPolicyTypeV2),
/// 				RetentionPolicy: recoveryservices.LongTermRetentionPolicy{
/// 					DailySchedule: recoveryservices.DailyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        180,
/// 							DurationType: recoveryservices.RetentionDurationTypeDays,
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-12-17T08:00:00+00:00",
/// 						},
/// 					},
/// 					MonthlySchedule: recoveryservices.MonthlyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        60,
/// 							DurationType: recoveryservices.RetentionDurationTypeMonths,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 							},
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-12-17T08:00:00+00:00",
/// 						},
/// 					},
/// 					RetentionPolicyType: "LongTermRetentionPolicy",
/// 					WeeklySchedule: recoveryservices.WeeklyRetentionSchedule{
/// 						DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 							recoveryservices.DayOfWeekSunday,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        12,
/// 							DurationType: recoveryservices.RetentionDurationTypeWeeks,
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-12-17T08:00:00+00:00",
/// 						},
/// 					},
/// 					YearlySchedule: recoveryservices.YearlyRetentionSchedule{
/// 						MonthsOfYear: []recoveryservices.MonthOfYear{
/// 							recoveryservices.MonthOfYearJanuary,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        10,
/// 							DurationType: recoveryservices.RetentionDurationTypeYears,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 							},
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-12-17T08:00:00+00:00",
/// 						},
/// 					},
/// 				},
/// 				SchedulePolicy: recoveryservices.SimpleSchedulePolicyV2{
/// 					HourlySchedule: recoveryservices.HourlySchedule{
/// 						Interval:                4,
/// 						ScheduleWindowDuration:  16,
/// 						ScheduleWindowStartTime: "2021-12-17T08:00:00Z",
/// 					},
/// 					SchedulePolicyType:   "SimpleSchedulePolicyV2",
/// 					ScheduleRunFrequency: recoveryservices.ScheduleRunTypeHourly,
/// 				},
/// 				SnapshotConsistencyType: pulumi.String(recoveryservices.IaasVMSnapshotConsistencyTypeOnlyCrashConsistent),
/// 				TimeZone:                pulumi.String("India Standard Time"),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("NetSDKTestRsVault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicy;
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicyArgs;
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
///         var protectionPolicy = new ProtectionPolicy("protectionPolicy", ProtectionPolicyArgs.builder()
///             .policyName("v2-daily-sample")
///             .properties(AzureIaaSVMProtectionPolicyArgs.builder()
///                 .backupManagementType("AzureIaasVM")
///                 .instantRpRetentionRangeInDays(30)
///                 .policyType("V2")
///                 .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                     .dailySchedule(DailyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(180)
///                             .durationType("Days")
///                             .build())
///                         .retentionTimes("2021-12-17T08:00:00+00:00")
///                         .build())
///                     .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(60)
///                             .durationType("Months")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .weeksOfTheMonth("First")
///                             .build())
///                         .retentionTimes("2021-12-17T08:00:00+00:00")
///                         .build())
///                     .retentionPolicyType("LongTermRetentionPolicy")
///                     .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                         .daysOfTheWeek("Sunday")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(12)
///                             .durationType("Weeks")
///                             .build())
///                         .retentionTimes("2021-12-17T08:00:00+00:00")
///                         .build())
///                     .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                         .monthsOfYear("January")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(10)
///                             .durationType("Years")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .weeksOfTheMonth("First")
///                             .build())
///                         .retentionTimes("2021-12-17T08:00:00+00:00")
///                         .build())
///                     .build())
///                 .schedulePolicy(SimpleSchedulePolicyV2Args.builder()
///                     .hourlySchedule(HourlyScheduleArgs.builder()
///                         .interval(4)
///                         .scheduleWindowDuration(16)
///                         .scheduleWindowStartTime("2021-12-17T08:00:00Z")
///                         .build())
///                     .schedulePolicyType("SimpleSchedulePolicyV2")
///                     .scheduleRunFrequency("Hourly")
///                     .build())
///                 .snapshotConsistencyType("OnlyCrashConsistent")
///                 .timeZone("India Standard Time")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("NetSDKTestRsVault")
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
/// const protectionPolicy = new azure_native.recoveryservices.ProtectionPolicy("protectionPolicy", {
///     policyName: "v2-daily-sample",
///     properties: {
///         backupManagementType: "AzureIaasVM",
///         instantRpRetentionRangeInDays: 30,
///         policyType: azure_native.recoveryservices.IAASVMPolicyType.V2,
///         retentionPolicy: {
///             dailySchedule: {
///                 retentionDuration: {
///                     count: 180,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Days,
///                 },
///                 retentionTimes: ["2021-12-17T08:00:00+00:00"],
///             },
///             monthlySchedule: {
///                 retentionDuration: {
///                     count: 60,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Months,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                 },
///                 retentionTimes: ["2021-12-17T08:00:00+00:00"],
///             },
///             retentionPolicyType: "LongTermRetentionPolicy",
///             weeklySchedule: {
///                 daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                 retentionDuration: {
///                     count: 12,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Weeks,
///                 },
///                 retentionTimes: ["2021-12-17T08:00:00+00:00"],
///             },
///             yearlySchedule: {
///                 monthsOfYear: [azure_native.recoveryservices.MonthOfYear.January],
///                 retentionDuration: {
///                     count: 10,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Years,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                 },
///                 retentionTimes: ["2021-12-17T08:00:00+00:00"],
///             },
///         },
///         schedulePolicy: {
///             hourlySchedule: {
///                 interval: 4,
///                 scheduleWindowDuration: 16,
///                 scheduleWindowStartTime: "2021-12-17T08:00:00Z",
///             },
///             schedulePolicyType: "SimpleSchedulePolicyV2",
///             scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Hourly,
///         },
///         snapshotConsistencyType: azure_native.recoveryservices.IaasVMSnapshotConsistencyType.OnlyCrashConsistent,
///         timeZone: "India Standard Time",
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "NetSDKTestRsVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_policy = azure_native.recoveryservices.ProtectionPolicy("protectionPolicy",
///     policy_name="v2-daily-sample",
///     properties={
///         "backup_management_type": "AzureIaasVM",
///         "instant_rp_retention_range_in_days": 30,
///         "policy_type": azure_native.recoveryservices.IAASVMPolicyType.V2,
///         "retention_policy": {
///             "daily_schedule": {
///                 "retention_duration": {
///                     "count": 180,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.DAYS,
///                 },
///                 "retention_times": ["2021-12-17T08:00:00+00:00"],
///             },
///             "monthly_schedule": {
///                 "retention_duration": {
///                     "count": 60,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.MONTHS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                 },
///                 "retention_times": ["2021-12-17T08:00:00+00:00"],
///             },
///             "retention_policy_type": "LongTermRetentionPolicy",
///             "weekly_schedule": {
///                 "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                 "retention_duration": {
///                     "count": 12,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.WEEKS,
///                 },
///                 "retention_times": ["2021-12-17T08:00:00+00:00"],
///             },
///             "yearly_schedule": {
///                 "months_of_year": [azure_native.recoveryservices.MonthOfYear.JANUARY],
///                 "retention_duration": {
///                     "count": 10,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.YEARS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                 },
///                 "retention_times": ["2021-12-17T08:00:00+00:00"],
///             },
///         },
///         "schedule_policy": {
///             "hourly_schedule": {
///                 "interval": 4,
///                 "schedule_window_duration": 16,
///                 "schedule_window_start_time": "2021-12-17T08:00:00Z",
///             },
///             "schedule_policy_type": "SimpleSchedulePolicyV2",
///             "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.HOURLY,
///         },
///         "snapshot_consistency_type": azure_native.recoveryservices.IaasVMSnapshotConsistencyType.ONLY_CRASH_CONSISTENT,
///         "time_zone": "India Standard Time",
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="NetSDKTestRsVault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionPolicy:
///     type: azure-native:recoveryservices:ProtectionPolicy
///     properties:
///       policyName: v2-daily-sample
///       properties:
///         backupManagementType: AzureIaasVM
///         instantRpRetentionRangeInDays: 30
///         policyType: V2
///         retentionPolicy:
///           dailySchedule:
///             retentionDuration:
///               count: 180
///               durationType: Days
///             retentionTimes:
///               - 2021-12-17T08:00:00+00:00
///           monthlySchedule:
///             retentionDuration:
///               count: 60
///               durationType: Months
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Sunday
///               weeksOfTheMonth:
///                 - First
///             retentionTimes:
///               - 2021-12-17T08:00:00+00:00
///           retentionPolicyType: LongTermRetentionPolicy
///           weeklySchedule:
///             daysOfTheWeek:
///               - Sunday
///             retentionDuration:
///               count: 12
///               durationType: Weeks
///             retentionTimes:
///               - 2021-12-17T08:00:00+00:00
///           yearlySchedule:
///             monthsOfYear:
///               - January
///             retentionDuration:
///               count: 10
///               durationType: Years
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Sunday
///               weeksOfTheMonth:
///                 - First
///             retentionTimes:
///               - 2021-12-17T08:00:00+00:00
///         schedulePolicy:
///           hourlySchedule:
///             interval: 4
///             scheduleWindowDuration: 16
///             scheduleWindowStartTime: 2021-12-17T08:00:00Z
///           schedulePolicyType: SimpleSchedulePolicyV2
///           scheduleRunFrequency: Hourly
///         snapshotConsistencyType: OnlyCrashConsistent
///         timeZone: India Standard Time
///       resourceGroupName: SwaggerTestRg
///       vaultName: NetSDKTestRsVault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Enhanced Azure Vm Protection Policy with daily backup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionPolicy = new AzureNative.RecoveryServices.ProtectionPolicy("protectionPolicy", new()
///     {
///         PolicyName = "v2-daily-sample",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureIaaSVMProtectionPolicyArgs
///         {
///             BackupManagementType = "AzureIaasVM",
///             InstantRpRetentionRangeInDays = 30,
///             PolicyType = AzureNative.RecoveryServices.IAASVMPolicyType.V2,
///             RetentionPolicy = new AzureNative.RecoveryServices.Inputs.LongTermRetentionPolicyArgs
///             {
///                 DailySchedule = new AzureNative.RecoveryServices.Inputs.DailyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 180,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Days,
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-12-17T08:00:00+00:00",
///                     },
///                 },
///                 MonthlySchedule = new AzureNative.RecoveryServices.Inputs.MonthlyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 60,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Months,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                         },
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-12-17T08:00:00+00:00",
///                     },
///                 },
///                 RetentionPolicyType = "LongTermRetentionPolicy",
///                 WeeklySchedule = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionScheduleArgs
///                 {
///                     DaysOfTheWeek = new[]
///                     {
///                         AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 12,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Weeks,
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-12-17T08:00:00+00:00",
///                     },
///                 },
///                 YearlySchedule = new AzureNative.RecoveryServices.Inputs.YearlyRetentionScheduleArgs
///                 {
///                     MonthsOfYear = new[]
///                     {
///                         AzureNative.RecoveryServices.MonthOfYear.January,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 10,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Years,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                         },
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2021-12-17T08:00:00+00:00",
///                     },
///                 },
///             },
///             SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyV2Args
///             {
///                 DailySchedule = new AzureNative.RecoveryServices.Inputs.DailyScheduleArgs
///                 {
///                     ScheduleRunTimes = new[]
///                     {
///                         "2018-01-24T10:00:00Z",
///                     },
///                 },
///                 SchedulePolicyType = "SimpleSchedulePolicyV2",
///                 ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Daily,
///             },
///             SnapshotConsistencyType = AzureNative.RecoveryServices.IaasVMSnapshotConsistencyType.OnlyCrashConsistent,
///             TimeZone = "India Standard Time",
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "NetSDKTestRsVault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionPolicy(ctx, "protectionPolicy", &recoveryservices.ProtectionPolicyArgs{
/// 			PolicyName: pulumi.String("v2-daily-sample"),
/// 			Properties: &recoveryservices.AzureIaaSVMProtectionPolicyArgs{
/// 				BackupManagementType:          pulumi.String("AzureIaasVM"),
/// 				InstantRpRetentionRangeInDays: pulumi.Int(30),
/// 				PolicyType:                    pulumi.String(recoveryservices.IAASVMPolicyTypeV2),
/// 				RetentionPolicy: recoveryservices.LongTermRetentionPolicy{
/// 					DailySchedule: recoveryservices.DailyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        180,
/// 							DurationType: recoveryservices.RetentionDurationTypeDays,
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-12-17T08:00:00+00:00",
/// 						},
/// 					},
/// 					MonthlySchedule: recoveryservices.MonthlyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        60,
/// 							DurationType: recoveryservices.RetentionDurationTypeMonths,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 							},
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-12-17T08:00:00+00:00",
/// 						},
/// 					},
/// 					RetentionPolicyType: "LongTermRetentionPolicy",
/// 					WeeklySchedule: recoveryservices.WeeklyRetentionSchedule{
/// 						DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 							recoveryservices.DayOfWeekSunday,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        12,
/// 							DurationType: recoveryservices.RetentionDurationTypeWeeks,
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-12-17T08:00:00+00:00",
/// 						},
/// 					},
/// 					YearlySchedule: recoveryservices.YearlyRetentionSchedule{
/// 						MonthsOfYear: []recoveryservices.MonthOfYear{
/// 							recoveryservices.MonthOfYearJanuary,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        10,
/// 							DurationType: recoveryservices.RetentionDurationTypeYears,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 							},
/// 						},
/// 						RetentionTimes: []string{
/// 							"2021-12-17T08:00:00+00:00",
/// 						},
/// 					},
/// 				},
/// 				SchedulePolicy: recoveryservices.SimpleSchedulePolicyV2{
/// 					DailySchedule: recoveryservices.DailySchedule{
/// 						ScheduleRunTimes: []string{
/// 							"2018-01-24T10:00:00Z",
/// 						},
/// 					},
/// 					SchedulePolicyType:   "SimpleSchedulePolicyV2",
/// 					ScheduleRunFrequency: recoveryservices.ScheduleRunTypeDaily,
/// 				},
/// 				SnapshotConsistencyType: pulumi.String(recoveryservices.IaasVMSnapshotConsistencyTypeOnlyCrashConsistent),
/// 				TimeZone:                pulumi.String("India Standard Time"),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("NetSDKTestRsVault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicy;
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicyArgs;
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
///         var protectionPolicy = new ProtectionPolicy("protectionPolicy", ProtectionPolicyArgs.builder()
///             .policyName("v2-daily-sample")
///             .properties(AzureIaaSVMProtectionPolicyArgs.builder()
///                 .backupManagementType("AzureIaasVM")
///                 .instantRpRetentionRangeInDays(30)
///                 .policyType("V2")
///                 .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                     .dailySchedule(DailyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(180)
///                             .durationType("Days")
///                             .build())
///                         .retentionTimes("2021-12-17T08:00:00+00:00")
///                         .build())
///                     .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(60)
///                             .durationType("Months")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .weeksOfTheMonth("First")
///                             .build())
///                         .retentionTimes("2021-12-17T08:00:00+00:00")
///                         .build())
///                     .retentionPolicyType("LongTermRetentionPolicy")
///                     .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                         .daysOfTheWeek("Sunday")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(12)
///                             .durationType("Weeks")
///                             .build())
///                         .retentionTimes("2021-12-17T08:00:00+00:00")
///                         .build())
///                     .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                         .monthsOfYear("January")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(10)
///                             .durationType("Years")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .weeksOfTheMonth("First")
///                             .build())
///                         .retentionTimes("2021-12-17T08:00:00+00:00")
///                         .build())
///                     .build())
///                 .schedulePolicy(SimpleSchedulePolicyV2Args.builder()
///                     .dailySchedule(DailyScheduleArgs.builder()
///                         .scheduleRunTimes("2018-01-24T10:00:00Z")
///                         .build())
///                     .schedulePolicyType("SimpleSchedulePolicyV2")
///                     .scheduleRunFrequency("Daily")
///                     .build())
///                 .snapshotConsistencyType("OnlyCrashConsistent")
///                 .timeZone("India Standard Time")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("NetSDKTestRsVault")
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
/// const protectionPolicy = new azure_native.recoveryservices.ProtectionPolicy("protectionPolicy", {
///     policyName: "v2-daily-sample",
///     properties: {
///         backupManagementType: "AzureIaasVM",
///         instantRpRetentionRangeInDays: 30,
///         policyType: azure_native.recoveryservices.IAASVMPolicyType.V2,
///         retentionPolicy: {
///             dailySchedule: {
///                 retentionDuration: {
///                     count: 180,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Days,
///                 },
///                 retentionTimes: ["2021-12-17T08:00:00+00:00"],
///             },
///             monthlySchedule: {
///                 retentionDuration: {
///                     count: 60,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Months,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                 },
///                 retentionTimes: ["2021-12-17T08:00:00+00:00"],
///             },
///             retentionPolicyType: "LongTermRetentionPolicy",
///             weeklySchedule: {
///                 daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                 retentionDuration: {
///                     count: 12,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Weeks,
///                 },
///                 retentionTimes: ["2021-12-17T08:00:00+00:00"],
///             },
///             yearlySchedule: {
///                 monthsOfYear: [azure_native.recoveryservices.MonthOfYear.January],
///                 retentionDuration: {
///                     count: 10,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Years,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                 },
///                 retentionTimes: ["2021-12-17T08:00:00+00:00"],
///             },
///         },
///         schedulePolicy: {
///             dailySchedule: {
///                 scheduleRunTimes: ["2018-01-24T10:00:00Z"],
///             },
///             schedulePolicyType: "SimpleSchedulePolicyV2",
///             scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Daily,
///         },
///         snapshotConsistencyType: azure_native.recoveryservices.IaasVMSnapshotConsistencyType.OnlyCrashConsistent,
///         timeZone: "India Standard Time",
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "NetSDKTestRsVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_policy = azure_native.recoveryservices.ProtectionPolicy("protectionPolicy",
///     policy_name="v2-daily-sample",
///     properties={
///         "backup_management_type": "AzureIaasVM",
///         "instant_rp_retention_range_in_days": 30,
///         "policy_type": azure_native.recoveryservices.IAASVMPolicyType.V2,
///         "retention_policy": {
///             "daily_schedule": {
///                 "retention_duration": {
///                     "count": 180,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.DAYS,
///                 },
///                 "retention_times": ["2021-12-17T08:00:00+00:00"],
///             },
///             "monthly_schedule": {
///                 "retention_duration": {
///                     "count": 60,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.MONTHS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                 },
///                 "retention_times": ["2021-12-17T08:00:00+00:00"],
///             },
///             "retention_policy_type": "LongTermRetentionPolicy",
///             "weekly_schedule": {
///                 "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                 "retention_duration": {
///                     "count": 12,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.WEEKS,
///                 },
///                 "retention_times": ["2021-12-17T08:00:00+00:00"],
///             },
///             "yearly_schedule": {
///                 "months_of_year": [azure_native.recoveryservices.MonthOfYear.JANUARY],
///                 "retention_duration": {
///                     "count": 10,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.YEARS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                 },
///                 "retention_times": ["2021-12-17T08:00:00+00:00"],
///             },
///         },
///         "schedule_policy": {
///             "daily_schedule": {
///                 "schedule_run_times": ["2018-01-24T10:00:00Z"],
///             },
///             "schedule_policy_type": "SimpleSchedulePolicyV2",
///             "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.DAILY,
///         },
///         "snapshot_consistency_type": azure_native.recoveryservices.IaasVMSnapshotConsistencyType.ONLY_CRASH_CONSISTENT,
///         "time_zone": "India Standard Time",
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="NetSDKTestRsVault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionPolicy:
///     type: azure-native:recoveryservices:ProtectionPolicy
///     properties:
///       policyName: v2-daily-sample
///       properties:
///         backupManagementType: AzureIaasVM
///         instantRpRetentionRangeInDays: 30
///         policyType: V2
///         retentionPolicy:
///           dailySchedule:
///             retentionDuration:
///               count: 180
///               durationType: Days
///             retentionTimes:
///               - 2021-12-17T08:00:00+00:00
///           monthlySchedule:
///             retentionDuration:
///               count: 60
///               durationType: Months
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Sunday
///               weeksOfTheMonth:
///                 - First
///             retentionTimes:
///               - 2021-12-17T08:00:00+00:00
///           retentionPolicyType: LongTermRetentionPolicy
///           weeklySchedule:
///             daysOfTheWeek:
///               - Sunday
///             retentionDuration:
///               count: 12
///               durationType: Weeks
///             retentionTimes:
///               - 2021-12-17T08:00:00+00:00
///           yearlySchedule:
///             monthsOfYear:
///               - January
///             retentionDuration:
///               count: 10
///               durationType: Years
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Sunday
///               weeksOfTheMonth:
///                 - First
///             retentionTimes:
///               - 2021-12-17T08:00:00+00:00
///         schedulePolicy:
///           dailySchedule:
///             scheduleRunTimes:
///               - 2018-01-24T10:00:00Z
///           schedulePolicyType: SimpleSchedulePolicyV2
///           scheduleRunFrequency: Daily
///         snapshotConsistencyType: OnlyCrashConsistent
///         timeZone: India Standard Time
///       resourceGroupName: SwaggerTestRg
///       vaultName: NetSDKTestRsVault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Full Azure Vm Protection Policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionPolicy = new AzureNative.RecoveryServices.ProtectionPolicy("protectionPolicy", new()
///     {
///         PolicyName = "testPolicy1",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureIaaSVMProtectionPolicyArgs
///         {
///             BackupManagementType = "AzureIaasVM",
///             RetentionPolicy = new AzureNative.RecoveryServices.Inputs.LongTermRetentionPolicyArgs
///             {
///                 MonthlySchedule = new AzureNative.RecoveryServices.Inputs.MonthlyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 2,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Months,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Wednesday,
///                             AzureNative.RecoveryServices.DayOfWeek.Thursday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                             AzureNative.RecoveryServices.WeekOfMonth.Third,
///                         },
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2018-01-24T10:00:00Z",
///                     },
///                 },
///                 RetentionPolicyType = "LongTermRetentionPolicy",
///                 WeeklySchedule = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionScheduleArgs
///                 {
///                     DaysOfTheWeek = new[]
///                     {
///                         AzureNative.RecoveryServices.DayOfWeek.Monday,
///                         AzureNative.RecoveryServices.DayOfWeek.Wednesday,
///                         AzureNative.RecoveryServices.DayOfWeek.Thursday,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 1,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Weeks,
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2018-01-24T10:00:00Z",
///                     },
///                 },
///                 YearlySchedule = new AzureNative.RecoveryServices.Inputs.YearlyRetentionScheduleArgs
///                 {
///                     MonthsOfYear = new[]
///                     {
///                         AzureNative.RecoveryServices.MonthOfYear.February,
///                         AzureNative.RecoveryServices.MonthOfYear.November,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 4,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Years,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Monday,
///                             AzureNative.RecoveryServices.DayOfWeek.Thursday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.Fourth,
///                         },
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2018-01-24T10:00:00Z",
///                     },
///                 },
///             },
///             SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyArgs
///             {
///                 SchedulePolicyType = "SimpleSchedulePolicy",
///                 ScheduleRunDays = new[]
///                 {
///                     AzureNative.RecoveryServices.DayOfWeek.Monday,
///                     AzureNative.RecoveryServices.DayOfWeek.Wednesday,
///                     AzureNative.RecoveryServices.DayOfWeek.Thursday,
///                 },
///                 ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Weekly,
///                 ScheduleRunTimes = new[]
///                 {
///                     "2018-01-24T10:00:00Z",
///                 },
///             },
///             TimeZone = "Pacific Standard Time",
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "NetSDKTestRsVault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionPolicy(ctx, "protectionPolicy", &recoveryservices.ProtectionPolicyArgs{
/// 			PolicyName: pulumi.String("testPolicy1"),
/// 			Properties: &recoveryservices.AzureIaaSVMProtectionPolicyArgs{
/// 				BackupManagementType: pulumi.String("AzureIaasVM"),
/// 				RetentionPolicy: recoveryservices.LongTermRetentionPolicy{
/// 					MonthlySchedule: recoveryservices.MonthlyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        2,
/// 							DurationType: recoveryservices.RetentionDurationTypeMonths,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekWednesday,
/// 								recoveryservices.DayOfWeekThursday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 								recoveryservices.WeekOfMonthThird,
/// 							},
/// 						},
/// 						RetentionTimes: []string{
/// 							"2018-01-24T10:00:00Z",
/// 						},
/// 					},
/// 					RetentionPolicyType: "LongTermRetentionPolicy",
/// 					WeeklySchedule: recoveryservices.WeeklyRetentionSchedule{
/// 						DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 							recoveryservices.DayOfWeekMonday,
/// 							recoveryservices.DayOfWeekWednesday,
/// 							recoveryservices.DayOfWeekThursday,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        1,
/// 							DurationType: recoveryservices.RetentionDurationTypeWeeks,
/// 						},
/// 						RetentionTimes: []string{
/// 							"2018-01-24T10:00:00Z",
/// 						},
/// 					},
/// 					YearlySchedule: recoveryservices.YearlyRetentionSchedule{
/// 						MonthsOfYear: []recoveryservices.MonthOfYear{
/// 							recoveryservices.MonthOfYearFebruary,
/// 							recoveryservices.MonthOfYearNovember,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        4,
/// 							DurationType: recoveryservices.RetentionDurationTypeYears,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekMonday,
/// 								recoveryservices.DayOfWeekThursday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFourth,
/// 							},
/// 						},
/// 						RetentionTimes: []string{
/// 							"2018-01-24T10:00:00Z",
/// 						},
/// 					},
/// 				},
/// 				SchedulePolicy: recoveryservices.SimpleSchedulePolicy{
/// 					SchedulePolicyType: "SimpleSchedulePolicy",
/// 					ScheduleRunDays: []recoveryservices.DayOfWeek{
/// 						recoveryservices.DayOfWeekMonday,
/// 						recoveryservices.DayOfWeekWednesday,
/// 						recoveryservices.DayOfWeekThursday,
/// 					},
/// 					ScheduleRunFrequency: recoveryservices.ScheduleRunTypeWeekly,
/// 					ScheduleRunTimes: []string{
/// 						"2018-01-24T10:00:00Z",
/// 					},
/// 				},
/// 				TimeZone: pulumi.String("Pacific Standard Time"),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("NetSDKTestRsVault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicy;
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicyArgs;
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
///         var protectionPolicy = new ProtectionPolicy("protectionPolicy", ProtectionPolicyArgs.builder()
///             .policyName("testPolicy1")
///             .properties(AzureIaaSVMProtectionPolicyArgs.builder()
///                 .backupManagementType("AzureIaasVM")
///                 .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                     .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(2)
///                             .durationType("Months")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek(
///                                 "Wednesday",
///                                 "Thursday")
///                             .weeksOfTheMonth(
///                                 "First",
///                                 "Third")
///                             .build())
///                         .retentionTimes("2018-01-24T10:00:00Z")
///                         .build())
///                     .retentionPolicyType("LongTermRetentionPolicy")
///                     .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                         .daysOfTheWeek(
///                             "Monday",
///                             "Wednesday",
///                             "Thursday")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(1)
///                             .durationType("Weeks")
///                             .build())
///                         .retentionTimes("2018-01-24T10:00:00Z")
///                         .build())
///                     .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                         .monthsOfYear(
///                             "February",
///                             "November")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(4)
///                             .durationType("Years")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek(
///                                 "Monday",
///                                 "Thursday")
///                             .weeksOfTheMonth("Fourth")
///                             .build())
///                         .retentionTimes("2018-01-24T10:00:00Z")
///                         .build())
///                     .build())
///                 .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                     .schedulePolicyType("SimpleSchedulePolicy")
///                     .scheduleRunDays(
///                         "Monday",
///                         "Wednesday",
///                         "Thursday")
///                     .scheduleRunFrequency("Weekly")
///                     .scheduleRunTimes("2018-01-24T10:00:00Z")
///                     .build())
///                 .timeZone("Pacific Standard Time")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("NetSDKTestRsVault")
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
/// const protectionPolicy = new azure_native.recoveryservices.ProtectionPolicy("protectionPolicy", {
///     policyName: "testPolicy1",
///     properties: {
///         backupManagementType: "AzureIaasVM",
///         retentionPolicy: {
///             monthlySchedule: {
///                 retentionDuration: {
///                     count: 2,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Months,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [
///                         azure_native.recoveryservices.DayOfWeek.Wednesday,
///                         azure_native.recoveryservices.DayOfWeek.Thursday,
///                     ],
///                     weeksOfTheMonth: [
///                         azure_native.recoveryservices.WeekOfMonth.First,
///                         azure_native.recoveryservices.WeekOfMonth.Third,
///                     ],
///                 },
///                 retentionTimes: ["2018-01-24T10:00:00Z"],
///             },
///             retentionPolicyType: "LongTermRetentionPolicy",
///             weeklySchedule: {
///                 daysOfTheWeek: [
///                     azure_native.recoveryservices.DayOfWeek.Monday,
///                     azure_native.recoveryservices.DayOfWeek.Wednesday,
///                     azure_native.recoveryservices.DayOfWeek.Thursday,
///                 ],
///                 retentionDuration: {
///                     count: 1,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Weeks,
///                 },
///                 retentionTimes: ["2018-01-24T10:00:00Z"],
///             },
///             yearlySchedule: {
///                 monthsOfYear: [
///                     azure_native.recoveryservices.MonthOfYear.February,
///                     azure_native.recoveryservices.MonthOfYear.November,
///                 ],
///                 retentionDuration: {
///                     count: 4,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Years,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [
///                         azure_native.recoveryservices.DayOfWeek.Monday,
///                         azure_native.recoveryservices.DayOfWeek.Thursday,
///                     ],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.Fourth],
///                 },
///                 retentionTimes: ["2018-01-24T10:00:00Z"],
///             },
///         },
///         schedulePolicy: {
///             schedulePolicyType: "SimpleSchedulePolicy",
///             scheduleRunDays: [
///                 azure_native.recoveryservices.DayOfWeek.Monday,
///                 azure_native.recoveryservices.DayOfWeek.Wednesday,
///                 azure_native.recoveryservices.DayOfWeek.Thursday,
///             ],
///             scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Weekly,
///             scheduleRunTimes: ["2018-01-24T10:00:00Z"],
///         },
///         timeZone: "Pacific Standard Time",
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "NetSDKTestRsVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_policy = azure_native.recoveryservices.ProtectionPolicy("protectionPolicy",
///     policy_name="testPolicy1",
///     properties={
///         "backup_management_type": "AzureIaasVM",
///         "retention_policy": {
///             "monthly_schedule": {
///                 "retention_duration": {
///                     "count": 2,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.MONTHS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [
///                         azure_native.recoveryservices.DayOfWeek.WEDNESDAY,
///                         azure_native.recoveryservices.DayOfWeek.THURSDAY,
///                     ],
///                     "weeks_of_the_month": [
///                         azure_native.recoveryservices.WeekOfMonth.FIRST,
///                         azure_native.recoveryservices.WeekOfMonth.THIRD,
///                     ],
///                 },
///                 "retention_times": ["2018-01-24T10:00:00Z"],
///             },
///             "retention_policy_type": "LongTermRetentionPolicy",
///             "weekly_schedule": {
///                 "days_of_the_week": [
///                     azure_native.recoveryservices.DayOfWeek.MONDAY,
///                     azure_native.recoveryservices.DayOfWeek.WEDNESDAY,
///                     azure_native.recoveryservices.DayOfWeek.THURSDAY,
///                 ],
///                 "retention_duration": {
///                     "count": 1,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.WEEKS,
///                 },
///                 "retention_times": ["2018-01-24T10:00:00Z"],
///             },
///             "yearly_schedule": {
///                 "months_of_year": [
///                     azure_native.recoveryservices.MonthOfYear.FEBRUARY,
///                     azure_native.recoveryservices.MonthOfYear.NOVEMBER,
///                 ],
///                 "retention_duration": {
///                     "count": 4,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.YEARS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [
///                         azure_native.recoveryservices.DayOfWeek.MONDAY,
///                         azure_native.recoveryservices.DayOfWeek.THURSDAY,
///                     ],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FOURTH],
///                 },
///                 "retention_times": ["2018-01-24T10:00:00Z"],
///             },
///         },
///         "schedule_policy": {
///             "schedule_policy_type": "SimpleSchedulePolicy",
///             "schedule_run_days": [
///                 azure_native.recoveryservices.DayOfWeek.MONDAY,
///                 azure_native.recoveryservices.DayOfWeek.WEDNESDAY,
///                 azure_native.recoveryservices.DayOfWeek.THURSDAY,
///             ],
///             "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.WEEKLY,
///             "schedule_run_times": ["2018-01-24T10:00:00Z"],
///         },
///         "time_zone": "Pacific Standard Time",
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="NetSDKTestRsVault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionPolicy:
///     type: azure-native:recoveryservices:ProtectionPolicy
///     properties:
///       policyName: testPolicy1
///       properties:
///         backupManagementType: AzureIaasVM
///         retentionPolicy:
///           monthlySchedule:
///             retentionDuration:
///               count: 2
///               durationType: Months
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Wednesday
///                 - Thursday
///               weeksOfTheMonth:
///                 - First
///                 - Third
///             retentionTimes:
///               - 2018-01-24T10:00:00Z
///           retentionPolicyType: LongTermRetentionPolicy
///           weeklySchedule:
///             daysOfTheWeek:
///               - Monday
///               - Wednesday
///               - Thursday
///             retentionDuration:
///               count: 1
///               durationType: Weeks
///             retentionTimes:
///               - 2018-01-24T10:00:00Z
///           yearlySchedule:
///             monthsOfYear:
///               - February
///               - November
///             retentionDuration:
///               count: 4
///               durationType: Years
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Monday
///                 - Thursday
///               weeksOfTheMonth:
///                 - Fourth
///             retentionTimes:
///               - 2018-01-24T10:00:00Z
///         schedulePolicy:
///           schedulePolicyType: SimpleSchedulePolicy
///           scheduleRunDays:
///             - Monday
///             - Wednesday
///             - Thursday
///           scheduleRunFrequency: Weekly
///           scheduleRunTimes:
///             - 2018-01-24T10:00:00Z
///         timeZone: Pacific Standard Time
///       resourceGroupName: SwaggerTestRg
///       vaultName: NetSDKTestRsVault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Full Azure Workload Protection Policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionPolicy = new AzureNative.RecoveryServices.ProtectionPolicy("protectionPolicy", new()
///     {
///         PolicyName = "testPolicy1",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureVmWorkloadProtectionPolicyArgs
///         {
///             BackupManagementType = "AzureWorkload",
///             Settings = new AzureNative.RecoveryServices.Inputs.SettingsArgs
///             {
///                 Issqlcompression = false,
///                 TimeZone = "Pacific Standard Time",
///             },
///             SubProtectionPolicy = new[]
///             {
///                 new AzureNative.RecoveryServices.Inputs.SubProtectionPolicyArgs
///                 {
///                     PolicyType = AzureNative.RecoveryServices.PolicyType.Full,
///                     RetentionPolicy = new AzureNative.RecoveryServices.Inputs.LongTermRetentionPolicyArgs
///                     {
///                         MonthlySchedule = new AzureNative.RecoveryServices.Inputs.MonthlyRetentionScheduleArgs
///                         {
///                             RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                             {
///                                 Count = 1,
///                                 DurationType = AzureNative.RecoveryServices.RetentionDurationType.Months,
///                             },
///                             RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                             RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                             {
///                                 DaysOfTheWeek = new[]
///                                 {
///                                     AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                                 },
///                                 WeeksOfTheMonth = new[]
///                                 {
///                                     AzureNative.RecoveryServices.WeekOfMonth.Second,
///                                 },
///                             },
///                             RetentionTimes = new[]
///                             {
///                                 "2018-01-24T10:00:00Z",
///                             },
///                         },
///                         RetentionPolicyType = "LongTermRetentionPolicy",
///                         WeeklySchedule = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionScheduleArgs
///                         {
///                             DaysOfTheWeek = new[]
///                             {
///                                 AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                                 AzureNative.RecoveryServices.DayOfWeek.Tuesday,
///                             },
///                             RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                             {
///                                 Count = 2,
///                                 DurationType = AzureNative.RecoveryServices.RetentionDurationType.Weeks,
///                             },
///                             RetentionTimes = new[]
///                             {
///                                 "2018-01-24T10:00:00Z",
///                             },
///                         },
///                         YearlySchedule = new AzureNative.RecoveryServices.Inputs.YearlyRetentionScheduleArgs
///                         {
///                             MonthsOfYear = new[]
///                             {
///                                 AzureNative.RecoveryServices.MonthOfYear.January,
///                                 AzureNative.RecoveryServices.MonthOfYear.June,
///                                 AzureNative.RecoveryServices.MonthOfYear.December,
///                             },
///                             RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                             {
///                                 Count = 1,
///                                 DurationType = AzureNative.RecoveryServices.RetentionDurationType.Years,
///                             },
///                             RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                             RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                             {
///                                 DaysOfTheWeek = new[]
///                                 {
///                                     AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                                 },
///                                 WeeksOfTheMonth = new[]
///                                 {
///                                     AzureNative.RecoveryServices.WeekOfMonth.Last,
///                                 },
///                             },
///                             RetentionTimes = new[]
///                             {
///                                 "2018-01-24T10:00:00Z",
///                             },
///                         },
///                     },
///                     SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyArgs
///                     {
///                         SchedulePolicyType = "SimpleSchedulePolicy",
///                         ScheduleRunDays = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                             AzureNative.RecoveryServices.DayOfWeek.Tuesday,
///                         },
///                         ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Weekly,
///                         ScheduleRunTimes = new[]
///                         {
///                             "2018-01-24T10:00:00Z",
///                         },
///                     },
///                 },
///                 new AzureNative.RecoveryServices.Inputs.SubProtectionPolicyArgs
///                 {
///                     PolicyType = AzureNative.RecoveryServices.PolicyType.Differential,
///                     RetentionPolicy = new AzureNative.RecoveryServices.Inputs.SimpleRetentionPolicyArgs
///                     {
///                         RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                         {
///                             Count = 8,
///                             DurationType = AzureNative.RecoveryServices.RetentionDurationType.Days,
///                         },
///                         RetentionPolicyType = "SimpleRetentionPolicy",
///                     },
///                     SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyArgs
///                     {
///                         SchedulePolicyType = "SimpleSchedulePolicy",
///                         ScheduleRunDays = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Friday,
///                         },
///                         ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Weekly,
///                         ScheduleRunTimes = new[]
///                         {
///                             "2018-01-24T10:00:00Z",
///                         },
///                     },
///                 },
///                 new AzureNative.RecoveryServices.Inputs.SubProtectionPolicyArgs
///                 {
///                     PolicyType = AzureNative.RecoveryServices.PolicyType.Log,
///                     RetentionPolicy = new AzureNative.RecoveryServices.Inputs.SimpleRetentionPolicyArgs
///                     {
///                         RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                         {
///                             Count = 7,
///                             DurationType = AzureNative.RecoveryServices.RetentionDurationType.Days,
///                         },
///                         RetentionPolicyType = "SimpleRetentionPolicy",
///                     },
///                     SchedulePolicy = new AzureNative.RecoveryServices.Inputs.LogSchedulePolicyArgs
///                     {
///                         ScheduleFrequencyInMins = 60,
///                         SchedulePolicyType = "LogSchedulePolicy",
///                     },
///                 },
///             },
///             WorkLoadType = AzureNative.RecoveryServices.WorkloadType.SQLDataBase,
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "NetSDKTestRsVault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionPolicy(ctx, "protectionPolicy", &recoveryservices.ProtectionPolicyArgs{
/// 			PolicyName: pulumi.String("testPolicy1"),
/// 			Properties: &recoveryservices.AzureVmWorkloadProtectionPolicyArgs{
/// 				BackupManagementType: pulumi.String("AzureWorkload"),
/// 				Settings: &recoveryservices.SettingsArgs{
/// 					Issqlcompression: pulumi.Bool(false),
/// 					TimeZone:         pulumi.String("Pacific Standard Time"),
/// 				},
/// 				SubProtectionPolicy: recoveryservices.SubProtectionPolicyArray{
/// 					&recoveryservices.SubProtectionPolicyArgs{
/// 						PolicyType: pulumi.String(recoveryservices.PolicyTypeFull),
/// 						RetentionPolicy: recoveryservices.LongTermRetentionPolicy{
/// 							MonthlySchedule: recoveryservices.MonthlyRetentionSchedule{
/// 								RetentionDuration: recoveryservices.RetentionDuration{
/// 									Count:        1,
/// 									DurationType: recoveryservices.RetentionDurationTypeMonths,
/// 								},
/// 								RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 								RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 									DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 										recoveryservices.DayOfWeekSunday,
/// 									},
/// 									WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 										recoveryservices.WeekOfMonthSecond,
/// 									},
/// 								},
/// 								RetentionTimes: []string{
/// 									"2018-01-24T10:00:00Z",
/// 								},
/// 							},
/// 							RetentionPolicyType: "LongTermRetentionPolicy",
/// 							WeeklySchedule: recoveryservices.WeeklyRetentionSchedule{
/// 								DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 									recoveryservices.DayOfWeekSunday,
/// 									recoveryservices.DayOfWeekTuesday,
/// 								},
/// 								RetentionDuration: recoveryservices.RetentionDuration{
/// 									Count:        2,
/// 									DurationType: recoveryservices.RetentionDurationTypeWeeks,
/// 								},
/// 								RetentionTimes: []string{
/// 									"2018-01-24T10:00:00Z",
/// 								},
/// 							},
/// 							YearlySchedule: recoveryservices.YearlyRetentionSchedule{
/// 								MonthsOfYear: []recoveryservices.MonthOfYear{
/// 									recoveryservices.MonthOfYearJanuary,
/// 									recoveryservices.MonthOfYearJune,
/// 									recoveryservices.MonthOfYearDecember,
/// 								},
/// 								RetentionDuration: recoveryservices.RetentionDuration{
/// 									Count:        1,
/// 									DurationType: recoveryservices.RetentionDurationTypeYears,
/// 								},
/// 								RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 								RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 									DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 										recoveryservices.DayOfWeekSunday,
/// 									},
/// 									WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 										recoveryservices.WeekOfMonthLast,
/// 									},
/// 								},
/// 								RetentionTimes: []string{
/// 									"2018-01-24T10:00:00Z",
/// 								},
/// 							},
/// 						},
/// 						SchedulePolicy: recoveryservices.SimpleSchedulePolicy{
/// 							SchedulePolicyType: "SimpleSchedulePolicy",
/// 							ScheduleRunDays: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 								recoveryservices.DayOfWeekTuesday,
/// 							},
/// 							ScheduleRunFrequency: recoveryservices.ScheduleRunTypeWeekly,
/// 							ScheduleRunTimes: []string{
/// 								"2018-01-24T10:00:00Z",
/// 							},
/// 						},
/// 					},
/// 					&recoveryservices.SubProtectionPolicyArgs{
/// 						PolicyType: pulumi.String(recoveryservices.PolicyTypeDifferential),
/// 						RetentionPolicy: recoveryservices.SimpleRetentionPolicy{
/// 							RetentionDuration: recoveryservices.RetentionDuration{
/// 								Count:        8,
/// 								DurationType: recoveryservices.RetentionDurationTypeDays,
/// 							},
/// 							RetentionPolicyType: "SimpleRetentionPolicy",
/// 						},
/// 						SchedulePolicy: recoveryservices.SimpleSchedulePolicy{
/// 							SchedulePolicyType: "SimpleSchedulePolicy",
/// 							ScheduleRunDays: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekFriday,
/// 							},
/// 							ScheduleRunFrequency: recoveryservices.ScheduleRunTypeWeekly,
/// 							ScheduleRunTimes: []string{
/// 								"2018-01-24T10:00:00Z",
/// 							},
/// 						},
/// 					},
/// 					&recoveryservices.SubProtectionPolicyArgs{
/// 						PolicyType: pulumi.String(recoveryservices.PolicyTypeLog),
/// 						RetentionPolicy: recoveryservices.SimpleRetentionPolicy{
/// 							RetentionDuration: recoveryservices.RetentionDuration{
/// 								Count:        7,
/// 								DurationType: recoveryservices.RetentionDurationTypeDays,
/// 							},
/// 							RetentionPolicyType: "SimpleRetentionPolicy",
/// 						},
/// 						SchedulePolicy: recoveryservices.LogSchedulePolicy{
/// 							ScheduleFrequencyInMins: 60,
/// 							SchedulePolicyType:      "LogSchedulePolicy",
/// 						},
/// 					},
/// 				},
/// 				WorkLoadType: pulumi.String(recoveryservices.WorkloadTypeSQLDataBase),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("NetSDKTestRsVault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicy;
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicyArgs;
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
///         var protectionPolicy = new ProtectionPolicy("protectionPolicy", ProtectionPolicyArgs.builder()
///             .policyName("testPolicy1")
///             .properties(AzureVmWorkloadProtectionPolicyArgs.builder()
///                 .backupManagementType("AzureWorkload")
///                 .settings(SettingsArgs.builder()
///                     .issqlcompression(false)
///                     .timeZone("Pacific Standard Time")
///                     .build())
///                 .subProtectionPolicy(
///                     SubProtectionPolicyArgs.builder()
///                         .policyType("Full")
///                         .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                             .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                                 .retentionDuration(RetentionDurationArgs.builder()
///                                     .count(1)
///                                     .durationType("Months")
///                                     .build())
///                                 .retentionScheduleFormatType("Weekly")
///                                 .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                                     .daysOfTheWeek("Sunday")
///                                     .weeksOfTheMonth("Second")
///                                     .build())
///                                 .retentionTimes("2018-01-24T10:00:00Z")
///                                 .build())
///                             .retentionPolicyType("LongTermRetentionPolicy")
///                             .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                                 .daysOfTheWeek(
///                                     "Sunday",
///                                     "Tuesday")
///                                 .retentionDuration(RetentionDurationArgs.builder()
///                                     .count(2)
///                                     .durationType("Weeks")
///                                     .build())
///                                 .retentionTimes("2018-01-24T10:00:00Z")
///                                 .build())
///                             .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                                 .monthsOfYear(
///                                     "January",
///                                     "June",
///                                     "December")
///                                 .retentionDuration(RetentionDurationArgs.builder()
///                                     .count(1)
///                                     .durationType("Years")
///                                     .build())
///                                 .retentionScheduleFormatType("Weekly")
///                                 .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                                     .daysOfTheWeek("Sunday")
///                                     .weeksOfTheMonth("Last")
///                                     .build())
///                                 .retentionTimes("2018-01-24T10:00:00Z")
///                                 .build())
///                             .build())
///                         .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                             .schedulePolicyType("SimpleSchedulePolicy")
///                             .scheduleRunDays(
///                                 "Sunday",
///                                 "Tuesday")
///                             .scheduleRunFrequency("Weekly")
///                             .scheduleRunTimes("2018-01-24T10:00:00Z")
///                             .build())
///                         .build(),
///                     SubProtectionPolicyArgs.builder()
///                         .policyType("Differential")
///                         .retentionPolicy(SimpleRetentionPolicyArgs.builder()
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(8)
///                                 .durationType("Days")
///                                 .build())
///                             .retentionPolicyType("SimpleRetentionPolicy")
///                             .build())
///                         .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                             .schedulePolicyType("SimpleSchedulePolicy")
///                             .scheduleRunDays("Friday")
///                             .scheduleRunFrequency("Weekly")
///                             .scheduleRunTimes("2018-01-24T10:00:00Z")
///                             .build())
///                         .build(),
///                     SubProtectionPolicyArgs.builder()
///                         .policyType("Log")
///                         .retentionPolicy(SimpleRetentionPolicyArgs.builder()
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(7)
///                                 .durationType("Days")
///                                 .build())
///                             .retentionPolicyType("SimpleRetentionPolicy")
///                             .build())
///                         .schedulePolicy(LogSchedulePolicyArgs.builder()
///                             .scheduleFrequencyInMins(60)
///                             .schedulePolicyType("LogSchedulePolicy")
///                             .build())
///                         .build())
///                 .workLoadType("SQLDataBase")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("NetSDKTestRsVault")
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
/// const protectionPolicy = new azure_native.recoveryservices.ProtectionPolicy("protectionPolicy", {
///     policyName: "testPolicy1",
///     properties: {
///         backupManagementType: "AzureWorkload",
///         settings: {
///             issqlcompression: false,
///             timeZone: "Pacific Standard Time",
///         },
///         subProtectionPolicy: [
///             {
///                 policyType: azure_native.recoveryservices.PolicyType.Full,
///                 retentionPolicy: {
///                     monthlySchedule: {
///                         retentionDuration: {
///                             count: 1,
///                             durationType: azure_native.recoveryservices.RetentionDurationType.Months,
///                         },
///                         retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                         retentionScheduleWeekly: {
///                             daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                             weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.Second],
///                         },
///                         retentionTimes: ["2018-01-24T10:00:00Z"],
///                     },
///                     retentionPolicyType: "LongTermRetentionPolicy",
///                     weeklySchedule: {
///                         daysOfTheWeek: [
///                             azure_native.recoveryservices.DayOfWeek.Sunday,
///                             azure_native.recoveryservices.DayOfWeek.Tuesday,
///                         ],
///                         retentionDuration: {
///                             count: 2,
///                             durationType: azure_native.recoveryservices.RetentionDurationType.Weeks,
///                         },
///                         retentionTimes: ["2018-01-24T10:00:00Z"],
///                     },
///                     yearlySchedule: {
///                         monthsOfYear: [
///                             azure_native.recoveryservices.MonthOfYear.January,
///                             azure_native.recoveryservices.MonthOfYear.June,
///                             azure_native.recoveryservices.MonthOfYear.December,
///                         ],
///                         retentionDuration: {
///                             count: 1,
///                             durationType: azure_native.recoveryservices.RetentionDurationType.Years,
///                         },
///                         retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                         retentionScheduleWeekly: {
///                             daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                             weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.Last],
///                         },
///                         retentionTimes: ["2018-01-24T10:00:00Z"],
///                     },
///                 },
///                 schedulePolicy: {
///                     schedulePolicyType: "SimpleSchedulePolicy",
///                     scheduleRunDays: [
///                         azure_native.recoveryservices.DayOfWeek.Sunday,
///                         azure_native.recoveryservices.DayOfWeek.Tuesday,
///                     ],
///                     scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Weekly,
///                     scheduleRunTimes: ["2018-01-24T10:00:00Z"],
///                 },
///             },
///             {
///                 policyType: azure_native.recoveryservices.PolicyType.Differential,
///                 retentionPolicy: {
///                     retentionDuration: {
///                         count: 8,
///                         durationType: azure_native.recoveryservices.RetentionDurationType.Days,
///                     },
///                     retentionPolicyType: "SimpleRetentionPolicy",
///                 },
///                 schedulePolicy: {
///                     schedulePolicyType: "SimpleSchedulePolicy",
///                     scheduleRunDays: [azure_native.recoveryservices.DayOfWeek.Friday],
///                     scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Weekly,
///                     scheduleRunTimes: ["2018-01-24T10:00:00Z"],
///                 },
///             },
///             {
///                 policyType: azure_native.recoveryservices.PolicyType.Log,
///                 retentionPolicy: {
///                     retentionDuration: {
///                         count: 7,
///                         durationType: azure_native.recoveryservices.RetentionDurationType.Days,
///                     },
///                     retentionPolicyType: "SimpleRetentionPolicy",
///                 },
///                 schedulePolicy: {
///                     scheduleFrequencyInMins: 60,
///                     schedulePolicyType: "LogSchedulePolicy",
///                 },
///             },
///         ],
///         workLoadType: azure_native.recoveryservices.WorkloadType.SQLDataBase,
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "NetSDKTestRsVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_policy = azure_native.recoveryservices.ProtectionPolicy("protectionPolicy",
///     policy_name="testPolicy1",
///     properties={
///         "backup_management_type": "AzureWorkload",
///         "settings": {
///             "issqlcompression": False,
///             "time_zone": "Pacific Standard Time",
///         },
///         "sub_protection_policy": [
///             {
///                 "policy_type": azure_native.recoveryservices.PolicyType.FULL,
///                 "retention_policy": {
///                     "monthly_schedule": {
///                         "retention_duration": {
///                             "count": 1,
///                             "duration_type": azure_native.recoveryservices.RetentionDurationType.MONTHS,
///                         },
///                         "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                         "retention_schedule_weekly": {
///                             "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                             "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.SECOND],
///                         },
///                         "retention_times": ["2018-01-24T10:00:00Z"],
///                     },
///                     "retention_policy_type": "LongTermRetentionPolicy",
///                     "weekly_schedule": {
///                         "days_of_the_week": [
///                             azure_native.recoveryservices.DayOfWeek.SUNDAY,
///                             azure_native.recoveryservices.DayOfWeek.TUESDAY,
///                         ],
///                         "retention_duration": {
///                             "count": 2,
///                             "duration_type": azure_native.recoveryservices.RetentionDurationType.WEEKS,
///                         },
///                         "retention_times": ["2018-01-24T10:00:00Z"],
///                     },
///                     "yearly_schedule": {
///                         "months_of_year": [
///                             azure_native.recoveryservices.MonthOfYear.JANUARY,
///                             azure_native.recoveryservices.MonthOfYear.JUNE,
///                             azure_native.recoveryservices.MonthOfYear.DECEMBER,
///                         ],
///                         "retention_duration": {
///                             "count": 1,
///                             "duration_type": azure_native.recoveryservices.RetentionDurationType.YEARS,
///                         },
///                         "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                         "retention_schedule_weekly": {
///                             "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                             "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.LAST],
///                         },
///                         "retention_times": ["2018-01-24T10:00:00Z"],
///                     },
///                 },
///                 "schedule_policy": {
///                     "schedule_policy_type": "SimpleSchedulePolicy",
///                     "schedule_run_days": [
///                         azure_native.recoveryservices.DayOfWeek.SUNDAY,
///                         azure_native.recoveryservices.DayOfWeek.TUESDAY,
///                     ],
///                     "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.WEEKLY,
///                     "schedule_run_times": ["2018-01-24T10:00:00Z"],
///                 },
///             },
///             {
///                 "policy_type": azure_native.recoveryservices.PolicyType.DIFFERENTIAL,
///                 "retention_policy": {
///                     "retention_duration": {
///                         "count": 8,
///                         "duration_type": azure_native.recoveryservices.RetentionDurationType.DAYS,
///                     },
///                     "retention_policy_type": "SimpleRetentionPolicy",
///                 },
///                 "schedule_policy": {
///                     "schedule_policy_type": "SimpleSchedulePolicy",
///                     "schedule_run_days": [azure_native.recoveryservices.DayOfWeek.FRIDAY],
///                     "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.WEEKLY,
///                     "schedule_run_times": ["2018-01-24T10:00:00Z"],
///                 },
///             },
///             {
///                 "policy_type": azure_native.recoveryservices.PolicyType.LOG,
///                 "retention_policy": {
///                     "retention_duration": {
///                         "count": 7,
///                         "duration_type": azure_native.recoveryservices.RetentionDurationType.DAYS,
///                     },
///                     "retention_policy_type": "SimpleRetentionPolicy",
///                 },
///                 "schedule_policy": {
///                     "schedule_frequency_in_mins": 60,
///                     "schedule_policy_type": "LogSchedulePolicy",
///                 },
///             },
///         ],
///         "work_load_type": azure_native.recoveryservices.WorkloadType.SQL_DATA_BASE,
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="NetSDKTestRsVault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionPolicy:
///     type: azure-native:recoveryservices:ProtectionPolicy
///     properties:
///       policyName: testPolicy1
///       properties:
///         backupManagementType: AzureWorkload
///         settings:
///           issqlcompression: false
///           timeZone: Pacific Standard Time
///         subProtectionPolicy:
///           - policyType: Full
///             retentionPolicy:
///               monthlySchedule:
///                 retentionDuration:
///                   count: 1
///                   durationType: Months
///                 retentionScheduleFormatType: Weekly
///                 retentionScheduleWeekly:
///                   daysOfTheWeek:
///                     - Sunday
///                   weeksOfTheMonth:
///                     - Second
///                 retentionTimes:
///                   - 2018-01-24T10:00:00Z
///               retentionPolicyType: LongTermRetentionPolicy
///               weeklySchedule:
///                 daysOfTheWeek:
///                   - Sunday
///                   - Tuesday
///                 retentionDuration:
///                   count: 2
///                   durationType: Weeks
///                 retentionTimes:
///                   - 2018-01-24T10:00:00Z
///               yearlySchedule:
///                 monthsOfYear:
///                   - January
///                   - June
///                   - December
///                 retentionDuration:
///                   count: 1
///                   durationType: Years
///                 retentionScheduleFormatType: Weekly
///                 retentionScheduleWeekly:
///                   daysOfTheWeek:
///                     - Sunday
///                   weeksOfTheMonth:
///                     - Last
///                 retentionTimes:
///                   - 2018-01-24T10:00:00Z
///             schedulePolicy:
///               schedulePolicyType: SimpleSchedulePolicy
///               scheduleRunDays:
///                 - Sunday
///                 - Tuesday
///               scheduleRunFrequency: Weekly
///               scheduleRunTimes:
///                 - 2018-01-24T10:00:00Z
///           - policyType: Differential
///             retentionPolicy:
///               retentionDuration:
///                 count: 8
///                 durationType: Days
///               retentionPolicyType: SimpleRetentionPolicy
///             schedulePolicy:
///               schedulePolicyType: SimpleSchedulePolicy
///               scheduleRunDays:
///                 - Friday
///               scheduleRunFrequency: Weekly
///               scheduleRunTimes:
///                 - 2018-01-24T10:00:00Z
///           - policyType: Log
///             retentionPolicy:
///               retentionDuration:
///                 count: 7
///                 durationType: Days
///               retentionPolicyType: SimpleRetentionPolicy
///             schedulePolicy:
///               scheduleFrequencyInMins: 60
///               schedulePolicyType: LogSchedulePolicy
///         workLoadType: SQLDataBase
///       resourceGroupName: SwaggerTestRg
///       vaultName: NetSDKTestRsVault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Hourly Azure Storage Protection Policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionPolicy = new AzureNative.RecoveryServices.ProtectionPolicy("protectionPolicy", new()
///     {
///         PolicyName = "newPolicy2",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureFileShareProtectionPolicyArgs
///         {
///             BackupManagementType = "AzureStorage",
///             RetentionPolicy = new AzureNative.RecoveryServices.Inputs.LongTermRetentionPolicyArgs
///             {
///                 DailySchedule = new AzureNative.RecoveryServices.Inputs.DailyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 5,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Days,
///                     },
///                 },
///                 MonthlySchedule = new AzureNative.RecoveryServices.Inputs.MonthlyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 60,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Months,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                         },
///                     },
///                 },
///                 RetentionPolicyType = "LongTermRetentionPolicy",
///                 WeeklySchedule = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionScheduleArgs
///                 {
///                     DaysOfTheWeek = new[]
///                     {
///                         AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 12,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Weeks,
///                     },
///                 },
///                 YearlySchedule = new AzureNative.RecoveryServices.Inputs.YearlyRetentionScheduleArgs
///                 {
///                     MonthsOfYear = new[]
///                     {
///                         AzureNative.RecoveryServices.MonthOfYear.January,
///                     },
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 10,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Years,
///                     },
///                     RetentionScheduleFormatType = AzureNative.RecoveryServices.RetentionScheduleFormat.Weekly,
///                     RetentionScheduleWeekly = new AzureNative.RecoveryServices.Inputs.WeeklyRetentionFormatArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.RecoveryServices.DayOfWeek.Sunday,
///                         },
///                         WeeksOfTheMonth = new[]
///                         {
///                             AzureNative.RecoveryServices.WeekOfMonth.First,
///                         },
///                     },
///                 },
///             },
///             SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyArgs
///             {
///                 HourlySchedule = new AzureNative.RecoveryServices.Inputs.HourlyScheduleArgs
///                 {
///                     Interval = 4,
///                     ScheduleWindowDuration = 12,
///                     ScheduleWindowStartTime = "2021-09-29T08:00:00.000Z",
///                 },
///                 SchedulePolicyType = "SimpleSchedulePolicy",
///                 ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Hourly,
///             },
///             TimeZone = "UTC",
///             WorkLoadType = AzureNative.RecoveryServices.WorkloadType.AzureFileShare,
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "swaggertestvault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionPolicy(ctx, "protectionPolicy", &recoveryservices.ProtectionPolicyArgs{
/// 			PolicyName: pulumi.String("newPolicy2"),
/// 			Properties: &recoveryservices.AzureFileShareProtectionPolicyArgs{
/// 				BackupManagementType: pulumi.String("AzureStorage"),
/// 				RetentionPolicy: recoveryservices.LongTermRetentionPolicy{
/// 					DailySchedule: recoveryservices.DailyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        5,
/// 							DurationType: recoveryservices.RetentionDurationTypeDays,
/// 						},
/// 					},
/// 					MonthlySchedule: recoveryservices.MonthlyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        60,
/// 							DurationType: recoveryservices.RetentionDurationTypeMonths,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 							},
/// 						},
/// 					},
/// 					RetentionPolicyType: "LongTermRetentionPolicy",
/// 					WeeklySchedule: recoveryservices.WeeklyRetentionSchedule{
/// 						DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 							recoveryservices.DayOfWeekSunday,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        12,
/// 							DurationType: recoveryservices.RetentionDurationTypeWeeks,
/// 						},
/// 					},
/// 					YearlySchedule: recoveryservices.YearlyRetentionSchedule{
/// 						MonthsOfYear: []recoveryservices.MonthOfYear{
/// 							recoveryservices.MonthOfYearJanuary,
/// 						},
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        10,
/// 							DurationType: recoveryservices.RetentionDurationTypeYears,
/// 						},
/// 						RetentionScheduleFormatType: recoveryservices.RetentionScheduleFormatWeekly,
/// 						RetentionScheduleWeekly: recoveryservices.WeeklyRetentionFormat{
/// 							DaysOfTheWeek: []recoveryservices.DayOfWeek{
/// 								recoveryservices.DayOfWeekSunday,
/// 							},
/// 							WeeksOfTheMonth: []recoveryservices.WeekOfMonth{
/// 								recoveryservices.WeekOfMonthFirst,
/// 							},
/// 						},
/// 					},
/// 				},
/// 				SchedulePolicy: recoveryservices.SimpleSchedulePolicy{
/// 					HourlySchedule: recoveryservices.HourlySchedule{
/// 						Interval:                4,
/// 						ScheduleWindowDuration:  12,
/// 						ScheduleWindowStartTime: "2021-09-29T08:00:00.000Z",
/// 					},
/// 					SchedulePolicyType:   "SimpleSchedulePolicy",
/// 					ScheduleRunFrequency: recoveryservices.ScheduleRunTypeHourly,
/// 				},
/// 				TimeZone:     pulumi.String("UTC"),
/// 				WorkLoadType: pulumi.String(recoveryservices.WorkloadTypeAzureFileShare),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("swaggertestvault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicy;
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicyArgs;
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
///         var protectionPolicy = new ProtectionPolicy("protectionPolicy", ProtectionPolicyArgs.builder()
///             .policyName("newPolicy2")
///             .properties(AzureFileShareProtectionPolicyArgs.builder()
///                 .backupManagementType("AzureStorage")
///                 .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                     .dailySchedule(DailyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(5)
///                             .durationType("Days")
///                             .build())
///                         .build())
///                     .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(60)
///                             .durationType("Months")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .weeksOfTheMonth("First")
///                             .build())
///                         .build())
///                     .retentionPolicyType("LongTermRetentionPolicy")
///                     .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                         .daysOfTheWeek("Sunday")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(12)
///                             .durationType("Weeks")
///                             .build())
///                         .build())
///                     .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                         .monthsOfYear("January")
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(10)
///                             .durationType("Years")
///                             .build())
///                         .retentionScheduleFormatType("Weekly")
///                         .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .weeksOfTheMonth("First")
///                             .build())
///                         .build())
///                     .build())
///                 .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                     .hourlySchedule(HourlyScheduleArgs.builder()
///                         .interval(4)
///                         .scheduleWindowDuration(12)
///                         .scheduleWindowStartTime("2021-09-29T08:00:00.000Z")
///                         .build())
///                     .schedulePolicyType("SimpleSchedulePolicy")
///                     .scheduleRunFrequency("Hourly")
///                     .build())
///                 .timeZone("UTC")
///                 .workLoadType("AzureFileShare")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("swaggertestvault")
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
/// const protectionPolicy = new azure_native.recoveryservices.ProtectionPolicy("protectionPolicy", {
///     policyName: "newPolicy2",
///     properties: {
///         backupManagementType: "AzureStorage",
///         retentionPolicy: {
///             dailySchedule: {
///                 retentionDuration: {
///                     count: 5,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Days,
///                 },
///             },
///             monthlySchedule: {
///                 retentionDuration: {
///                     count: 60,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Months,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                 },
///             },
///             retentionPolicyType: "LongTermRetentionPolicy",
///             weeklySchedule: {
///                 daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                 retentionDuration: {
///                     count: 12,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Weeks,
///                 },
///             },
///             yearlySchedule: {
///                 monthsOfYear: [azure_native.recoveryservices.MonthOfYear.January],
///                 retentionDuration: {
///                     count: 10,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Years,
///                 },
///                 retentionScheduleFormatType: azure_native.recoveryservices.RetentionScheduleFormat.Weekly,
///                 retentionScheduleWeekly: {
///                     daysOfTheWeek: [azure_native.recoveryservices.DayOfWeek.Sunday],
///                     weeksOfTheMonth: [azure_native.recoveryservices.WeekOfMonth.First],
///                 },
///             },
///         },
///         schedulePolicy: {
///             hourlySchedule: {
///                 interval: 4,
///                 scheduleWindowDuration: 12,
///                 scheduleWindowStartTime: "2021-09-29T08:00:00.000Z",
///             },
///             schedulePolicyType: "SimpleSchedulePolicy",
///             scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Hourly,
///         },
///         timeZone: "UTC",
///         workLoadType: azure_native.recoveryservices.WorkloadType.AzureFileShare,
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "swaggertestvault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_policy = azure_native.recoveryservices.ProtectionPolicy("protectionPolicy",
///     policy_name="newPolicy2",
///     properties={
///         "backup_management_type": "AzureStorage",
///         "retention_policy": {
///             "daily_schedule": {
///                 "retention_duration": {
///                     "count": 5,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.DAYS,
///                 },
///             },
///             "monthly_schedule": {
///                 "retention_duration": {
///                     "count": 60,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.MONTHS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                 },
///             },
///             "retention_policy_type": "LongTermRetentionPolicy",
///             "weekly_schedule": {
///                 "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                 "retention_duration": {
///                     "count": 12,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.WEEKS,
///                 },
///             },
///             "yearly_schedule": {
///                 "months_of_year": [azure_native.recoveryservices.MonthOfYear.JANUARY],
///                 "retention_duration": {
///                     "count": 10,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.YEARS,
///                 },
///                 "retention_schedule_format_type": azure_native.recoveryservices.RetentionScheduleFormat.WEEKLY,
///                 "retention_schedule_weekly": {
///                     "days_of_the_week": [azure_native.recoveryservices.DayOfWeek.SUNDAY],
///                     "weeks_of_the_month": [azure_native.recoveryservices.WeekOfMonth.FIRST],
///                 },
///             },
///         },
///         "schedule_policy": {
///             "hourly_schedule": {
///                 "interval": 4,
///                 "schedule_window_duration": 12,
///                 "schedule_window_start_time": "2021-09-29T08:00:00.000Z",
///             },
///             "schedule_policy_type": "SimpleSchedulePolicy",
///             "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.HOURLY,
///         },
///         "time_zone": "UTC",
///         "work_load_type": azure_native.recoveryservices.WorkloadType.AZURE_FILE_SHARE,
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="swaggertestvault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionPolicy:
///     type: azure-native:recoveryservices:ProtectionPolicy
///     properties:
///       policyName: newPolicy2
///       properties:
///         backupManagementType: AzureStorage
///         retentionPolicy:
///           dailySchedule:
///             retentionDuration:
///               count: 5
///               durationType: Days
///           monthlySchedule:
///             retentionDuration:
///               count: 60
///               durationType: Months
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Sunday
///               weeksOfTheMonth:
///                 - First
///           retentionPolicyType: LongTermRetentionPolicy
///           weeklySchedule:
///             daysOfTheWeek:
///               - Sunday
///             retentionDuration:
///               count: 12
///               durationType: Weeks
///           yearlySchedule:
///             monthsOfYear:
///               - January
///             retentionDuration:
///               count: 10
///               durationType: Years
///             retentionScheduleFormatType: Weekly
///             retentionScheduleWeekly:
///               daysOfTheWeek:
///                 - Sunday
///               weeksOfTheMonth:
///                 - First
///         schedulePolicy:
///           hourlySchedule:
///             interval: 4
///             scheduleWindowDuration: 12
///             scheduleWindowStartTime: 2021-09-29T08:00:00.000Z
///           schedulePolicyType: SimpleSchedulePolicy
///           scheduleRunFrequency: Hourly
///         timeZone: UTC
///         workLoadType: AzureFileShare
///       resourceGroupName: SwaggerTestRg
///       vaultName: swaggertestvault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Simple Azure Vm Protection Policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionPolicy = new AzureNative.RecoveryServices.ProtectionPolicy("protectionPolicy", new()
///     {
///         PolicyName = "testPolicy1",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureIaaSVMProtectionPolicyArgs
///         {
///             BackupManagementType = "AzureIaasVM",
///             RetentionPolicy = new AzureNative.RecoveryServices.Inputs.LongTermRetentionPolicyArgs
///             {
///                 DailySchedule = new AzureNative.RecoveryServices.Inputs.DailyRetentionScheduleArgs
///                 {
///                     RetentionDuration = new AzureNative.RecoveryServices.Inputs.RetentionDurationArgs
///                     {
///                         Count = 1,
///                         DurationType = AzureNative.RecoveryServices.RetentionDurationType.Days,
///                     },
///                     RetentionTimes = new[]
///                     {
///                         "2018-01-24T02:00:00Z",
///                     },
///                 },
///                 RetentionPolicyType = "LongTermRetentionPolicy",
///             },
///             SchedulePolicy = new AzureNative.RecoveryServices.Inputs.SimpleSchedulePolicyArgs
///             {
///                 SchedulePolicyType = "SimpleSchedulePolicy",
///                 ScheduleRunFrequency = AzureNative.RecoveryServices.ScheduleRunType.Daily,
///                 ScheduleRunTimes = new[]
///                 {
///                     "2018-01-24T02:00:00Z",
///                 },
///             },
///             TimeZone = "Pacific Standard Time",
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "NetSDKTestRsVault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionPolicy(ctx, "protectionPolicy", &recoveryservices.ProtectionPolicyArgs{
/// 			PolicyName: pulumi.String("testPolicy1"),
/// 			Properties: &recoveryservices.AzureIaaSVMProtectionPolicyArgs{
/// 				BackupManagementType: pulumi.String("AzureIaasVM"),
/// 				RetentionPolicy: recoveryservices.LongTermRetentionPolicy{
/// 					DailySchedule: recoveryservices.DailyRetentionSchedule{
/// 						RetentionDuration: recoveryservices.RetentionDuration{
/// 							Count:        1,
/// 							DurationType: recoveryservices.RetentionDurationTypeDays,
/// 						},
/// 						RetentionTimes: []string{
/// 							"2018-01-24T02:00:00Z",
/// 						},
/// 					},
/// 					RetentionPolicyType: "LongTermRetentionPolicy",
/// 				},
/// 				SchedulePolicy: recoveryservices.SimpleSchedulePolicy{
/// 					SchedulePolicyType:   "SimpleSchedulePolicy",
/// 					ScheduleRunFrequency: recoveryservices.ScheduleRunTypeDaily,
/// 					ScheduleRunTimes: []string{
/// 						"2018-01-24T02:00:00Z",
/// 					},
/// 				},
/// 				TimeZone: pulumi.String("Pacific Standard Time"),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("NetSDKTestRsVault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicy;
/// import com.pulumi.azurenative.recoveryservices.ProtectionPolicyArgs;
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
///         var protectionPolicy = new ProtectionPolicy("protectionPolicy", ProtectionPolicyArgs.builder()
///             .policyName("testPolicy1")
///             .properties(AzureIaaSVMProtectionPolicyArgs.builder()
///                 .backupManagementType("AzureIaasVM")
///                 .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                     .dailySchedule(DailyRetentionScheduleArgs.builder()
///                         .retentionDuration(RetentionDurationArgs.builder()
///                             .count(1)
///                             .durationType("Days")
///                             .build())
///                         .retentionTimes("2018-01-24T02:00:00Z")
///                         .build())
///                     .retentionPolicyType("LongTermRetentionPolicy")
///                     .build())
///                 .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                     .schedulePolicyType("SimpleSchedulePolicy")
///                     .scheduleRunFrequency("Daily")
///                     .scheduleRunTimes("2018-01-24T02:00:00Z")
///                     .build())
///                 .timeZone("Pacific Standard Time")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("NetSDKTestRsVault")
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
/// const protectionPolicy = new azure_native.recoveryservices.ProtectionPolicy("protectionPolicy", {
///     policyName: "testPolicy1",
///     properties: {
///         backupManagementType: "AzureIaasVM",
///         retentionPolicy: {
///             dailySchedule: {
///                 retentionDuration: {
///                     count: 1,
///                     durationType: azure_native.recoveryservices.RetentionDurationType.Days,
///                 },
///                 retentionTimes: ["2018-01-24T02:00:00Z"],
///             },
///             retentionPolicyType: "LongTermRetentionPolicy",
///         },
///         schedulePolicy: {
///             schedulePolicyType: "SimpleSchedulePolicy",
///             scheduleRunFrequency: azure_native.recoveryservices.ScheduleRunType.Daily,
///             scheduleRunTimes: ["2018-01-24T02:00:00Z"],
///         },
///         timeZone: "Pacific Standard Time",
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "NetSDKTestRsVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_policy = azure_native.recoveryservices.ProtectionPolicy("protectionPolicy",
///     policy_name="testPolicy1",
///     properties={
///         "backup_management_type": "AzureIaasVM",
///         "retention_policy": {
///             "daily_schedule": {
///                 "retention_duration": {
///                     "count": 1,
///                     "duration_type": azure_native.recoveryservices.RetentionDurationType.DAYS,
///                 },
///                 "retention_times": ["2018-01-24T02:00:00Z"],
///             },
///             "retention_policy_type": "LongTermRetentionPolicy",
///         },
///         "schedule_policy": {
///             "schedule_policy_type": "SimpleSchedulePolicy",
///             "schedule_run_frequency": azure_native.recoveryservices.ScheduleRunType.DAILY,
///             "schedule_run_times": ["2018-01-24T02:00:00Z"],
///         },
///         "time_zone": "Pacific Standard Time",
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="NetSDKTestRsVault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionPolicy:
///     type: azure-native:recoveryservices:ProtectionPolicy
///     properties:
///       policyName: testPolicy1
///       properties:
///         backupManagementType: AzureIaasVM
///         retentionPolicy:
///           dailySchedule:
///             retentionDuration:
///               count: 1
///               durationType: Days
///             retentionTimes:
///               - 2018-01-24T02:00:00Z
///           retentionPolicyType: LongTermRetentionPolicy
///         schedulePolicy:
///           schedulePolicyType: SimpleSchedulePolicy
///           scheduleRunFrequency: Daily
///           scheduleRunTimes:
///             - 2018-01-24T02:00:00Z
///         timeZone: Pacific Standard Time
///       resourceGroupName: SwaggerTestRg
///       vaultName: NetSDKTestRsVault
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
/// $ pulumi import azure-native:recoveryservices:ProtectionPolicy testPolicy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupPolicies/{policyName}
/// ```
class ProtectionPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Optional ETag.
  late final pulumi.Output<String?> eTag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;

  /// ProtectionPolicyResource properties
  late final pulumi.Output<AzureFileShareProtectionPolicyResponse> properties;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [ProtectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectionPolicy]. {@macro pulumi_recoveryservices_protection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectionPolicy(
    String name, {
    ProtectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:recoveryservices:ProtectionPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AzureFileShareProtectionPolicyResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureFileShareProtectionPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}

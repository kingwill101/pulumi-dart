import 'package:pulumi/pulumi.dart' as pulumi;
import 'acssbackup_connection_args.dart';
import 'connector_error_definition_response.dart';
import 'hana_backup_data_response.dart';
import 'system_data_response.dart';

/// Define the backup connection resource of virtual instance for SAP..
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a HANA backup connection with a new backup policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acssBackupConnection = new AzureNative.Workloads.ACSSBackupConnection("acssBackupConnection", new()
///     {
///         BackupData = new AzureNative.Workloads.Inputs.HanaBackupDataArgs
///         {
///             BackupPolicy = new AzureNative.Workloads.Inputs.DBBackupPolicyPropertiesArgs
///             {
///                 BackupManagementType = "AzureWorkload",
///                 Name = "defaultHanaPolicy",
///                 ProtectedItemsCount = 0,
///                 Settings = new AzureNative.Workloads.Inputs.SettingsArgs
///                 {
///                     IsCompression = false,
///                     Issqlcompression = false,
///                     TimeZone = "UTC",
///                 },
///                 SubProtectionPolicy = new[]
///                 {
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.Full,
///                         RetentionPolicy = new AzureNative.Workloads.Inputs.LongTermRetentionPolicyArgs
///                         {
///                             MonthlySchedule = new AzureNative.Workloads.Inputs.MonthlyRetentionScheduleArgs
///                             {
///                                 RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                                 {
///                                     Count = 60,
///                                     DurationType = AzureNative.Workloads.RetentionDurationType.Months,
///                                 },
///                                 RetentionScheduleFormatType = AzureNative.Workloads.RetentionScheduleFormat.Weekly,
///                                 RetentionScheduleWeekly = new AzureNative.Workloads.Inputs.WeeklyRetentionFormatArgs
///                                 {
///                                     DaysOfTheWeek = new[]
///                                     {
///                                         AzureNative.Workloads.DayOfWeek.Sunday,
///                                     },
///                                     WeeksOfTheMonth = new[]
///                                     {
///                                         AzureNative.Workloads.WeekOfMonth.First,
///                                     },
///                                 },
///                                 RetentionTimes = new[]
///                                 {
///                                     "2022-11-29T19:30:00.000Z",
///                                 },
///                             },
///                             RetentionPolicyType = "LongTermRetentionPolicy",
///                             WeeklySchedule = new AzureNative.Workloads.Inputs.WeeklyRetentionScheduleArgs
///                             {
///                                 DaysOfTheWeek = new[]
///                                 {
///                                     AzureNative.Workloads.DayOfWeek.Sunday,
///                                 },
///                                 RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                                 {
///                                     Count = 104,
///                                     DurationType = AzureNative.Workloads.RetentionDurationType.Weeks,
///                                 },
///                                 RetentionTimes = new[]
///                                 {
///                                     "2022-11-29T19:30:00.000Z",
///                                 },
///                             },
///                             YearlySchedule = new AzureNative.Workloads.Inputs.YearlyRetentionScheduleArgs
///                             {
///                                 MonthsOfYear = new[]
///                                 {
///                                     AzureNative.Workloads.MonthOfYear.January,
///                                 },
///                                 RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                                 {
///                                     Count = 10,
///                                     DurationType = AzureNative.Workloads.RetentionDurationType.Years,
///                                 },
///                                 RetentionScheduleFormatType = AzureNative.Workloads.RetentionScheduleFormat.Weekly,
///                                 RetentionScheduleWeekly = new AzureNative.Workloads.Inputs.WeeklyRetentionFormatArgs
///                                 {
///                                     DaysOfTheWeek = new[]
///                                     {
///                                         AzureNative.Workloads.DayOfWeek.Sunday,
///                                     },
///                                     WeeksOfTheMonth = new[]
///                                     {
///                                         AzureNative.Workloads.WeekOfMonth.First,
///                                     },
///                                 },
///                                 RetentionTimes = new[]
///                                 {
///                                     "2022-11-29T19:30:00.000Z",
///                                 },
///                             },
///                         },
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.SimpleSchedulePolicyArgs
///                         {
///                             SchedulePolicyType = "SimpleSchedulePolicy",
///                             ScheduleRunDays = new[]
///                             {
///                                 AzureNative.Workloads.DayOfWeek.Sunday,
///                             },
///                             ScheduleRunFrequency = AzureNative.Workloads.ScheduleRunType.Weekly,
///                             ScheduleRunTimes = new[]
///                             {
///                                 "2022-11-29T19:30:00.000Z",
///                             },
///                         },
///                         TieringPolicy =
///                         {
///                             { "ArchivedRP", new AzureNative.Workloads.Inputs.TieringPolicyArgs
///                             {
///                                 TieringMode = AzureNative.Workloads.TieringMode.DoNotTier,
///                             } },
///                         },
///                     },
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.Differential,
///                         RetentionPolicy = new AzureNative.Workloads.Inputs.SimpleRetentionPolicyArgs
///                         {
///                             RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                             {
///                                 Count = 30,
///                                 DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                             },
///                             RetentionPolicyType = "SimpleRetentionPolicy",
///                         },
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.SimpleSchedulePolicyArgs
///                         {
///                             SchedulePolicyType = "SimpleSchedulePolicy",
///                             ScheduleRunDays = new[]
///                             {
///                                 AzureNative.Workloads.DayOfWeek.Monday,
///                             },
///                             ScheduleRunFrequency = AzureNative.Workloads.ScheduleRunType.Weekly,
///                             ScheduleRunTimes = new[]
///                             {
///                                 "2022-09-29T02:00:00Z",
///                             },
///                             ScheduleWeeklyFrequency = 0,
///                         },
///                     },
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.Log,
///                         RetentionPolicy = new AzureNative.Workloads.Inputs.SimpleRetentionPolicyArgs
///                         {
///                             RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                             {
///                                 Count = 20,
///                                 DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                             },
///                             RetentionPolicyType = "SimpleRetentionPolicy",
///                         },
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.LogSchedulePolicyArgs
///                         {
///                             ScheduleFrequencyInMins = 120,
///                             SchedulePolicyType = "LogSchedulePolicy",
///                         },
///                     },
///                 },
///                 WorkLoadType = AzureNative.Workloads.WorkloadType.SAPHanaDatabase,
///             },
///             BackupType = "HANA",
///             DbInstanceSnapshotBackupPolicy = new AzureNative.Workloads.Inputs.DBBackupPolicyPropertiesArgs
///             {
///                 BackupManagementType = "AzureWorkload",
///                 Name = "defaultDbInstanceSnapshotPolicy",
///                 Settings = new AzureNative.Workloads.Inputs.SettingsArgs
///                 {
///                     IsCompression = false,
///                     Issqlcompression = false,
///                     TimeZone = "UTC",
///                 },
///                 SubProtectionPolicy = new[]
///                 {
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.SnapshotFull,
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.SimpleSchedulePolicyArgs
///                         {
///                             SchedulePolicyType = "SimpleSchedulePolicy",
///                             ScheduleRunFrequency = AzureNative.Workloads.ScheduleRunType.Daily,
///                             ScheduleRunTimes = new[]
///                             {
///                                 "2023-09-18T06:30:00.000Z",
///                             },
///                         },
///                         SnapshotBackupAdditionalDetails = new AzureNative.Workloads.Inputs.SnapshotBackupAdditionalDetailsArgs
///                         {
///                             InstantRPDetails = "test-rg",
///                             InstantRpRetentionRangeInDays = 1,
///                             UserAssignedManagedIdentityDetails = new AzureNative.Workloads.Inputs.UserAssignedManagedIdentityDetailsArgs
///                             {
///                                 IdentityArmId = "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testMsi",
///                                 IdentityName = "testMsi",
///                                 UserAssignedIdentityProperties = new AzureNative.Workloads.Inputs.UserAssignedIdentityPropertiesArgs
///                                 {
///                                     ClientId = "c3a877cf-51f8-4031-8f17-ab562d1e7737",
///                                     PrincipalId = "2f5834bd-4b86-4d85-a8df-6dd829a6418c",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 WorkLoadType = AzureNative.Workloads.WorkloadType.SAPHanaDBInstance,
///             },
///             HdbuserstoreKeyName = "abcd",
///             InstanceNumber = "00",
///             RecoveryServicesVault = new AzureNative.Workloads.Inputs.NewRecoveryServicesVaultArgs
///             {
///                 Name = "test-vault",
///                 ResourceGroup = "test-rg",
///                 VaultType = "New",
///             },
///             SslConfiguration = new AzureNative.Workloads.Inputs.SSLConfigurationArgs
///             {
///                 SslCryptoProvider = AzureNative.Workloads.SslCryptoProvider.Commoncrypto,
///                 SslHostNameInCertificate = "hostname",
///                 SslKeyStore = "sapsrv.pse",
///                 SslTrustStore = "sapsrv.pse",
///             },
///         },
///         BackupName = "dbBackup",
///         ConnectorName = "C1",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewACSSBackupConnection(ctx, "acssBackupConnection", &workloads.ACSSBackupConnectionArgs{
/// 			BackupData: &workloads.HanaBackupDataArgs{
/// 				BackupPolicy: &workloads.DBBackupPolicyPropertiesArgs{
/// 					BackupManagementType: pulumi.String("AzureWorkload"),
/// 					Name:                 pulumi.String("defaultHanaPolicy"),
/// 					ProtectedItemsCount:  pulumi.Int(0),
/// 					Settings: &workloads.SettingsArgs{
/// 						IsCompression:    pulumi.Bool(false),
/// 						Issqlcompression: pulumi.Bool(false),
/// 						TimeZone:         pulumi.String("UTC"),
/// 					},
/// 					SubProtectionPolicy: workloads.SubProtectionPolicyArray{
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeFull),
/// 							RetentionPolicy: workloads.LongTermRetentionPolicy{
/// 								MonthlySchedule: workloads.MonthlyRetentionSchedule{
/// 									RetentionDuration: workloads.RetentionDuration{
/// 										Count:        60,
/// 										DurationType: workloads.RetentionDurationTypeMonths,
/// 									},
/// 									RetentionScheduleFormatType: workloads.RetentionScheduleFormatWeekly,
/// 									RetentionScheduleWeekly: workloads.WeeklyRetentionFormat{
/// 										DaysOfTheWeek: []workloads.DayOfWeek{
/// 											workloads.DayOfWeekSunday,
/// 										},
/// 										WeeksOfTheMonth: []workloads.WeekOfMonth{
/// 											workloads.WeekOfMonthFirst,
/// 										},
/// 									},
/// 									RetentionTimes: []string{
/// 										"2022-11-29T19:30:00.000Z",
/// 									},
/// 								},
/// 								RetentionPolicyType: "LongTermRetentionPolicy",
/// 								WeeklySchedule: workloads.WeeklyRetentionSchedule{
/// 									DaysOfTheWeek: []workloads.DayOfWeek{
/// 										workloads.DayOfWeekSunday,
/// 									},
/// 									RetentionDuration: workloads.RetentionDuration{
/// 										Count:        104,
/// 										DurationType: workloads.RetentionDurationTypeWeeks,
/// 									},
/// 									RetentionTimes: []string{
/// 										"2022-11-29T19:30:00.000Z",
/// 									},
/// 								},
/// 								YearlySchedule: workloads.YearlyRetentionSchedule{
/// 									MonthsOfYear: []workloads.MonthOfYear{
/// 										workloads.MonthOfYearJanuary,
/// 									},
/// 									RetentionDuration: workloads.RetentionDuration{
/// 										Count:        10,
/// 										DurationType: workloads.RetentionDurationTypeYears,
/// 									},
/// 									RetentionScheduleFormatType: workloads.RetentionScheduleFormatWeekly,
/// 									RetentionScheduleWeekly: workloads.WeeklyRetentionFormat{
/// 										DaysOfTheWeek: []workloads.DayOfWeek{
/// 											workloads.DayOfWeekSunday,
/// 										},
/// 										WeeksOfTheMonth: []workloads.WeekOfMonth{
/// 											workloads.WeekOfMonthFirst,
/// 										},
/// 									},
/// 									RetentionTimes: []string{
/// 										"2022-11-29T19:30:00.000Z",
/// 									},
/// 								},
/// 							},
/// 							SchedulePolicy: workloads.SimpleSchedulePolicy{
/// 								SchedulePolicyType: "SimpleSchedulePolicy",
/// 								ScheduleRunDays: []workloads.DayOfWeek{
/// 									workloads.DayOfWeekSunday,
/// 								},
/// 								ScheduleRunFrequency: workloads.ScheduleRunTypeWeekly,
/// 								ScheduleRunTimes: []string{
/// 									"2022-11-29T19:30:00.000Z",
/// 								},
/// 							},
/// 							TieringPolicy: workloads.TieringPolicyMap{
/// 								"ArchivedRP": &workloads.TieringPolicyArgs{
/// 									TieringMode: pulumi.String(workloads.TieringModeDoNotTier),
/// 								},
/// 							},
/// 						},
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeDifferential),
/// 							RetentionPolicy: workloads.SimpleRetentionPolicy{
/// 								RetentionDuration: workloads.RetentionDuration{
/// 									Count:        30,
/// 									DurationType: workloads.RetentionDurationTypeDays,
/// 								},
/// 								RetentionPolicyType: "SimpleRetentionPolicy",
/// 							},
/// 							SchedulePolicy: workloads.SimpleSchedulePolicy{
/// 								SchedulePolicyType: "SimpleSchedulePolicy",
/// 								ScheduleRunDays: []workloads.DayOfWeek{
/// 									workloads.DayOfWeekMonday,
/// 								},
/// 								ScheduleRunFrequency: workloads.ScheduleRunTypeWeekly,
/// 								ScheduleRunTimes: []string{
/// 									"2022-09-29T02:00:00Z",
/// 								},
/// 								ScheduleWeeklyFrequency: 0,
/// 							},
/// 						},
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeLog),
/// 							RetentionPolicy: workloads.SimpleRetentionPolicy{
/// 								RetentionDuration: workloads.RetentionDuration{
/// 									Count:        20,
/// 									DurationType: workloads.RetentionDurationTypeDays,
/// 								},
/// 								RetentionPolicyType: "SimpleRetentionPolicy",
/// 							},
/// 							SchedulePolicy: workloads.LogSchedulePolicy{
/// 								ScheduleFrequencyInMins: 120,
/// 								SchedulePolicyType:      "LogSchedulePolicy",
/// 							},
/// 						},
/// 					},
/// 					WorkLoadType: pulumi.String(workloads.WorkloadTypeSAPHanaDatabase),
/// 				},
/// 				BackupType: pulumi.String("HANA"),
/// 				DbInstanceSnapshotBackupPolicy: &workloads.DBBackupPolicyPropertiesArgs{
/// 					BackupManagementType: pulumi.String("AzureWorkload"),
/// 					Name:                 pulumi.String("defaultDbInstanceSnapshotPolicy"),
/// 					Settings: &workloads.SettingsArgs{
/// 						IsCompression:    pulumi.Bool(false),
/// 						Issqlcompression: pulumi.Bool(false),
/// 						TimeZone:         pulumi.String("UTC"),
/// 					},
/// 					SubProtectionPolicy: workloads.SubProtectionPolicyArray{
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeSnapshotFull),
/// 							SchedulePolicy: workloads.SimpleSchedulePolicy{
/// 								SchedulePolicyType:   "SimpleSchedulePolicy",
/// 								ScheduleRunFrequency: workloads.ScheduleRunTypeDaily,
/// 								ScheduleRunTimes: []string{
/// 									"2023-09-18T06:30:00.000Z",
/// 								},
/// 							},
/// 							SnapshotBackupAdditionalDetails: &workloads.SnapshotBackupAdditionalDetailsArgs{
/// 								InstantRPDetails:              pulumi.String("test-rg"),
/// 								InstantRpRetentionRangeInDays: pulumi.Int(1),
/// 								UserAssignedManagedIdentityDetails: &workloads.UserAssignedManagedIdentityDetailsArgs{
/// 									IdentityArmId: pulumi.String("/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testMsi"),
/// 									IdentityName:  pulumi.String("testMsi"),
/// 									UserAssignedIdentityProperties: &workloads.UserAssignedIdentityPropertiesArgs{
/// 										ClientId:    pulumi.String("c3a877cf-51f8-4031-8f17-ab562d1e7737"),
/// 										PrincipalId: pulumi.String("2f5834bd-4b86-4d85-a8df-6dd829a6418c"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					WorkLoadType: pulumi.String(workloads.WorkloadTypeSAPHanaDBInstance),
/// 				},
/// 				HdbuserstoreKeyName: pulumi.String("abcd"),
/// 				InstanceNumber:      pulumi.String("00"),
/// 				RecoveryServicesVault: workloads.NewRecoveryServicesVault{
/// 					Name:          "test-vault",
/// 					ResourceGroup: "test-rg",
/// 					VaultType:     "New",
/// 				},
/// 				SslConfiguration: &workloads.SSLConfigurationArgs{
/// 					SslCryptoProvider:        pulumi.String(workloads.SslCryptoProviderCommoncrypto),
/// 					SslHostNameInCertificate: pulumi.String("hostname"),
/// 					SslKeyStore:              pulumi.String("sapsrv.pse"),
/// 					SslTrustStore:            pulumi.String("sapsrv.pse"),
/// 				},
/// 			},
/// 			BackupName:        pulumi.String("dbBackup"),
/// 			ConnectorName:     pulumi.String("C1"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.ACSSBackupConnection;
/// import com.pulumi.azurenative.workloads.ACSSBackupConnectionArgs;
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
///         var acssBackupConnection = new ACSSBackupConnection("acssBackupConnection", ACSSBackupConnectionArgs.builder()
///             .backupData(HanaBackupDataArgs.builder()
///                 .backupPolicy(Map.ofEntries(
///                     Map.entry("backupManagementType", "AzureWorkload"),
///                     Map.entry("name", "defaultHanaPolicy"),
///                     Map.entry("protectedItemsCount", 0),
///                     Map.entry("settings", SettingsArgs.builder()
///                         .isCompression(false)
///                         .issqlcompression(false)
///                         .timeZone("UTC")
///                         .build()),
///                     Map.entry("subProtectionPolicy",
///                         SubProtectionPolicyArgs.builder()
///                             .policyType("Full")
///                             .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                                 .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                                     .retentionDuration(RetentionDurationArgs.builder()
///                                         .count(60)
///                                         .durationType("Months")
///                                         .build())
///                                     .retentionScheduleFormatType("Weekly")
///                                     .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                                         .daysOfTheWeek("Sunday")
///                                         .weeksOfTheMonth("First")
///                                         .build())
///                                     .retentionTimes("2022-11-29T19:30:00.000Z")
///                                     .build())
///                                 .retentionPolicyType("LongTermRetentionPolicy")
///                                 .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                                     .daysOfTheWeek("Sunday")
///                                     .retentionDuration(RetentionDurationArgs.builder()
///                                         .count(104)
///                                         .durationType("Weeks")
///                                         .build())
///                                     .retentionTimes("2022-11-29T19:30:00.000Z")
///                                     .build())
///                                 .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                                     .monthsOfYear("January")
///                                     .retentionDuration(RetentionDurationArgs.builder()
///                                         .count(10)
///                                         .durationType("Years")
///                                         .build())
///                                     .retentionScheduleFormatType("Weekly")
///                                     .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                                         .daysOfTheWeek("Sunday")
///                                         .weeksOfTheMonth("First")
///                                         .build())
///                                     .retentionTimes("2022-11-29T19:30:00.000Z")
///                                     .build())
///                                 .build())
///                             .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                                 .schedulePolicyType("SimpleSchedulePolicy")
///                                 .scheduleRunDays("Sunday")
///                                 .scheduleRunFrequency("Weekly")
///                                 .scheduleRunTimes("2022-11-29T19:30:00.000Z")
///                                 .build())
///                             .tieringPolicy(Map.of("ArchivedRP", TieringPolicyArgs.builder()
///                                 .tieringMode("DoNotTier")
///                                 .build()))
///                             .build(),
///                         SubProtectionPolicyArgs.builder()
///                             .policyType("Differential")
///                             .retentionPolicy(SimpleRetentionPolicyArgs.builder()
///                                 .retentionDuration(RetentionDurationArgs.builder()
///                                     .count(30)
///                                     .durationType("Days")
///                                     .build())
///                                 .retentionPolicyType("SimpleRetentionPolicy")
///                                 .build())
///                             .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                                 .schedulePolicyType("SimpleSchedulePolicy")
///                                 .scheduleRunDays("Monday")
///                                 .scheduleRunFrequency("Weekly")
///                                 .scheduleRunTimes("2022-09-29T02:00:00Z")
///                                 .scheduleWeeklyFrequency(0)
///                                 .build())
///                             .build(),
///                         SubProtectionPolicyArgs.builder()
///                             .policyType("Log")
///                             .retentionPolicy(SimpleRetentionPolicyArgs.builder()
///                                 .retentionDuration(RetentionDurationArgs.builder()
///                                     .count(20)
///                                     .durationType("Days")
///                                     .build())
///                                 .retentionPolicyType("SimpleRetentionPolicy")
///                                 .build())
///                             .schedulePolicy(LogSchedulePolicyArgs.builder()
///                                 .scheduleFrequencyInMins(120)
///                                 .schedulePolicyType("LogSchedulePolicy")
///                                 .build())
///                             .build()),
///                     Map.entry("workLoadType", "SAPHanaDatabase")
///                 ))
///                 .backupType("HANA")
///                 .dbInstanceSnapshotBackupPolicy(Map.ofEntries(
///                     Map.entry("backupManagementType", "AzureWorkload"),
///                     Map.entry("name", "defaultDbInstanceSnapshotPolicy"),
///                     Map.entry("settings", SettingsArgs.builder()
///                         .isCompression(false)
///                         .issqlcompression(false)
///                         .timeZone("UTC")
///                         .build()),
///                     Map.entry("subProtectionPolicy", SubProtectionPolicyArgs.builder()
///                         .policyType("SnapshotFull")
///                         .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                             .schedulePolicyType("SimpleSchedulePolicy")
///                             .scheduleRunFrequency("Daily")
///                             .scheduleRunTimes("2023-09-18T06:30:00.000Z")
///                             .build())
///                         .snapshotBackupAdditionalDetails(SnapshotBackupAdditionalDetailsArgs.builder()
///                             .instantRPDetails("test-rg")
///                             .instantRpRetentionRangeInDays(1)
///                             .userAssignedManagedIdentityDetails(UserAssignedManagedIdentityDetailsArgs.builder()
///                                 .identityArmId("/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testMsi")
///                                 .identityName("testMsi")
///                                 .userAssignedIdentityProperties(UserAssignedIdentityPropertiesArgs.builder()
///                                     .clientId("c3a877cf-51f8-4031-8f17-ab562d1e7737")
///                                     .principalId("2f5834bd-4b86-4d85-a8df-6dd829a6418c")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build()),
///                     Map.entry("workLoadType", "SAPHanaDBInstance")
///                 ))
///                 .hdbuserstoreKeyName("abcd")
///                 .instanceNumber("00")
///                 .recoveryServicesVault(NewRecoveryServicesVaultArgs.builder()
///                     .name("test-vault")
///                     .resourceGroup("test-rg")
///                     .vaultType("New")
///                     .build())
///                 .sslConfiguration(SSLConfigurationArgs.builder()
///                     .sslCryptoProvider("commoncrypto")
///                     .sslHostNameInCertificate("hostname")
///                     .sslKeyStore("sapsrv.pse")
///                     .sslTrustStore("sapsrv.pse")
///                     .build())
///                 .build())
///             .backupName("dbBackup")
///             .connectorName("C1")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const acssBackupConnection = new azure_native.workloads.ACSSBackupConnection("acssBackupConnection", {
///     backupData: {
///         backupPolicy: {
///             backupManagementType: "AzureWorkload",
///             name: "defaultHanaPolicy",
///             protectedItemsCount: 0,
///             settings: {
///                 isCompression: false,
///                 issqlcompression: false,
///                 timeZone: "UTC",
///             },
///             subProtectionPolicy: [
///                 {
///                     policyType: azure_native.workloads.PolicyType.Full,
///                     retentionPolicy: {
///                         monthlySchedule: {
///                             retentionDuration: {
///                                 count: 60,
///                                 durationType: azure_native.workloads.RetentionDurationType.Months,
///                             },
///                             retentionScheduleFormatType: azure_native.workloads.RetentionScheduleFormat.Weekly,
///                             retentionScheduleWeekly: {
///                                 daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                                 weeksOfTheMonth: [azure_native.workloads.WeekOfMonth.First],
///                             },
///                             retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                         },
///                         retentionPolicyType: "LongTermRetentionPolicy",
///                         weeklySchedule: {
///                             daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                             retentionDuration: {
///                                 count: 104,
///                                 durationType: azure_native.workloads.RetentionDurationType.Weeks,
///                             },
///                             retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                         },
///                         yearlySchedule: {
///                             monthsOfYear: [azure_native.workloads.MonthOfYear.January],
///                             retentionDuration: {
///                                 count: 10,
///                                 durationType: azure_native.workloads.RetentionDurationType.Years,
///                             },
///                             retentionScheduleFormatType: azure_native.workloads.RetentionScheduleFormat.Weekly,
///                             retentionScheduleWeekly: {
///                                 daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                                 weeksOfTheMonth: [azure_native.workloads.WeekOfMonth.First],
///                             },
///                             retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                         },
///                     },
///                     schedulePolicy: {
///                         schedulePolicyType: "SimpleSchedulePolicy",
///                         scheduleRunDays: [azure_native.workloads.DayOfWeek.Sunday],
///                         scheduleRunFrequency: azure_native.workloads.ScheduleRunType.Weekly,
///                         scheduleRunTimes: ["2022-11-29T19:30:00.000Z"],
///                     },
///                     tieringPolicy: {
///                         ArchivedRP: {
///                             tieringMode: azure_native.workloads.TieringMode.DoNotTier,
///                         },
///                     },
///                 },
///                 {
///                     policyType: azure_native.workloads.PolicyType.Differential,
///                     retentionPolicy: {
///                         retentionDuration: {
///                             count: 30,
///                             durationType: azure_native.workloads.RetentionDurationType.Days,
///                         },
///                         retentionPolicyType: "SimpleRetentionPolicy",
///                     },
///                     schedulePolicy: {
///                         schedulePolicyType: "SimpleSchedulePolicy",
///                         scheduleRunDays: [azure_native.workloads.DayOfWeek.Monday],
///                         scheduleRunFrequency: azure_native.workloads.ScheduleRunType.Weekly,
///                         scheduleRunTimes: ["2022-09-29T02:00:00Z"],
///                         scheduleWeeklyFrequency: 0,
///                     },
///                 },
///                 {
///                     policyType: azure_native.workloads.PolicyType.Log,
///                     retentionPolicy: {
///                         retentionDuration: {
///                             count: 20,
///                             durationType: azure_native.workloads.RetentionDurationType.Days,
///                         },
///                         retentionPolicyType: "SimpleRetentionPolicy",
///                     },
///                     schedulePolicy: {
///                         scheduleFrequencyInMins: 120,
///                         schedulePolicyType: "LogSchedulePolicy",
///                     },
///                 },
///             ],
///             workLoadType: azure_native.workloads.WorkloadType.SAPHanaDatabase,
///         },
///         backupType: "HANA",
///         dbInstanceSnapshotBackupPolicy: {
///             backupManagementType: "AzureWorkload",
///             name: "defaultDbInstanceSnapshotPolicy",
///             settings: {
///                 isCompression: false,
///                 issqlcompression: false,
///                 timeZone: "UTC",
///             },
///             subProtectionPolicy: [{
///                 policyType: azure_native.workloads.PolicyType.SnapshotFull,
///                 schedulePolicy: {
///                     schedulePolicyType: "SimpleSchedulePolicy",
///                     scheduleRunFrequency: azure_native.workloads.ScheduleRunType.Daily,
///                     scheduleRunTimes: ["2023-09-18T06:30:00.000Z"],
///                 },
///                 snapshotBackupAdditionalDetails: {
///                     instantRPDetails: "test-rg",
///                     instantRpRetentionRangeInDays: 1,
///                     userAssignedManagedIdentityDetails: {
///                         identityArmId: "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testMsi",
///                         identityName: "testMsi",
///                         userAssignedIdentityProperties: {
///                             clientId: "c3a877cf-51f8-4031-8f17-ab562d1e7737",
///                             principalId: "2f5834bd-4b86-4d85-a8df-6dd829a6418c",
///                         },
///                     },
///                 },
///             }],
///             workLoadType: azure_native.workloads.WorkloadType.SAPHanaDBInstance,
///         },
///         hdbuserstoreKeyName: "abcd",
///         instanceNumber: "00",
///         recoveryServicesVault: {
///             name: "test-vault",
///             resourceGroup: "test-rg",
///             vaultType: "New",
///         },
///         sslConfiguration: {
///             sslCryptoProvider: azure_native.workloads.SslCryptoProvider.Commoncrypto,
///             sslHostNameInCertificate: "hostname",
///             sslKeyStore: "sapsrv.pse",
///             sslTrustStore: "sapsrv.pse",
///         },
///     },
///     backupName: "dbBackup",
///     connectorName: "C1",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// acss_backup_connection = azure_native.workloads.ACSSBackupConnection("acssBackupConnection",
///     backup_data={
///         "backup_policy": {
///             "backup_management_type": "AzureWorkload",
///             "name": "defaultHanaPolicy",
///             "protected_items_count": 0,
///             "settings": {
///                 "is_compression": False,
///                 "issqlcompression": False,
///                 "time_zone": "UTC",
///             },
///             "sub_protection_policy": [
///                 {
///                     "policy_type": azure_native.workloads.PolicyType.FULL,
///                     "retention_policy": {
///                         "monthly_schedule": {
///                             "retention_duration": {
///                                 "count": 60,
///                                 "duration_type": azure_native.workloads.RetentionDurationType.MONTHS,
///                             },
///                             "retention_schedule_format_type": azure_native.workloads.RetentionScheduleFormat.WEEKLY,
///                             "retention_schedule_weekly": {
///                                 "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                                 "weeks_of_the_month": [azure_native.workloads.WeekOfMonth.FIRST],
///                             },
///                             "retention_times": ["2022-11-29T19:30:00.000Z"],
///                         },
///                         "retention_policy_type": "LongTermRetentionPolicy",
///                         "weekly_schedule": {
///                             "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                             "retention_duration": {
///                                 "count": 104,
///                                 "duration_type": azure_native.workloads.RetentionDurationType.WEEKS,
///                             },
///                             "retention_times": ["2022-11-29T19:30:00.000Z"],
///                         },
///                         "yearly_schedule": {
///                             "months_of_year": [azure_native.workloads.MonthOfYear.JANUARY],
///                             "retention_duration": {
///                                 "count": 10,
///                                 "duration_type": azure_native.workloads.RetentionDurationType.YEARS,
///                             },
///                             "retention_schedule_format_type": azure_native.workloads.RetentionScheduleFormat.WEEKLY,
///                             "retention_schedule_weekly": {
///                                 "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                                 "weeks_of_the_month": [azure_native.workloads.WeekOfMonth.FIRST],
///                             },
///                             "retention_times": ["2022-11-29T19:30:00.000Z"],
///                         },
///                     },
///                     "schedule_policy": {
///                         "schedule_policy_type": "SimpleSchedulePolicy",
///                         "schedule_run_days": [azure_native.workloads.DayOfWeek.SUNDAY],
///                         "schedule_run_frequency": azure_native.workloads.ScheduleRunType.WEEKLY,
///                         "schedule_run_times": ["2022-11-29T19:30:00.000Z"],
///                     },
///                     "tiering_policy": {
///                         "ArchivedRP": {
///                             "tiering_mode": azure_native.workloads.TieringMode.DO_NOT_TIER,
///                         },
///                     },
///                 },
///                 {
///                     "policy_type": azure_native.workloads.PolicyType.DIFFERENTIAL,
///                     "retention_policy": {
///                         "retention_duration": {
///                             "count": 30,
///                             "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                         },
///                         "retention_policy_type": "SimpleRetentionPolicy",
///                     },
///                     "schedule_policy": {
///                         "schedule_policy_type": "SimpleSchedulePolicy",
///                         "schedule_run_days": [azure_native.workloads.DayOfWeek.MONDAY],
///                         "schedule_run_frequency": azure_native.workloads.ScheduleRunType.WEEKLY,
///                         "schedule_run_times": ["2022-09-29T02:00:00Z"],
///                         "schedule_weekly_frequency": 0,
///                     },
///                 },
///                 {
///                     "policy_type": azure_native.workloads.PolicyType.LOG,
///                     "retention_policy": {
///                         "retention_duration": {
///                             "count": 20,
///                             "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                         },
///                         "retention_policy_type": "SimpleRetentionPolicy",
///                     },
///                     "schedule_policy": {
///                         "schedule_frequency_in_mins": 120,
///                         "schedule_policy_type": "LogSchedulePolicy",
///                     },
///                 },
///             ],
///             "work_load_type": azure_native.workloads.WorkloadType.SAP_HANA_DATABASE,
///         },
///         "backup_type": "HANA",
///         "db_instance_snapshot_backup_policy": {
///             "backup_management_type": "AzureWorkload",
///             "name": "defaultDbInstanceSnapshotPolicy",
///             "settings": {
///                 "is_compression": False,
///                 "issqlcompression": False,
///                 "time_zone": "UTC",
///             },
///             "sub_protection_policy": [{
///                 "policy_type": azure_native.workloads.PolicyType.SNAPSHOT_FULL,
///                 "schedule_policy": {
///                     "schedule_policy_type": "SimpleSchedulePolicy",
///                     "schedule_run_frequency": azure_native.workloads.ScheduleRunType.DAILY,
///                     "schedule_run_times": ["2023-09-18T06:30:00.000Z"],
///                 },
///                 "snapshot_backup_additional_details": {
///                     "instant_rp_details": "test-rg",
///                     "instant_rp_retention_range_in_days": 1,
///                     "user_assigned_managed_identity_details": {
///                         "identity_arm_id": "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testMsi",
///                         "identity_name": "testMsi",
///                         "user_assigned_identity_properties": {
///                             "client_id": "c3a877cf-51f8-4031-8f17-ab562d1e7737",
///                             "principal_id": "2f5834bd-4b86-4d85-a8df-6dd829a6418c",
///                         },
///                     },
///                 },
///             }],
///             "work_load_type": azure_native.workloads.WorkloadType.SAP_HANA_DB_INSTANCE,
///         },
///         "hdbuserstore_key_name": "abcd",
///         "instance_number": "00",
///         "recovery_services_vault": {
///             "name": "test-vault",
///             "resource_group": "test-rg",
///             "vault_type": "New",
///         },
///         "ssl_configuration": {
///             "ssl_crypto_provider": azure_native.workloads.SslCryptoProvider.COMMONCRYPTO,
///             "ssl_host_name_in_certificate": "hostname",
///             "ssl_key_store": "sapsrv.pse",
///             "ssl_trust_store": "sapsrv.pse",
///         },
///     },
///     backup_name="dbBackup",
///     connector_name="C1",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   acssBackupConnection:
///     type: azure-native:workloads:ACSSBackupConnection
///     properties:
///       backupData:
///         backupPolicy:
///           backupManagementType: AzureWorkload
///           name: defaultHanaPolicy
///           protectedItemsCount: 0
///           settings:
///             isCompression: false
///             issqlcompression: false
///             timeZone: UTC
///           subProtectionPolicy:
///             - policyType: Full
///               retentionPolicy:
///                 monthlySchedule:
///                   retentionDuration:
///                     count: 60
///                     durationType: Months
///                   retentionScheduleFormatType: Weekly
///                   retentionScheduleWeekly:
///                     daysOfTheWeek:
///                       - Sunday
///                     weeksOfTheMonth:
///                       - First
///                   retentionTimes:
///                     - 2022-11-29T19:30:00.000Z
///                 retentionPolicyType: LongTermRetentionPolicy
///                 weeklySchedule:
///                   daysOfTheWeek:
///                     - Sunday
///                   retentionDuration:
///                     count: 104
///                     durationType: Weeks
///                   retentionTimes:
///                     - 2022-11-29T19:30:00.000Z
///                 yearlySchedule:
///                   monthsOfYear:
///                     - January
///                   retentionDuration:
///                     count: 10
///                     durationType: Years
///                   retentionScheduleFormatType: Weekly
///                   retentionScheduleWeekly:
///                     daysOfTheWeek:
///                       - Sunday
///                     weeksOfTheMonth:
///                       - First
///                   retentionTimes:
///                     - 2022-11-29T19:30:00.000Z
///               schedulePolicy:
///                 schedulePolicyType: SimpleSchedulePolicy
///                 scheduleRunDays:
///                   - Sunday
///                 scheduleRunFrequency: Weekly
///                 scheduleRunTimes:
///                   - 2022-11-29T19:30:00.000Z
///               tieringPolicy:
///                 ArchivedRP:
///                   tieringMode: DoNotTier
///             - policyType: Differential
///               retentionPolicy:
///                 retentionDuration:
///                   count: 30
///                   durationType: Days
///                 retentionPolicyType: SimpleRetentionPolicy
///               schedulePolicy:
///                 schedulePolicyType: SimpleSchedulePolicy
///                 scheduleRunDays:
///                   - Monday
///                 scheduleRunFrequency: Weekly
///                 scheduleRunTimes:
///                   - 2022-09-29T02:00:00Z
///                 scheduleWeeklyFrequency: 0
///             - policyType: Log
///               retentionPolicy:
///                 retentionDuration:
///                   count: 20
///                   durationType: Days
///                 retentionPolicyType: SimpleRetentionPolicy
///               schedulePolicy:
///                 scheduleFrequencyInMins: 120
///                 schedulePolicyType: LogSchedulePolicy
///           workLoadType: SAPHanaDatabase
///         backupType: HANA
///         dbInstanceSnapshotBackupPolicy:
///           backupManagementType: AzureWorkload
///           name: defaultDbInstanceSnapshotPolicy
///           settings:
///             isCompression: false
///             issqlcompression: false
///             timeZone: UTC
///           subProtectionPolicy:
///             - policyType: SnapshotFull
///               schedulePolicy:
///                 schedulePolicyType: SimpleSchedulePolicy
///                 scheduleRunFrequency: Daily
///                 scheduleRunTimes:
///                   - 2023-09-18T06:30:00.000Z
///               snapshotBackupAdditionalDetails:
///                 instantRPDetails: test-rg
///                 instantRpRetentionRangeInDays: 1
///                 userAssignedManagedIdentityDetails:
///                   identityArmId: /subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testMsi
///                   identityName: testMsi
///                   userAssignedIdentityProperties:
///                     clientId: c3a877cf-51f8-4031-8f17-ab562d1e7737
///                     principalId: 2f5834bd-4b86-4d85-a8df-6dd829a6418c
///           workLoadType: SAPHanaDBInstance
///         hdbuserstoreKeyName: abcd
///         instanceNumber: '00'
///         recoveryServicesVault:
///           name: test-vault
///           resourceGroup: test-rg
///           vaultType: New
///         sslConfiguration:
///           sslCryptoProvider: commoncrypto
///           sslHostNameInCertificate: hostname
///           sslKeyStore: sapsrv.pse
///           sslTrustStore: sapsrv.pse
///       backupName: dbBackup
///       connectorName: C1
///       location: westcentralus
///       resourceGroupName: test-rg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a SQL backup connection with a new backup policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acssBackupConnection = new AzureNative.Workloads.ACSSBackupConnection("acssBackupConnection", new()
///     {
///         BackupData = new AzureNative.Workloads.Inputs.SqlBackupDataArgs
///         {
///             BackupPolicy = new AzureNative.Workloads.Inputs.DBBackupPolicyPropertiesArgs
///             {
///                 BackupManagementType = "AzureWorkload",
///                 Name = "defaultSqlPolicy",
///                 ProtectedItemsCount = 0,
///                 Settings = new AzureNative.Workloads.Inputs.SettingsArgs
///                 {
///                     IsCompression = true,
///                     Issqlcompression = true,
///                     TimeZone = "UTC",
///                 },
///                 SubProtectionPolicy = new[]
///                 {
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.Full,
///                         RetentionPolicy = new AzureNative.Workloads.Inputs.LongTermRetentionPolicyArgs
///                         {
///                             MonthlySchedule = new AzureNative.Workloads.Inputs.MonthlyRetentionScheduleArgs
///                             {
///                                 RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                                 {
///                                     Count = 60,
///                                     DurationType = AzureNative.Workloads.RetentionDurationType.Months,
///                                 },
///                                 RetentionScheduleFormatType = AzureNative.Workloads.RetentionScheduleFormat.Weekly,
///                                 RetentionScheduleWeekly = new AzureNative.Workloads.Inputs.WeeklyRetentionFormatArgs
///                                 {
///                                     DaysOfTheWeek = new[]
///                                     {
///                                         AzureNative.Workloads.DayOfWeek.Sunday,
///                                     },
///                                     WeeksOfTheMonth = new[]
///                                     {
///                                         AzureNative.Workloads.WeekOfMonth.First,
///                                     },
///                                 },
///                                 RetentionTimes = new[]
///                                 {
///                                     "2022-11-29T19:30:00.000Z",
///                                 },
///                             },
///                             RetentionPolicyType = "LongTermRetentionPolicy",
///                             WeeklySchedule = new AzureNative.Workloads.Inputs.WeeklyRetentionScheduleArgs
///                             {
///                                 DaysOfTheWeek = new[]
///                                 {
///                                     AzureNative.Workloads.DayOfWeek.Sunday,
///                                 },
///                                 RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                                 {
///                                     Count = 104,
///                                     DurationType = AzureNative.Workloads.RetentionDurationType.Weeks,
///                                 },
///                                 RetentionTimes = new[]
///                                 {
///                                     "2022-11-29T19:30:00.000Z",
///                                 },
///                             },
///                             YearlySchedule = new AzureNative.Workloads.Inputs.YearlyRetentionScheduleArgs
///                             {
///                                 MonthsOfYear = new[]
///                                 {
///                                     AzureNative.Workloads.MonthOfYear.January,
///                                 },
///                                 RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                                 {
///                                     Count = 10,
///                                     DurationType = AzureNative.Workloads.RetentionDurationType.Years,
///                                 },
///                                 RetentionScheduleFormatType = AzureNative.Workloads.RetentionScheduleFormat.Weekly,
///                                 RetentionScheduleWeekly = new AzureNative.Workloads.Inputs.WeeklyRetentionFormatArgs
///                                 {
///                                     DaysOfTheWeek = new[]
///                                     {
///                                         AzureNative.Workloads.DayOfWeek.Sunday,
///                                     },
///                                     WeeksOfTheMonth = new[]
///                                     {
///                                         AzureNative.Workloads.WeekOfMonth.First,
///                                     },
///                                 },
///                                 RetentionTimes = new[]
///                                 {
///                                     "2022-11-29T19:30:00.000Z",
///                                 },
///                             },
///                         },
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.SimpleSchedulePolicyArgs
///                         {
///                             SchedulePolicyType = "SimpleSchedulePolicy",
///                             ScheduleRunDays = new[]
///                             {
///                                 AzureNative.Workloads.DayOfWeek.Sunday,
///                             },
///                             ScheduleRunFrequency = AzureNative.Workloads.ScheduleRunType.Weekly,
///                             ScheduleRunTimes = new[]
///                             {
///                                 "2022-11-29T19:30:00.000Z",
///                             },
///                         },
///                         TieringPolicy =
///                         {
///                             { "ArchivedRP", new AzureNative.Workloads.Inputs.TieringPolicyArgs
///                             {
///                                 Duration = 45,
///                                 DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                                 TieringMode = AzureNative.Workloads.TieringMode.TierAfter,
///                             } },
///                         },
///                     },
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.Differential,
///                         RetentionPolicy = new AzureNative.Workloads.Inputs.SimpleRetentionPolicyArgs
///                         {
///                             RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                             {
///                                 Count = 30,
///                                 DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                             },
///                             RetentionPolicyType = "SimpleRetentionPolicy",
///                         },
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.SimpleSchedulePolicyArgs
///                         {
///                             SchedulePolicyType = "SimpleSchedulePolicy",
///                             ScheduleRunDays = new[]
///                             {
///                                 AzureNative.Workloads.DayOfWeek.Monday,
///                             },
///                             ScheduleRunFrequency = AzureNative.Workloads.ScheduleRunType.Weekly,
///                             ScheduleRunTimes = new[]
///                             {
///                                 "2022-09-29T02:00:00Z",
///                             },
///                             ScheduleWeeklyFrequency = 0,
///                         },
///                     },
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.Log,
///                         RetentionPolicy = new AzureNative.Workloads.Inputs.SimpleRetentionPolicyArgs
///                         {
///                             RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                             {
///                                 Count = 20,
///                                 DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                             },
///                             RetentionPolicyType = "SimpleRetentionPolicy",
///                         },
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.LogSchedulePolicyArgs
///                         {
///                             ScheduleFrequencyInMins = 120,
///                             SchedulePolicyType = "LogSchedulePolicy",
///                         },
///                     },
///                 },
///                 WorkLoadType = AzureNative.Workloads.WorkloadType.SQLDataBase,
///             },
///             BackupType = "SQL",
///             RecoveryServicesVault = new AzureNative.Workloads.Inputs.NewRecoveryServicesVaultArgs
///             {
///                 Name = "test-vault",
///                 ResourceGroup = "test-rg",
///                 VaultType = "New",
///             },
///         },
///         BackupName = "dbBackup",
///         ConnectorName = "C1",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewACSSBackupConnection(ctx, "acssBackupConnection", &workloads.ACSSBackupConnectionArgs{
/// 			BackupData: &workloads.SqlBackupDataArgs{
/// 				BackupPolicy: &workloads.DBBackupPolicyPropertiesArgs{
/// 					BackupManagementType: pulumi.String("AzureWorkload"),
/// 					Name:                 pulumi.String("defaultSqlPolicy"),
/// 					ProtectedItemsCount:  pulumi.Int(0),
/// 					Settings: &workloads.SettingsArgs{
/// 						IsCompression:    pulumi.Bool(true),
/// 						Issqlcompression: pulumi.Bool(true),
/// 						TimeZone:         pulumi.String("UTC"),
/// 					},
/// 					SubProtectionPolicy: workloads.SubProtectionPolicyArray{
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeFull),
/// 							RetentionPolicy: workloads.LongTermRetentionPolicy{
/// 								MonthlySchedule: workloads.MonthlyRetentionSchedule{
/// 									RetentionDuration: workloads.RetentionDuration{
/// 										Count:        60,
/// 										DurationType: workloads.RetentionDurationTypeMonths,
/// 									},
/// 									RetentionScheduleFormatType: workloads.RetentionScheduleFormatWeekly,
/// 									RetentionScheduleWeekly: workloads.WeeklyRetentionFormat{
/// 										DaysOfTheWeek: []workloads.DayOfWeek{
/// 											workloads.DayOfWeekSunday,
/// 										},
/// 										WeeksOfTheMonth: []workloads.WeekOfMonth{
/// 											workloads.WeekOfMonthFirst,
/// 										},
/// 									},
/// 									RetentionTimes: []string{
/// 										"2022-11-29T19:30:00.000Z",
/// 									},
/// 								},
/// 								RetentionPolicyType: "LongTermRetentionPolicy",
/// 								WeeklySchedule: workloads.WeeklyRetentionSchedule{
/// 									DaysOfTheWeek: []workloads.DayOfWeek{
/// 										workloads.DayOfWeekSunday,
/// 									},
/// 									RetentionDuration: workloads.RetentionDuration{
/// 										Count:        104,
/// 										DurationType: workloads.RetentionDurationTypeWeeks,
/// 									},
/// 									RetentionTimes: []string{
/// 										"2022-11-29T19:30:00.000Z",
/// 									},
/// 								},
/// 								YearlySchedule: workloads.YearlyRetentionSchedule{
/// 									MonthsOfYear: []workloads.MonthOfYear{
/// 										workloads.MonthOfYearJanuary,
/// 									},
/// 									RetentionDuration: workloads.RetentionDuration{
/// 										Count:        10,
/// 										DurationType: workloads.RetentionDurationTypeYears,
/// 									},
/// 									RetentionScheduleFormatType: workloads.RetentionScheduleFormatWeekly,
/// 									RetentionScheduleWeekly: workloads.WeeklyRetentionFormat{
/// 										DaysOfTheWeek: []workloads.DayOfWeek{
/// 											workloads.DayOfWeekSunday,
/// 										},
/// 										WeeksOfTheMonth: []workloads.WeekOfMonth{
/// 											workloads.WeekOfMonthFirst,
/// 										},
/// 									},
/// 									RetentionTimes: []string{
/// 										"2022-11-29T19:30:00.000Z",
/// 									},
/// 								},
/// 							},
/// 							SchedulePolicy: workloads.SimpleSchedulePolicy{
/// 								SchedulePolicyType: "SimpleSchedulePolicy",
/// 								ScheduleRunDays: []workloads.DayOfWeek{
/// 									workloads.DayOfWeekSunday,
/// 								},
/// 								ScheduleRunFrequency: workloads.ScheduleRunTypeWeekly,
/// 								ScheduleRunTimes: []string{
/// 									"2022-11-29T19:30:00.000Z",
/// 								},
/// 							},
/// 							TieringPolicy: workloads.TieringPolicyMap{
/// 								"ArchivedRP": &workloads.TieringPolicyArgs{
/// 									Duration:     pulumi.Int(45),
/// 									DurationType: pulumi.String(workloads.RetentionDurationTypeDays),
/// 									TieringMode:  pulumi.String(workloads.TieringModeTierAfter),
/// 								},
/// 							},
/// 						},
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeDifferential),
/// 							RetentionPolicy: workloads.SimpleRetentionPolicy{
/// 								RetentionDuration: workloads.RetentionDuration{
/// 									Count:        30,
/// 									DurationType: workloads.RetentionDurationTypeDays,
/// 								},
/// 								RetentionPolicyType: "SimpleRetentionPolicy",
/// 							},
/// 							SchedulePolicy: workloads.SimpleSchedulePolicy{
/// 								SchedulePolicyType: "SimpleSchedulePolicy",
/// 								ScheduleRunDays: []workloads.DayOfWeek{
/// 									workloads.DayOfWeekMonday,
/// 								},
/// 								ScheduleRunFrequency: workloads.ScheduleRunTypeWeekly,
/// 								ScheduleRunTimes: []string{
/// 									"2022-09-29T02:00:00Z",
/// 								},
/// 								ScheduleWeeklyFrequency: 0,
/// 							},
/// 						},
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeLog),
/// 							RetentionPolicy: workloads.SimpleRetentionPolicy{
/// 								RetentionDuration: workloads.RetentionDuration{
/// 									Count:        20,
/// 									DurationType: workloads.RetentionDurationTypeDays,
/// 								},
/// 								RetentionPolicyType: "SimpleRetentionPolicy",
/// 							},
/// 							SchedulePolicy: workloads.LogSchedulePolicy{
/// 								ScheduleFrequencyInMins: 120,
/// 								SchedulePolicyType:      "LogSchedulePolicy",
/// 							},
/// 						},
/// 					},
/// 					WorkLoadType: pulumi.String(workloads.WorkloadTypeSQLDataBase),
/// 				},
/// 				BackupType: pulumi.String("SQL"),
/// 				RecoveryServicesVault: workloads.NewRecoveryServicesVault{
/// 					Name:          "test-vault",
/// 					ResourceGroup: "test-rg",
/// 					VaultType:     "New",
/// 				},
/// 			},
/// 			BackupName:        pulumi.String("dbBackup"),
/// 			ConnectorName:     pulumi.String("C1"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.ACSSBackupConnection;
/// import com.pulumi.azurenative.workloads.ACSSBackupConnectionArgs;
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
///         var acssBackupConnection = new ACSSBackupConnection("acssBackupConnection", ACSSBackupConnectionArgs.builder()
///             .backupData(SqlBackupDataArgs.builder()
///                 .backupPolicy(Map.ofEntries(
///                     Map.entry("backupManagementType", "AzureWorkload"),
///                     Map.entry("name", "defaultSqlPolicy"),
///                     Map.entry("protectedItemsCount", 0),
///                     Map.entry("settings", SettingsArgs.builder()
///                         .isCompression(true)
///                         .issqlcompression(true)
///                         .timeZone("UTC")
///                         .build()),
///                     Map.entry("subProtectionPolicy",
///                         SubProtectionPolicyArgs.builder()
///                             .policyType("Full")
///                             .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                                 .monthlySchedule(MonthlyRetentionScheduleArgs.builder()
///                                     .retentionDuration(RetentionDurationArgs.builder()
///                                         .count(60)
///                                         .durationType("Months")
///                                         .build())
///                                     .retentionScheduleFormatType("Weekly")
///                                     .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                                         .daysOfTheWeek("Sunday")
///                                         .weeksOfTheMonth("First")
///                                         .build())
///                                     .retentionTimes("2022-11-29T19:30:00.000Z")
///                                     .build())
///                                 .retentionPolicyType("LongTermRetentionPolicy")
///                                 .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                                     .daysOfTheWeek("Sunday")
///                                     .retentionDuration(RetentionDurationArgs.builder()
///                                         .count(104)
///                                         .durationType("Weeks")
///                                         .build())
///                                     .retentionTimes("2022-11-29T19:30:00.000Z")
///                                     .build())
///                                 .yearlySchedule(YearlyRetentionScheduleArgs.builder()
///                                     .monthsOfYear("January")
///                                     .retentionDuration(RetentionDurationArgs.builder()
///                                         .count(10)
///                                         .durationType("Years")
///                                         .build())
///                                     .retentionScheduleFormatType("Weekly")
///                                     .retentionScheduleWeekly(WeeklyRetentionFormatArgs.builder()
///                                         .daysOfTheWeek("Sunday")
///                                         .weeksOfTheMonth("First")
///                                         .build())
///                                     .retentionTimes("2022-11-29T19:30:00.000Z")
///                                     .build())
///                                 .build())
///                             .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                                 .schedulePolicyType("SimpleSchedulePolicy")
///                                 .scheduleRunDays("Sunday")
///                                 .scheduleRunFrequency("Weekly")
///                                 .scheduleRunTimes("2022-11-29T19:30:00.000Z")
///                                 .build())
///                             .tieringPolicy(Map.of("ArchivedRP", TieringPolicyArgs.builder()
///                                 .duration(45)
///                                 .durationType("Days")
///                                 .tieringMode("TierAfter")
///                                 .build()))
///                             .build(),
///                         SubProtectionPolicyArgs.builder()
///                             .policyType("Differential")
///                             .retentionPolicy(SimpleRetentionPolicyArgs.builder()
///                                 .retentionDuration(RetentionDurationArgs.builder()
///                                     .count(30)
///                                     .durationType("Days")
///                                     .build())
///                                 .retentionPolicyType("SimpleRetentionPolicy")
///                                 .build())
///                             .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                                 .schedulePolicyType("SimpleSchedulePolicy")
///                                 .scheduleRunDays("Monday")
///                                 .scheduleRunFrequency("Weekly")
///                                 .scheduleRunTimes("2022-09-29T02:00:00Z")
///                                 .scheduleWeeklyFrequency(0)
///                                 .build())
///                             .build(),
///                         SubProtectionPolicyArgs.builder()
///                             .policyType("Log")
///                             .retentionPolicy(SimpleRetentionPolicyArgs.builder()
///                                 .retentionDuration(RetentionDurationArgs.builder()
///                                     .count(20)
///                                     .durationType("Days")
///                                     .build())
///                                 .retentionPolicyType("SimpleRetentionPolicy")
///                                 .build())
///                             .schedulePolicy(LogSchedulePolicyArgs.builder()
///                                 .scheduleFrequencyInMins(120)
///                                 .schedulePolicyType("LogSchedulePolicy")
///                                 .build())
///                             .build()),
///                     Map.entry("workLoadType", "SQLDataBase")
///                 ))
///                 .backupType("SQL")
///                 .recoveryServicesVault(NewRecoveryServicesVaultArgs.builder()
///                     .name("test-vault")
///                     .resourceGroup("test-rg")
///                     .vaultType("New")
///                     .build())
///                 .build())
///             .backupName("dbBackup")
///             .connectorName("C1")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const acssBackupConnection = new azure_native.workloads.ACSSBackupConnection("acssBackupConnection", {
///     backupData: {
///         backupPolicy: {
///             backupManagementType: "AzureWorkload",
///             name: "defaultSqlPolicy",
///             protectedItemsCount: 0,
///             settings: {
///                 isCompression: true,
///                 issqlcompression: true,
///                 timeZone: "UTC",
///             },
///             subProtectionPolicy: [
///                 {
///                     policyType: azure_native.workloads.PolicyType.Full,
///                     retentionPolicy: {
///                         monthlySchedule: {
///                             retentionDuration: {
///                                 count: 60,
///                                 durationType: azure_native.workloads.RetentionDurationType.Months,
///                             },
///                             retentionScheduleFormatType: azure_native.workloads.RetentionScheduleFormat.Weekly,
///                             retentionScheduleWeekly: {
///                                 daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                                 weeksOfTheMonth: [azure_native.workloads.WeekOfMonth.First],
///                             },
///                             retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                         },
///                         retentionPolicyType: "LongTermRetentionPolicy",
///                         weeklySchedule: {
///                             daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                             retentionDuration: {
///                                 count: 104,
///                                 durationType: azure_native.workloads.RetentionDurationType.Weeks,
///                             },
///                             retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                         },
///                         yearlySchedule: {
///                             monthsOfYear: [azure_native.workloads.MonthOfYear.January],
///                             retentionDuration: {
///                                 count: 10,
///                                 durationType: azure_native.workloads.RetentionDurationType.Years,
///                             },
///                             retentionScheduleFormatType: azure_native.workloads.RetentionScheduleFormat.Weekly,
///                             retentionScheduleWeekly: {
///                                 daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                                 weeksOfTheMonth: [azure_native.workloads.WeekOfMonth.First],
///                             },
///                             retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                         },
///                     },
///                     schedulePolicy: {
///                         schedulePolicyType: "SimpleSchedulePolicy",
///                         scheduleRunDays: [azure_native.workloads.DayOfWeek.Sunday],
///                         scheduleRunFrequency: azure_native.workloads.ScheduleRunType.Weekly,
///                         scheduleRunTimes: ["2022-11-29T19:30:00.000Z"],
///                     },
///                     tieringPolicy: {
///                         ArchivedRP: {
///                             duration: 45,
///                             durationType: azure_native.workloads.RetentionDurationType.Days,
///                             tieringMode: azure_native.workloads.TieringMode.TierAfter,
///                         },
///                     },
///                 },
///                 {
///                     policyType: azure_native.workloads.PolicyType.Differential,
///                     retentionPolicy: {
///                         retentionDuration: {
///                             count: 30,
///                             durationType: azure_native.workloads.RetentionDurationType.Days,
///                         },
///                         retentionPolicyType: "SimpleRetentionPolicy",
///                     },
///                     schedulePolicy: {
///                         schedulePolicyType: "SimpleSchedulePolicy",
///                         scheduleRunDays: [azure_native.workloads.DayOfWeek.Monday],
///                         scheduleRunFrequency: azure_native.workloads.ScheduleRunType.Weekly,
///                         scheduleRunTimes: ["2022-09-29T02:00:00Z"],
///                         scheduleWeeklyFrequency: 0,
///                     },
///                 },
///                 {
///                     policyType: azure_native.workloads.PolicyType.Log,
///                     retentionPolicy: {
///                         retentionDuration: {
///                             count: 20,
///                             durationType: azure_native.workloads.RetentionDurationType.Days,
///                         },
///                         retentionPolicyType: "SimpleRetentionPolicy",
///                     },
///                     schedulePolicy: {
///                         scheduleFrequencyInMins: 120,
///                         schedulePolicyType: "LogSchedulePolicy",
///                     },
///                 },
///             ],
///             workLoadType: azure_native.workloads.WorkloadType.SQLDataBase,
///         },
///         backupType: "SQL",
///         recoveryServicesVault: {
///             name: "test-vault",
///             resourceGroup: "test-rg",
///             vaultType: "New",
///         },
///     },
///     backupName: "dbBackup",
///     connectorName: "C1",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// acss_backup_connection = azure_native.workloads.ACSSBackupConnection("acssBackupConnection",
///     backup_data={
///         "backup_policy": {
///             "backup_management_type": "AzureWorkload",
///             "name": "defaultSqlPolicy",
///             "protected_items_count": 0,
///             "settings": {
///                 "is_compression": True,
///                 "issqlcompression": True,
///                 "time_zone": "UTC",
///             },
///             "sub_protection_policy": [
///                 {
///                     "policy_type": azure_native.workloads.PolicyType.FULL,
///                     "retention_policy": {
///                         "monthly_schedule": {
///                             "retention_duration": {
///                                 "count": 60,
///                                 "duration_type": azure_native.workloads.RetentionDurationType.MONTHS,
///                             },
///                             "retention_schedule_format_type": azure_native.workloads.RetentionScheduleFormat.WEEKLY,
///                             "retention_schedule_weekly": {
///                                 "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                                 "weeks_of_the_month": [azure_native.workloads.WeekOfMonth.FIRST],
///                             },
///                             "retention_times": ["2022-11-29T19:30:00.000Z"],
///                         },
///                         "retention_policy_type": "LongTermRetentionPolicy",
///                         "weekly_schedule": {
///                             "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                             "retention_duration": {
///                                 "count": 104,
///                                 "duration_type": azure_native.workloads.RetentionDurationType.WEEKS,
///                             },
///                             "retention_times": ["2022-11-29T19:30:00.000Z"],
///                         },
///                         "yearly_schedule": {
///                             "months_of_year": [azure_native.workloads.MonthOfYear.JANUARY],
///                             "retention_duration": {
///                                 "count": 10,
///                                 "duration_type": azure_native.workloads.RetentionDurationType.YEARS,
///                             },
///                             "retention_schedule_format_type": azure_native.workloads.RetentionScheduleFormat.WEEKLY,
///                             "retention_schedule_weekly": {
///                                 "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                                 "weeks_of_the_month": [azure_native.workloads.WeekOfMonth.FIRST],
///                             },
///                             "retention_times": ["2022-11-29T19:30:00.000Z"],
///                         },
///                     },
///                     "schedule_policy": {
///                         "schedule_policy_type": "SimpleSchedulePolicy",
///                         "schedule_run_days": [azure_native.workloads.DayOfWeek.SUNDAY],
///                         "schedule_run_frequency": azure_native.workloads.ScheduleRunType.WEEKLY,
///                         "schedule_run_times": ["2022-11-29T19:30:00.000Z"],
///                     },
///                     "tiering_policy": {
///                         "ArchivedRP": {
///                             "duration": 45,
///                             "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                             "tiering_mode": azure_native.workloads.TieringMode.TIER_AFTER,
///                         },
///                     },
///                 },
///                 {
///                     "policy_type": azure_native.workloads.PolicyType.DIFFERENTIAL,
///                     "retention_policy": {
///                         "retention_duration": {
///                             "count": 30,
///                             "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                         },
///                         "retention_policy_type": "SimpleRetentionPolicy",
///                     },
///                     "schedule_policy": {
///                         "schedule_policy_type": "SimpleSchedulePolicy",
///                         "schedule_run_days": [azure_native.workloads.DayOfWeek.MONDAY],
///                         "schedule_run_frequency": azure_native.workloads.ScheduleRunType.WEEKLY,
///                         "schedule_run_times": ["2022-09-29T02:00:00Z"],
///                         "schedule_weekly_frequency": 0,
///                     },
///                 },
///                 {
///                     "policy_type": azure_native.workloads.PolicyType.LOG,
///                     "retention_policy": {
///                         "retention_duration": {
///                             "count": 20,
///                             "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                         },
///                         "retention_policy_type": "SimpleRetentionPolicy",
///                     },
///                     "schedule_policy": {
///                         "schedule_frequency_in_mins": 120,
///                         "schedule_policy_type": "LogSchedulePolicy",
///                     },
///                 },
///             ],
///             "work_load_type": azure_native.workloads.WorkloadType.SQL_DATA_BASE,
///         },
///         "backup_type": "SQL",
///         "recovery_services_vault": {
///             "name": "test-vault",
///             "resource_group": "test-rg",
///             "vault_type": "New",
///         },
///     },
///     backup_name="dbBackup",
///     connector_name="C1",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   acssBackupConnection:
///     type: azure-native:workloads:ACSSBackupConnection
///     properties:
///       backupData:
///         backupPolicy:
///           backupManagementType: AzureWorkload
///           name: defaultSqlPolicy
///           protectedItemsCount: 0
///           settings:
///             isCompression: true
///             issqlcompression: true
///             timeZone: UTC
///           subProtectionPolicy:
///             - policyType: Full
///               retentionPolicy:
///                 monthlySchedule:
///                   retentionDuration:
///                     count: 60
///                     durationType: Months
///                   retentionScheduleFormatType: Weekly
///                   retentionScheduleWeekly:
///                     daysOfTheWeek:
///                       - Sunday
///                     weeksOfTheMonth:
///                       - First
///                   retentionTimes:
///                     - 2022-11-29T19:30:00.000Z
///                 retentionPolicyType: LongTermRetentionPolicy
///                 weeklySchedule:
///                   daysOfTheWeek:
///                     - Sunday
///                   retentionDuration:
///                     count: 104
///                     durationType: Weeks
///                   retentionTimes:
///                     - 2022-11-29T19:30:00.000Z
///                 yearlySchedule:
///                   monthsOfYear:
///                     - January
///                   retentionDuration:
///                     count: 10
///                     durationType: Years
///                   retentionScheduleFormatType: Weekly
///                   retentionScheduleWeekly:
///                     daysOfTheWeek:
///                       - Sunday
///                     weeksOfTheMonth:
///                       - First
///                   retentionTimes:
///                     - 2022-11-29T19:30:00.000Z
///               schedulePolicy:
///                 schedulePolicyType: SimpleSchedulePolicy
///                 scheduleRunDays:
///                   - Sunday
///                 scheduleRunFrequency: Weekly
///                 scheduleRunTimes:
///                   - 2022-11-29T19:30:00.000Z
///               tieringPolicy:
///                 ArchivedRP:
///                   duration: 45
///                   durationType: Days
///                   tieringMode: TierAfter
///             - policyType: Differential
///               retentionPolicy:
///                 retentionDuration:
///                   count: 30
///                   durationType: Days
///                 retentionPolicyType: SimpleRetentionPolicy
///               schedulePolicy:
///                 schedulePolicyType: SimpleSchedulePolicy
///                 scheduleRunDays:
///                   - Monday
///                 scheduleRunFrequency: Weekly
///                 scheduleRunTimes:
///                   - 2022-09-29T02:00:00Z
///                 scheduleWeeklyFrequency: 0
///             - policyType: Log
///               retentionPolicy:
///                 retentionDuration:
///                   count: 20
///                   durationType: Days
///                 retentionPolicyType: SimpleRetentionPolicy
///               schedulePolicy:
///                 scheduleFrequencyInMins: 120
///                 schedulePolicyType: LogSchedulePolicy
///           workLoadType: SQLDataBase
///         backupType: SQL
///         recoveryServicesVault:
///           name: test-vault
///           resourceGroup: test-rg
///           vaultType: New
///       backupName: dbBackup
///       connectorName: C1
///       location: westcentralus
///       resourceGroupName: test-rg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a VM backup connection with a new backup policy with tieringPolicy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acssBackupConnection = new AzureNative.Workloads.ACSSBackupConnection("acssBackupConnection", new()
///     {
///         BackupData = new AzureNative.Workloads.Inputs.VMBackupDataArgs
///         {
///             BackupPolicy = new AzureNative.Workloads.Inputs.VMBackupPolicyPropertiesArgs
///             {
///                 BackupManagementType = "AzureIaasVM",
///                 InstantRPDetails = new AzureNative.Workloads.Inputs.InstantRPAdditionalDetailsArgs
///                 {
///                     AzureBackupRGNamePrefix = "dasas",
///                     AzureBackupRGNameSuffix = "a",
///                 },
///                 InstantRpRetentionRangeInDays = 2,
///                 Name = "defaultVmPolicy",
///                 PolicyType = AzureNative.Workloads.IAASVMPolicyType.V1,
///                 ProtectedItemsCount = 0,
///                 RetentionPolicy = new AzureNative.Workloads.Inputs.LongTermRetentionPolicyArgs
///                 {
///                     DailySchedule = new AzureNative.Workloads.Inputs.DailyRetentionScheduleArgs
///                     {
///                         RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                         {
///                             Count = 30,
///                             DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2022-11-29T19:30:00.000Z",
///                         },
///                     },
///                     MonthlySchedule = new AzureNative.Workloads.Inputs.MonthlyRetentionScheduleArgs
///                     {
///                         RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                         {
///                             Count = 60,
///                             DurationType = AzureNative.Workloads.RetentionDurationType.Months,
///                         },
///                         RetentionScheduleFormatType = AzureNative.Workloads.RetentionScheduleFormat.Weekly,
///                         RetentionScheduleWeekly = new AzureNative.Workloads.Inputs.WeeklyRetentionFormatArgs
///                         {
///                             DaysOfTheWeek = new[]
///                             {
///                                 AzureNative.Workloads.DayOfWeek.Sunday,
///                             },
///                             WeeksOfTheMonth = new[]
///                             {
///                                 AzureNative.Workloads.WeekOfMonth.First,
///                             },
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2022-11-29T19:30:00.000Z",
///                         },
///                     },
///                     RetentionPolicyType = "LongTermRetentionPolicy",
///                     WeeklySchedule = new AzureNative.Workloads.Inputs.WeeklyRetentionScheduleArgs
///                     {
///                         DaysOfTheWeek = new[]
///                         {
///                             AzureNative.Workloads.DayOfWeek.Sunday,
///                         },
///                         RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                         {
///                             Count = 12,
///                             DurationType = AzureNative.Workloads.RetentionDurationType.Weeks,
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2022-11-29T19:30:00.000Z",
///                         },
///                     },
///                     YearlySchedule = new AzureNative.Workloads.Inputs.YearlyRetentionScheduleArgs
///                     {
///                         MonthsOfYear = new[]
///                         {
///                             AzureNative.Workloads.MonthOfYear.January,
///                         },
///                         RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                         {
///                             Count = 10,
///                             DurationType = AzureNative.Workloads.RetentionDurationType.Years,
///                         },
///                         RetentionScheduleFormatType = AzureNative.Workloads.RetentionScheduleFormat.Weekly,
///                         RetentionScheduleWeekly = new AzureNative.Workloads.Inputs.WeeklyRetentionFormatArgs
///                         {
///                             DaysOfTheWeek = new[]
///                             {
///                                 AzureNative.Workloads.DayOfWeek.Sunday,
///                             },
///                             WeeksOfTheMonth = new[]
///                             {
///                                 AzureNative.Workloads.WeekOfMonth.First,
///                             },
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2022-11-29T19:30:00.000Z",
///                         },
///                     },
///                 },
///                 SchedulePolicy = new AzureNative.Workloads.Inputs.SimpleSchedulePolicyArgs
///                 {
///                     SchedulePolicyType = "SimpleSchedulePolicy",
///                     ScheduleRunFrequency = AzureNative.Workloads.ScheduleRunType.Daily,
///                     ScheduleRunTimes = new[]
///                     {
///                         "2022-11-29T19:30:00.000Z",
///                     },
///                 },
///                 TieringPolicy =
///                 {
///                     { "ArchivedRP", new AzureNative.Workloads.Inputs.TieringPolicyArgs
///                     {
///                         Duration = 3,
///                         DurationType = AzureNative.Workloads.RetentionDurationType.Months,
///                         TieringMode = AzureNative.Workloads.TieringMode.TierAfter,
///                     } },
///                 },
///                 TimeZone = "UTC",
///             },
///             BackupType = "VM",
///             DiskExclusionProperties = new AzureNative.Workloads.Inputs.DiskExclusionPropertiesArgs
///             {
///                 DiskLunList = new() { },
///                 IsInclusionList = true,
///             },
///             RecoveryServicesVault = new AzureNative.Workloads.Inputs.NewRecoveryServicesVaultArgs
///             {
///                 Name = "test-vault",
///                 ResourceGroup = "test-rg",
///                 VaultType = "New",
///             },
///         },
///         BackupName = "vmBackup",
///         ConnectorName = "C1",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewACSSBackupConnection(ctx, "acssBackupConnection", &workloads.ACSSBackupConnectionArgs{
/// 			BackupData: &workloads.VMBackupDataArgs{
/// 				BackupPolicy: &workloads.VMBackupPolicyPropertiesArgs{
/// 					BackupManagementType: pulumi.String("AzureIaasVM"),
/// 					InstantRPDetails: &workloads.InstantRPAdditionalDetailsArgs{
/// 						AzureBackupRGNamePrefix: pulumi.String("dasas"),
/// 						AzureBackupRGNameSuffix: pulumi.String("a"),
/// 					},
/// 					InstantRpRetentionRangeInDays: pulumi.Int(2),
/// 					Name:                          pulumi.String("defaultVmPolicy"),
/// 					PolicyType:                    pulumi.String(workloads.IAASVMPolicyTypeV1),
/// 					ProtectedItemsCount:           pulumi.Int(0),
/// 					RetentionPolicy: workloads.LongTermRetentionPolicy{
/// 						DailySchedule: workloads.DailyRetentionSchedule{
/// 							RetentionDuration: workloads.RetentionDuration{
/// 								Count:        30,
/// 								DurationType: workloads.RetentionDurationTypeDays,
/// 							},
/// 							RetentionTimes: []string{
/// 								"2022-11-29T19:30:00.000Z",
/// 							},
/// 						},
/// 						MonthlySchedule: workloads.MonthlyRetentionSchedule{
/// 							RetentionDuration: workloads.RetentionDuration{
/// 								Count:        60,
/// 								DurationType: workloads.RetentionDurationTypeMonths,
/// 							},
/// 							RetentionScheduleFormatType: workloads.RetentionScheduleFormatWeekly,
/// 							RetentionScheduleWeekly: workloads.WeeklyRetentionFormat{
/// 								DaysOfTheWeek: []workloads.DayOfWeek{
/// 									workloads.DayOfWeekSunday,
/// 								},
/// 								WeeksOfTheMonth: []workloads.WeekOfMonth{
/// 									workloads.WeekOfMonthFirst,
/// 								},
/// 							},
/// 							RetentionTimes: []string{
/// 								"2022-11-29T19:30:00.000Z",
/// 							},
/// 						},
/// 						RetentionPolicyType: "LongTermRetentionPolicy",
/// 						WeeklySchedule: workloads.WeeklyRetentionSchedule{
/// 							DaysOfTheWeek: []workloads.DayOfWeek{
/// 								workloads.DayOfWeekSunday,
/// 							},
/// 							RetentionDuration: workloads.RetentionDuration{
/// 								Count:        12,
/// 								DurationType: workloads.RetentionDurationTypeWeeks,
/// 							},
/// 							RetentionTimes: []string{
/// 								"2022-11-29T19:30:00.000Z",
/// 							},
/// 						},
/// 						YearlySchedule: workloads.YearlyRetentionSchedule{
/// 							MonthsOfYear: []workloads.MonthOfYear{
/// 								workloads.MonthOfYearJanuary,
/// 							},
/// 							RetentionDuration: workloads.RetentionDuration{
/// 								Count:        10,
/// 								DurationType: workloads.RetentionDurationTypeYears,
/// 							},
/// 							RetentionScheduleFormatType: workloads.RetentionScheduleFormatWeekly,
/// 							RetentionScheduleWeekly: workloads.WeeklyRetentionFormat{
/// 								DaysOfTheWeek: []workloads.DayOfWeek{
/// 									workloads.DayOfWeekSunday,
/// 								},
/// 								WeeksOfTheMonth: []workloads.WeekOfMonth{
/// 									workloads.WeekOfMonthFirst,
/// 								},
/// 							},
/// 							RetentionTimes: []string{
/// 								"2022-11-29T19:30:00.000Z",
/// 							},
/// 						},
/// 					},
/// 					SchedulePolicy: workloads.SimpleSchedulePolicy{
/// 						SchedulePolicyType:   "SimpleSchedulePolicy",
/// 						ScheduleRunFrequency: workloads.ScheduleRunTypeDaily,
/// 						ScheduleRunTimes: []string{
/// 							"2022-11-29T19:30:00.000Z",
/// 						},
/// 					},
/// 					TieringPolicy: workloads.TieringPolicyMap{
/// 						"ArchivedRP": &workloads.TieringPolicyArgs{
/// 							Duration:     pulumi.Int(3),
/// 							DurationType: pulumi.String(workloads.RetentionDurationTypeMonths),
/// 							TieringMode:  pulumi.String(workloads.TieringModeTierAfter),
/// 						},
/// 					},
/// 					TimeZone: pulumi.String("UTC"),
/// 				},
/// 				BackupType: pulumi.String("VM"),
/// 				DiskExclusionProperties: &workloads.DiskExclusionPropertiesArgs{
/// 					DiskLunList:     pulumi.IntArray{},
/// 					IsInclusionList: pulumi.Bool(true),
/// 				},
/// 				RecoveryServicesVault: workloads.NewRecoveryServicesVault{
/// 					Name:          "test-vault",
/// 					ResourceGroup: "test-rg",
/// 					VaultType:     "New",
/// 				},
/// 			},
/// 			BackupName:        pulumi.String("vmBackup"),
/// 			ConnectorName:     pulumi.String("C1"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.ACSSBackupConnection;
/// import com.pulumi.azurenative.workloads.ACSSBackupConnectionArgs;
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
///         var acssBackupConnection = new ACSSBackupConnection("acssBackupConnection", ACSSBackupConnectionArgs.builder()
///             .backupData(VMBackupDataArgs.builder()
///                 .backupPolicy(Map.ofEntries(
///                     Map.entry("backupManagementType", "AzureIaasVM"),
///                     Map.entry("instantRPDetails", InstantRPAdditionalDetailsArgs.builder()
///                         .azureBackupRGNamePrefix("dasas")
///                         .azureBackupRGNameSuffix("a")
///                         .build()),
///                     Map.entry("instantRpRetentionRangeInDays", 2),
///                     Map.entry("name", "defaultVmPolicy"),
///                     Map.entry("policyType", "V1"),
///                     Map.entry("protectedItemsCount", 0),
///                     Map.entry("retentionPolicy", LongTermRetentionPolicyArgs.builder()
///                         .dailySchedule(DailyRetentionScheduleArgs.builder()
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(30)
///                                 .durationType("Days")
///                                 .build())
///                             .retentionTimes("2022-11-29T19:30:00.000Z")
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
///                             .retentionTimes("2022-11-29T19:30:00.000Z")
///                             .build())
///                         .retentionPolicyType("LongTermRetentionPolicy")
///                         .weeklySchedule(WeeklyRetentionScheduleArgs.builder()
///                             .daysOfTheWeek("Sunday")
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(12)
///                                 .durationType("Weeks")
///                                 .build())
///                             .retentionTimes("2022-11-29T19:30:00.000Z")
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
///                             .retentionTimes("2022-11-29T19:30:00.000Z")
///                             .build())
///                         .build()),
///                     Map.entry("schedulePolicy", SimpleSchedulePolicyArgs.builder()
///                         .schedulePolicyType("SimpleSchedulePolicy")
///                         .scheduleRunFrequency("Daily")
///                         .scheduleRunTimes("2022-11-29T19:30:00.000Z")
///                         .build()),
///                     Map.entry("tieringPolicy", Map.of("ArchivedRP", TieringPolicyArgs.builder()
///                         .duration(3)
///                         .durationType("Months")
///                         .tieringMode("TierAfter")
///                         .build())),
///                     Map.entry("timeZone", "UTC")
///                 ))
///                 .backupType("VM")
///                 .diskExclusionProperties(DiskExclusionPropertiesArgs.builder()
///                     .diskLunList()
///                     .isInclusionList(true)
///                     .build())
///                 .recoveryServicesVault(NewRecoveryServicesVaultArgs.builder()
///                     .name("test-vault")
///                     .resourceGroup("test-rg")
///                     .vaultType("New")
///                     .build())
///                 .build())
///             .backupName("vmBackup")
///             .connectorName("C1")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const acssBackupConnection = new azure_native.workloads.ACSSBackupConnection("acssBackupConnection", {
///     backupData: {
///         backupPolicy: {
///             backupManagementType: "AzureIaasVM",
///             instantRPDetails: {
///                 azureBackupRGNamePrefix: "dasas",
///                 azureBackupRGNameSuffix: "a",
///             },
///             instantRpRetentionRangeInDays: 2,
///             name: "defaultVmPolicy",
///             policyType: azure_native.workloads.IAASVMPolicyType.V1,
///             protectedItemsCount: 0,
///             retentionPolicy: {
///                 dailySchedule: {
///                     retentionDuration: {
///                         count: 30,
///                         durationType: azure_native.workloads.RetentionDurationType.Days,
///                     },
///                     retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                 },
///                 monthlySchedule: {
///                     retentionDuration: {
///                         count: 60,
///                         durationType: azure_native.workloads.RetentionDurationType.Months,
///                     },
///                     retentionScheduleFormatType: azure_native.workloads.RetentionScheduleFormat.Weekly,
///                     retentionScheduleWeekly: {
///                         daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                         weeksOfTheMonth: [azure_native.workloads.WeekOfMonth.First],
///                     },
///                     retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                 },
///                 retentionPolicyType: "LongTermRetentionPolicy",
///                 weeklySchedule: {
///                     daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                     retentionDuration: {
///                         count: 12,
///                         durationType: azure_native.workloads.RetentionDurationType.Weeks,
///                     },
///                     retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                 },
///                 yearlySchedule: {
///                     monthsOfYear: [azure_native.workloads.MonthOfYear.January],
///                     retentionDuration: {
///                         count: 10,
///                         durationType: azure_native.workloads.RetentionDurationType.Years,
///                     },
///                     retentionScheduleFormatType: azure_native.workloads.RetentionScheduleFormat.Weekly,
///                     retentionScheduleWeekly: {
///                         daysOfTheWeek: [azure_native.workloads.DayOfWeek.Sunday],
///                         weeksOfTheMonth: [azure_native.workloads.WeekOfMonth.First],
///                     },
///                     retentionTimes: ["2022-11-29T19:30:00.000Z"],
///                 },
///             },
///             schedulePolicy: {
///                 schedulePolicyType: "SimpleSchedulePolicy",
///                 scheduleRunFrequency: azure_native.workloads.ScheduleRunType.Daily,
///                 scheduleRunTimes: ["2022-11-29T19:30:00.000Z"],
///             },
///             tieringPolicy: {
///                 ArchivedRP: {
///                     duration: 3,
///                     durationType: azure_native.workloads.RetentionDurationType.Months,
///                     tieringMode: azure_native.workloads.TieringMode.TierAfter,
///                 },
///             },
///             timeZone: "UTC",
///         },
///         backupType: "VM",
///         diskExclusionProperties: {
///             diskLunList: [],
///             isInclusionList: true,
///         },
///         recoveryServicesVault: {
///             name: "test-vault",
///             resourceGroup: "test-rg",
///             vaultType: "New",
///         },
///     },
///     backupName: "vmBackup",
///     connectorName: "C1",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// acss_backup_connection = azure_native.workloads.ACSSBackupConnection("acssBackupConnection",
///     backup_data={
///         "backup_policy": {
///             "backup_management_type": "AzureIaasVM",
///             "instant_rp_details": {
///                 "azure_backup_rg_name_prefix": "dasas",
///                 "azure_backup_rg_name_suffix": "a",
///             },
///             "instant_rp_retention_range_in_days": 2,
///             "name": "defaultVmPolicy",
///             "policy_type": azure_native.workloads.IAASVMPolicyType.V1,
///             "protected_items_count": 0,
///             "retention_policy": {
///                 "daily_schedule": {
///                     "retention_duration": {
///                         "count": 30,
///                         "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                     },
///                     "retention_times": ["2022-11-29T19:30:00.000Z"],
///                 },
///                 "monthly_schedule": {
///                     "retention_duration": {
///                         "count": 60,
///                         "duration_type": azure_native.workloads.RetentionDurationType.MONTHS,
///                     },
///                     "retention_schedule_format_type": azure_native.workloads.RetentionScheduleFormat.WEEKLY,
///                     "retention_schedule_weekly": {
///                         "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                         "weeks_of_the_month": [azure_native.workloads.WeekOfMonth.FIRST],
///                     },
///                     "retention_times": ["2022-11-29T19:30:00.000Z"],
///                 },
///                 "retention_policy_type": "LongTermRetentionPolicy",
///                 "weekly_schedule": {
///                     "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                     "retention_duration": {
///                         "count": 12,
///                         "duration_type": azure_native.workloads.RetentionDurationType.WEEKS,
///                     },
///                     "retention_times": ["2022-11-29T19:30:00.000Z"],
///                 },
///                 "yearly_schedule": {
///                     "months_of_year": [azure_native.workloads.MonthOfYear.JANUARY],
///                     "retention_duration": {
///                         "count": 10,
///                         "duration_type": azure_native.workloads.RetentionDurationType.YEARS,
///                     },
///                     "retention_schedule_format_type": azure_native.workloads.RetentionScheduleFormat.WEEKLY,
///                     "retention_schedule_weekly": {
///                         "days_of_the_week": [azure_native.workloads.DayOfWeek.SUNDAY],
///                         "weeks_of_the_month": [azure_native.workloads.WeekOfMonth.FIRST],
///                     },
///                     "retention_times": ["2022-11-29T19:30:00.000Z"],
///                 },
///             },
///             "schedule_policy": {
///                 "schedule_policy_type": "SimpleSchedulePolicy",
///                 "schedule_run_frequency": azure_native.workloads.ScheduleRunType.DAILY,
///                 "schedule_run_times": ["2022-11-29T19:30:00.000Z"],
///             },
///             "tiering_policy": {
///                 "ArchivedRP": {
///                     "duration": 3,
///                     "duration_type": azure_native.workloads.RetentionDurationType.MONTHS,
///                     "tiering_mode": azure_native.workloads.TieringMode.TIER_AFTER,
///                 },
///             },
///             "time_zone": "UTC",
///         },
///         "backup_type": "VM",
///         "disk_exclusion_properties": {
///             "disk_lun_list": [],
///             "is_inclusion_list": True,
///         },
///         "recovery_services_vault": {
///             "name": "test-vault",
///             "resource_group": "test-rg",
///             "vault_type": "New",
///         },
///     },
///     backup_name="vmBackup",
///     connector_name="C1",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   acssBackupConnection:
///     type: azure-native:workloads:ACSSBackupConnection
///     properties:
///       backupData:
///         backupPolicy:
///           backupManagementType: AzureIaasVM
///           instantRPDetails:
///             azureBackupRGNamePrefix: dasas
///             azureBackupRGNameSuffix: a
///           instantRpRetentionRangeInDays: 2
///           name: defaultVmPolicy
///           policyType: V1
///           protectedItemsCount: 0
///           retentionPolicy:
///             dailySchedule:
///               retentionDuration:
///                 count: 30
///                 durationType: Days
///               retentionTimes:
///                 - 2022-11-29T19:30:00.000Z
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
///                 - 2022-11-29T19:30:00.000Z
///             retentionPolicyType: LongTermRetentionPolicy
///             weeklySchedule:
///               daysOfTheWeek:
///                 - Sunday
///               retentionDuration:
///                 count: 12
///                 durationType: Weeks
///               retentionTimes:
///                 - 2022-11-29T19:30:00.000Z
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
///                 - 2022-11-29T19:30:00.000Z
///           schedulePolicy:
///             schedulePolicyType: SimpleSchedulePolicy
///             scheduleRunFrequency: Daily
///             scheduleRunTimes:
///               - 2022-11-29T19:30:00.000Z
///           tieringPolicy:
///             ArchivedRP:
///               duration: 3
///               durationType: Months
///               tieringMode: TierAfter
///           timeZone: UTC
///         backupType: VM
///         diskExclusionProperties:
///           diskLunList: []
///           isInclusionList: true
///         recoveryServicesVault:
///           name: test-vault
///           resourceGroup: test-rg
///           vaultType: New
///       backupName: vmBackup
///       connectorName: C1
///       location: westcentralus
///       resourceGroupName: test-rg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a db backup connection with a new backup policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acssBackupConnection = new AzureNative.Workloads.ACSSBackupConnection("acssBackupConnection", new()
///     {
///         BackupData = new AzureNative.Workloads.Inputs.SqlBackupDataArgs
///         {
///             BackupPolicy = new AzureNative.Workloads.Inputs.DBBackupPolicyPropertiesArgs
///             {
///                 BackupManagementType = "AzureWorkload",
///                 Name = "defaultDbPolicy",
///                 ProtectedItemsCount = 0,
///                 Settings = new AzureNative.Workloads.Inputs.SettingsArgs
///                 {
///                     IsCompression = false,
///                     Issqlcompression = false,
///                     TimeZone = "UTC",
///                 },
///                 SubProtectionPolicy = new[]
///                 {
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.Full,
///                         RetentionPolicy = new AzureNative.Workloads.Inputs.LongTermRetentionPolicyArgs
///                         {
///                             DailySchedule = new AzureNative.Workloads.Inputs.DailyRetentionScheduleArgs
///                             {
///                                 RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                                 {
///                                     Count = 30,
///                                     DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                                 },
///                                 RetentionTimes = new[]
///                                 {
///                                     "2018-01-10T18:30:00Z",
///                                 },
///                             },
///                             RetentionPolicyType = "LongTermRetentionPolicy",
///                         },
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.SimpleSchedulePolicyArgs
///                         {
///                             SchedulePolicyType = "SimpleSchedulePolicy",
///                             ScheduleRunFrequency = AzureNative.Workloads.ScheduleRunType.Daily,
///                             ScheduleRunTimes = new[]
///                             {
///                                 "2018-01-10T18:30:00Z",
///                             },
///                             ScheduleWeeklyFrequency = 0,
///                         },
///                     },
///                     new AzureNative.Workloads.Inputs.SubProtectionPolicyArgs
///                     {
///                         PolicyType = AzureNative.Workloads.PolicyType.Log,
///                         RetentionPolicy = new AzureNative.Workloads.Inputs.SimpleRetentionPolicyArgs
///                         {
///                             RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                             {
///                                 Count = 30,
///                                 DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                             },
///                             RetentionPolicyType = "SimpleRetentionPolicy",
///                         },
///                         SchedulePolicy = new AzureNative.Workloads.Inputs.LogSchedulePolicyArgs
///                         {
///                             ScheduleFrequencyInMins = 60,
///                             SchedulePolicyType = "LogSchedulePolicy",
///                         },
///                     },
///                 },
///                 WorkLoadType = AzureNative.Workloads.WorkloadType.SQLDataBase,
///             },
///             BackupType = "SQL",
///             RecoveryServicesVault = new AzureNative.Workloads.Inputs.ExistingRecoveryServicesVaultArgs
///             {
///                 Id = "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///                 VaultType = "Existing",
///             },
///         },
///         BackupName = "dbBackup",
///         ConnectorName = "C1",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewACSSBackupConnection(ctx, "acssBackupConnection", &workloads.ACSSBackupConnectionArgs{
/// 			BackupData: &workloads.SqlBackupDataArgs{
/// 				BackupPolicy: &workloads.DBBackupPolicyPropertiesArgs{
/// 					BackupManagementType: pulumi.String("AzureWorkload"),
/// 					Name:                 pulumi.String("defaultDbPolicy"),
/// 					ProtectedItemsCount:  pulumi.Int(0),
/// 					Settings: &workloads.SettingsArgs{
/// 						IsCompression:    pulumi.Bool(false),
/// 						Issqlcompression: pulumi.Bool(false),
/// 						TimeZone:         pulumi.String("UTC"),
/// 					},
/// 					SubProtectionPolicy: workloads.SubProtectionPolicyArray{
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeFull),
/// 							RetentionPolicy: workloads.LongTermRetentionPolicy{
/// 								DailySchedule: workloads.DailyRetentionSchedule{
/// 									RetentionDuration: workloads.RetentionDuration{
/// 										Count:        30,
/// 										DurationType: workloads.RetentionDurationTypeDays,
/// 									},
/// 									RetentionTimes: []string{
/// 										"2018-01-10T18:30:00Z",
/// 									},
/// 								},
/// 								RetentionPolicyType: "LongTermRetentionPolicy",
/// 							},
/// 							SchedulePolicy: workloads.SimpleSchedulePolicy{
/// 								SchedulePolicyType:   "SimpleSchedulePolicy",
/// 								ScheduleRunFrequency: workloads.ScheduleRunTypeDaily,
/// 								ScheduleRunTimes: []string{
/// 									"2018-01-10T18:30:00Z",
/// 								},
/// 								ScheduleWeeklyFrequency: 0,
/// 							},
/// 						},
/// 						&workloads.SubProtectionPolicyArgs{
/// 							PolicyType: pulumi.String(workloads.PolicyTypeLog),
/// 							RetentionPolicy: workloads.SimpleRetentionPolicy{
/// 								RetentionDuration: workloads.RetentionDuration{
/// 									Count:        30,
/// 									DurationType: workloads.RetentionDurationTypeDays,
/// 								},
/// 								RetentionPolicyType: "SimpleRetentionPolicy",
/// 							},
/// 							SchedulePolicy: workloads.LogSchedulePolicy{
/// 								ScheduleFrequencyInMins: 60,
/// 								SchedulePolicyType:      "LogSchedulePolicy",
/// 							},
/// 						},
/// 					},
/// 					WorkLoadType: pulumi.String(workloads.WorkloadTypeSQLDataBase),
/// 				},
/// 				BackupType: pulumi.String("SQL"),
/// 				RecoveryServicesVault: workloads.ExistingRecoveryServicesVault{
/// 					Id:        "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
/// 					VaultType: "Existing",
/// 				},
/// 			},
/// 			BackupName:        pulumi.String("dbBackup"),
/// 			ConnectorName:     pulumi.String("C1"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.ACSSBackupConnection;
/// import com.pulumi.azurenative.workloads.ACSSBackupConnectionArgs;
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
///         var acssBackupConnection = new ACSSBackupConnection("acssBackupConnection", ACSSBackupConnectionArgs.builder()
///             .backupData(SqlBackupDataArgs.builder()
///                 .backupPolicy(Map.ofEntries(
///                     Map.entry("backupManagementType", "AzureWorkload"),
///                     Map.entry("name", "defaultDbPolicy"),
///                     Map.entry("protectedItemsCount", 0),
///                     Map.entry("settings", SettingsArgs.builder()
///                         .isCompression(false)
///                         .issqlcompression(false)
///                         .timeZone("UTC")
///                         .build()),
///                     Map.entry("subProtectionPolicy",
///                         SubProtectionPolicyArgs.builder()
///                             .policyType("Full")
///                             .retentionPolicy(LongTermRetentionPolicyArgs.builder()
///                                 .dailySchedule(DailyRetentionScheduleArgs.builder()
///                                     .retentionDuration(RetentionDurationArgs.builder()
///                                         .count(30)
///                                         .durationType("Days")
///                                         .build())
///                                     .retentionTimes("2018-01-10T18:30:00Z")
///                                     .build())
///                                 .retentionPolicyType("LongTermRetentionPolicy")
///                                 .build())
///                             .schedulePolicy(SimpleSchedulePolicyArgs.builder()
///                                 .schedulePolicyType("SimpleSchedulePolicy")
///                                 .scheduleRunFrequency("Daily")
///                                 .scheduleRunTimes("2018-01-10T18:30:00Z")
///                                 .scheduleWeeklyFrequency(0)
///                                 .build())
///                             .build(),
///                         SubProtectionPolicyArgs.builder()
///                             .policyType("Log")
///                             .retentionPolicy(SimpleRetentionPolicyArgs.builder()
///                                 .retentionDuration(RetentionDurationArgs.builder()
///                                     .count(30)
///                                     .durationType("Days")
///                                     .build())
///                                 .retentionPolicyType("SimpleRetentionPolicy")
///                                 .build())
///                             .schedulePolicy(LogSchedulePolicyArgs.builder()
///                                 .scheduleFrequencyInMins(60)
///                                 .schedulePolicyType("LogSchedulePolicy")
///                                 .build())
///                             .build()),
///                     Map.entry("workLoadType", "SQLDataBase")
///                 ))
///                 .backupType("SQL")
///                 .recoveryServicesVault(ExistingRecoveryServicesVaultArgs.builder()
///                     .id("/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault")
///                     .vaultType("Existing")
///                     .build())
///                 .build())
///             .backupName("dbBackup")
///             .connectorName("C1")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const acssBackupConnection = new azure_native.workloads.ACSSBackupConnection("acssBackupConnection", {
///     backupData: {
///         backupPolicy: {
///             backupManagementType: "AzureWorkload",
///             name: "defaultDbPolicy",
///             protectedItemsCount: 0,
///             settings: {
///                 isCompression: false,
///                 issqlcompression: false,
///                 timeZone: "UTC",
///             },
///             subProtectionPolicy: [
///                 {
///                     policyType: azure_native.workloads.PolicyType.Full,
///                     retentionPolicy: {
///                         dailySchedule: {
///                             retentionDuration: {
///                                 count: 30,
///                                 durationType: azure_native.workloads.RetentionDurationType.Days,
///                             },
///                             retentionTimes: ["2018-01-10T18:30:00Z"],
///                         },
///                         retentionPolicyType: "LongTermRetentionPolicy",
///                     },
///                     schedulePolicy: {
///                         schedulePolicyType: "SimpleSchedulePolicy",
///                         scheduleRunFrequency: azure_native.workloads.ScheduleRunType.Daily,
///                         scheduleRunTimes: ["2018-01-10T18:30:00Z"],
///                         scheduleWeeklyFrequency: 0,
///                     },
///                 },
///                 {
///                     policyType: azure_native.workloads.PolicyType.Log,
///                     retentionPolicy: {
///                         retentionDuration: {
///                             count: 30,
///                             durationType: azure_native.workloads.RetentionDurationType.Days,
///                         },
///                         retentionPolicyType: "SimpleRetentionPolicy",
///                     },
///                     schedulePolicy: {
///                         scheduleFrequencyInMins: 60,
///                         schedulePolicyType: "LogSchedulePolicy",
///                     },
///                 },
///             ],
///             workLoadType: azure_native.workloads.WorkloadType.SQLDataBase,
///         },
///         backupType: "SQL",
///         recoveryServicesVault: {
///             id: "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///             vaultType: "Existing",
///         },
///     },
///     backupName: "dbBackup",
///     connectorName: "C1",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// acss_backup_connection = azure_native.workloads.ACSSBackupConnection("acssBackupConnection",
///     backup_data={
///         "backup_policy": {
///             "backup_management_type": "AzureWorkload",
///             "name": "defaultDbPolicy",
///             "protected_items_count": 0,
///             "settings": {
///                 "is_compression": False,
///                 "issqlcompression": False,
///                 "time_zone": "UTC",
///             },
///             "sub_protection_policy": [
///                 {
///                     "policy_type": azure_native.workloads.PolicyType.FULL,
///                     "retention_policy": {
///                         "daily_schedule": {
///                             "retention_duration": {
///                                 "count": 30,
///                                 "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                             },
///                             "retention_times": ["2018-01-10T18:30:00Z"],
///                         },
///                         "retention_policy_type": "LongTermRetentionPolicy",
///                     },
///                     "schedule_policy": {
///                         "schedule_policy_type": "SimpleSchedulePolicy",
///                         "schedule_run_frequency": azure_native.workloads.ScheduleRunType.DAILY,
///                         "schedule_run_times": ["2018-01-10T18:30:00Z"],
///                         "schedule_weekly_frequency": 0,
///                     },
///                 },
///                 {
///                     "policy_type": azure_native.workloads.PolicyType.LOG,
///                     "retention_policy": {
///                         "retention_duration": {
///                             "count": 30,
///                             "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                         },
///                         "retention_policy_type": "SimpleRetentionPolicy",
///                     },
///                     "schedule_policy": {
///                         "schedule_frequency_in_mins": 60,
///                         "schedule_policy_type": "LogSchedulePolicy",
///                     },
///                 },
///             ],
///             "work_load_type": azure_native.workloads.WorkloadType.SQL_DATA_BASE,
///         },
///         "backup_type": "SQL",
///         "recovery_services_vault": {
///             "id": "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///             "vault_type": "Existing",
///         },
///     },
///     backup_name="dbBackup",
///     connector_name="C1",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   acssBackupConnection:
///     type: azure-native:workloads:ACSSBackupConnection
///     properties:
///       backupData:
///         backupPolicy:
///           backupManagementType: AzureWorkload
///           name: defaultDbPolicy
///           protectedItemsCount: 0
///           settings:
///             isCompression: false
///             issqlcompression: false
///             timeZone: UTC
///           subProtectionPolicy:
///             - policyType: Full
///               retentionPolicy:
///                 dailySchedule:
///                   retentionDuration:
///                     count: 30
///                     durationType: Days
///                   retentionTimes:
///                     - 2018-01-10T18:30:00Z
///                 retentionPolicyType: LongTermRetentionPolicy
///               schedulePolicy:
///                 schedulePolicyType: SimpleSchedulePolicy
///                 scheduleRunFrequency: Daily
///                 scheduleRunTimes:
///                   - 2018-01-10T18:30:00Z
///                 scheduleWeeklyFrequency: 0
///             - policyType: Log
///               retentionPolicy:
///                 retentionDuration:
///                   count: 30
///                   durationType: Days
///                 retentionPolicyType: SimpleRetentionPolicy
///               schedulePolicy:
///                 scheduleFrequencyInMins: 60
///                 schedulePolicyType: LogSchedulePolicy
///           workLoadType: SQLDataBase
///         backupType: SQL
///         recoveryServicesVault:
///           id: /subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault
///           vaultType: Existing
///       backupName: dbBackup
///       connectorName: C1
///       location: westcentralus
///       resourceGroupName: test-rg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a db backup connection with an existing backup policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acssBackupConnection = new AzureNative.Workloads.ACSSBackupConnection("acssBackupConnection", new()
///     {
///         BackupData = new AzureNative.Workloads.Inputs.SqlBackupDataArgs
///         {
///             BackupPolicy = new AzureNative.Workloads.Inputs.DBBackupPolicyPropertiesArgs
///             {
///                 Name = "defaultDbPolicy",
///             },
///             BackupType = "SQL",
///             RecoveryServicesVault = new AzureNative.Workloads.Inputs.ExistingRecoveryServicesVaultArgs
///             {
///                 Id = "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///                 VaultType = "Existing",
///             },
///         },
///         BackupName = "dbBackup",
///         ConnectorName = "C1",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewACSSBackupConnection(ctx, "acssBackupConnection", &workloads.ACSSBackupConnectionArgs{
/// 			BackupData: &workloads.SqlBackupDataArgs{
/// 				BackupPolicy: &workloads.DBBackupPolicyPropertiesArgs{
/// 					Name: pulumi.String("defaultDbPolicy"),
/// 				},
/// 				BackupType: pulumi.String("SQL"),
/// 				RecoveryServicesVault: workloads.ExistingRecoveryServicesVault{
/// 					Id:        "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
/// 					VaultType: "Existing",
/// 				},
/// 			},
/// 			BackupName:        pulumi.String("dbBackup"),
/// 			ConnectorName:     pulumi.String("C1"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.ACSSBackupConnection;
/// import com.pulumi.azurenative.workloads.ACSSBackupConnectionArgs;
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
///         var acssBackupConnection = new ACSSBackupConnection("acssBackupConnection", ACSSBackupConnectionArgs.builder()
///             .backupData(SqlBackupDataArgs.builder()
///                 .backupPolicy(DBBackupPolicyPropertiesArgs.builder()
///                     .name("defaultDbPolicy")
///                     .build())
///                 .backupType("SQL")
///                 .recoveryServicesVault(ExistingRecoveryServicesVaultArgs.builder()
///                     .id("/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault")
///                     .vaultType("Existing")
///                     .build())
///                 .build())
///             .backupName("dbBackup")
///             .connectorName("C1")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const acssBackupConnection = new azure_native.workloads.ACSSBackupConnection("acssBackupConnection", {
///     backupData: {
///         backupPolicy: {
///             name: "defaultDbPolicy",
///         },
///         backupType: "SQL",
///         recoveryServicesVault: {
///             id: "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///             vaultType: "Existing",
///         },
///     },
///     backupName: "dbBackup",
///     connectorName: "C1",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// acss_backup_connection = azure_native.workloads.ACSSBackupConnection("acssBackupConnection",
///     backup_data={
///         "backup_policy": {
///             "name": "defaultDbPolicy",
///         },
///         "backup_type": "SQL",
///         "recovery_services_vault": {
///             "id": "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///             "vault_type": "Existing",
///         },
///     },
///     backup_name="dbBackup",
///     connector_name="C1",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   acssBackupConnection:
///     type: azure-native:workloads:ACSSBackupConnection
///     properties:
///       backupData:
///         backupPolicy:
///           name: defaultDbPolicy
///         backupType: SQL
///         recoveryServicesVault:
///           id: /subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault
///           vaultType: Existing
///       backupName: dbBackup
///       connectorName: C1
///       location: westcentralus
///       resourceGroupName: test-rg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm backup connection with a new backup policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acssBackupConnection = new AzureNative.Workloads.ACSSBackupConnection("acssBackupConnection", new()
///     {
///         BackupData = new AzureNative.Workloads.Inputs.VMBackupDataArgs
///         {
///             BackupPolicy = new AzureNative.Workloads.Inputs.VMBackupPolicyPropertiesArgs
///             {
///                 BackupManagementType = "AzureIaasVM",
///                 InstantRPDetails = null,
///                 InstantRpRetentionRangeInDays = 2,
///                 Name = "defaultVmPolicy",
///                 ProtectedItemsCount = 0,
///                 RetentionPolicy = new AzureNative.Workloads.Inputs.LongTermRetentionPolicyArgs
///                 {
///                     DailySchedule = new AzureNative.Workloads.Inputs.DailyRetentionScheduleArgs
///                     {
///                         RetentionDuration = new AzureNative.Workloads.Inputs.RetentionDurationArgs
///                         {
///                             Count = 30,
///                             DurationType = AzureNative.Workloads.RetentionDurationType.Days,
///                         },
///                         RetentionTimes = new[]
///                         {
///                             "2018-01-10T18:30:00Z",
///                         },
///                     },
///                     RetentionPolicyType = "LongTermRetentionPolicy",
///                 },
///                 SchedulePolicy = new AzureNative.Workloads.Inputs.SimpleSchedulePolicyArgs
///                 {
///                     SchedulePolicyType = "SimpleSchedulePolicy",
///                     ScheduleRunFrequency = AzureNative.Workloads.ScheduleRunType.Daily,
///                     ScheduleRunTimes = new[]
///                     {
///                         "2018-01-10T18:30:00Z",
///                     },
///                     ScheduleWeeklyFrequency = 0,
///                 },
///             },
///             BackupType = "VM",
///             DiskExclusionProperties = new AzureNative.Workloads.Inputs.DiskExclusionPropertiesArgs
///             {
///                 DiskLunList = new() { },
///                 IsInclusionList = true,
///             },
///             RecoveryServicesVault = new AzureNative.Workloads.Inputs.NewRecoveryServicesVaultArgs
///             {
///                 Name = "test-vault",
///                 ResourceGroup = "test-rg",
///                 VaultType = "New",
///             },
///         },
///         BackupName = "vmBackup",
///         ConnectorName = "C1",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewACSSBackupConnection(ctx, "acssBackupConnection", &workloads.ACSSBackupConnectionArgs{
/// 			BackupData: &workloads.VMBackupDataArgs{
/// 				BackupPolicy: &workloads.VMBackupPolicyPropertiesArgs{
/// 					BackupManagementType:          pulumi.String("AzureIaasVM"),
/// 					InstantRPDetails:              &workloads.InstantRPAdditionalDetailsArgs{},
/// 					InstantRpRetentionRangeInDays: pulumi.Int(2),
/// 					Name:                          pulumi.String("defaultVmPolicy"),
/// 					ProtectedItemsCount:           pulumi.Int(0),
/// 					RetentionPolicy: workloads.LongTermRetentionPolicy{
/// 						DailySchedule: workloads.DailyRetentionSchedule{
/// 							RetentionDuration: workloads.RetentionDuration{
/// 								Count:        30,
/// 								DurationType: workloads.RetentionDurationTypeDays,
/// 							},
/// 							RetentionTimes: []string{
/// 								"2018-01-10T18:30:00Z",
/// 							},
/// 						},
/// 						RetentionPolicyType: "LongTermRetentionPolicy",
/// 					},
/// 					SchedulePolicy: workloads.SimpleSchedulePolicy{
/// 						SchedulePolicyType:   "SimpleSchedulePolicy",
/// 						ScheduleRunFrequency: workloads.ScheduleRunTypeDaily,
/// 						ScheduleRunTimes: []string{
/// 							"2018-01-10T18:30:00Z",
/// 						},
/// 						ScheduleWeeklyFrequency: 0,
/// 					},
/// 				},
/// 				BackupType: pulumi.String("VM"),
/// 				DiskExclusionProperties: &workloads.DiskExclusionPropertiesArgs{
/// 					DiskLunList:     pulumi.IntArray{},
/// 					IsInclusionList: pulumi.Bool(true),
/// 				},
/// 				RecoveryServicesVault: workloads.NewRecoveryServicesVault{
/// 					Name:          "test-vault",
/// 					ResourceGroup: "test-rg",
/// 					VaultType:     "New",
/// 				},
/// 			},
/// 			BackupName:        pulumi.String("vmBackup"),
/// 			ConnectorName:     pulumi.String("C1"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.ACSSBackupConnection;
/// import com.pulumi.azurenative.workloads.ACSSBackupConnectionArgs;
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
///         var acssBackupConnection = new ACSSBackupConnection("acssBackupConnection", ACSSBackupConnectionArgs.builder()
///             .backupData(VMBackupDataArgs.builder()
///                 .backupPolicy(Map.ofEntries(
///                     Map.entry("backupManagementType", "AzureIaasVM"),
///                     Map.entry("instantRPDetails", InstantRPAdditionalDetailsArgs.builder()
///                         .build()),
///                     Map.entry("instantRpRetentionRangeInDays", 2),
///                     Map.entry("name", "defaultVmPolicy"),
///                     Map.entry("protectedItemsCount", 0),
///                     Map.entry("retentionPolicy", LongTermRetentionPolicyArgs.builder()
///                         .dailySchedule(DailyRetentionScheduleArgs.builder()
///                             .retentionDuration(RetentionDurationArgs.builder()
///                                 .count(30)
///                                 .durationType("Days")
///                                 .build())
///                             .retentionTimes("2018-01-10T18:30:00Z")
///                             .build())
///                         .retentionPolicyType("LongTermRetentionPolicy")
///                         .build()),
///                     Map.entry("schedulePolicy", SimpleSchedulePolicyArgs.builder()
///                         .schedulePolicyType("SimpleSchedulePolicy")
///                         .scheduleRunFrequency("Daily")
///                         .scheduleRunTimes("2018-01-10T18:30:00Z")
///                         .scheduleWeeklyFrequency(0)
///                         .build())
///                 ))
///                 .backupType("VM")
///                 .diskExclusionProperties(DiskExclusionPropertiesArgs.builder()
///                     .diskLunList()
///                     .isInclusionList(true)
///                     .build())
///                 .recoveryServicesVault(NewRecoveryServicesVaultArgs.builder()
///                     .name("test-vault")
///                     .resourceGroup("test-rg")
///                     .vaultType("New")
///                     .build())
///                 .build())
///             .backupName("vmBackup")
///             .connectorName("C1")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const acssBackupConnection = new azure_native.workloads.ACSSBackupConnection("acssBackupConnection", {
///     backupData: {
///         backupPolicy: {
///             backupManagementType: "AzureIaasVM",
///             instantRPDetails: {},
///             instantRpRetentionRangeInDays: 2,
///             name: "defaultVmPolicy",
///             protectedItemsCount: 0,
///             retentionPolicy: {
///                 dailySchedule: {
///                     retentionDuration: {
///                         count: 30,
///                         durationType: azure_native.workloads.RetentionDurationType.Days,
///                     },
///                     retentionTimes: ["2018-01-10T18:30:00Z"],
///                 },
///                 retentionPolicyType: "LongTermRetentionPolicy",
///             },
///             schedulePolicy: {
///                 schedulePolicyType: "SimpleSchedulePolicy",
///                 scheduleRunFrequency: azure_native.workloads.ScheduleRunType.Daily,
///                 scheduleRunTimes: ["2018-01-10T18:30:00Z"],
///                 scheduleWeeklyFrequency: 0,
///             },
///         },
///         backupType: "VM",
///         diskExclusionProperties: {
///             diskLunList: [],
///             isInclusionList: true,
///         },
///         recoveryServicesVault: {
///             name: "test-vault",
///             resourceGroup: "test-rg",
///             vaultType: "New",
///         },
///     },
///     backupName: "vmBackup",
///     connectorName: "C1",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// acss_backup_connection = azure_native.workloads.ACSSBackupConnection("acssBackupConnection",
///     backup_data={
///         "backup_policy": {
///             "backup_management_type": "AzureIaasVM",
///             "instant_rp_details": {},
///             "instant_rp_retention_range_in_days": 2,
///             "name": "defaultVmPolicy",
///             "protected_items_count": 0,
///             "retention_policy": {
///                 "daily_schedule": {
///                     "retention_duration": {
///                         "count": 30,
///                         "duration_type": azure_native.workloads.RetentionDurationType.DAYS,
///                     },
///                     "retention_times": ["2018-01-10T18:30:00Z"],
///                 },
///                 "retention_policy_type": "LongTermRetentionPolicy",
///             },
///             "schedule_policy": {
///                 "schedule_policy_type": "SimpleSchedulePolicy",
///                 "schedule_run_frequency": azure_native.workloads.ScheduleRunType.DAILY,
///                 "schedule_run_times": ["2018-01-10T18:30:00Z"],
///                 "schedule_weekly_frequency": 0,
///             },
///         },
///         "backup_type": "VM",
///         "disk_exclusion_properties": {
///             "disk_lun_list": [],
///             "is_inclusion_list": True,
///         },
///         "recovery_services_vault": {
///             "name": "test-vault",
///             "resource_group": "test-rg",
///             "vault_type": "New",
///         },
///     },
///     backup_name="vmBackup",
///     connector_name="C1",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   acssBackupConnection:
///     type: azure-native:workloads:ACSSBackupConnection
///     properties:
///       backupData:
///         backupPolicy:
///           backupManagementType: AzureIaasVM
///           instantRPDetails: {}
///           instantRpRetentionRangeInDays: 2
///           name: defaultVmPolicy
///           protectedItemsCount: 0
///           retentionPolicy:
///             dailySchedule:
///               retentionDuration:
///                 count: 30
///                 durationType: Days
///               retentionTimes:
///                 - 2018-01-10T18:30:00Z
///             retentionPolicyType: LongTermRetentionPolicy
///           schedulePolicy:
///             schedulePolicyType: SimpleSchedulePolicy
///             scheduleRunFrequency: Daily
///             scheduleRunTimes:
///               - 2018-01-10T18:30:00Z
///             scheduleWeeklyFrequency: 0
///         backupType: VM
///         diskExclusionProperties:
///           diskLunList: []
///           isInclusionList: true
///         recoveryServicesVault:
///           name: test-vault
///           resourceGroup: test-rg
///           vaultType: New
///       backupName: vmBackup
///       connectorName: C1
///       location: westcentralus
///       resourceGroupName: test-rg
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a vm backup connection with an existing backup policy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var acssBackupConnection = new AzureNative.Workloads.ACSSBackupConnection("acssBackupConnection", new()
///     {
///         BackupData = new AzureNative.Workloads.Inputs.VMBackupDataArgs
///         {
///             BackupPolicy = new AzureNative.Workloads.Inputs.VMBackupPolicyPropertiesArgs
///             {
///                 Name = "defaultVmPolicy",
///             },
///             BackupType = "VM",
///             DiskExclusionProperties = new AzureNative.Workloads.Inputs.DiskExclusionPropertiesArgs
///             {
///                 DiskLunList = new() { },
///                 IsInclusionList = true,
///             },
///             RecoveryServicesVault = new AzureNative.Workloads.Inputs.ExistingRecoveryServicesVaultArgs
///             {
///                 Id = "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///                 VaultType = "Existing",
///             },
///         },
///         BackupName = "vmBackup",
///         ConnectorName = "C1",
///         Location = "westcentralus",
///         ResourceGroupName = "test-rg",
///         Tags = null,
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
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewACSSBackupConnection(ctx, "acssBackupConnection", &workloads.ACSSBackupConnectionArgs{
/// 			BackupData: &workloads.VMBackupDataArgs{
/// 				BackupPolicy: &workloads.VMBackupPolicyPropertiesArgs{
/// 					Name: pulumi.String("defaultVmPolicy"),
/// 				},
/// 				BackupType: pulumi.String("VM"),
/// 				DiskExclusionProperties: &workloads.DiskExclusionPropertiesArgs{
/// 					DiskLunList:     pulumi.IntArray{},
/// 					IsInclusionList: pulumi.Bool(true),
/// 				},
/// 				RecoveryServicesVault: workloads.ExistingRecoveryServicesVault{
/// 					Id:        "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
/// 					VaultType: "Existing",
/// 				},
/// 			},
/// 			BackupName:        pulumi.String("vmBackup"),
/// 			ConnectorName:     pulumi.String("C1"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.workloads.ACSSBackupConnection;
/// import com.pulumi.azurenative.workloads.ACSSBackupConnectionArgs;
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
///         var acssBackupConnection = new ACSSBackupConnection("acssBackupConnection", ACSSBackupConnectionArgs.builder()
///             .backupData(VMBackupDataArgs.builder()
///                 .backupPolicy(VMBackupPolicyPropertiesArgs.builder()
///                     .name("defaultVmPolicy")
///                     .build())
///                 .backupType("VM")
///                 .diskExclusionProperties(DiskExclusionPropertiesArgs.builder()
///                     .diskLunList()
///                     .isInclusionList(true)
///                     .build())
///                 .recoveryServicesVault(ExistingRecoveryServicesVaultArgs.builder()
///                     .id("/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault")
///                     .vaultType("Existing")
///                     .build())
///                 .build())
///             .backupName("vmBackup")
///             .connectorName("C1")
///             .location("westcentralus")
///             .resourceGroupName("test-rg")
///             .tags(Map.ofEntries(
///             ))
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
/// const acssBackupConnection = new azure_native.workloads.ACSSBackupConnection("acssBackupConnection", {
///     backupData: {
///         backupPolicy: {
///             name: "defaultVmPolicy",
///         },
///         backupType: "VM",
///         diskExclusionProperties: {
///             diskLunList: [],
///             isInclusionList: true,
///         },
///         recoveryServicesVault: {
///             id: "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///             vaultType: "Existing",
///         },
///     },
///     backupName: "vmBackup",
///     connectorName: "C1",
///     location: "westcentralus",
///     resourceGroupName: "test-rg",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// acss_backup_connection = azure_native.workloads.ACSSBackupConnection("acssBackupConnection",
///     backup_data={
///         "backup_policy": {
///             "name": "defaultVmPolicy",
///         },
///         "backup_type": "VM",
///         "disk_exclusion_properties": {
///             "disk_lun_list": [],
///             "is_inclusion_list": True,
///         },
///         "recovery_services_vault": {
///             "id": "/subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault",
///             "vault_type": "Existing",
///         },
///     },
///     backup_name="vmBackup",
///     connector_name="C1",
///     location="westcentralus",
///     resource_group_name="test-rg",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   acssBackupConnection:
///     type: azure-native:workloads:ACSSBackupConnection
///     properties:
///       backupData:
///         backupPolicy:
///           name: defaultVmPolicy
///         backupType: VM
///         diskExclusionProperties:
///           diskLunList: []
///           isInclusionList: true
///         recoveryServicesVault:
///           id: /subscriptions/6d875e77-e412-4d7d-9af4-8895278b4443/resourceGroups/test-rg/providers/Microsoft.RecoveryServices/vaults/test-vault
///           vaultType: Existing
///       backupName: vmBackup
///       connectorName: C1
///       location: westcentralus
///       resourceGroupName: test-rg
///       tags: {}
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
/// $ pulumi import azure-native:workloads:ACSSBackupConnection db1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/connectors/{connectorName}/acssBackups/{backupName}
/// ```
class ACSSBackupConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Information about the recovery services vault and backup policy used for backup.
  late final pulumi.Output<HanaBackupDataResponse?> backupData;

  /// Defines the errors related to backup connection resource of virtual instance for SAP.
  late final pulumi.Output<ConnectorErrorDefinitionResponse> errors;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Defines the provisioning states.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ACSSBackupConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ACSSBackupConnection]. {@macro pulumi_workloads_acssbackup_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ACSSBackupConnection(
    String name, {
    ACSSBackupConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:workloads:ACSSBackupConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupData = registerOutput<HanaBackupDataResponse?>('backupData');
    errors = registerOutput<ConnectorErrorDefinitionResponse>('errors');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}

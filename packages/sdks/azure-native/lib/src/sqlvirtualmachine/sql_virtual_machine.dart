import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_settings_response.dart';
import 'auto_backup_settings_response.dart';
import 'auto_patching_settings_response.dart';
import 'key_vault_credential_settings_response.dart';
import 'resource_identity_response.dart';
import 'server_configurations_management_settings_response.dart';
import 'sql_virtual_machine_args.dart';
import 'storage_configuration_settings_response.dart';
import 'system_data_response.dart';
import 'troubleshooting_status_response.dart';
import 'virtual_machine_identity_response.dart';
import 'wsfc_domain_credentials_response.dart';

/// A SQL virtual machine.
///
/// Uses Azure REST API version 2023-10-01. In version 2.x of the Azure Native provider, it used API version 2022-02-01.
///
/// Other available API versions: 2022-02-01, 2022-07-01-preview, 2022-08-01-preview, 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sqlvirtualmachine [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a SQL virtual machine and joins it to a SQL virtual machine group.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlVirtualMachine = new AzureNative.SqlVirtualMachine.SqlVirtualMachine("sqlVirtualMachine", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineGroupResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/testvmgroup",
///         SqlVirtualMachineName = "testvm",
///         VirtualMachineResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm2",
///         WsfcDomainCredentials = new AzureNative.SqlVirtualMachine.Inputs.WsfcDomainCredentialsArgs
///         {
///             ClusterBootstrapAccountPassword = "<Password>",
///             ClusterOperatorAccountPassword = "<Password>",
///             SqlServiceAccountPassword = "<Password>",
///         },
///         WsfcStaticIp = "10.0.0.7",
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
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewSqlVirtualMachine(ctx, "sqlVirtualMachine", &sqlvirtualmachine.SqlVirtualMachineArgs{
/// 			Location:                         pulumi.String("northeurope"),
/// 			ResourceGroupName:                pulumi.String("testrg"),
/// 			SqlVirtualMachineGroupResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/testvmgroup"),
/// 			SqlVirtualMachineName:            pulumi.String("testvm"),
/// 			VirtualMachineResourceId:         pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm2"),
/// 			WsfcDomainCredentials: &sqlvirtualmachine.WsfcDomainCredentialsArgs{
/// 				ClusterBootstrapAccountPassword: pulumi.String("<Password>"),
/// 				ClusterOperatorAccountPassword:  pulumi.String("<Password>"),
/// 				SqlServiceAccountPassword:       pulumi.String("<Password>"),
/// 			},
/// 			WsfcStaticIp: pulumi.String("10.0.0.7"),
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
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachine;
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.WsfcDomainCredentialsArgs;
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
///         var sqlVirtualMachine = new SqlVirtualMachine("sqlVirtualMachine", SqlVirtualMachineArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineGroupResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/testvmgroup")
///             .sqlVirtualMachineName("testvm")
///             .virtualMachineResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm2")
///             .wsfcDomainCredentials(WsfcDomainCredentialsArgs.builder()
///                 .clusterBootstrapAccountPassword("<Password>")
///                 .clusterOperatorAccountPassword("<Password>")
///                 .sqlServiceAccountPassword("<Password>")
///                 .build())
///             .wsfcStaticIp("10.0.0.7")
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
/// const sqlVirtualMachine = new azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlVirtualMachineGroupResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/testvmgroup",
///     sqlVirtualMachineName: "testvm",
///     virtualMachineResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm2",
///     wsfcDomainCredentials: {
///         clusterBootstrapAccountPassword: "<Password>",
///         clusterOperatorAccountPassword: "<Password>",
///         sqlServiceAccountPassword: "<Password>",
///     },
///     wsfcStaticIp: "10.0.0.7",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_virtual_machine = azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_virtual_machine_group_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/testvmgroup",
///     sql_virtual_machine_name="testvm",
///     virtual_machine_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm2",
///     wsfc_domain_credentials={
///         "cluster_bootstrap_account_password": "<Password>",
///         "cluster_operator_account_password": "<Password>",
///         "sql_service_account_password": "<Password>",
///     },
///     wsfc_static_ip="10.0.0.7")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlVirtualMachine:
///     type: azure-native:sqlvirtualmachine:SqlVirtualMachine
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlVirtualMachineGroupResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachineGroups/testvmgroup
///       sqlVirtualMachineName: testvm
///       virtualMachineResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm2
///       wsfcDomainCredentials:
///         clusterBootstrapAccountPassword: <Password>
///         clusterOperatorAccountPassword: <Password>
///         sqlServiceAccountPassword: <Password>
///       wsfcStaticIp: 10.0.0.7
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a SQL virtual machine for Automated Back up Settings with Weekly and Days of the week to run the back up.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlVirtualMachine = new AzureNative.SqlVirtualMachine.SqlVirtualMachine("sqlVirtualMachine", new()
///     {
///         AutoBackupSettings = new AzureNative.SqlVirtualMachine.Inputs.AutoBackupSettingsArgs
///         {
///             BackupScheduleType = AzureNative.SqlVirtualMachine.BackupScheduleType.Manual,
///             BackupSystemDbs = true,
///             DaysOfWeek = new[]
///             {
///                 AzureNative.SqlVirtualMachine.AutoBackupDaysOfWeek.Monday,
///                 AzureNative.SqlVirtualMachine.AutoBackupDaysOfWeek.Friday,
///             },
///             Enable = true,
///             EnableEncryption = true,
///             FullBackupFrequency = AzureNative.SqlVirtualMachine.FullBackupFrequencyType.Weekly,
///             FullBackupStartTime = 6,
///             FullBackupWindowHours = 11,
///             LogBackupFrequency = 10,
///             Password = "<Password>",
///             RetentionPeriod = 17,
///             StorageAccessKey = "<primary storage access key>",
///             StorageAccountUrl = "https://teststorage.blob.core.windows.net/",
///             StorageContainerName = "testcontainer",
///         },
///         AutoPatchingSettings = new AzureNative.SqlVirtualMachine.Inputs.AutoPatchingSettingsArgs
///         {
///             DayOfWeek = AzureNative.SqlVirtualMachine.DayOfWeek.Sunday,
///             Enable = true,
///             MaintenanceWindowDuration = 60,
///             MaintenanceWindowStartingHour = 2,
///         },
///         KeyVaultCredentialSettings = new AzureNative.SqlVirtualMachine.Inputs.KeyVaultCredentialSettingsArgs
///         {
///             Enable = false,
///         },
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         ServerConfigurationsManagementSettings = new AzureNative.SqlVirtualMachine.Inputs.ServerConfigurationsManagementSettingsArgs
///         {
///             AdditionalFeaturesServerConfigurations = new AzureNative.SqlVirtualMachine.Inputs.AdditionalFeaturesServerConfigurationsArgs
///             {
///                 IsRServicesEnabled = false,
///             },
///             SqlConnectivityUpdateSettings = new AzureNative.SqlVirtualMachine.Inputs.SqlConnectivityUpdateSettingsArgs
///             {
///                 ConnectivityType = AzureNative.SqlVirtualMachine.ConnectivityType.PRIVATE,
///                 Port = 1433,
///                 SqlAuthUpdatePassword = "<password>",
///                 SqlAuthUpdateUserName = "sqllogin",
///             },
///             SqlStorageUpdateSettings = new AzureNative.SqlVirtualMachine.Inputs.SqlStorageUpdateSettingsArgs
///             {
///                 DiskConfigurationType = AzureNative.SqlVirtualMachine.DiskConfigurationType.NEW,
///                 DiskCount = 1,
///                 StartingDeviceId = 2,
///             },
///             SqlWorkloadTypeUpdateSettings = new AzureNative.SqlVirtualMachine.Inputs.SqlWorkloadTypeUpdateSettingsArgs
///             {
///                 SqlWorkloadType = AzureNative.SqlVirtualMachine.SqlWorkloadType.OLTP,
///             },
///         },
///         SqlImageSku = AzureNative.SqlVirtualMachine.SqlImageSku.Enterprise,
///         SqlServerLicenseType = AzureNative.SqlVirtualMachine.SqlServerLicenseType.PAYG,
///         SqlVirtualMachineName = "testvm",
///         VirtualMachineResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
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
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewSqlVirtualMachine(ctx, "sqlVirtualMachine", &sqlvirtualmachine.SqlVirtualMachineArgs{
/// 			AutoBackupSettings: &sqlvirtualmachine.AutoBackupSettingsArgs{
/// 				BackupScheduleType: pulumi.String(sqlvirtualmachine.BackupScheduleTypeManual),
/// 				BackupSystemDbs:    pulumi.Bool(true),
/// 				DaysOfWeek: pulumi.StringArray{
/// 					pulumi.String(sqlvirtualmachine.AutoBackupDaysOfWeekMonday),
/// 					pulumi.String(sqlvirtualmachine.AutoBackupDaysOfWeekFriday),
/// 				},
/// 				Enable:                pulumi.Bool(true),
/// 				EnableEncryption:      pulumi.Bool(true),
/// 				FullBackupFrequency:   pulumi.String(sqlvirtualmachine.FullBackupFrequencyTypeWeekly),
/// 				FullBackupStartTime:   pulumi.Int(6),
/// 				FullBackupWindowHours: pulumi.Int(11),
/// 				LogBackupFrequency:    pulumi.Int(10),
/// 				Password:              pulumi.String("<Password>"),
/// 				RetentionPeriod:       pulumi.Int(17),
/// 				StorageAccessKey:      pulumi.String("<primary storage access key>"),
/// 				StorageAccountUrl:     pulumi.String("https://teststorage.blob.core.windows.net/"),
/// 				StorageContainerName:  pulumi.String("testcontainer"),
/// 			},
/// 			AutoPatchingSettings: &sqlvirtualmachine.AutoPatchingSettingsArgs{
/// 				DayOfWeek:                     sqlvirtualmachine.DayOfWeekSunday,
/// 				Enable:                        pulumi.Bool(true),
/// 				MaintenanceWindowDuration:     pulumi.Int(60),
/// 				MaintenanceWindowStartingHour: pulumi.Int(2),
/// 			},
/// 			KeyVaultCredentialSettings: &sqlvirtualmachine.KeyVaultCredentialSettingsArgs{
/// 				Enable: pulumi.Bool(false),
/// 			},
/// 			Location:          pulumi.String("northeurope"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			ServerConfigurationsManagementSettings: &sqlvirtualmachine.ServerConfigurationsManagementSettingsArgs{
/// 				AdditionalFeaturesServerConfigurations: &sqlvirtualmachine.AdditionalFeaturesServerConfigurationsArgs{
/// 					IsRServicesEnabled: pulumi.Bool(false),
/// 				},
/// 				SqlConnectivityUpdateSettings: &sqlvirtualmachine.SqlConnectivityUpdateSettingsArgs{
/// 					ConnectivityType:      pulumi.String(sqlvirtualmachine.ConnectivityTypePRIVATE),
/// 					Port:                  pulumi.Int(1433),
/// 					SqlAuthUpdatePassword: pulumi.String("<password>"),
/// 					SqlAuthUpdateUserName: pulumi.String("sqllogin"),
/// 				},
/// 				SqlStorageUpdateSettings: &sqlvirtualmachine.SqlStorageUpdateSettingsArgs{
/// 					DiskConfigurationType: pulumi.String(sqlvirtualmachine.DiskConfigurationTypeNEW),
/// 					DiskCount:             pulumi.Int(1),
/// 					StartingDeviceId:      pulumi.Int(2),
/// 				},
/// 				SqlWorkloadTypeUpdateSettings: &sqlvirtualmachine.SqlWorkloadTypeUpdateSettingsArgs{
/// 					SqlWorkloadType: pulumi.String(sqlvirtualmachine.SqlWorkloadTypeOLTP),
/// 				},
/// 			},
/// 			SqlImageSku:              pulumi.String(sqlvirtualmachine.SqlImageSkuEnterprise),
/// 			SqlServerLicenseType:     pulumi.String(sqlvirtualmachine.SqlServerLicenseTypePAYG),
/// 			SqlVirtualMachineName:    pulumi.String("testvm"),
/// 			VirtualMachineResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm"),
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
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachine;
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.AutoBackupSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.AutoPatchingSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.KeyVaultCredentialSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.ServerConfigurationsManagementSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.AdditionalFeaturesServerConfigurationsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SqlConnectivityUpdateSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SqlStorageUpdateSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SqlWorkloadTypeUpdateSettingsArgs;
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
///         var sqlVirtualMachine = new SqlVirtualMachine("sqlVirtualMachine", SqlVirtualMachineArgs.builder()
///             .autoBackupSettings(AutoBackupSettingsArgs.builder()
///                 .backupScheduleType("Manual")
///                 .backupSystemDbs(true)
///                 .daysOfWeek(
///                     "Monday",
///                     "Friday")
///                 .enable(true)
///                 .enableEncryption(true)
///                 .fullBackupFrequency("Weekly")
///                 .fullBackupStartTime(6)
///                 .fullBackupWindowHours(11)
///                 .logBackupFrequency(10)
///                 .password("<Password>")
///                 .retentionPeriod(17)
///                 .storageAccessKey("<primary storage access key>")
///                 .storageAccountUrl("https://teststorage.blob.core.windows.net/")
///                 .storageContainerName("testcontainer")
///                 .build())
///             .autoPatchingSettings(AutoPatchingSettingsArgs.builder()
///                 .dayOfWeek("Sunday")
///                 .enable(true)
///                 .maintenanceWindowDuration(60)
///                 .maintenanceWindowStartingHour(2)
///                 .build())
///             .keyVaultCredentialSettings(KeyVaultCredentialSettingsArgs.builder()
///                 .enable(false)
///                 .build())
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .serverConfigurationsManagementSettings(ServerConfigurationsManagementSettingsArgs.builder()
///                 .additionalFeaturesServerConfigurations(AdditionalFeaturesServerConfigurationsArgs.builder()
///                     .isRServicesEnabled(false)
///                     .build())
///                 .sqlConnectivityUpdateSettings(SqlConnectivityUpdateSettingsArgs.builder()
///                     .connectivityType("PRIVATE")
///                     .port(1433)
///                     .sqlAuthUpdatePassword("<password>")
///                     .sqlAuthUpdateUserName("sqllogin")
///                     .build())
///                 .sqlStorageUpdateSettings(SqlStorageUpdateSettingsArgs.builder()
///                     .diskConfigurationType("NEW")
///                     .diskCount(1)
///                     .startingDeviceId(2)
///                     .build())
///                 .sqlWorkloadTypeUpdateSettings(SqlWorkloadTypeUpdateSettingsArgs.builder()
///                     .sqlWorkloadType("OLTP")
///                     .build())
///                 .build())
///             .sqlImageSku("Enterprise")
///             .sqlServerLicenseType("PAYG")
///             .sqlVirtualMachineName("testvm")
///             .virtualMachineResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
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
/// const sqlVirtualMachine = new azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine", {
///     autoBackupSettings: {
///         backupScheduleType: azure_native.sqlvirtualmachine.BackupScheduleType.Manual,
///         backupSystemDbs: true,
///         daysOfWeek: [
///             azure_native.sqlvirtualmachine.AutoBackupDaysOfWeek.Monday,
///             azure_native.sqlvirtualmachine.AutoBackupDaysOfWeek.Friday,
///         ],
///         enable: true,
///         enableEncryption: true,
///         fullBackupFrequency: azure_native.sqlvirtualmachine.FullBackupFrequencyType.Weekly,
///         fullBackupStartTime: 6,
///         fullBackupWindowHours: 11,
///         logBackupFrequency: 10,
///         password: "<Password>",
///         retentionPeriod: 17,
///         storageAccessKey: "<primary storage access key>",
///         storageAccountUrl: "https://teststorage.blob.core.windows.net/",
///         storageContainerName: "testcontainer",
///     },
///     autoPatchingSettings: {
///         dayOfWeek: azure_native.sqlvirtualmachine.DayOfWeek.Sunday,
///         enable: true,
///         maintenanceWindowDuration: 60,
///         maintenanceWindowStartingHour: 2,
///     },
///     keyVaultCredentialSettings: {
///         enable: false,
///     },
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     serverConfigurationsManagementSettings: {
///         additionalFeaturesServerConfigurations: {
///             isRServicesEnabled: false,
///         },
///         sqlConnectivityUpdateSettings: {
///             connectivityType: azure_native.sqlvirtualmachine.ConnectivityType.PRIVATE,
///             port: 1433,
///             sqlAuthUpdatePassword: "<password>",
///             sqlAuthUpdateUserName: "sqllogin",
///         },
///         sqlStorageUpdateSettings: {
///             diskConfigurationType: azure_native.sqlvirtualmachine.DiskConfigurationType.NEW,
///             diskCount: 1,
///             startingDeviceId: 2,
///         },
///         sqlWorkloadTypeUpdateSettings: {
///             sqlWorkloadType: azure_native.sqlvirtualmachine.SqlWorkloadType.OLTP,
///         },
///     },
///     sqlImageSku: azure_native.sqlvirtualmachine.SqlImageSku.Enterprise,
///     sqlServerLicenseType: azure_native.sqlvirtualmachine.SqlServerLicenseType.PAYG,
///     sqlVirtualMachineName: "testvm",
///     virtualMachineResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_virtual_machine = azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine",
///     auto_backup_settings={
///         "backup_schedule_type": azure_native.sqlvirtualmachine.BackupScheduleType.MANUAL,
///         "backup_system_dbs": True,
///         "days_of_week": [
///             azure_native.sqlvirtualmachine.AutoBackupDaysOfWeek.MONDAY,
///             azure_native.sqlvirtualmachine.AutoBackupDaysOfWeek.FRIDAY,
///         ],
///         "enable": True,
///         "enable_encryption": True,
///         "full_backup_frequency": azure_native.sqlvirtualmachine.FullBackupFrequencyType.WEEKLY,
///         "full_backup_start_time": 6,
///         "full_backup_window_hours": 11,
///         "log_backup_frequency": 10,
///         "password": "<Password>",
///         "retention_period": 17,
///         "storage_access_key": "<primary storage access key>",
///         "storage_account_url": "https://teststorage.blob.core.windows.net/",
///         "storage_container_name": "testcontainer",
///     },
///     auto_patching_settings={
///         "day_of_week": azure_native.sqlvirtualmachine.DayOfWeek.SUNDAY,
///         "enable": True,
///         "maintenance_window_duration": 60,
///         "maintenance_window_starting_hour": 2,
///     },
///     key_vault_credential_settings={
///         "enable": False,
///     },
///     location="northeurope",
///     resource_group_name="testrg",
///     server_configurations_management_settings={
///         "additional_features_server_configurations": {
///             "is_r_services_enabled": False,
///         },
///         "sql_connectivity_update_settings": {
///             "connectivity_type": azure_native.sqlvirtualmachine.ConnectivityType.PRIVATE,
///             "port": 1433,
///             "sql_auth_update_password": "<password>",
///             "sql_auth_update_user_name": "sqllogin",
///         },
///         "sql_storage_update_settings": {
///             "disk_configuration_type": azure_native.sqlvirtualmachine.DiskConfigurationType.NEW,
///             "disk_count": 1,
///             "starting_device_id": 2,
///         },
///         "sql_workload_type_update_settings": {
///             "sql_workload_type": azure_native.sqlvirtualmachine.SqlWorkloadType.OLTP,
///         },
///     },
///     sql_image_sku=azure_native.sqlvirtualmachine.SqlImageSku.ENTERPRISE,
///     sql_server_license_type=azure_native.sqlvirtualmachine.SqlServerLicenseType.PAYG,
///     sql_virtual_machine_name="testvm",
///     virtual_machine_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlVirtualMachine:
///     type: azure-native:sqlvirtualmachine:SqlVirtualMachine
///     properties:
///       autoBackupSettings:
///         backupScheduleType: Manual
///         backupSystemDbs: true
///         daysOfWeek:
///           - Monday
///           - Friday
///         enable: true
///         enableEncryption: true
///         fullBackupFrequency: Weekly
///         fullBackupStartTime: 6
///         fullBackupWindowHours: 11
///         logBackupFrequency: 10
///         password: <Password>
///         retentionPeriod: 17
///         storageAccessKey: <primary storage access key>
///         storageAccountUrl: https://teststorage.blob.core.windows.net/
///         storageContainerName: testcontainer
///       autoPatchingSettings:
///         dayOfWeek: Sunday
///         enable: true
///         maintenanceWindowDuration: 60
///         maintenanceWindowStartingHour: 2
///       keyVaultCredentialSettings:
///         enable: false
///       location: northeurope
///       resourceGroupName: testrg
///       serverConfigurationsManagementSettings:
///         additionalFeaturesServerConfigurations:
///           isRServicesEnabled: false
///         sqlConnectivityUpdateSettings:
///           connectivityType: PRIVATE
///           port: 1433
///           sqlAuthUpdatePassword: <password>
///           sqlAuthUpdateUserName: sqllogin
///         sqlStorageUpdateSettings:
///           diskConfigurationType: NEW
///           diskCount: 1
///           startingDeviceId: 2
///         sqlWorkloadTypeUpdateSettings:
///           sqlWorkloadType: OLTP
///       sqlImageSku: Enterprise
///       sqlServerLicenseType: PAYG
///       sqlVirtualMachineName: testvm
///       virtualMachineResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a SQL virtual machine for Storage Configuration Settings to EXTEND Data, Log or TempDB storage pool.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlVirtualMachine = new AzureNative.SqlVirtualMachine.SqlVirtualMachine("sqlVirtualMachine", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineName = "testvm",
///         StorageConfigurationSettings = new AzureNative.SqlVirtualMachine.Inputs.StorageConfigurationSettingsArgs
///         {
///             DiskConfigurationType = AzureNative.SqlVirtualMachine.DiskConfigurationType.EXTEND,
///             SqlDataSettings = new AzureNative.SqlVirtualMachine.Inputs.SQLStorageSettingsArgs
///             {
///                 Luns = new[]
///                 {
///                     2,
///                 },
///             },
///         },
///         VirtualMachineResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
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
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewSqlVirtualMachine(ctx, "sqlVirtualMachine", &sqlvirtualmachine.SqlVirtualMachineArgs{
/// 			Location:              pulumi.String("northeurope"),
/// 			ResourceGroupName:     pulumi.String("testrg"),
/// 			SqlVirtualMachineName: pulumi.String("testvm"),
/// 			StorageConfigurationSettings: &sqlvirtualmachine.StorageConfigurationSettingsArgs{
/// 				DiskConfigurationType: pulumi.String(sqlvirtualmachine.DiskConfigurationTypeEXTEND),
/// 				SqlDataSettings: &sqlvirtualmachine.SQLStorageSettingsArgs{
/// 					Luns: pulumi.IntArray{
/// 						pulumi.Int(2),
/// 					},
/// 				},
/// 			},
/// 			VirtualMachineResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm"),
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
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachine;
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.StorageConfigurationSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SQLStorageSettingsArgs;
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
///         var sqlVirtualMachine = new SqlVirtualMachine("sqlVirtualMachine", SqlVirtualMachineArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineName("testvm")
///             .storageConfigurationSettings(StorageConfigurationSettingsArgs.builder()
///                 .diskConfigurationType("EXTEND")
///                 .sqlDataSettings(SQLStorageSettingsArgs.builder()
///                     .luns(2)
///                     .build())
///                 .build())
///             .virtualMachineResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
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
/// const sqlVirtualMachine = new azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlVirtualMachineName: "testvm",
///     storageConfigurationSettings: {
///         diskConfigurationType: azure_native.sqlvirtualmachine.DiskConfigurationType.EXTEND,
///         sqlDataSettings: {
///             luns: [2],
///         },
///     },
///     virtualMachineResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_virtual_machine = azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_virtual_machine_name="testvm",
///     storage_configuration_settings={
///         "disk_configuration_type": azure_native.sqlvirtualmachine.DiskConfigurationType.EXTEND,
///         "sql_data_settings": {
///             "luns": [2],
///         },
///     },
///     virtual_machine_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlVirtualMachine:
///     type: azure-native:sqlvirtualmachine:SqlVirtualMachine
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlVirtualMachineName: testvm
///       storageConfigurationSettings:
///         diskConfigurationType: EXTEND
///         sqlDataSettings:
///           luns:
///             - 2
///       virtualMachineResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a SQL virtual machine for Storage Configuration Settings to NEW Data, Log and TempDB storage pool.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlVirtualMachine = new AzureNative.SqlVirtualMachine.SqlVirtualMachine("sqlVirtualMachine", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineName = "testvm",
///         StorageConfigurationSettings = new AzureNative.SqlVirtualMachine.Inputs.StorageConfigurationSettingsArgs
///         {
///             DiskConfigurationType = AzureNative.SqlVirtualMachine.DiskConfigurationType.NEW,
///             SqlDataSettings = new AzureNative.SqlVirtualMachine.Inputs.SQLStorageSettingsArgs
///             {
///                 DefaultFilePath = "F:\\folderpath\\",
///                 Luns = new[]
///                 {
///                     0,
///                 },
///             },
///             SqlLogSettings = new AzureNative.SqlVirtualMachine.Inputs.SQLStorageSettingsArgs
///             {
///                 DefaultFilePath = "G:\\folderpath\\",
///                 Luns = new[]
///                 {
///                     1,
///                 },
///             },
///             SqlSystemDbOnDataDisk = true,
///             SqlTempDbSettings = new AzureNative.SqlVirtualMachine.Inputs.SQLTempDbSettingsArgs
///             {
///                 DataFileCount = 8,
///                 DataFileSize = 256,
///                 DataGrowth = 512,
///                 DefaultFilePath = "D:\\TEMP",
///                 LogFileSize = 256,
///                 LogGrowth = 512,
///             },
///             StorageWorkloadType = AzureNative.SqlVirtualMachine.StorageWorkloadType.OLTP,
///         },
///         VirtualMachineResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
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
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewSqlVirtualMachine(ctx, "sqlVirtualMachine", &sqlvirtualmachine.SqlVirtualMachineArgs{
/// 			Location:              pulumi.String("northeurope"),
/// 			ResourceGroupName:     pulumi.String("testrg"),
/// 			SqlVirtualMachineName: pulumi.String("testvm"),
/// 			StorageConfigurationSettings: &sqlvirtualmachine.StorageConfigurationSettingsArgs{
/// 				DiskConfigurationType: pulumi.String(sqlvirtualmachine.DiskConfigurationTypeNEW),
/// 				SqlDataSettings: &sqlvirtualmachine.SQLStorageSettingsArgs{
/// 					DefaultFilePath: pulumi.String("F:\\folderpath\\"),
/// 					Luns: pulumi.IntArray{
/// 						pulumi.Int(0),
/// 					},
/// 				},
/// 				SqlLogSettings: &sqlvirtualmachine.SQLStorageSettingsArgs{
/// 					DefaultFilePath: pulumi.String("G:\\folderpath\\"),
/// 					Luns: pulumi.IntArray{
/// 						pulumi.Int(1),
/// 					},
/// 				},
/// 				SqlSystemDbOnDataDisk: pulumi.Bool(true),
/// 				SqlTempDbSettings: &sqlvirtualmachine.SQLTempDbSettingsArgs{
/// 					DataFileCount:   pulumi.Int(8),
/// 					DataFileSize:    pulumi.Int(256),
/// 					DataGrowth:      pulumi.Int(512),
/// 					DefaultFilePath: pulumi.String("D:\\TEMP"),
/// 					LogFileSize:     pulumi.Int(256),
/// 					LogGrowth:       pulumi.Int(512),
/// 				},
/// 				StorageWorkloadType: pulumi.String(sqlvirtualmachine.StorageWorkloadTypeOLTP),
/// 			},
/// 			VirtualMachineResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm"),
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
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachine;
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.StorageConfigurationSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SQLStorageSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SQLTempDbSettingsArgs;
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
///         var sqlVirtualMachine = new SqlVirtualMachine("sqlVirtualMachine", SqlVirtualMachineArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineName("testvm")
///             .storageConfigurationSettings(StorageConfigurationSettingsArgs.builder()
///                 .diskConfigurationType("NEW")
///                 .sqlDataSettings(SQLStorageSettingsArgs.builder()
///                     .defaultFilePath("F:\\folderpath\\")
///                     .luns(0)
///                     .build())
///                 .sqlLogSettings(SQLStorageSettingsArgs.builder()
///                     .defaultFilePath("G:\\folderpath\\")
///                     .luns(1)
///                     .build())
///                 .sqlSystemDbOnDataDisk(true)
///                 .sqlTempDbSettings(SQLTempDbSettingsArgs.builder()
///                     .dataFileCount(8)
///                     .dataFileSize(256)
///                     .dataGrowth(512)
///                     .defaultFilePath("D:\\TEMP")
///                     .logFileSize(256)
///                     .logGrowth(512)
///                     .build())
///                 .storageWorkloadType("OLTP")
///                 .build())
///             .virtualMachineResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
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
/// const sqlVirtualMachine = new azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlVirtualMachineName: "testvm",
///     storageConfigurationSettings: {
///         diskConfigurationType: azure_native.sqlvirtualmachine.DiskConfigurationType.NEW,
///         sqlDataSettings: {
///             defaultFilePath: "F:\\folderpath\\",
///             luns: [0],
///         },
///         sqlLogSettings: {
///             defaultFilePath: "G:\\folderpath\\",
///             luns: [1],
///         },
///         sqlSystemDbOnDataDisk: true,
///         sqlTempDbSettings: {
///             dataFileCount: 8,
///             dataFileSize: 256,
///             dataGrowth: 512,
///             defaultFilePath: "D:\\TEMP",
///             logFileSize: 256,
///             logGrowth: 512,
///         },
///         storageWorkloadType: azure_native.sqlvirtualmachine.StorageWorkloadType.OLTP,
///     },
///     virtualMachineResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_virtual_machine = azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_virtual_machine_name="testvm",
///     storage_configuration_settings={
///         "disk_configuration_type": azure_native.sqlvirtualmachine.DiskConfigurationType.NEW,
///         "sql_data_settings": {
///             "default_file_path": "F:\\folderpath\\",
///             "luns": [0],
///         },
///         "sql_log_settings": {
///             "default_file_path": "G:\\folderpath\\",
///             "luns": [1],
///         },
///         "sql_system_db_on_data_disk": True,
///         "sql_temp_db_settings": {
///             "data_file_count": 8,
///             "data_file_size": 256,
///             "data_growth": 512,
///             "default_file_path": "D:\\TEMP",
///             "log_file_size": 256,
///             "log_growth": 512,
///         },
///         "storage_workload_type": azure_native.sqlvirtualmachine.StorageWorkloadType.OLTP,
///     },
///     virtual_machine_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlVirtualMachine:
///     type: azure-native:sqlvirtualmachine:SqlVirtualMachine
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlVirtualMachineName: testvm
///       storageConfigurationSettings:
///         diskConfigurationType: NEW
///         sqlDataSettings:
///           defaultFilePath: F:\folderpath\
///           luns:
///             - 0
///         sqlLogSettings:
///           defaultFilePath: G:\folderpath\
///           luns:
///             - 1
///         sqlSystemDbOnDataDisk: true
///         sqlTempDbSettings:
///           dataFileCount: 8
///           dataFileSize: 256
///           dataGrowth: 512
///           defaultFilePath: D:\TEMP
///           logFileSize: 256
///           logGrowth: 512
///         storageWorkloadType: OLTP
///       virtualMachineResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a SQL virtual machine to enable the usage of Virtual Machine managed identity.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlVirtualMachine = new AzureNative.SqlVirtualMachine.SqlVirtualMachine("sqlVirtualMachine", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineName = "testvm",
///         VirtualMachineIdentitySettings = new AzureNative.SqlVirtualMachine.Inputs.VirtualMachineIdentityArgs
///         {
///             ResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourcegroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testvmidentity",
///             Type = AzureNative.SqlVirtualMachine.VmIdentityType.UserAssigned,
///         },
///         VirtualMachineResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
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
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewSqlVirtualMachine(ctx, "sqlVirtualMachine", &sqlvirtualmachine.SqlVirtualMachineArgs{
/// 			Location:              pulumi.String("northeurope"),
/// 			ResourceGroupName:     pulumi.String("testrg"),
/// 			SqlVirtualMachineName: pulumi.String("testvm"),
/// 			VirtualMachineIdentitySettings: &sqlvirtualmachine.VirtualMachineIdentityArgs{
/// 				ResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourcegroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testvmidentity"),
/// 				Type:       pulumi.String(sqlvirtualmachine.VmIdentityTypeUserAssigned),
/// 			},
/// 			VirtualMachineResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm"),
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
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachine;
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.VirtualMachineIdentityArgs;
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
///         var sqlVirtualMachine = new SqlVirtualMachine("sqlVirtualMachine", SqlVirtualMachineArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineName("testvm")
///             .virtualMachineIdentitySettings(VirtualMachineIdentityArgs.builder()
///                 .resourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourcegroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testvmidentity")
///                 .type("UserAssigned")
///                 .build())
///             .virtualMachineResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
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
/// const sqlVirtualMachine = new azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlVirtualMachineName: "testvm",
///     virtualMachineIdentitySettings: {
///         resourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourcegroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testvmidentity",
///         type: azure_native.sqlvirtualmachine.VmIdentityType.UserAssigned,
///     },
///     virtualMachineResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_virtual_machine = azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_virtual_machine_name="testvm",
///     virtual_machine_identity_settings={
///         "resource_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourcegroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testvmidentity",
///         "type": azure_native.sqlvirtualmachine.VmIdentityType.USER_ASSIGNED,
///     },
///     virtual_machine_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlVirtualMachine:
///     type: azure-native:sqlvirtualmachine:SqlVirtualMachine
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlVirtualMachineName: testvm
///       virtualMachineIdentitySettings:
///         resourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourcegroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testvmidentity
///         type: UserAssigned
///       virtualMachineResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a SQL virtual machine with max parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlVirtualMachine = new AzureNative.SqlVirtualMachine.SqlVirtualMachine("sqlVirtualMachine", new()
///     {
///         AssessmentSettings = new AzureNative.SqlVirtualMachine.Inputs.AssessmentSettingsArgs
///         {
///             Enable = true,
///             RunImmediately = true,
///             Schedule = new AzureNative.SqlVirtualMachine.Inputs.ScheduleArgs
///             {
///                 DayOfWeek = AzureNative.SqlVirtualMachine.AssessmentDayOfWeek.Sunday,
///                 Enable = true,
///                 StartTime = "23:17",
///                 WeeklyInterval = 1,
///             },
///         },
///         AutoBackupSettings = new AzureNative.SqlVirtualMachine.Inputs.AutoBackupSettingsArgs
///         {
///             BackupScheduleType = AzureNative.SqlVirtualMachine.BackupScheduleType.Manual,
///             BackupSystemDbs = true,
///             Enable = true,
///             EnableEncryption = true,
///             FullBackupFrequency = AzureNative.SqlVirtualMachine.FullBackupFrequencyType.Daily,
///             FullBackupStartTime = 6,
///             FullBackupWindowHours = 11,
///             LogBackupFrequency = 10,
///             Password = "<Password>",
///             RetentionPeriod = 17,
///             StorageAccessKey = "<primary storage access key>",
///             StorageAccountUrl = "https://teststorage.blob.core.windows.net/",
///             StorageContainerName = "testcontainer",
///         },
///         AutoPatchingSettings = new AzureNative.SqlVirtualMachine.Inputs.AutoPatchingSettingsArgs
///         {
///             DayOfWeek = AzureNative.SqlVirtualMachine.DayOfWeek.Sunday,
///             Enable = true,
///             MaintenanceWindowDuration = 60,
///             MaintenanceWindowStartingHour = 2,
///         },
///         EnableAutomaticUpgrade = true,
///         KeyVaultCredentialSettings = new AzureNative.SqlVirtualMachine.Inputs.KeyVaultCredentialSettingsArgs
///         {
///             Enable = false,
///         },
///         LeastPrivilegeMode = AzureNative.SqlVirtualMachine.LeastPrivilegeMode.Enabled,
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         ServerConfigurationsManagementSettings = new AzureNative.SqlVirtualMachine.Inputs.ServerConfigurationsManagementSettingsArgs
///         {
///             AdditionalFeaturesServerConfigurations = new AzureNative.SqlVirtualMachine.Inputs.AdditionalFeaturesServerConfigurationsArgs
///             {
///                 IsRServicesEnabled = false,
///             },
///             AzureAdAuthenticationSettings = new AzureNative.SqlVirtualMachine.Inputs.AADAuthenticationSettingsArgs
///             {
///                 ClientId = "11111111-2222-3333-4444-555555555555",
///             },
///             SqlConnectivityUpdateSettings = new AzureNative.SqlVirtualMachine.Inputs.SqlConnectivityUpdateSettingsArgs
///             {
///                 ConnectivityType = AzureNative.SqlVirtualMachine.ConnectivityType.PRIVATE,
///                 Port = 1433,
///                 SqlAuthUpdatePassword = "<password>",
///                 SqlAuthUpdateUserName = "sqllogin",
///             },
///             SqlInstanceSettings = new AzureNative.SqlVirtualMachine.Inputs.SQLInstanceSettingsArgs
///             {
///                 Collation = "SQL_Latin1_General_CP1_CI_AS",
///                 IsIfiEnabled = true,
///                 IsLpimEnabled = true,
///                 IsOptimizeForAdHocWorkloadsEnabled = true,
///                 MaxDop = 8,
///                 MaxServerMemoryMB = 128,
///                 MinServerMemoryMB = 0,
///             },
///             SqlStorageUpdateSettings = new AzureNative.SqlVirtualMachine.Inputs.SqlStorageUpdateSettingsArgs
///             {
///                 DiskConfigurationType = AzureNative.SqlVirtualMachine.DiskConfigurationType.NEW,
///                 DiskCount = 1,
///                 StartingDeviceId = 2,
///             },
///             SqlWorkloadTypeUpdateSettings = new AzureNative.SqlVirtualMachine.Inputs.SqlWorkloadTypeUpdateSettingsArgs
///             {
///                 SqlWorkloadType = AzureNative.SqlVirtualMachine.SqlWorkloadType.OLTP,
///             },
///         },
///         SqlImageSku = AzureNative.SqlVirtualMachine.SqlImageSku.Enterprise,
///         SqlServerLicenseType = AzureNative.SqlVirtualMachine.SqlServerLicenseType.PAYG,
///         SqlVirtualMachineName = "testvm",
///         StorageConfigurationSettings = new AzureNative.SqlVirtualMachine.Inputs.StorageConfigurationSettingsArgs
///         {
///             DiskConfigurationType = AzureNative.SqlVirtualMachine.DiskConfigurationType.NEW,
///             EnableStorageConfigBlade = true,
///             SqlDataSettings = new AzureNative.SqlVirtualMachine.Inputs.SQLStorageSettingsArgs
///             {
///                 DefaultFilePath = "F:\\folderpath\\",
///                 Luns = new[]
///                 {
///                     0,
///                 },
///                 UseStoragePool = false,
///             },
///             SqlLogSettings = new AzureNative.SqlVirtualMachine.Inputs.SQLStorageSettingsArgs
///             {
///                 DefaultFilePath = "G:\\folderpath\\",
///                 Luns = new[]
///                 {
///                     1,
///                 },
///                 UseStoragePool = false,
///             },
///             SqlSystemDbOnDataDisk = true,
///             SqlTempDbSettings = new AzureNative.SqlVirtualMachine.Inputs.SQLTempDbSettingsArgs
///             {
///                 DataFileCount = 8,
///                 DataFileSize = 256,
///                 DataGrowth = 512,
///                 DefaultFilePath = "D:\\TEMP",
///                 LogFileSize = 256,
///                 LogGrowth = 512,
///                 Luns = new[]
///                 {
///                     2,
///                 },
///                 UseStoragePool = false,
///             },
///             StorageWorkloadType = AzureNative.SqlVirtualMachine.StorageWorkloadType.OLTP,
///         },
///         VirtualMachineResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
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
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewSqlVirtualMachine(ctx, "sqlVirtualMachine", &sqlvirtualmachine.SqlVirtualMachineArgs{
/// 			AssessmentSettings: &sqlvirtualmachine.AssessmentSettingsArgs{
/// 				Enable:         pulumi.Bool(true),
/// 				RunImmediately: pulumi.Bool(true),
/// 				Schedule: &sqlvirtualmachine.ScheduleArgs{
/// 					DayOfWeek:      sqlvirtualmachine.AssessmentDayOfWeekSunday,
/// 					Enable:         pulumi.Bool(true),
/// 					StartTime:      pulumi.String("23:17"),
/// 					WeeklyInterval: pulumi.Int(1),
/// 				},
/// 			},
/// 			AutoBackupSettings: &sqlvirtualmachine.AutoBackupSettingsArgs{
/// 				BackupScheduleType:    pulumi.String(sqlvirtualmachine.BackupScheduleTypeManual),
/// 				BackupSystemDbs:       pulumi.Bool(true),
/// 				Enable:                pulumi.Bool(true),
/// 				EnableEncryption:      pulumi.Bool(true),
/// 				FullBackupFrequency:   pulumi.String(sqlvirtualmachine.FullBackupFrequencyTypeDaily),
/// 				FullBackupStartTime:   pulumi.Int(6),
/// 				FullBackupWindowHours: pulumi.Int(11),
/// 				LogBackupFrequency:    pulumi.Int(10),
/// 				Password:              pulumi.String("<Password>"),
/// 				RetentionPeriod:       pulumi.Int(17),
/// 				StorageAccessKey:      pulumi.String("<primary storage access key>"),
/// 				StorageAccountUrl:     pulumi.String("https://teststorage.blob.core.windows.net/"),
/// 				StorageContainerName:  pulumi.String("testcontainer"),
/// 			},
/// 			AutoPatchingSettings: &sqlvirtualmachine.AutoPatchingSettingsArgs{
/// 				DayOfWeek:                     sqlvirtualmachine.DayOfWeekSunday,
/// 				Enable:                        pulumi.Bool(true),
/// 				MaintenanceWindowDuration:     pulumi.Int(60),
/// 				MaintenanceWindowStartingHour: pulumi.Int(2),
/// 			},
/// 			EnableAutomaticUpgrade: pulumi.Bool(true),
/// 			KeyVaultCredentialSettings: &sqlvirtualmachine.KeyVaultCredentialSettingsArgs{
/// 				Enable: pulumi.Bool(false),
/// 			},
/// 			LeastPrivilegeMode: pulumi.String(sqlvirtualmachine.LeastPrivilegeModeEnabled),
/// 			Location:           pulumi.String("northeurope"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			ServerConfigurationsManagementSettings: &sqlvirtualmachine.ServerConfigurationsManagementSettingsArgs{
/// 				AdditionalFeaturesServerConfigurations: &sqlvirtualmachine.AdditionalFeaturesServerConfigurationsArgs{
/// 					IsRServicesEnabled: pulumi.Bool(false),
/// 				},
/// 				AzureAdAuthenticationSettings: &sqlvirtualmachine.AADAuthenticationSettingsArgs{
/// 					ClientId: pulumi.String("11111111-2222-3333-4444-555555555555"),
/// 				},
/// 				SqlConnectivityUpdateSettings: &sqlvirtualmachine.SqlConnectivityUpdateSettingsArgs{
/// 					ConnectivityType:      pulumi.String(sqlvirtualmachine.ConnectivityTypePRIVATE),
/// 					Port:                  pulumi.Int(1433),
/// 					SqlAuthUpdatePassword: pulumi.String("<password>"),
/// 					SqlAuthUpdateUserName: pulumi.String("sqllogin"),
/// 				},
/// 				SqlInstanceSettings: &sqlvirtualmachine.SQLInstanceSettingsArgs{
/// 					Collation:                          pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 					IsIfiEnabled:                       pulumi.Bool(true),
/// 					IsLpimEnabled:                      pulumi.Bool(true),
/// 					IsOptimizeForAdHocWorkloadsEnabled: pulumi.Bool(true),
/// 					MaxDop:                             pulumi.Int(8),
/// 					MaxServerMemoryMB:                  pulumi.Int(128),
/// 					MinServerMemoryMB:                  pulumi.Int(0),
/// 				},
/// 				SqlStorageUpdateSettings: &sqlvirtualmachine.SqlStorageUpdateSettingsArgs{
/// 					DiskConfigurationType: pulumi.String(sqlvirtualmachine.DiskConfigurationTypeNEW),
/// 					DiskCount:             pulumi.Int(1),
/// 					StartingDeviceId:      pulumi.Int(2),
/// 				},
/// 				SqlWorkloadTypeUpdateSettings: &sqlvirtualmachine.SqlWorkloadTypeUpdateSettingsArgs{
/// 					SqlWorkloadType: pulumi.String(sqlvirtualmachine.SqlWorkloadTypeOLTP),
/// 				},
/// 			},
/// 			SqlImageSku:           pulumi.String(sqlvirtualmachine.SqlImageSkuEnterprise),
/// 			SqlServerLicenseType:  pulumi.String(sqlvirtualmachine.SqlServerLicenseTypePAYG),
/// 			SqlVirtualMachineName: pulumi.String("testvm"),
/// 			StorageConfigurationSettings: &sqlvirtualmachine.StorageConfigurationSettingsArgs{
/// 				DiskConfigurationType:    pulumi.String(sqlvirtualmachine.DiskConfigurationTypeNEW),
/// 				EnableStorageConfigBlade: pulumi.Bool(true),
/// 				SqlDataSettings: &sqlvirtualmachine.SQLStorageSettingsArgs{
/// 					DefaultFilePath: pulumi.String("F:\\folderpath\\"),
/// 					Luns: pulumi.IntArray{
/// 						pulumi.Int(0),
/// 					},
/// 					UseStoragePool: pulumi.Bool(false),
/// 				},
/// 				SqlLogSettings: &sqlvirtualmachine.SQLStorageSettingsArgs{
/// 					DefaultFilePath: pulumi.String("G:\\folderpath\\"),
/// 					Luns: pulumi.IntArray{
/// 						pulumi.Int(1),
/// 					},
/// 					UseStoragePool: pulumi.Bool(false),
/// 				},
/// 				SqlSystemDbOnDataDisk: pulumi.Bool(true),
/// 				SqlTempDbSettings: &sqlvirtualmachine.SQLTempDbSettingsArgs{
/// 					DataFileCount:   pulumi.Int(8),
/// 					DataFileSize:    pulumi.Int(256),
/// 					DataGrowth:      pulumi.Int(512),
/// 					DefaultFilePath: pulumi.String("D:\\TEMP"),
/// 					LogFileSize:     pulumi.Int(256),
/// 					LogGrowth:       pulumi.Int(512),
/// 					Luns: pulumi.IntArray{
/// 						pulumi.Int(2),
/// 					},
/// 					UseStoragePool: pulumi.Bool(false),
/// 				},
/// 				StorageWorkloadType: pulumi.String(sqlvirtualmachine.StorageWorkloadTypeOLTP),
/// 			},
/// 			VirtualMachineResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm"),
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
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachine;
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.AssessmentSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.ScheduleArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.AutoBackupSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.AutoPatchingSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.KeyVaultCredentialSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.ServerConfigurationsManagementSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.AdditionalFeaturesServerConfigurationsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.AADAuthenticationSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SqlConnectivityUpdateSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SQLInstanceSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SqlStorageUpdateSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SqlWorkloadTypeUpdateSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.StorageConfigurationSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SQLStorageSettingsArgs;
/// import com.pulumi.azurenative.sqlvirtualmachine.inputs.SQLTempDbSettingsArgs;
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
///         var sqlVirtualMachine = new SqlVirtualMachine("sqlVirtualMachine", SqlVirtualMachineArgs.builder()
///             .assessmentSettings(AssessmentSettingsArgs.builder()
///                 .enable(true)
///                 .runImmediately(true)
///                 .schedule(ScheduleArgs.builder()
///                     .dayOfWeek("Sunday")
///                     .enable(true)
///                     .startTime("23:17")
///                     .weeklyInterval(1)
///                     .build())
///                 .build())
///             .autoBackupSettings(AutoBackupSettingsArgs.builder()
///                 .backupScheduleType("Manual")
///                 .backupSystemDbs(true)
///                 .enable(true)
///                 .enableEncryption(true)
///                 .fullBackupFrequency("Daily")
///                 .fullBackupStartTime(6)
///                 .fullBackupWindowHours(11)
///                 .logBackupFrequency(10)
///                 .password("<Password>")
///                 .retentionPeriod(17)
///                 .storageAccessKey("<primary storage access key>")
///                 .storageAccountUrl("https://teststorage.blob.core.windows.net/")
///                 .storageContainerName("testcontainer")
///                 .build())
///             .autoPatchingSettings(AutoPatchingSettingsArgs.builder()
///                 .dayOfWeek("Sunday")
///                 .enable(true)
///                 .maintenanceWindowDuration(60)
///                 .maintenanceWindowStartingHour(2)
///                 .build())
///             .enableAutomaticUpgrade(true)
///             .keyVaultCredentialSettings(KeyVaultCredentialSettingsArgs.builder()
///                 .enable(false)
///                 .build())
///             .leastPrivilegeMode("Enabled")
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .serverConfigurationsManagementSettings(ServerConfigurationsManagementSettingsArgs.builder()
///                 .additionalFeaturesServerConfigurations(AdditionalFeaturesServerConfigurationsArgs.builder()
///                     .isRServicesEnabled(false)
///                     .build())
///                 .azureAdAuthenticationSettings(AADAuthenticationSettingsArgs.builder()
///                     .clientId("11111111-2222-3333-4444-555555555555")
///                     .build())
///                 .sqlConnectivityUpdateSettings(SqlConnectivityUpdateSettingsArgs.builder()
///                     .connectivityType("PRIVATE")
///                     .port(1433)
///                     .sqlAuthUpdatePassword("<password>")
///                     .sqlAuthUpdateUserName("sqllogin")
///                     .build())
///                 .sqlInstanceSettings(SQLInstanceSettingsArgs.builder()
///                     .collation("SQL_Latin1_General_CP1_CI_AS")
///                     .isIfiEnabled(true)
///                     .isLpimEnabled(true)
///                     .isOptimizeForAdHocWorkloadsEnabled(true)
///                     .maxDop(8)
///                     .maxServerMemoryMB(128)
///                     .minServerMemoryMB(0)
///                     .build())
///                 .sqlStorageUpdateSettings(SqlStorageUpdateSettingsArgs.builder()
///                     .diskConfigurationType("NEW")
///                     .diskCount(1)
///                     .startingDeviceId(2)
///                     .build())
///                 .sqlWorkloadTypeUpdateSettings(SqlWorkloadTypeUpdateSettingsArgs.builder()
///                     .sqlWorkloadType("OLTP")
///                     .build())
///                 .build())
///             .sqlImageSku("Enterprise")
///             .sqlServerLicenseType("PAYG")
///             .sqlVirtualMachineName("testvm")
///             .storageConfigurationSettings(StorageConfigurationSettingsArgs.builder()
///                 .diskConfigurationType("NEW")
///                 .enableStorageConfigBlade(true)
///                 .sqlDataSettings(SQLStorageSettingsArgs.builder()
///                     .defaultFilePath("F:\\folderpath\\")
///                     .luns(0)
///                     .useStoragePool(false)
///                     .build())
///                 .sqlLogSettings(SQLStorageSettingsArgs.builder()
///                     .defaultFilePath("G:\\folderpath\\")
///                     .luns(1)
///                     .useStoragePool(false)
///                     .build())
///                 .sqlSystemDbOnDataDisk(true)
///                 .sqlTempDbSettings(SQLTempDbSettingsArgs.builder()
///                     .dataFileCount(8)
///                     .dataFileSize(256)
///                     .dataGrowth(512)
///                     .defaultFilePath("D:\\TEMP")
///                     .logFileSize(256)
///                     .logGrowth(512)
///                     .luns(2)
///                     .useStoragePool(false)
///                     .build())
///                 .storageWorkloadType("OLTP")
///                 .build())
///             .virtualMachineResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
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
/// const sqlVirtualMachine = new azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine", {
///     assessmentSettings: {
///         enable: true,
///         runImmediately: true,
///         schedule: {
///             dayOfWeek: azure_native.sqlvirtualmachine.AssessmentDayOfWeek.Sunday,
///             enable: true,
///             startTime: "23:17",
///             weeklyInterval: 1,
///         },
///     },
///     autoBackupSettings: {
///         backupScheduleType: azure_native.sqlvirtualmachine.BackupScheduleType.Manual,
///         backupSystemDbs: true,
///         enable: true,
///         enableEncryption: true,
///         fullBackupFrequency: azure_native.sqlvirtualmachine.FullBackupFrequencyType.Daily,
///         fullBackupStartTime: 6,
///         fullBackupWindowHours: 11,
///         logBackupFrequency: 10,
///         password: "<Password>",
///         retentionPeriod: 17,
///         storageAccessKey: "<primary storage access key>",
///         storageAccountUrl: "https://teststorage.blob.core.windows.net/",
///         storageContainerName: "testcontainer",
///     },
///     autoPatchingSettings: {
///         dayOfWeek: azure_native.sqlvirtualmachine.DayOfWeek.Sunday,
///         enable: true,
///         maintenanceWindowDuration: 60,
///         maintenanceWindowStartingHour: 2,
///     },
///     enableAutomaticUpgrade: true,
///     keyVaultCredentialSettings: {
///         enable: false,
///     },
///     leastPrivilegeMode: azure_native.sqlvirtualmachine.LeastPrivilegeMode.Enabled,
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     serverConfigurationsManagementSettings: {
///         additionalFeaturesServerConfigurations: {
///             isRServicesEnabled: false,
///         },
///         azureAdAuthenticationSettings: {
///             clientId: "11111111-2222-3333-4444-555555555555",
///         },
///         sqlConnectivityUpdateSettings: {
///             connectivityType: azure_native.sqlvirtualmachine.ConnectivityType.PRIVATE,
///             port: 1433,
///             sqlAuthUpdatePassword: "<password>",
///             sqlAuthUpdateUserName: "sqllogin",
///         },
///         sqlInstanceSettings: {
///             collation: "SQL_Latin1_General_CP1_CI_AS",
///             isIfiEnabled: true,
///             isLpimEnabled: true,
///             isOptimizeForAdHocWorkloadsEnabled: true,
///             maxDop: 8,
///             maxServerMemoryMB: 128,
///             minServerMemoryMB: 0,
///         },
///         sqlStorageUpdateSettings: {
///             diskConfigurationType: azure_native.sqlvirtualmachine.DiskConfigurationType.NEW,
///             diskCount: 1,
///             startingDeviceId: 2,
///         },
///         sqlWorkloadTypeUpdateSettings: {
///             sqlWorkloadType: azure_native.sqlvirtualmachine.SqlWorkloadType.OLTP,
///         },
///     },
///     sqlImageSku: azure_native.sqlvirtualmachine.SqlImageSku.Enterprise,
///     sqlServerLicenseType: azure_native.sqlvirtualmachine.SqlServerLicenseType.PAYG,
///     sqlVirtualMachineName: "testvm",
///     storageConfigurationSettings: {
///         diskConfigurationType: azure_native.sqlvirtualmachine.DiskConfigurationType.NEW,
///         enableStorageConfigBlade: true,
///         sqlDataSettings: {
///             defaultFilePath: "F:\\folderpath\\",
///             luns: [0],
///             useStoragePool: false,
///         },
///         sqlLogSettings: {
///             defaultFilePath: "G:\\folderpath\\",
///             luns: [1],
///             useStoragePool: false,
///         },
///         sqlSystemDbOnDataDisk: true,
///         sqlTempDbSettings: {
///             dataFileCount: 8,
///             dataFileSize: 256,
///             dataGrowth: 512,
///             defaultFilePath: "D:\\TEMP",
///             logFileSize: 256,
///             logGrowth: 512,
///             luns: [2],
///             useStoragePool: false,
///         },
///         storageWorkloadType: azure_native.sqlvirtualmachine.StorageWorkloadType.OLTP,
///     },
///     virtualMachineResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_virtual_machine = azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine",
///     assessment_settings={
///         "enable": True,
///         "run_immediately": True,
///         "schedule": {
///             "day_of_week": azure_native.sqlvirtualmachine.AssessmentDayOfWeek.SUNDAY,
///             "enable": True,
///             "start_time": "23:17",
///             "weekly_interval": 1,
///         },
///     },
///     auto_backup_settings={
///         "backup_schedule_type": azure_native.sqlvirtualmachine.BackupScheduleType.MANUAL,
///         "backup_system_dbs": True,
///         "enable": True,
///         "enable_encryption": True,
///         "full_backup_frequency": azure_native.sqlvirtualmachine.FullBackupFrequencyType.DAILY,
///         "full_backup_start_time": 6,
///         "full_backup_window_hours": 11,
///         "log_backup_frequency": 10,
///         "password": "<Password>",
///         "retention_period": 17,
///         "storage_access_key": "<primary storage access key>",
///         "storage_account_url": "https://teststorage.blob.core.windows.net/",
///         "storage_container_name": "testcontainer",
///     },
///     auto_patching_settings={
///         "day_of_week": azure_native.sqlvirtualmachine.DayOfWeek.SUNDAY,
///         "enable": True,
///         "maintenance_window_duration": 60,
///         "maintenance_window_starting_hour": 2,
///     },
///     enable_automatic_upgrade=True,
///     key_vault_credential_settings={
///         "enable": False,
///     },
///     least_privilege_mode=azure_native.sqlvirtualmachine.LeastPrivilegeMode.ENABLED,
///     location="northeurope",
///     resource_group_name="testrg",
///     server_configurations_management_settings={
///         "additional_features_server_configurations": {
///             "is_r_services_enabled": False,
///         },
///         "azure_ad_authentication_settings": {
///             "client_id": "11111111-2222-3333-4444-555555555555",
///         },
///         "sql_connectivity_update_settings": {
///             "connectivity_type": azure_native.sqlvirtualmachine.ConnectivityType.PRIVATE,
///             "port": 1433,
///             "sql_auth_update_password": "<password>",
///             "sql_auth_update_user_name": "sqllogin",
///         },
///         "sql_instance_settings": {
///             "collation": "SQL_Latin1_General_CP1_CI_AS",
///             "is_ifi_enabled": True,
///             "is_lpim_enabled": True,
///             "is_optimize_for_ad_hoc_workloads_enabled": True,
///             "max_dop": 8,
///             "max_server_memory_mb": 128,
///             "min_server_memory_mb": 0,
///         },
///         "sql_storage_update_settings": {
///             "disk_configuration_type": azure_native.sqlvirtualmachine.DiskConfigurationType.NEW,
///             "disk_count": 1,
///             "starting_device_id": 2,
///         },
///         "sql_workload_type_update_settings": {
///             "sql_workload_type": azure_native.sqlvirtualmachine.SqlWorkloadType.OLTP,
///         },
///     },
///     sql_image_sku=azure_native.sqlvirtualmachine.SqlImageSku.ENTERPRISE,
///     sql_server_license_type=azure_native.sqlvirtualmachine.SqlServerLicenseType.PAYG,
///     sql_virtual_machine_name="testvm",
///     storage_configuration_settings={
///         "disk_configuration_type": azure_native.sqlvirtualmachine.DiskConfigurationType.NEW,
///         "enable_storage_config_blade": True,
///         "sql_data_settings": {
///             "default_file_path": "F:\\folderpath\\",
///             "luns": [0],
///             "use_storage_pool": False,
///         },
///         "sql_log_settings": {
///             "default_file_path": "G:\\folderpath\\",
///             "luns": [1],
///             "use_storage_pool": False,
///         },
///         "sql_system_db_on_data_disk": True,
///         "sql_temp_db_settings": {
///             "data_file_count": 8,
///             "data_file_size": 256,
///             "data_growth": 512,
///             "default_file_path": "D:\\TEMP",
///             "log_file_size": 256,
///             "log_growth": 512,
///             "luns": [2],
///             "use_storage_pool": False,
///         },
///         "storage_workload_type": azure_native.sqlvirtualmachine.StorageWorkloadType.OLTP,
///     },
///     virtual_machine_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlVirtualMachine:
///     type: azure-native:sqlvirtualmachine:SqlVirtualMachine
///     properties:
///       assessmentSettings:
///         enable: true
///         runImmediately: true
///         schedule:
///           dayOfWeek: Sunday
///           enable: true
///           startTime: 23:17
///           weeklyInterval: 1
///       autoBackupSettings:
///         backupScheduleType: Manual
///         backupSystemDbs: true
///         enable: true
///         enableEncryption: true
///         fullBackupFrequency: Daily
///         fullBackupStartTime: 6
///         fullBackupWindowHours: 11
///         logBackupFrequency: 10
///         password: <Password>
///         retentionPeriod: 17
///         storageAccessKey: <primary storage access key>
///         storageAccountUrl: https://teststorage.blob.core.windows.net/
///         storageContainerName: testcontainer
///       autoPatchingSettings:
///         dayOfWeek: Sunday
///         enable: true
///         maintenanceWindowDuration: 60
///         maintenanceWindowStartingHour: 2
///       enableAutomaticUpgrade: true
///       keyVaultCredentialSettings:
///         enable: false
///       leastPrivilegeMode: Enabled
///       location: northeurope
///       resourceGroupName: testrg
///       serverConfigurationsManagementSettings:
///         additionalFeaturesServerConfigurations:
///           isRServicesEnabled: false
///         azureAdAuthenticationSettings:
///           clientId: 11111111-2222-3333-4444-555555555555
///         sqlConnectivityUpdateSettings:
///           connectivityType: PRIVATE
///           port: 1433
///           sqlAuthUpdatePassword: <password>
///           sqlAuthUpdateUserName: sqllogin
///         sqlInstanceSettings:
///           collation: SQL_Latin1_General_CP1_CI_AS
///           isIfiEnabled: true
///           isLpimEnabled: true
///           isOptimizeForAdHocWorkloadsEnabled: true
///           maxDop: 8
///           maxServerMemoryMB: 128
///           minServerMemoryMB: 0
///         sqlStorageUpdateSettings:
///           diskConfigurationType: NEW
///           diskCount: 1
///           startingDeviceId: 2
///         sqlWorkloadTypeUpdateSettings:
///           sqlWorkloadType: OLTP
///       sqlImageSku: Enterprise
///       sqlServerLicenseType: PAYG
///       sqlVirtualMachineName: testvm
///       storageConfigurationSettings:
///         diskConfigurationType: NEW
///         enableStorageConfigBlade: true
///         sqlDataSettings:
///           defaultFilePath: F:\folderpath\
///           luns:
///             - 0
///           useStoragePool: false
///         sqlLogSettings:
///           defaultFilePath: G:\folderpath\
///           luns:
///             - 1
///           useStoragePool: false
///         sqlSystemDbOnDataDisk: true
///         sqlTempDbSettings:
///           dataFileCount: 8
///           dataFileSize: 256
///           dataGrowth: 512
///           defaultFilePath: D:\TEMP
///           logFileSize: 256
///           logGrowth: 512
///           luns:
///             - 2
///           useStoragePool: false
///         storageWorkloadType: OLTP
///       virtualMachineResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or updates a SQL virtual machine with min parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlVirtualMachine = new AzureNative.SqlVirtualMachine.SqlVirtualMachine("sqlVirtualMachine", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineName = "testvm",
///         VirtualMachineResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
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
/// 	sqlvirtualmachine "github.com/pulumi/pulumi-azure-native-sdk/sqlvirtualmachine/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqlvirtualmachine.NewSqlVirtualMachine(ctx, "sqlVirtualMachine", &sqlvirtualmachine.SqlVirtualMachineArgs{
/// 			Location:                 pulumi.String("northeurope"),
/// 			ResourceGroupName:        pulumi.String("testrg"),
/// 			SqlVirtualMachineName:    pulumi.String("testvm"),
/// 			VirtualMachineResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm"),
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
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachine;
/// import com.pulumi.azurenative.sqlvirtualmachine.SqlVirtualMachineArgs;
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
///         var sqlVirtualMachine = new SqlVirtualMachine("sqlVirtualMachine", SqlVirtualMachineArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineName("testvm")
///             .virtualMachineResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
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
/// const sqlVirtualMachine = new azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlVirtualMachineName: "testvm",
///     virtualMachineResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_virtual_machine = azure_native.sqlvirtualmachine.SqlVirtualMachine("sqlVirtualMachine",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_virtual_machine_name="testvm",
///     virtual_machine_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlVirtualMachine:
///     type: azure-native:sqlvirtualmachine:SqlVirtualMachine
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlVirtualMachineName: testvm
///       virtualMachineResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Compute/virtualMachines/testvm
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
/// $ pulumi import azure-native:sqlvirtualmachine:SqlVirtualMachine testvm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/{sqlVirtualMachineName}
/// ```
class SqlVirtualMachine extends pulumi.CustomResource {
  /// Additional VM Patching solution enabled on the Virtual Machine
  late final pulumi.Output<String> additionalVmPatch;
  /// SQL best practices Assessment Settings.
  late final pulumi.Output<AssessmentSettingsResponse?> assessmentSettings;
  /// Auto backup settings for SQL Server.
  late final pulumi.Output<AutoBackupSettingsResponse?> autoBackupSettings;
  /// Auto patching settings for applying critical security updates to SQL virtual machine.
  late final pulumi.Output<AutoPatchingSettingsResponse?> autoPatchingSettings;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Enable automatic upgrade of Sql IaaS extension Agent.
  late final pulumi.Output<bool?> enableAutomaticUpgrade;
  /// DO NOT USE. This value will be deprecated. Azure Active Directory identity of the server.
  late final pulumi.Output<ResourceIdentityResponse?> identity;
  /// Key vault credential settings.
  late final pulumi.Output<KeyVaultCredentialSettingsResponse?> keyVaultCredentialSettings;
  /// SQL IaaS Agent least privilege mode.
  late final pulumi.Output<String?> leastPrivilegeMode;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Operating System of the current SQL Virtual Machine.
  late final pulumi.Output<String> osType;
  /// Provisioning state to track the async operation status.
  late final pulumi.Output<String> provisioningState;
  /// SQL Server configuration management settings.
  late final pulumi.Output<ServerConfigurationsManagementSettingsResponse?> serverConfigurationsManagementSettings;
  /// SQL image offer. Examples include SQL2016-WS2016, SQL2017-WS2016.
  late final pulumi.Output<String?> sqlImageOffer;
  /// SQL Server edition type.
  late final pulumi.Output<String?> sqlImageSku;
  /// SQL Server Management type. NOTE: This parameter is not used anymore. API will automatically detect the Sql Management, refrain from using it.
  late final pulumi.Output<String?> sqlManagement;
  /// SQL Server license type.
  late final pulumi.Output<String?> sqlServerLicenseType;
  /// ARM resource id of the SQL virtual machine group this SQL virtual machine is or will be part of.
  late final pulumi.Output<String?> sqlVirtualMachineGroupResourceId;
  /// Storage Configuration Settings.
  late final pulumi.Output<StorageConfigurationSettingsResponse?> storageConfigurationSettings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Troubleshooting status
  late final pulumi.Output<TroubleshootingStatusResponse> troubleshootingStatus;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Virtual Machine Identity details used for Sql IaaS extension configurations.
  late final pulumi.Output<VirtualMachineIdentityResponse?> virtualMachineIdentitySettings;
  /// ARM Resource id of underlying virtual machine created from SQL marketplace image.
  late final pulumi.Output<String?> virtualMachineResourceId;
  /// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  late final pulumi.Output<WsfcDomainCredentialsResponse?> wsfcDomainCredentials;
  /// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
  late final pulumi.Output<String?> wsfcStaticIp;

  /// Creates a new [SqlVirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlVirtualMachine]. {@macro pulumi_sqlvirtualmachine_sql_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlVirtualMachine(
    String name, {
    SqlVirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sqlvirtualmachine:SqlVirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalVmPatch = registerOutput<String>('additionalVmPatch');
    this.assessmentSettings = registerOutput<AssessmentSettingsResponse?>('assessmentSettings');
    this.autoBackupSettings = registerOutput<AutoBackupSettingsResponse?>('autoBackupSettings');
    this.autoPatchingSettings = registerOutput<AutoPatchingSettingsResponse?>('autoPatchingSettings');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.enableAutomaticUpgrade = registerOutput<bool?>('enableAutomaticUpgrade');
    this.identity = registerOutput<ResourceIdentityResponse?>('identity');
    this.keyVaultCredentialSettings = registerOutput<KeyVaultCredentialSettingsResponse?>('keyVaultCredentialSettings');
    this.leastPrivilegeMode = registerOutput<String?>('leastPrivilegeMode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.osType = registerOutput<String>('osType');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.serverConfigurationsManagementSettings = registerOutput<ServerConfigurationsManagementSettingsResponse?>('serverConfigurationsManagementSettings');
    this.sqlImageOffer = registerOutput<String?>('sqlImageOffer');
    this.sqlImageSku = registerOutput<String?>('sqlImageSku');
    this.sqlManagement = registerOutput<String?>('sqlManagement');
    this.sqlServerLicenseType = registerOutput<String?>('sqlServerLicenseType');
    this.sqlVirtualMachineGroupResourceId = registerOutput<String?>('sqlVirtualMachineGroupResourceId');
    this.storageConfigurationSettings = registerOutput<StorageConfigurationSettingsResponse?>('storageConfigurationSettings');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.troubleshootingStatus = registerOutput<TroubleshootingStatusResponse>('troubleshootingStatus');
    this.type = registerOutput<String>('type');
    this.virtualMachineIdentitySettings = registerOutput<VirtualMachineIdentityResponse?>('virtualMachineIdentitySettings');
    this.virtualMachineResourceId = registerOutput<String?>('virtualMachineResourceId');
    this.wsfcDomainCredentials = registerOutput<WsfcDomainCredentialsResponse?>('wsfcDomainCredentials');
    this.wsfcStaticIp = registerOutput<String?>('wsfcStaticIp');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_args.dart';
import 'autonomous_database_long_term_backup_schedule.dart';
import 'autonomous_database_state.dart';

/// Manages an Autonomous Database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.oracle.AutonomousDatabase("example", {
///     name: "example",
///     resourceGroupName: "example",
///     location: "West Europe",
///     subnetId: "example",
///     displayName: "example",
///     dbWorkload: "example",
///     mtlsConnectionRequired: false,
///     backupRetentionPeriodInDays: 42,
///     computeModel: "example",
///     dataStorageSizeInGbs: 42,
///     autoScalingForStorageEnabled: false,
///     virtualNetworkId: "example",
///     adminPassword: "example",
///     autoScalingEnabled: "example" === "true",
///     characterSet: "example",
///     computeCount: 1.23456,
///     nationalCharacterSet: "example",
///     licenseModel: "false",
///     dbVersion: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.AutonomousDatabase("example",
///     name="example",
///     resource_group_name="example",
///     location="West Europe",
///     subnet_id="example",
///     display_name="example",
///     db_workload="example",
///     mtls_connection_required=False,
///     backup_retention_period_in_days=42,
///     compute_model="example",
///     data_storage_size_in_gbs=42,
///     auto_scaling_for_storage_enabled=False,
///     virtual_network_id="example",
///     admin_password="example",
///     auto_scaling_enabled="example" == "true",
///     character_set="example",
///     compute_count=1.23456,
///     national_character_set="example",
///     license_model="false",
///     db_version="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Oracle.AutonomousDatabase("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Location = "West Europe",
///         SubnetId = "example",
///         DisplayName = "example",
///         DbWorkload = "example",
///         MtlsConnectionRequired = false,
///         BackupRetentionPeriodInDays = 42,
///         ComputeModel = "example",
///         DataStorageSizeInGbs = 42,
///         AutoScalingForStorageEnabled = false,
///         VirtualNetworkId = "example",
///         AdminPassword = "example",
///         AutoScalingEnabled = "example",
///         CharacterSet = "example",
///         ComputeCount = 1.23456,
///         NationalCharacterSet = "example",
///         LicenseModel = "false",
///         DbVersion = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/oracle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracle.NewAutonomousDatabase(ctx, "example", &oracle.AutonomousDatabaseArgs{
/// 			Name:                         pulumi.String("example"),
/// 			ResourceGroupName:            pulumi.String("example"),
/// 			Location:                     pulumi.String("West Europe"),
/// 			SubnetId:                     pulumi.String("example"),
/// 			DisplayName:                  pulumi.String("example"),
/// 			DbWorkload:                   pulumi.String("example"),
/// 			MtlsConnectionRequired:       pulumi.Bool(false),
/// 			BackupRetentionPeriodInDays:  pulumi.Int(42),
/// 			ComputeModel:                 pulumi.String("example"),
/// 			DataStorageSizeInGbs:         42,
/// 			AutoScalingForStorageEnabled: pulumi.Bool(false),
/// 			VirtualNetworkId:             pulumi.String("example"),
/// 			AdminPassword:                pulumi.String("example"),
/// 			AutoScalingEnabled:           pulumi.Bool("example"),
/// 			CharacterSet:                 pulumi.String("example"),
/// 			ComputeCount:                 pulumi.Float64(1.23456),
/// 			NationalCharacterSet:         pulumi.String("example"),
/// 			LicenseModel:                 pulumi.String("false"),
/// 			DbVersion:                    pulumi.String("example"),
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
/// resource "azure_oracle_autonomousdatabase" "example" {
///   name                             = "example"
///   resource_group_name              = "example"
///   location                         = "West Europe"
///   subnet_id                        = "example"
///   display_name                     = "example"
///   db_workload                      = "example"
///   mtls_connection_required         = false
///   backup_retention_period_in_days  = 42
///   compute_model                    = "example"
///   data_storage_size_in_gbs         = 42
///   auto_scaling_for_storage_enabled = false
///   virtual_network_id               = "example"
///   admin_password                   = "example"
///   auto_scaling_enabled             = "example"
///   character_set                    = "example"
///   compute_count                    = 1.23456
///   national_character_set           = "example"
///   license_model                    = false
///   db_version                       = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.AutonomousDatabase;
/// import com.pulumi.azure.oracle.AutonomousDatabaseArgs;
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
///         var example = new AutonomousDatabase("example", AutonomousDatabaseArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .location("West Europe")
///             .subnetId("example")
///             .displayName("example")
///             .dbWorkload("example")
///             .mtlsConnectionRequired(false)
///             .backupRetentionPeriodInDays(42)
///             .computeModel("example")
///             .dataStorageSizeInGbs(42)
///             .autoScalingForStorageEnabled(false)
///             .virtualNetworkId("example")
///             .adminPassword("example")
///             .autoScalingEnabled("example")
///             .characterSet("example")
///             .computeCount(1.23456)
///             .nationalCharacterSet("example")
///             .licenseModel("false")
///             .dbVersion("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:oracle:AutonomousDatabase
///     properties:
///       name: example
///       resourceGroupName: example
///       location: West Europe
///       subnetId: example
///       displayName: example
///       dbWorkload: example
///       mtlsConnectionRequired: false
///       backupRetentionPeriodInDays: 42
///       computeModel: example
///       dataStorageSizeInGbs: 42
///       autoScalingForStorageEnabled: false
///       virtualNetworkId: example
///       adminPassword: example
///       autoScalingEnabled: example
///       characterSet: example
///       computeCount: 1.23456
///       nationalCharacterSet: example
///       licenseModel: false
///       dbVersion: example
/// ```
///
///
/// ## &gt; **Note:** `allowedIps`  cannot be updated after provisioning the resource with an empty list (i.e., a publicly accessible Autonomous Database)
///
/// size: the maximum number of Ips provided shouldn't exceed 1024. At this time we only support IpV4.
/// ---
///
/// * `customerContacts` - (Optional) Specifies a list of customer contacts as email addresses. Changing this forces a new Autonomous Database to be created.
///
/// * `tags` - (Optional) A mapping of tags which should be assigned to the Autonomous Database.
///
/// * `longTermBackupSchedule` - (Optional) A `longTermBackupSchedule` block as defined below.
///
/// &gt; **Note:** for more information see [Create Long-Term Backups on Autonomous Database](https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/backup-long-term.html#GUID-BD76E02E-AEB0-4450-A6AB-5C9EB1F4EAD0)
///
/// ---
///
/// A `longTermBackupSchedule` blocks supports the following:
///
/// * `repeatCadence` - (Required) Specifies the schedule for automated long-term backups. Possible values are `Weekly`, `Monthly`, `Yearly`, or `OneTime` (does not repeat) . For example, if the Backup date and Time is `Jan 24, 2025 00:09:00 UTC` and this is a Tuesday, and Weekly is selected, the long-term backup will happen every Tuesday.
///
/// * `timeOfBackup` - (Required) The date and time in which the backup should be taken in ISO8601 Date Time format.
///
/// * `retentionPeriodInDays` - (Required) The retention period in days for the Autonomous Database Backup. Possible values range from `90` to `2558` days (7 years).
///
/// * `enabled` - (Required) A boolean value that indicates whether the long term backup schedule is enabled.
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
///
/// ## Import
///
/// Autonomous Databases can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:oracle/autonomousDatabase:AutonomousDatabase example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup/providers/Oracle.Database/autonomousDatabases/autonomousDatabases1
/// ```
class AutonomousDatabase extends pulumi.CustomResource {
  /// The password must be between `12` and `30 `characters long, and must contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin", regardless of casing.
  late final pulumi.Output<String> adminPassword;
  /// (Optional) Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses.
  late final pulumi.Output<List<String>?> allowedIps;
  /// Indicates if auto scaling is enabled for the Autonomous Database CPU core count.
  late final pulumi.Output<bool> autoScalingEnabled;
  /// Indicates if auto scaling is enabled for the Autonomous Database storage.
  late final pulumi.Output<bool> autoScalingForStorageEnabled;
  /// Retention period, in days, for backups.
  late final pulumi.Output<int> backupRetentionPeriodInDays;
  /// The character set for the autonomous database. Allowed values are: `AL32UTF8`, `AR8ADOS710`, `AR8ADOS720`, `AR8APTEC715`, `AR8ARABICMACS`, `AR8ASMO8X`, `AR8ISO8859P6`, `AR8MSWIN1256`, `AR8MUSSAD768`, `AR8NAFITHA711`, `AR8NAFITHA721`, `AR8SAKHR706`, `AR8SAKHR707`, `AZ8ISO8859P9E`, `BG8MSWIN`, `BG8PC437S`, `BLT8CP921`, `BLT8ISO8859P13`, `BLT8MSWIN1257`, `BLT8PC775`, `BN8BSCII`, `CDN8PC863`, `CEL8ISO8859P14`, `CL8ISO8859P5`, `CL8ISOIR111`, `CL8KOI8R`, `CL8KOI8U`, `CL8MACCYRILLICS`, `CL8MSWIN1251`, `EE8ISO8859P2`, `EE8MACCES`, `EE8MACCROATIANS`, `EE8MSWIN1250`, `EE8PC852`, `EL8DEC`, `EL8ISO8859P7`, `EL8MACGREEKS`, `EL8MSWIN1253`, `EL8PC437S`, `EL8PC851`, `EL8PC869`, `ET8MSWIN923`, `HU8ABMOD`, `HU8CWI2`, `IN8ISCII`, `IS8PC861`, `IW8ISO8859P8`, `IW8MACHEBREWS`, `IW8MSWIN1255`, `IW8PC1507`, `JA16EUC`, `JA16EUCTILDE`, `JA16SJIS`, `JA16SJISTILDE`, `JA16VMS`, `KO16KSC5601`, `KO16KSCCS`, `KO16MSWIN949`, `LA8ISO6937`, `LA8PASSPORT`, `LT8MSWIN921`, `LT8PC772`, `LT8PC774`, `LV8PC1117`, `LV8PC8LR`, `LV8RST104090`, `N8PC865`, `NE8ISO8859P10`, `NEE8ISO8859P4`, `RU8BESTA`, `RU8PC855`, `RU8PC866`, `SE8ISO8859P3`, `TH8MACTHAIS`, `TH8TISASCII`, `TR8DEC`, `TR8MACTURKISHS`, `TR8MSWIN1254`, `TR8PC857`, `US7ASCII`, `US8PC437`, `UTF8`, `VN8MSWIN1258`, `VN8VN3`, `WE8DEC`, `WE8DG`, `WE8ISO8859P1`, `WE8ISO8859P15`, `WE8ISO8859P9`, `WE8MACROMAN8S`, `WE8MSWIN1252`, `WE8NCR4970`, `WE8NEXTSTEP`, `WE8PC850`, `WE8PC858`, `WE8PC860`, `WE8ROMAN8`, `ZHS16CGB231280`, `ZHS16GBK`, `ZHT16BIG5`, `ZHT16CCDC`, `ZHT16DBT`, `ZHT16HKSCS`, `ZHT16MSWIN950`, `ZHT32EUC`, `ZHT32SOPS`, `ZHT32TRIS`. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String> characterSet;
  /// The compute amount (CPUs) available to the database. Minimum and maximum values depend on the compute model and whether the database is an Autonomous Database Serverless instance or an Autonomous Database on Dedicated Exadata Infrastructure. For an Autonomous Database Serverless instance, the `ECPU` compute model requires a minimum value of one, for databases in the elastic resource pool and minimum value of two, otherwise. Required when using the `computeModel` parameter. When using `cpuCoreCount` parameter, it is an error to specify computeCount to a non-null value. Providing `computeModel` and `computeCount` is the preferred method for both OCPU and ECPU.
  late final pulumi.Output<double> computeCount;
  /// The compute model of the Autonomous Database. This is required if using the `computeCount` parameter. If using `cpuCoreCount` then it is an error to specify `computeModel` to a non-null value. ECPU compute model is the recommended model and OCPU compute model is legacy. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String> computeModel;
  late final pulumi.Output<List<String>> customerContacts;
  /// The maximum storage that can be allocated for the database, in terabytes.
  late final pulumi.Output<int> dataStorageSizeInTbs;
  /// A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String> dbVersion;
  /// The Autonomous Database workload type. Changing this forces a new Autonomous Database to be created. Possible values are `AJD`, `APEX`, `DW` and `OLTP`.
  ///
  /// &gt; **Note:** `AJD` indicates an Autonomous JSON database; `APEX` indicates an Autonomous Database with the Oracle APEX Application Development workload type; `DW` indicates an Autonomous Data Warehouse database; `OLTP` indicates an Autonomous Transaction Processing database
  /// &gt; **Note:** When Provisioning Database with `APEX` workload `mtlsConnectionRequired` must be set to `true`.
  late final pulumi.Output<String> dbWorkload;
  /// The user-friendly name for the Autonomous Database. The name does not have to be unique. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String> displayName;
  /// The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database to be created. Bring your own license (BYOL) allows you to apply your current on-premises Oracle software licenses to equivalent, highly automated Oracle services in the cloud. License Included allows you to subscribe to new Oracle Database software licenses and the Oracle Database service. Note that when provisioning an [Autonomous Database on dedicated Exadata infrastructure](https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html), this attribute must be null. It is already set at the Autonomous Exadata Infrastructure level. When provisioning an [Autonomous Database Serverless] (https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html) database, if a value is not specified, the system defaults the value to `BRING_YOUR_OWN_LICENSE`. Bring your own license (BYOL) also allows you to select the DB edition using the optional parameter.
  late final pulumi.Output<String> licenseModel;
  /// The Azure Region where the Autonomous Database should exist. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String> location;
  late final pulumi.Output<AutonomousDatabaseLongTermBackupSchedule?> longTermBackupSchedule;
  /// Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database to be created. Default value `false`.
  ///
  /// &gt; **Note:** `mtlsConnectionRequired`  must be set to `true` for all workload types except 'APEX' when creating a database with public access.
  late final pulumi.Output<bool> mtlsConnectionRequired;
  /// The name which should be used for this Autonomous Database. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String> name;
  /// The national character set for the autonomous database. Changing this forces a new Autonomous Database to be created. The default is AL16UTF16. Allowed values are: AL16UTF16 or UTF8.
  late final pulumi.Output<String> nationalCharacterSet;
  /// The name of the Resource Group where the Autonomous Database should exist. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet the resource is associated with. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String?> subnetId;
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the vnet associated with the cloud VM cluster. Changing this forces a new Autonomous Database to be created.
  late final pulumi.Output<String?> virtualNetworkId;

  /// Creates a new [AutonomousDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutonomousDatabase]. {@macro pulumi_oracle_autonomous_database_autonomous_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutonomousDatabase(
    String name, {
    AutonomousDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/autonomousDatabase:AutonomousDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['adminPassword'],
        ) {
    adminPassword = registerOutput<String>('adminPassword', isSecret: true);
    allowedIps = registerOutput<List<String>?>('allowedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    autoScalingEnabled = registerOutput<bool>('autoScalingEnabled');
    autoScalingForStorageEnabled = registerOutput<bool>('autoScalingForStorageEnabled');
    backupRetentionPeriodInDays = registerOutput<int>('backupRetentionPeriodInDays');
    characterSet = registerOutput<String>('characterSet');
    computeCount = registerOutput<double>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    customerContacts = registerOutput<List<String>>('customerContacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataStorageSizeInTbs = registerOutput<int>('dataStorageSizeInTbs');
    dbVersion = registerOutput<String>('dbVersion');
    dbWorkload = registerOutput<String>('dbWorkload');
    displayName = registerOutput<String>('displayName');
    licenseModel = registerOutput<String>('licenseModel');
    location = registerOutput<String>('location');
    longTermBackupSchedule = registerOutput<AutonomousDatabaseLongTermBackupSchedule?>('longTermBackupSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseLongTermBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mtlsConnectionRequired = registerOutput<bool>('mtlsConnectionRequired');
    this.name = registerOutput<String>('name');
    nationalCharacterSet = registerOutput<String>('nationalCharacterSet');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }

  /// Gets an existing [AutonomousDatabase] resource's state with the given [name] and [id].
  static AutonomousDatabase get(
    String name,
    pulumi.Input<String> id, {
    AutonomousDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutonomousDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutonomousDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/autonomousDatabase:AutonomousDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminPassword = registerOutput<String>('adminPassword', isSecret: true);
    allowedIps = registerOutput<List<String>?>('allowedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    autoScalingEnabled = registerOutput<bool>('autoScalingEnabled');
    autoScalingForStorageEnabled = registerOutput<bool>('autoScalingForStorageEnabled');
    backupRetentionPeriodInDays = registerOutput<int>('backupRetentionPeriodInDays');
    characterSet = registerOutput<String>('characterSet');
    computeCount = registerOutput<double>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    customerContacts = registerOutput<List<String>>('customerContacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataStorageSizeInTbs = registerOutput<int>('dataStorageSizeInTbs');
    dbVersion = registerOutput<String>('dbVersion');
    dbWorkload = registerOutput<String>('dbWorkload');
    displayName = registerOutput<String>('displayName');
    licenseModel = registerOutput<String>('licenseModel');
    location = registerOutput<String>('location');
    longTermBackupSchedule = registerOutput<AutonomousDatabaseLongTermBackupSchedule?>('longTermBackupSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseLongTermBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mtlsConnectionRequired = registerOutput<bool>('mtlsConnectionRequired');
    this.name = registerOutput<String>('name');
    nationalCharacterSet = registerOutput<String>('nationalCharacterSet');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }

  /// Creates a typed reference to an existing [AutonomousDatabase] resource.
  AutonomousDatabase.reference(String urn)
    : super(
        'azure:oracle/autonomousDatabase:AutonomousDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['adminPassword'],
        isResourceReference: true,
      ) {
    adminPassword = registerOutput<String>('adminPassword', isSecret: true);
    allowedIps = registerOutput<List<String>?>('allowedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    autoScalingEnabled = registerOutput<bool>('autoScalingEnabled');
    autoScalingForStorageEnabled = registerOutput<bool>('autoScalingForStorageEnabled');
    backupRetentionPeriodInDays = registerOutput<int>('backupRetentionPeriodInDays');
    characterSet = registerOutput<String>('characterSet');
    computeCount = registerOutput<double>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    customerContacts = registerOutput<List<String>>('customerContacts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataStorageSizeInTbs = registerOutput<int>('dataStorageSizeInTbs');
    dbVersion = registerOutput<String>('dbVersion');
    dbWorkload = registerOutput<String>('dbWorkload');
    displayName = registerOutput<String>('displayName');
    licenseModel = registerOutput<String>('licenseModel');
    location = registerOutput<String>('location');
    longTermBackupSchedule = registerOutput<AutonomousDatabaseLongTermBackupSchedule?>('longTermBackupSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseLongTermBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mtlsConnectionRequired = registerOutput<bool>('mtlsConnectionRequired');
    this.name = registerOutput<String>('name');
    nationalCharacterSet = registerOutput<String>('nationalCharacterSet');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }
}

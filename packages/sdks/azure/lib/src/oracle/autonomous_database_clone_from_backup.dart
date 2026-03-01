import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_clone_from_backup_args.dart';
import 'autonomous_database_clone_from_backup_state.dart';

/// Manage an autonomous database clone from backup.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "eastus",
/// });
/// const exampleAutonomousDatabase = new azure.oracle.AutonomousDatabase("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     adminPassword: "BEstrO0ng_#11",
///     backupRetentionPeriodInDays: 7,
///     characterSet: "AL32UTF8",
///     computeCount: 2,
///     computeModel: "ECPU",
///     dataStorageSizeInTbs: 1,
///     dbVersion: "19c",
///     dbWorkload: "OLTP",
///     displayName: "Example",
///     licenseModel: "LicenseIncluded",
///     autoScalingEnabled: false,
///     autoScalingForStorageEnabled: true,
///     mtlsConnectionRequired: true,
///     nationalCharacterSet: "AL16UTF16",
///     allowedIps: [],
/// });
/// const exampleAutonomousDatabaseCloneFromBackup = new azure.oracle.AutonomousDatabaseCloneFromBackup("example", {
///     name: "example",
///     resourceGroupName: exampleAutonomousDatabase.resourceGroupName,
///     location: exampleAutonomousDatabase.location,
///     sourceAutonomousDatabaseId: exampleAutonomousDatabase.id,
///     cloneType: "Metadata",
///     backupTimestamp: "2025-09-23T02:22:13.000Z",
///     adminPassword: "BEstrO0ng_#11",
///     backupRetentionPeriodInDays: 7,
///     characterSet: "AL32UTF8",
///     computeCount: 2,
///     computeModel: "ECPU",
///     dataStorageSizeInTb: 1,
///     databaseVersion: "19c",
///     databaseWorkload: "OLTP",
///     displayName: "ExampleClone",
///     licenseModel: "LicenseIncluded",
///     autoScalingEnabled: false,
///     autoScalingForStorageEnabled: true,
///     mtlsConnectionRequired: true,
///     nationalCharacterSet: "AL16UTF16",
///     allowedIpAddresses: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="eastus")
/// example_autonomous_database = azure.oracle.AutonomousDatabase("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     admin_password="BEstrO0ng_#11",
///     backup_retention_period_in_days=7,
///     character_set="AL32UTF8",
///     compute_count=2,
///     compute_model="ECPU",
///     data_storage_size_in_tbs=1,
///     db_version="19c",
///     db_workload="OLTP",
///     display_name="Example",
///     license_model="LicenseIncluded",
///     auto_scaling_enabled=False,
///     auto_scaling_for_storage_enabled=True,
///     mtls_connection_required=True,
///     national_character_set="AL16UTF16",
///     allowed_ips=[])
/// example_autonomous_database_clone_from_backup = azure.oracle.AutonomousDatabaseCloneFromBackup("example",
///     name="example",
///     resource_group_name=example_autonomous_database.resource_group_name,
///     location=example_autonomous_database.location,
///     source_autonomous_database_id=example_autonomous_database.id,
///     clone_type="Metadata",
///     backup_timestamp="2025-09-23T02:22:13.000Z",
///     admin_password="BEstrO0ng_#11",
///     backup_retention_period_in_days=7,
///     character_set="AL32UTF8",
///     compute_count=2,
///     compute_model="ECPU",
///     data_storage_size_in_tb=1,
///     database_version="19c",
///     database_workload="OLTP",
///     display_name="ExampleClone",
///     license_model="LicenseIncluded",
///     auto_scaling_enabled=False,
///     auto_scaling_for_storage_enabled=True,
///     mtls_connection_required=True,
///     national_character_set="AL16UTF16",
///     allowed_ip_addresses=[])
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
///         Name = "example-resources",
///         Location = "eastus",
///     });
///
///     var exampleAutonomousDatabase = new Azure.Oracle.AutonomousDatabase("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdminPassword = "BEstrO0ng_#11",
///         BackupRetentionPeriodInDays = 7,
///         CharacterSet = "AL32UTF8",
///         ComputeCount = 2,
///         ComputeModel = "ECPU",
///         DataStorageSizeInTbs = 1,
///         DbVersion = "19c",
///         DbWorkload = "OLTP",
///         DisplayName = "Example",
///         LicenseModel = "LicenseIncluded",
///         AutoScalingEnabled = false,
///         AutoScalingForStorageEnabled = true,
///         MtlsConnectionRequired = true,
///         NationalCharacterSet = "AL16UTF16",
///         AllowedIps = new[] {},
///     });
///
///     var exampleAutonomousDatabaseCloneFromBackup = new Azure.Oracle.AutonomousDatabaseCloneFromBackup("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleAutonomousDatabase.ResourceGroupName,
///         Location = exampleAutonomousDatabase.Location,
///         SourceAutonomousDatabaseId = exampleAutonomousDatabase.Id,
///         CloneType = "Metadata",
///         BackupTimestamp = "2025-09-23T02:22:13.000Z",
///         AdminPassword = "BEstrO0ng_#11",
///         BackupRetentionPeriodInDays = 7,
///         CharacterSet = "AL32UTF8",
///         ComputeCount = 2,
///         ComputeModel = "ECPU",
///         DataStorageSizeInTb = 1,
///         DatabaseVersion = "19c",
///         DatabaseWorkload = "OLTP",
///         DisplayName = "ExampleClone",
///         LicenseModel = "LicenseIncluded",
///         AutoScalingEnabled = false,
///         AutoScalingForStorageEnabled = true,
///         MtlsConnectionRequired = true,
///         NationalCharacterSet = "AL16UTF16",
///         AllowedIpAddresses = new[] {},
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/oracle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("eastus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAutonomousDatabase, err := oracle.NewAutonomousDatabase(ctx, "example", &oracle.AutonomousDatabaseArgs{
/// 			Name:                         pulumi.String("example"),
/// 			ResourceGroupName:            example.Name,
/// 			Location:                     example.Location,
/// 			AdminPassword:                pulumi.String("BEstrO0ng_#11"),
/// 			BackupRetentionPeriodInDays:  pulumi.Int(7),
/// 			CharacterSet:                 pulumi.String("AL32UTF8"),
/// 			ComputeCount:                 pulumi.Float64(2),
/// 			ComputeModel:                 pulumi.String("ECPU"),
/// 			DataStorageSizeInTbs:         pulumi.Int(1),
/// 			DbVersion:                    pulumi.String("19c"),
/// 			DbWorkload:                   pulumi.String("OLTP"),
/// 			DisplayName:                  pulumi.String("Example"),
/// 			LicenseModel:                 pulumi.String("LicenseIncluded"),
/// 			AutoScalingEnabled:           pulumi.Bool(false),
/// 			AutoScalingForStorageEnabled: pulumi.Bool(true),
/// 			MtlsConnectionRequired:       pulumi.Bool(true),
/// 			NationalCharacterSet:         pulumi.String("AL16UTF16"),
/// 			AllowedIps:                   pulumi.StringArray{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracle.NewAutonomousDatabaseCloneFromBackup(ctx, "example", &oracle.AutonomousDatabaseCloneFromBackupArgs{
/// 			Name:                         pulumi.String("example"),
/// 			ResourceGroupName:            exampleAutonomousDatabase.ResourceGroupName,
/// 			Location:                     exampleAutonomousDatabase.Location,
/// 			SourceAutonomousDatabaseId:   exampleAutonomousDatabase.ID(),
/// 			CloneType:                    pulumi.String("Metadata"),
/// 			BackupTimestamp:              pulumi.String("2025-09-23T02:22:13.000Z"),
/// 			AdminPassword:                pulumi.String("BEstrO0ng_#11"),
/// 			BackupRetentionPeriodInDays:  pulumi.Int(7),
/// 			CharacterSet:                 pulumi.String("AL32UTF8"),
/// 			ComputeCount:                 pulumi.Float64(2),
/// 			ComputeModel:                 pulumi.String("ECPU"),
/// 			DataStorageSizeInTb:          pulumi.Int(1),
/// 			DatabaseVersion:              pulumi.String("19c"),
/// 			DatabaseWorkload:             pulumi.String("OLTP"),
/// 			DisplayName:                  pulumi.String("ExampleClone"),
/// 			LicenseModel:                 pulumi.String("LicenseIncluded"),
/// 			AutoScalingEnabled:           pulumi.Bool(false),
/// 			AutoScalingForStorageEnabled: pulumi.Bool(true),
/// 			MtlsConnectionRequired:       pulumi.Bool(true),
/// 			NationalCharacterSet:         pulumi.String("AL16UTF16"),
/// 			AllowedIpAddresses:           pulumi.StringArray{},
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.oracle.AutonomousDatabase;
/// import com.pulumi.azure.oracle.AutonomousDatabaseArgs;
/// import com.pulumi.azure.oracle.AutonomousDatabaseCloneFromBackup;
/// import com.pulumi.azure.oracle.AutonomousDatabaseCloneFromBackupArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("eastus")
///             .build());
///
///         var exampleAutonomousDatabase = new AutonomousDatabase("exampleAutonomousDatabase", AutonomousDatabaseArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .adminPassword("BEstrO0ng_#11")
///             .backupRetentionPeriodInDays(7)
///             .characterSet("AL32UTF8")
///             .computeCount(2.0)
///             .computeModel("ECPU")
///             .dataStorageSizeInTbs(1)
///             .dbVersion("19c")
///             .dbWorkload("OLTP")
///             .displayName("Example")
///             .licenseModel("LicenseIncluded")
///             .autoScalingEnabled(false)
///             .autoScalingForStorageEnabled(true)
///             .mtlsConnectionRequired(true)
///             .nationalCharacterSet("AL16UTF16")
///             .allowedIps()
///             .build());
///
///         var exampleAutonomousDatabaseCloneFromBackup = new AutonomousDatabaseCloneFromBackup("exampleAutonomousDatabaseCloneFromBackup", AutonomousDatabaseCloneFromBackupArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleAutonomousDatabase.resourceGroupName())
///             .location(exampleAutonomousDatabase.location())
///             .sourceAutonomousDatabaseId(exampleAutonomousDatabase.id())
///             .cloneType("Metadata")
///             .backupTimestamp("2025-09-23T02:22:13.000Z")
///             .adminPassword("BEstrO0ng_#11")
///             .backupRetentionPeriodInDays(7)
///             .characterSet("AL32UTF8")
///             .computeCount(2.0)
///             .computeModel("ECPU")
///             .dataStorageSizeInTb(1)
///             .databaseVersion("19c")
///             .databaseWorkload("OLTP")
///             .displayName("ExampleClone")
///             .licenseModel("LicenseIncluded")
///             .autoScalingEnabled(false)
///             .autoScalingForStorageEnabled(true)
///             .mtlsConnectionRequired(true)
///             .nationalCharacterSet("AL16UTF16")
///             .allowedIpAddresses()
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
///       name: example-resources
///       location: eastus
///   exampleAutonomousDatabase:
///     type: azure:oracle:AutonomousDatabase
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       adminPassword: BEstrO0ng_#11
///       backupRetentionPeriodInDays: 7
///       characterSet: AL32UTF8
///       computeCount: 2
///       computeModel: ECPU
///       dataStorageSizeInTbs: 1
///       dbVersion: 19c
///       dbWorkload: OLTP
///       displayName: Example
///       licenseModel: LicenseIncluded
///       autoScalingEnabled: false
///       autoScalingForStorageEnabled: true
///       mtlsConnectionRequired: true
///       nationalCharacterSet: AL16UTF16
///       allowedIps: []
///   exampleAutonomousDatabaseCloneFromBackup:
///     type: azure:oracle:AutonomousDatabaseCloneFromBackup
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleAutonomousDatabase.resourceGroupName}
///       location: ${exampleAutonomousDatabase.location}
///       sourceAutonomousDatabaseId: ${exampleAutonomousDatabase.id}
///       cloneType: Metadata
///       backupTimestamp: 2025-09-23T02:22:13.000Z
///       adminPassword: BEstrO0ng_#11
///       backupRetentionPeriodInDays: 7
///       characterSet: AL32UTF8
///       computeCount: 2
///       computeModel: ECPU
///       dataStorageSizeInTb: 1
///       databaseVersion: 19c
///       databaseWorkload: OLTP
///       displayName: ExampleClone
///       licenseModel: LicenseIncluded
///       autoScalingEnabled: false
///       autoScalingForStorageEnabled: true
///       mtlsConnectionRequired: true
///       nationalCharacterSet: AL16UTF16
///       allowedIpAddresses: []
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
///
/// ## Import
///
/// autonomous database clone from backups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:oracle/autonomousDatabaseCloneFromBackup:AutonomousDatabaseCloneFromBackup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Oracle.Database/autonomousDatabases/example
/// ```
class AutonomousDatabaseCloneFromBackup extends pulumi.CustomResource {
  /// The password for the SYS, SYSTEM, and PDB Admin users. The password must be at least 12 characters long, and contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin," regardless of casing. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> adminPassword;
  /// Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<List<String>?> allowedIpAddresses;
  /// Indicates if auto-scaling is enabled for the Autonomous Database CPU core count. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<bool> autoScalingEnabled;
  /// Indicates if auto-scaling is enabled for the Autonomous Database storage. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<bool> autoScalingForStorageEnabled;
  /// Retention period, in days, for backups. Possible values range between `1` and `60`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<int> backupRetentionPeriodInDays;
  /// The autonomous database backup time stamp to be used for a cloning autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// > **Note:** If `backup_timestamp` is not provided latest backup timestamp will be used.
  late final pulumi.Output<String?> backupTimestamp;
  /// The character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> characterSet;
  /// The type of clone to create. Possible values are Full and Metadata. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> cloneType;
  /// The compute amount (CPUs) available to the database. Possible values range between `2.0` and `512.0`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<double> computeCount;
  /// The compute model of the Autonomous Database. Possible values are `ECPU` and `OCPU`. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// > **Note:** `ECPU` compute model is the recommended model and `OCPU` compute model is legacy.
  late final pulumi.Output<String> computeModel;
  /// Specifies a list of customer contact email addresses. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<List<String>?> customerContacts;
  /// The maximum storage that can be allocated for the database, in terabytes. Possible values range between `1` and `384`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<int> dataStorageSizeInTb;
  /// A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> databaseVersion;
  /// The Autonomous Database workload type. Possible values are `OLTP`, `DW`, `APEX`, and `AJD`. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// * OLTP: Indicates an Autonomous Transaction Processing database.
  /// * DW: Indicates an Autonomous Data Warehouse database.
  /// * AJD: Indicates an Autonomous JSON Database.
  /// * APEX: Indicates an Autonomous Database with the Oracle APEX Application Development workload type.
  late final pulumi.Output<String> databaseWorkload;
  /// The user-friendly name for the Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> displayName;
  /// The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> licenseModel;
  /// The Azure Region where the autonomous database clone from backup should exist. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> location;
  /// Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<bool> mtlsConnectionRequired;
  /// The name which should be used for this autonomous database clone from backup. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> name;
  /// The national character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> nationalCharacterSet;
  /// The name of the Resource Group where the autonomous database clone from backup should exist. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the source Autonomous Database to clone from. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> sourceAutonomousDatabaseId;
  /// The ID of the subnet the resource is associated with. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String?> subnetId;
  /// A mapping of tags which should be assigned to the autonomous database clone from backup. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Virtual Network this Autonomous Database Clone should be created in. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String?> virtualNetworkId;

  /// Creates a new [AutonomousDatabaseCloneFromBackup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutonomousDatabaseCloneFromBackup]. {@macro pulumi_oracle_autonomous_database_clone_from_backup_autonomous_database_clone_from_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutonomousDatabaseCloneFromBackup(
    String name, {
    AutonomousDatabaseCloneFromBackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/autonomousDatabaseCloneFromBackup:AutonomousDatabaseCloneFromBackup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminPassword = registerOutput<String>('adminPassword');
    this.allowedIpAddresses = registerOutput<List<String>?>('allowedIpAddresses');
    this.autoScalingEnabled = registerOutput<bool>('autoScalingEnabled');
    this.autoScalingForStorageEnabled = registerOutput<bool>('autoScalingForStorageEnabled');
    this.backupRetentionPeriodInDays = registerOutput<int>('backupRetentionPeriodInDays');
    this.backupTimestamp = registerOutput<String?>('backupTimestamp');
    this.characterSet = registerOutput<String>('characterSet');
    this.cloneType = registerOutput<String>('cloneType');
    this.computeCount = registerOutput<double>('computeCount');
    this.computeModel = registerOutput<String>('computeModel');
    this.customerContacts = registerOutput<List<String>?>('customerContacts');
    this.dataStorageSizeInTb = registerOutput<int>('dataStorageSizeInTb');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.databaseWorkload = registerOutput<String>('databaseWorkload');
    this.displayName = registerOutput<String>('displayName');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.location = registerOutput<String>('location');
    this.mtlsConnectionRequired = registerOutput<bool>('mtlsConnectionRequired');
    this.name = registerOutput<String>('name');
    this.nationalCharacterSet = registerOutput<String>('nationalCharacterSet');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sourceAutonomousDatabaseId = registerOutput<String>('sourceAutonomousDatabaseId');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }

  /// Gets an existing [AutonomousDatabaseCloneFromBackup] resource's state with the given [name] and [id].
  static AutonomousDatabaseCloneFromBackup get(
    String name,
    pulumi.Input<String> id, {
    AutonomousDatabaseCloneFromBackupState? state,
  }) {
    return AutonomousDatabaseCloneFromBackup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutonomousDatabaseCloneFromBackup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/autonomousDatabaseCloneFromBackup:AutonomousDatabaseCloneFromBackup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminPassword = registerOutput<String>('adminPassword');
    this.allowedIpAddresses = registerOutput<List<String>?>('allowedIpAddresses');
    this.autoScalingEnabled = registerOutput<bool>('autoScalingEnabled');
    this.autoScalingForStorageEnabled = registerOutput<bool>('autoScalingForStorageEnabled');
    this.backupRetentionPeriodInDays = registerOutput<int>('backupRetentionPeriodInDays');
    this.backupTimestamp = registerOutput<String?>('backupTimestamp');
    this.characterSet = registerOutput<String>('characterSet');
    this.cloneType = registerOutput<String>('cloneType');
    this.computeCount = registerOutput<double>('computeCount');
    this.computeModel = registerOutput<String>('computeModel');
    this.customerContacts = registerOutput<List<String>?>('customerContacts');
    this.dataStorageSizeInTb = registerOutput<int>('dataStorageSizeInTb');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.databaseWorkload = registerOutput<String>('databaseWorkload');
    this.displayName = registerOutput<String>('displayName');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.location = registerOutput<String>('location');
    this.mtlsConnectionRequired = registerOutput<bool>('mtlsConnectionRequired');
    this.name = registerOutput<String>('name');
    this.nationalCharacterSet = registerOutput<String>('nationalCharacterSet');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sourceAutonomousDatabaseId = registerOutput<String>('sourceAutonomousDatabaseId');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }
}

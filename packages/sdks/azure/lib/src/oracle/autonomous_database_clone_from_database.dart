import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_clone_from_database_args.dart';
import 'autonomous_database_clone_from_database_state.dart';

/// Manages an autonomous database clone from database.
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
/// const exampleAutonomousDatabaseCloneFromDatabase = new azure.oracle.AutonomousDatabaseCloneFromDatabase("example", {
///     name: "example",
///     resourceGroupName: exampleAutonomousDatabase.resourceGroupName,
///     location: exampleAutonomousDatabase.location,
///     sourceAutonomousDatabaseId: exampleAutonomousDatabase.id,
///     cloneType: "Full",
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
/// example_autonomous_database_clone_from_database = azure.oracle.AutonomousDatabaseCloneFromDatabase("example",
///     name="example",
///     resource_group_name=example_autonomous_database.resource_group_name,
///     location=example_autonomous_database.location,
///     source_autonomous_database_id=example_autonomous_database.id,
///     clone_type="Full",
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
///     var exampleAutonomousDatabaseCloneFromDatabase = new Azure.Oracle.AutonomousDatabaseCloneFromDatabase("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleAutonomousDatabase.ResourceGroupName,
///         Location = exampleAutonomousDatabase.Location,
///         SourceAutonomousDatabaseId = exampleAutonomousDatabase.Id,
///         CloneType = "Full",
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
/// 		_, err = oracle.NewAutonomousDatabaseCloneFromDatabase(ctx, "example", &oracle.AutonomousDatabaseCloneFromDatabaseArgs{
/// 			Name:                         pulumi.String("example"),
/// 			ResourceGroupName:            exampleAutonomousDatabase.ResourceGroupName,
/// 			Location:                     exampleAutonomousDatabase.Location,
/// 			SourceAutonomousDatabaseId:   exampleAutonomousDatabase.ID(),
/// 			CloneType:                    pulumi.String("Full"),
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
/// import com.pulumi.azure.oracle.AutonomousDatabaseCloneFromDatabase;
/// import com.pulumi.azure.oracle.AutonomousDatabaseCloneFromDatabaseArgs;
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
///         var exampleAutonomousDatabaseCloneFromDatabase = new AutonomousDatabaseCloneFromDatabase("exampleAutonomousDatabaseCloneFromDatabase", AutonomousDatabaseCloneFromDatabaseArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleAutonomousDatabase.resourceGroupName())
///             .location(exampleAutonomousDatabase.location())
///             .sourceAutonomousDatabaseId(exampleAutonomousDatabase.id())
///             .cloneType("Full")
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
///   exampleAutonomousDatabaseCloneFromDatabase:
///     type: azure:oracle:AutonomousDatabaseCloneFromDatabase
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleAutonomousDatabase.resourceGroupName}
///       location: ${exampleAutonomousDatabase.location}
///       sourceAutonomousDatabaseId: ${exampleAutonomousDatabase.id}
///       cloneType: Full
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
///
/// ## Import
///
/// autonomous database clone from databases can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:oracle/autonomousDatabaseCloneFromDatabase:AutonomousDatabaseCloneFromDatabase example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Oracle.Database/autonomousDatabases/example
/// ```
class AutonomousDatabaseCloneFromDatabase extends pulumi.CustomResource {
  /// The password for the SYS, SYSTEM, and PDB Admin users. The password must be at least 12 characters long, and contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (`"`) or the username "admin", regardless of casing. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> adminPassword;

  /// Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<List<String>?> allowedIpAddresses;

  /// Indicates if auto scaling is enabled for the Autonomous Database CPU core count. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<bool> autoScalingEnabled;

  /// Indicates if auto scaling is enabled for the Autonomous Database storage. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<bool> autoScalingForStorageEnabled;

  /// Retention period, in days, for backups. Possible values range between `1` and `60`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<int> backupRetentionPeriodInDays;

  /// The character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> characterSet;

  /// The type of clone to create. Possible values are `Full` and `Metadata`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> cloneType;

  /// The compute amount (CPUs) available to the database. Possible values range between `2.0` and `512.0`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<double> computeCount;

  /// The compute model of the Autonomous Database. Possible values are `ECPU` and `OCPU`. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// &gt; **Note:** `ECPU` compute model is the recommended model and `OCPU` compute model is legacy.
  late final pulumi.Output<String> computeModel;

  /// Specifies a list of customer contacts as email addresses. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<List<String>?> customerContacts;

  /// The maximum storage that can be allocated for the database, in terabytes. Possible values range between `1` and `384`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<int> dataStorageSizeInTb;

  /// A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> databaseVersion;

  /// The Autonomous Database workload type. Possible values are `OLTP` and `DW`, `APEX`, `AJD`. Changing this forces a new Autonomous Database Clone to be created.
  /// * OLTP - indicates an Autonomous Transaction Processing database
  /// * DW - indicates an Autonomous Data Warehouse database
  /// * AJD - indicates an Autonomous JSON Database
  /// * APEX - indicates an Autonomous Database with the Oracle APEX Application Development workload type.
  ///
  /// &gt; **Note:** To clone the database with a different `database_workload` type, please refer to the documentation [here](https://docs.public.oneportal.content.oci.oraclecloud.com/iaas/autonomous-database-serverless/doc/autonomous-clone-cross-workload-type.html#GUID-527A712D-FF82-498B-AB35-8A1623E36EDD) for correct configuration steps.
  late final pulumi.Output<String> databaseWorkload;

  /// The user-friendly name for the Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> displayName;

  /// The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> licenseModel;

  /// The Azure Region where the Autonomous Database should exist. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> location;

  /// Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<bool> mtlsConnectionRequired;

  /// The name which should be used for this autonomous database clone from database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> name;

  /// The national character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> nationalCharacterSet;

  /// The refreshable model for the clone. Possible values are `Automatic` and `Manual`. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String?> refreshableModel;

  /// The name of the Resource Group where the autonomous database clone from database should exist. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The ID of the source Autonomous Database to clone from. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String> sourceAutonomousDatabaseId;

  /// The ID of the subnet the resource is associated with. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String?> subnetId;

  /// A mapping of tags to assign to the Autonomous Database Clone. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the Virtual Network this Autonomous Database Clone should be created in. Changing this forces a new Autonomous Database Clone to be created.
  late final pulumi.Output<String?> virtualNetworkId;

  /// Creates a new [AutonomousDatabaseCloneFromDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutonomousDatabaseCloneFromDatabase]. {@macro pulumi_oracle_autonomous_database_clone_from_database_autonomous_database_clone_from_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutonomousDatabaseCloneFromDatabase(
    String name, {
    AutonomousDatabaseCloneFromDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:oracle/autonomousDatabaseCloneFromDatabase:AutonomousDatabaseCloneFromDatabase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminPassword = registerOutput<String>('adminPassword');
    allowedIpAddresses = registerOutput<List<String>?>('allowedIpAddresses');
    autoScalingEnabled = registerOutput<bool>('autoScalingEnabled');
    autoScalingForStorageEnabled = registerOutput<bool>(
      'autoScalingForStorageEnabled',
    );
    backupRetentionPeriodInDays = registerOutput<int>(
      'backupRetentionPeriodInDays',
    );
    characterSet = registerOutput<String>('characterSet');
    cloneType = registerOutput<String>('cloneType');
    computeCount = registerOutput<double>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    customerContacts = registerOutput<List<String>?>('customerContacts');
    dataStorageSizeInTb = registerOutput<int>('dataStorageSizeInTb');
    databaseVersion = registerOutput<String>('databaseVersion');
    databaseWorkload = registerOutput<String>('databaseWorkload');
    displayName = registerOutput<String>('displayName');
    licenseModel = registerOutput<String>('licenseModel');
    location = registerOutput<String>('location');
    mtlsConnectionRequired = registerOutput<bool>('mtlsConnectionRequired');
    this.name = registerOutput<String>('name');
    nationalCharacterSet = registerOutput<String>('nationalCharacterSet');
    refreshableModel = registerOutput<String?>('refreshableModel');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceAutonomousDatabaseId = registerOutput<String>(
      'sourceAutonomousDatabaseId',
    );
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }

  /// Gets an existing [AutonomousDatabaseCloneFromDatabase] resource's state with the given [name] and [id].
  static AutonomousDatabaseCloneFromDatabase get(
    String name,
    pulumi.Input<String> id, {
    AutonomousDatabaseCloneFromDatabaseState? state,
  }) {
    return AutonomousDatabaseCloneFromDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutonomousDatabaseCloneFromDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:oracle/autonomousDatabaseCloneFromDatabase:AutonomousDatabaseCloneFromDatabase',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminPassword = registerOutput<String>('adminPassword');
    allowedIpAddresses = registerOutput<List<String>?>('allowedIpAddresses');
    autoScalingEnabled = registerOutput<bool>('autoScalingEnabled');
    autoScalingForStorageEnabled = registerOutput<bool>(
      'autoScalingForStorageEnabled',
    );
    backupRetentionPeriodInDays = registerOutput<int>(
      'backupRetentionPeriodInDays',
    );
    characterSet = registerOutput<String>('characterSet');
    cloneType = registerOutput<String>('cloneType');
    computeCount = registerOutput<double>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    customerContacts = registerOutput<List<String>?>('customerContacts');
    dataStorageSizeInTb = registerOutput<int>('dataStorageSizeInTb');
    databaseVersion = registerOutput<String>('databaseVersion');
    databaseWorkload = registerOutput<String>('databaseWorkload');
    displayName = registerOutput<String>('displayName');
    licenseModel = registerOutput<String>('licenseModel');
    location = registerOutput<String>('location');
    mtlsConnectionRequired = registerOutput<bool>('mtlsConnectionRequired');
    this.name = registerOutput<String>('name');
    nationalCharacterSet = registerOutput<String>('nationalCharacterSet');
    refreshableModel = registerOutput<String?>('refreshableModel');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceAutonomousDatabaseId = registerOutput<String>(
      'sourceAutonomousDatabaseId',
    );
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }
}

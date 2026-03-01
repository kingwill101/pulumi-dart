import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_backup_args.dart';
import 'autonomous_database_backup_state.dart';

/// Manages an Oracle Autonomous Database Backup in Azure.
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
///     location: "East US",
/// });
/// const exampleAutonomousDatabase = new azure.oracle.AutonomousDatabase("example", {
///     name: "example-adb",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleAutonomousDatabaseBackup = new azure.oracle.AutonomousDatabaseBackup("example", {
///     name: "example-backup",
///     autonomousDatabaseId: exampleAutonomousDatabase.id,
///     retentionPeriodInDays: 120,
///     backupType: "Full",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="East US")
/// example_autonomous_database = azure.oracle.AutonomousDatabase("example",
///     name="example-adb",
///     resource_group_name=example.name,
///     location=example.location)
/// example_autonomous_database_backup = azure.oracle.AutonomousDatabaseBackup("example",
///     name="example-backup",
///     autonomous_database_id=example_autonomous_database.id,
///     retention_period_in_days=120,
///     backup_type="Full")
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
///         Location = "East US",
///     });
///
///     var exampleAutonomousDatabase = new Azure.Oracle.AutonomousDatabase("example", new()
///     {
///         Name = "example-adb",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleAutonomousDatabaseBackup = new Azure.Oracle.AutonomousDatabaseBackup("example", new()
///     {
///         Name = "example-backup",
///         AutonomousDatabaseId = exampleAutonomousDatabase.Id,
///         RetentionPeriodInDays = 120,
///         BackupType = "Full",
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
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAutonomousDatabase, err := oracle.NewAutonomousDatabase(ctx, "example", &oracle.AutonomousDatabaseArgs{
/// 			Name:              pulumi.String("example-adb"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracle.NewAutonomousDatabaseBackup(ctx, "example", &oracle.AutonomousDatabaseBackupArgs{
/// 			Name:                  pulumi.String("example-backup"),
/// 			AutonomousDatabaseId:  exampleAutonomousDatabase.ID(),
/// 			RetentionPeriodInDays: pulumi.Int(120),
/// 			BackupType:            "Full",
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
/// import com.pulumi.azure.oracle.AutonomousDatabaseBackup;
/// import com.pulumi.azure.oracle.AutonomousDatabaseBackupArgs;
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
///             .location("East US")
///             .build());
///
///         var exampleAutonomousDatabase = new AutonomousDatabase("exampleAutonomousDatabase", AutonomousDatabaseArgs.builder()
///             .name("example-adb")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleAutonomousDatabaseBackup = new AutonomousDatabaseBackup("exampleAutonomousDatabaseBackup", AutonomousDatabaseBackupArgs.builder()
///             .name("example-backup")
///             .autonomousDatabaseId(exampleAutonomousDatabase.id())
///             .retentionPeriodInDays(120)
///             .backupType("Full")
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
///       location: East US
///   exampleAutonomousDatabase:
///     type: azure:oracle:AutonomousDatabase
///     name: example
///     properties:
///       name: example-adb
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleAutonomousDatabaseBackup:
///     type: azure:oracle:AutonomousDatabaseBackup
///     name: example
///     properties:
///       name: example-backup
///       autonomousDatabaseId: ${exampleAutonomousDatabase.id}
///       retentionPeriodInDays: 120
///       backupType: Full
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
/// Autonomous Database Backups can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azure:oracle/autonomousDatabaseBackup:AutonomousDatabaseBackup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup/providers/Oracle.Database/autonomousDatabases/autonomousDatabase1/autonomousDatabaseBackups/autonomousDatabaseBackup1
/// ```
class AutonomousDatabaseBackup extends pulumi.CustomResource {
  /// The azureId of the Autonomous Database that this backup is for. Changing this forces a new resource to be created.
  late final pulumi.Output<String> autonomousDatabaseId;
  /// The display name of the Autonomous Database Backup. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// (Updatable) The number of days to retain the backup. Must be between 90 and 3650 days.
  late final pulumi.Output<int> retentionPeriodInDays;
  /// The type of backup to create.Currently, only `LongTerm` backup operations are supported through the Oracle database At azure service. Defaults to `LongTerm`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> type;

  /// Creates a new [AutonomousDatabaseBackup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutonomousDatabaseBackup]. {@macro pulumi_oracle_autonomous_database_backup_autonomous_database_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutonomousDatabaseBackup(
    String name, {
    AutonomousDatabaseBackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/autonomousDatabaseBackup:AutonomousDatabaseBackup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autonomousDatabaseId = registerOutput<String>('autonomousDatabaseId');
    this.name = registerOutput<String>('name');
    this.retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
    this.type = registerOutput<String?>('type');
  }

  /// Gets an existing [AutonomousDatabaseBackup] resource's state with the given [name] and [id].
  static AutonomousDatabaseBackup get(
    String name,
    pulumi.Input<String> id, {
    AutonomousDatabaseBackupState? state,
  }) {
    return AutonomousDatabaseBackup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutonomousDatabaseBackup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/autonomousDatabaseBackup:AutonomousDatabaseBackup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autonomousDatabaseId = registerOutput<String>('autonomousDatabaseId');
    this.name = registerOutput<String>('name');
    this.retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
    this.type = registerOutput<String?>('type');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_adbs_character_sets_args.dart';
import 'get_adbs_character_sets_result.dart';
import 'get_adbs_national_character_sets_args.dart';
import 'get_adbs_national_character_sets_result.dart';
import 'get_autonomous_database_args.dart';
import 'get_autonomous_database_backup_args.dart';
import 'get_autonomous_database_backup_result.dart';
import 'get_autonomous_database_backups_args.dart';
import 'get_autonomous_database_backups_result.dart';
import 'get_autonomous_database_clone_from_backup_args.dart';
import 'get_autonomous_database_clone_from_backup_result.dart';
import 'get_autonomous_database_clone_from_database_args.dart';
import 'get_autonomous_database_clone_from_database_result.dart';
import 'get_autonomous_database_result.dart';
import 'get_cloud_vm_cluster_args.dart';
import 'get_cloud_vm_cluster_result.dart';
import 'get_database_system_versions_args.dart';
import 'get_database_system_versions_result.dart';
import 'get_db_nodes_args.dart';
import 'get_db_nodes_result.dart';
import 'get_db_servers_args.dart';
import 'get_db_servers_result.dart';
import 'get_db_system_shapes_args.dart';
import 'get_db_system_shapes_result.dart';
import 'get_exadata_infrastructure_args.dart';
import 'get_exadata_infrastructure_result.dart';
import 'get_exascale_database_storage_vault_args.dart';
import 'get_exascale_database_storage_vault_result.dart';
import 'get_gi_versions_args.dart';
import 'get_gi_versions_result.dart';
import 'get_resource_anchor_args.dart';
import 'get_resource_anchor_result.dart';

/// Gets a list of supported character sets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// export = async () => {
///     const example = await azure.oracle.getAdbsCharacterSets({
///         location: "West Europe",
///     });
///     return {
///         example: example,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_adbs_character_sets(location="West Europe")
/// pulumi.export("example", example)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetAdbsCharacterSets.Invoke(new()
///     {
///         Location = "West Europe",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example,
///     };
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
/// 		example, err := oracle.GetAdbsCharacterSets(ctx, &oracle.GetAdbsCharacterSetsArgs{
/// 			Location: "West Europe",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example)
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
/// data "azure_oracle_getadbscharactersets" "example" {
///   location = "West Europe"
/// }
///
/// output "example" {
///   value = data.azure_oracle_getadbscharactersets.example
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetAdbsCharacterSetsArgs;
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
///         final var example = OracleFunctions.getAdbsCharacterSets(GetAdbsCharacterSetsArgs.builder()
///             .location("West Europe")
///             .build());
///
///         ctx.export("example", example);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getAdbsCharacterSets
///       arguments:
///         location: West Europe
/// outputs:
///   example: ${example}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_adbs_character_sets_get_adbs_character_sets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdbsCharacterSetsResult> getAdbsCharacterSets(
  GetAdbsCharacterSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getAdbsCharacterSets:getAdbsCharacterSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdbsCharacterSetsResult.fromMap(result);
}

pulumi.Output<GetAdbsCharacterSetsResult> getAdbsCharacterSetsOutput(
  GetAdbsCharacterSetsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getAdbsCharacterSets:getAdbsCharacterSets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAdbsCharacterSetsResult.fromMap);
}

/// Gets a list of supported national character sets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// export = async () => {
///     const example = await azure.oracle.getAdbsCharacterSets({
///         location: "West Europe",
///     });
///     return {
///         example: exampleAzurermOracleAdbsNationalCharacterSets,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_adbs_character_sets(location="West Europe")
/// pulumi.export("example", example_azurerm_oracle_adbs_national_character_sets)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetAdbsCharacterSets.Invoke(new()
///     {
///         Location = "West Europe",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = exampleAzurermOracleAdbsNationalCharacterSets,
///     };
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
/// 		_, err := oracle.GetAdbsCharacterSets(ctx, &oracle.GetAdbsCharacterSetsArgs{
/// 			Location: "West Europe",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", pulumi.Any(exampleAzurermOracleAdbsNationalCharacterSets))
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
/// data "azure_oracle_getadbscharactersets" "example" {
///   location = "West Europe"
/// }
///
/// output "example" {
///   value = exampleAzurermOracleAdbsNationalCharacterSets
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetAdbsCharacterSetsArgs;
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
///         final var example = OracleFunctions.getAdbsCharacterSets(GetAdbsCharacterSetsArgs.builder()
///             .location("West Europe")
///             .build());
///
///         ctx.export("example", exampleAzurermOracleAdbsNationalCharacterSets);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getAdbsCharacterSets
///       arguments:
///         location: West Europe
/// outputs:
///   example: ${exampleAzurermOracleAdbsNationalCharacterSets}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_adbs_national_character_sets_get_adbs_national_character_sets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdbsNationalCharacterSetsResult> getAdbsNationalCharacterSets(
  GetAdbsNationalCharacterSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getAdbsNationalCharacterSets:getAdbsNationalCharacterSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdbsNationalCharacterSetsResult.fromMap(result);
}

pulumi.Output<GetAdbsNationalCharacterSetsResult> getAdbsNationalCharacterSetsOutput(
  GetAdbsNationalCharacterSetsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getAdbsNationalCharacterSets:getAdbsNationalCharacterSets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAdbsNationalCharacterSetsResult.fromMap);
}

/// Use this data source to access information about an existing Autonomous Database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getAutonomousDatabase({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_autonomous_database(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetAutonomousDatabase.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAutonomousDatabaseResult => getAutonomousDatabaseResult.Id),
///     };
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
/// 		example, err := oracle.LookupAutonomousDatabase(ctx, &oracle.LookupAutonomousDatabaseArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getautonomousdatabase" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getautonomousdatabase.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetAutonomousDatabaseArgs;
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
///         final var example = OracleFunctions.getAutonomousDatabase(GetAutonomousDatabaseArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getAutonomousDatabase
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_autonomous_database_get_autonomous_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutonomousDatabaseResult> getAutonomousDatabase(
  GetAutonomousDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabase:getAutonomousDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabaseResult.fromMap(result);
}

pulumi.Output<GetAutonomousDatabaseResult> getAutonomousDatabaseOutput(
  GetAutonomousDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabase:getAutonomousDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutonomousDatabaseResult.fromMap);
}

/// Use this data source to access information about existing Autonomous Database Backups.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getAutonomousDatabaseBackup({
///     autonomousDatabaseId: exampleAzurermOracleAutonomousDatabase.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_autonomous_database_backup(autonomous_database_id=example_azurerm_oracle_autonomous_database["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetAutonomousDatabaseBackup.Invoke(new()
///     {
///         AutonomousDatabaseId = exampleAzurermOracleAutonomousDatabase.Id,
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
/// 		_, err := oracle.LookupAutonomousDatabaseBackup(ctx, &oracle.LookupAutonomousDatabaseBackupArgs{
/// 			AutonomousDatabaseId: exampleAzurermOracleAutonomousDatabase.Id,
/// 		}, nil)
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
/// data "azure_oracle_getautonomousdatabasebackup" "example" {
///   autonomous_database_id = exampleAzurermOracleAutonomousDatabase.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetAutonomousDatabaseBackupArgs;
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
///         final var example = OracleFunctions.getAutonomousDatabaseBackup(GetAutonomousDatabaseBackupArgs.builder()
///             .autonomousDatabaseId(exampleAzurermOracleAutonomousDatabase.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getAutonomousDatabaseBackup
///       arguments:
///         autonomousDatabaseId: ${exampleAzurermOracleAutonomousDatabase.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_autonomous_database_backup_get_autonomous_database_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutonomousDatabaseBackupResult> getAutonomousDatabaseBackup(
  GetAutonomousDatabaseBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabaseBackup:getAutonomousDatabaseBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabaseBackupResult.fromMap(result);
}

pulumi.Output<GetAutonomousDatabaseBackupResult> getAutonomousDatabaseBackupOutput(
  GetAutonomousDatabaseBackupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabaseBackup:getAutonomousDatabaseBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutonomousDatabaseBackupResult.fromMap);
}

/// Use this data source to access information about existing Autonomous Database Backups.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getAutonomousDatabaseBackups({
///     autonomousDatabaseId: exampleAzurermOracleAutonomousDatabase.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_autonomous_database_backups(autonomous_database_id=example_azurerm_oracle_autonomous_database["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetAutonomousDatabaseBackups.Invoke(new()
///     {
///         AutonomousDatabaseId = exampleAzurermOracleAutonomousDatabase.Id,
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
/// 		_, err := oracle.GetAutonomousDatabaseBackups(ctx, &oracle.GetAutonomousDatabaseBackupsArgs{
/// 			AutonomousDatabaseId: exampleAzurermOracleAutonomousDatabase.Id,
/// 		}, nil)
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
/// data "azure_oracle_getautonomousdatabasebackups" "example" {
///   autonomous_database_id = exampleAzurermOracleAutonomousDatabase.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetAutonomousDatabaseBackupsArgs;
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
///         final var example = OracleFunctions.getAutonomousDatabaseBackups(GetAutonomousDatabaseBackupsArgs.builder()
///             .autonomousDatabaseId(exampleAzurermOracleAutonomousDatabase.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getAutonomousDatabaseBackups
///       arguments:
///         autonomousDatabaseId: ${exampleAzurermOracleAutonomousDatabase.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_autonomous_database_backups_get_autonomous_database_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutonomousDatabaseBackupsResult> getAutonomousDatabaseBackups(
  GetAutonomousDatabaseBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabaseBackups:getAutonomousDatabaseBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabaseBackupsResult.fromMap(result);
}

pulumi.Output<GetAutonomousDatabaseBackupsResult> getAutonomousDatabaseBackupsOutput(
  GetAutonomousDatabaseBackupsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabaseBackups:getAutonomousDatabaseBackups',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutonomousDatabaseBackupsResult.fromMap);
}

/// Use this data source to access information about an existing autonomous database clone from backup.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getAutonomousDatabaseCloneFromBackup({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_autonomous_database_clone_from_backup(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetAutonomousDatabaseCloneFromBackup.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAutonomousDatabaseCloneFromBackupResult => getAutonomousDatabaseCloneFromBackupResult.Id),
///     };
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
/// 		example, err := oracle.LookupAutonomousDatabaseCloneFromBackup(ctx, &oracle.LookupAutonomousDatabaseCloneFromBackupArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getautonomousdatabaseclonefrombackup" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getautonomousdatabaseclonefrombackup.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetAutonomousDatabaseCloneFromBackupArgs;
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
///         final var example = OracleFunctions.getAutonomousDatabaseCloneFromBackup(GetAutonomousDatabaseCloneFromBackupArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getAutonomousDatabaseCloneFromBackup
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_autonomous_database_clone_from_backup_get_autonomous_database_clone_from_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutonomousDatabaseCloneFromBackupResult> getAutonomousDatabaseCloneFromBackup(
  GetAutonomousDatabaseCloneFromBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabaseCloneFromBackup:getAutonomousDatabaseCloneFromBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabaseCloneFromBackupResult.fromMap(result);
}

pulumi.Output<GetAutonomousDatabaseCloneFromBackupResult> getAutonomousDatabaseCloneFromBackupOutput(
  GetAutonomousDatabaseCloneFromBackupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabaseCloneFromBackup:getAutonomousDatabaseCloneFromBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutonomousDatabaseCloneFromBackupResult.fromMap);
}

/// Use this data source to access information about an existing autonomous database clone from database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getAutonomousDatabaseCloneFromDatabase({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_autonomous_database_clone_from_database(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetAutonomousDatabaseCloneFromDatabase.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAutonomousDatabaseCloneFromDatabaseResult => getAutonomousDatabaseCloneFromDatabaseResult.Id),
///     };
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
/// 		example, err := oracle.LookupAutonomousDatabaseCloneFromDatabase(ctx, &oracle.LookupAutonomousDatabaseCloneFromDatabaseArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getautonomousdatabaseclonefromdatabase" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getautonomousdatabaseclonefromdatabase.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetAutonomousDatabaseCloneFromDatabaseArgs;
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
///         final var example = OracleFunctions.getAutonomousDatabaseCloneFromDatabase(GetAutonomousDatabaseCloneFromDatabaseArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getAutonomousDatabaseCloneFromDatabase
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_autonomous_database_clone_from_database_get_autonomous_database_clone_from_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutonomousDatabaseCloneFromDatabaseResult> getAutonomousDatabaseCloneFromDatabase(
  GetAutonomousDatabaseCloneFromDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabaseCloneFromDatabase:getAutonomousDatabaseCloneFromDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabaseCloneFromDatabaseResult.fromMap(result);
}

pulumi.Output<GetAutonomousDatabaseCloneFromDatabaseResult> getAutonomousDatabaseCloneFromDatabaseOutput(
  GetAutonomousDatabaseCloneFromDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getAutonomousDatabaseCloneFromDatabase:getAutonomousDatabaseCloneFromDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutonomousDatabaseCloneFromDatabaseResult.fromMap);
}

/// Use this data source to access information about an existing Cloud VM Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getCloudVmCluster({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_cloud_vm_cluster(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetCloudVmCluster.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getCloudVmClusterResult => getCloudVmClusterResult.Id),
///     };
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
/// 		example, err := oracle.LookupCloudVmCluster(ctx, &oracle.LookupCloudVmClusterArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getcloudvmcluster" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getcloudvmcluster.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetCloudVmClusterArgs;
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
///         final var example = OracleFunctions.getCloudVmCluster(GetCloudVmClusterArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getCloudVmCluster
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudVmClusterResult> getCloudVmCluster(
  GetCloudVmClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getCloudVmCluster:getCloudVmCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudVmClusterResult.fromMap(result);
}

pulumi.Output<GetCloudVmClusterResult> getCloudVmClusterOutput(
  GetCloudVmClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getCloudVmCluster:getCloudVmCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudVmClusterResult.fromMap);
}

/// Use this data source to access information about existing Oracle Database Systems Versions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getDatabaseSystemVersions({
///     location: "eastus",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_database_system_versions(location="eastus")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetDatabaseSystemVersions.Invoke(new()
///     {
///         Location = "eastus",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDatabaseSystemVersionsResult => getDatabaseSystemVersionsResult.Id),
///     };
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
/// 		example, err := oracle.GetDatabaseSystemVersions(ctx, &oracle.GetDatabaseSystemVersionsArgs{
/// 			Location: "eastus",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getdatabasesystemversions" "example" {
///   location = "eastus"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getdatabasesystemversions.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetDatabaseSystemVersionsArgs;
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
///         final var example = OracleFunctions.getDatabaseSystemVersions(GetDatabaseSystemVersionsArgs.builder()
///             .location("eastus")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getDatabaseSystemVersions
///       arguments:
///         location: eastus
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_database_system_versions_get_database_system_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseSystemVersionsResult> getDatabaseSystemVersions(
  GetDatabaseSystemVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getDatabaseSystemVersions:getDatabaseSystemVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseSystemVersionsResult.fromMap(result);
}

pulumi.Output<GetDatabaseSystemVersionsResult> getDatabaseSystemVersionsOutput(
  GetDatabaseSystemVersionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getDatabaseSystemVersions:getDatabaseSystemVersions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseSystemVersionsResult.fromMap);
}

/// Lists the database nodes for the specified Cloud VM Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// export = async () => {
///     const example = await azure.oracle.getDbNodes({
///         cloudVmClusterId: "existing",
///     });
///     return {
///         example: example,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_db_nodes(cloud_vm_cluster_id="existing")
/// pulumi.export("example", example)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetDbNodes.Invoke(new()
///     {
///         CloudVmClusterId = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example,
///     };
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
/// 		example, err := oracle.GetDbNodes(ctx, &oracle.GetDbNodesArgs{
/// 			CloudVmClusterId: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example)
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
/// data "azure_oracle_getdbnodes" "example" {
///   cloud_vm_cluster_id = "existing"
/// }
///
/// output "example" {
///   value = data.azure_oracle_getdbnodes.example
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetDbNodesArgs;
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
///         final var example = OracleFunctions.getDbNodes(GetDbNodesArgs.builder()
///             .cloudVmClusterId("existing")
///             .build());
///
///         ctx.export("example", example);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getDbNodes
///       arguments:
///         cloudVmClusterId: existing
/// outputs:
///   example: ${example}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_db_nodes_get_db_nodes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbNodesResult> getDbNodes(
  GetDbNodesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getDbNodes:getDbNodes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbNodesResult.fromMap(result);
}

pulumi.Output<GetDbNodesResult> getDbNodesOutput(
  GetDbNodesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getDbNodes:getDbNodes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbNodesResult.fromMap);
}

/// Use this data source to access information about existing DB Servers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getDbServers({
///     resourceGroupName: "existing",
///     cloudExadataInfrastructureName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_db_servers(resource_group_name="existing",
///     cloud_exadata_infrastructure_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetDbServers.Invoke(new()
///     {
///         ResourceGroupName = "existing",
///         CloudExadataInfrastructureName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDbServersResult => getDbServersResult.Id),
///     };
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
/// 		example, err := oracle.GetDbServers(ctx, &oracle.GetDbServersArgs{
/// 			ResourceGroupName:              "existing",
/// 			CloudExadataInfrastructureName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getdbservers" "example" {
///   resource_group_name               = "existing"
///   cloud_exadata_infrastructure_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getdbservers.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetDbServersArgs;
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
///         final var example = OracleFunctions.getDbServers(GetDbServersArgs.builder()
///             .resourceGroupName("existing")
///             .cloudExadataInfrastructureName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getDbServers
///       arguments:
///         resourceGroupName: existing
///         cloudExadataInfrastructureName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_db_servers_get_db_servers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbServersResult> getDbServers(
  GetDbServersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getDbServers:getDbServers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbServersResult.fromMap(result);
}

pulumi.Output<GetDbServersResult> getDbServersOutput(
  GetDbServersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getDbServers:getDbServers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbServersResult.fromMap);
}

/// This data source provides the list of DB System Shapes in Oracle Cloud Infrastructure Database service.
///
/// Gets a list of the shapes that can be used to launch a new DB system. The shape determines resources to allocate to the DB system - CPU cores and memory for VM shapes; CPU cores, memory and storage for non-VM (or bare metal) shapes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// export = async () => {
///     const example = await azure.oracle.getDbSystemShapes({
///         location: "eastus",
///         zone: "2",
///     });
///     return {
///         example: example,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_db_system_shapes(location="eastus",
///     zone="2")
/// pulumi.export("example", example)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetDbSystemShapes.Invoke(new()
///     {
///         Location = "eastus",
///         Zone = "2",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example,
///     };
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
/// 		example, err := oracle.GetDbSystemShapes(ctx, &oracle.GetDbSystemShapesArgs{
/// 			Location: "eastus",
/// 			Zone:     pulumi.StringRef("2"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example)
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
/// data "azure_oracle_getdbsystemshapes" "example" {
///   location = "eastus"
///   zone     = "2"
/// }
///
/// output "example" {
///   value = data.azure_oracle_getdbsystemshapes.example
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetDbSystemShapesArgs;
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
///         final var example = OracleFunctions.getDbSystemShapes(GetDbSystemShapesArgs.builder()
///             .location("eastus")
///             .zone("2")
///             .build());
///
///         ctx.export("example", example);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getDbSystemShapes
///       arguments:
///         location: eastus
///         zone: '2'
/// outputs:
///   example: ${example}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_db_system_shapes_get_db_system_shapes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbSystemShapesResult> getDbSystemShapes(
  GetDbSystemShapesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getDbSystemShapes:getDbSystemShapes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbSystemShapesResult.fromMap(result);
}

pulumi.Output<GetDbSystemShapesResult> getDbSystemShapesOutput(
  GetDbSystemShapesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getDbSystemShapes:getDbSystemShapes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDbSystemShapesResult.fromMap);
}

/// Use this data source to access information about an existing Cloud Exadata Infrastructure.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getExadataInfrastructure({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_exadata_infrastructure(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetExadataInfrastructure.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getExadataInfrastructureResult => getExadataInfrastructureResult.Id),
///     };
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
/// 		example, err := oracle.LookupExadataInfrastructure(ctx, &oracle.LookupExadataInfrastructureArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getexadatainfrastructure" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getexadatainfrastructure.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetExadataInfrastructureArgs;
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
///         final var example = OracleFunctions.getExadataInfrastructure(GetExadataInfrastructureArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getExadataInfrastructure
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_exadata_infrastructure_get_exadata_infrastructure_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExadataInfrastructureResult> getExadataInfrastructure(
  GetExadataInfrastructureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getExadataInfrastructure:getExadataInfrastructure',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExadataInfrastructureResult.fromMap(result);
}

pulumi.Output<GetExadataInfrastructureResult> getExadataInfrastructureOutput(
  GetExadataInfrastructureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getExadataInfrastructure:getExadataInfrastructure',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExadataInfrastructureResult.fromMap);
}

/// Use this data source to access information about an existing Exadata Database Storage Vault
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getExascaleDatabaseStorageVault({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_exascale_database_storage_vault(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetExascaleDatabaseStorageVault.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getExascaleDatabaseStorageVaultResult => getExascaleDatabaseStorageVaultResult.Id),
///     };
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
/// 		example, err := oracle.LookupExascaleDatabaseStorageVault(ctx, &oracle.LookupExascaleDatabaseStorageVaultArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getexascaledatabasestoragevault" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getexascaledatabasestoragevault.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetExascaleDatabaseStorageVaultArgs;
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
///         final var example = OracleFunctions.getExascaleDatabaseStorageVault(GetExascaleDatabaseStorageVaultArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getExascaleDatabaseStorageVault
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_exascale_database_storage_vault_get_exascale_database_storage_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExascaleDatabaseStorageVaultResult> getExascaleDatabaseStorageVault(
  GetExascaleDatabaseStorageVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getExascaleDatabaseStorageVault:getExascaleDatabaseStorageVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExascaleDatabaseStorageVaultResult.fromMap(result);
}

pulumi.Output<GetExascaleDatabaseStorageVaultResult> getExascaleDatabaseStorageVaultOutput(
  GetExascaleDatabaseStorageVaultArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getExascaleDatabaseStorageVault:getExascaleDatabaseStorageVault',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExascaleDatabaseStorageVaultResult.fromMap);
}

/// This data source provides the list of GI Versions in Oracle Cloud Infrastructure Database service.
///
/// Gets a list of supported GI versions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// export = async () => {
///     const example = await azure.oracle.getGiVersions({
///         location: "eastus",
///         zone: "2",
///         shape: "Exadata.X9M",
///     });
///     return {
///         example: example,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_gi_versions(location="eastus",
///     zone="2",
///     shape="Exadata.X9M")
/// pulumi.export("example", example)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetGiVersions.Invoke(new()
///     {
///         Location = "eastus",
///         Zone = "2",
///         Shape = "Exadata.X9M",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example,
///     };
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
/// 		example, err := oracle.GetGiVersions(ctx, &oracle.GetGiVersionsArgs{
/// 			Location: "eastus",
/// 			Zone:     pulumi.StringRef("2"),
/// 			Shape:    pulumi.StringRef("Exadata.X9M"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example)
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
/// data "azure_oracle_getgiversions" "example" {
///   location = "eastus"
///   zone     = "2"
///   shape    = "Exadata.X9M"
/// }
///
/// output "example" {
///   value = data.azure_oracle_getgiversions.example
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetGiVersionsArgs;
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
///         final var example = OracleFunctions.getGiVersions(GetGiVersionsArgs.builder()
///             .location("eastus")
///             .zone("2")
///             .shape("Exadata.X9M")
///             .build());
///
///         ctx.export("example", example);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getGiVersions
///       arguments:
///         location: eastus
///         zone: '2'
///         shape: Exadata.X9M
/// outputs:
///   example: ${example}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_gi_versions_get_gi_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGiVersionsResult> getGiVersions(
  GetGiVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getGiVersions:getGiVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGiVersionsResult.fromMap(result);
}

pulumi.Output<GetGiVersionsResult> getGiVersionsOutput(
  GetGiVersionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getGiVersions:getGiVersions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGiVersionsResult.fromMap);
}

/// Use this data source to access information about an existing Oracle Resource Anchor.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.oracle.getResourceAnchor({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.oracle.get_resource_anchor(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Oracle.GetResourceAnchor.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getResourceAnchorResult => getResourceAnchorResult.Id),
///     };
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
/// 		example, err := oracle.LookupResourceAnchor(ctx, &oracle.LookupResourceAnchorArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_oracle_getresourceanchor" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_oracle_getresourceanchor.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.oracle.OracleFunctions;
/// import com.pulumi.azure.oracle.inputs.GetResourceAnchorArgs;
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
///         final var example = OracleFunctions.getResourceAnchor(GetResourceAnchorArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:oracle:getResourceAnchor
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
/// [args] Arguments passed to this invoke. {@macro pulumi_oracle_get_resource_anchor_get_resource_anchor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceAnchorResult> getResourceAnchor(
  GetResourceAnchorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:oracle/getResourceAnchor:getResourceAnchor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceAnchorResult.fromMap(result);
}

pulumi.Output<GetResourceAnchorResult> getResourceAnchorOutput(
  GetResourceAnchorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:oracle/getResourceAnchor:getResourceAnchor',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourceAnchorResult.fromMap);
}

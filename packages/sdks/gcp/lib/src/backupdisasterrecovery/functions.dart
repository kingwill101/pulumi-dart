import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_args.dart';
import 'get_backup_plan_args.dart';
import 'get_backup_plan_association_args.dart';
import 'get_backup_plan_association_result.dart';
import 'get_backup_plan_associations_args.dart';
import 'get_backup_plan_associations_result.dart';
import 'get_backup_plan_result.dart';
import 'get_backup_result.dart';
import 'get_backup_vault_args.dart';
import 'get_backup_vault_result.dart';
import 'get_data_source_args.dart';
import 'get_data_source_reference_args.dart';
import 'get_data_source_reference_result.dart';
import 'get_data_source_references_args.dart';
import 'get_data_source_references_result.dart';
import 'get_data_source_result.dart';
import 'get_data_sources_args.dart';
import 'get_data_sources_result.dart';
import 'get_management_server_args.dart';
import 'get_management_server_result.dart';

/// A Backup and DR Backup.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.backupdisasterrecovery.getBackup({
///     location: "us-central1",
///     project: "project-test",
///     dataSourceId: "ds-test",
///     backupVaultId: "bv-test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.backupdisasterrecovery.get_backup(location="us-central1",
///     project="project-test",
///     data_source_id="ds-test",
///     backup_vault_id="bv-test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.BackupDisasterRecovery.GetBackup.Invoke(new()
///     {
///         Location = "us-central1",
///         Project = "project-test",
///         DataSourceId = "ds-test",
///         BackupVaultId = "bv-test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.GetBackup(ctx, &backupdisasterrecovery.GetBackupArgs{
/// 			Location:      "us-central1",
/// 			Project:       "project-test",
/// 			DataSourceId:  "ds-test",
/// 			BackupVaultId: "bv-test",
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_backupdisasterrecovery_getbackup" "foo" {
///   location        = "us-central1"
///   project         = "project-test"
///   data_source_id  = "ds-test"
///   backup_vault_id = "bv-test"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetBackupArgs;
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
///         final var foo = BackupdisasterrecoveryFunctions.getBackup(GetBackupArgs.builder()
///             .location("us-central1")
///             .project("project-test")
///             .dataSourceId("ds-test")
///             .backupVaultId("bv-test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:backupdisasterrecovery:getBackup
///       arguments:
///         location: us-central1
///         project: project-test
///         dataSourceId: ds-test
///         backupVaultId: bv-test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_backup_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackup:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}

pulumi.Output<GetBackupResult> getBackupOutput(
  GetBackupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackup:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupResult.fromMap);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_backup_plan_get_backup_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlanResult> getBackupPlan(
  GetBackupPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlan:getBackupPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanResult.fromMap(result);
}

pulumi.Output<GetBackupPlanResult> getBackupPlanOutput(
  GetBackupPlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlan:getBackupPlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupPlanResult.fromMap);
}

/// A Backup and DR BackupPlanAssociation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_backupplan_association = gcp.backupdisasterrecovery.getBackupPlanAssociation({
///     location: "us-central1",
///     backupPlanAssociationId: "bpa-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backupplan_association = gcp.backupdisasterrecovery.get_backup_plan_association(location="us-central1",
///     backup_plan_association_id="bpa-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_backupplan_association = Gcp.BackupDisasterRecovery.GetBackupPlanAssociation.Invoke(new()
///     {
///         Location = "us-central1",
///         BackupPlanAssociationId = "bpa-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.LookupBackupPlanAssociation(ctx, &backupdisasterrecovery.LookupBackupPlanAssociationArgs{
/// 			Location:                "us-central1",
/// 			BackupPlanAssociationId: "bpa-id",
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_backupdisasterrecovery_getbackupplanassociation" "my-backupplan-association" {
///   location                   = "us-central1"
///   backup_plan_association_id = "bpa-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetBackupPlanAssociationArgs;
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
///         final var my-backupplan-association = BackupdisasterrecoveryFunctions.getBackupPlanAssociation(GetBackupPlanAssociationArgs.builder()
///             .location("us-central1")
///             .backupPlanAssociationId("bpa-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-backupplan-association:
///     fn::invoke:
///       function: gcp:backupdisasterrecovery:getBackupPlanAssociation
///       arguments:
///         location: us-central1
///         backupPlanAssociationId: bpa-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_backup_plan_association_get_backup_plan_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlanAssociationResult> getBackupPlanAssociation(
  GetBackupPlanAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlanAssociation:getBackupPlanAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanAssociationResult.fromMap(result);
}

pulumi.Output<GetBackupPlanAssociationResult> getBackupPlanAssociationOutput(
  GetBackupPlanAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlanAssociation:getBackupPlanAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupPlanAssociationResult.fromMap);
}

/// Provides a list of Backup and DR BackupPlanAssociations.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const allAssociations = gcp.backupdisasterrecovery.getBackupPlanAssociations({
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all_associations = gcp.backupdisasterrecovery.get_backup_plan_associations(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var allAssociations = Gcp.BackupDisasterRecovery.GetBackupPlanAssociations.Invoke(new()
///     {
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.GetBackupPlanAssociations(ctx, &backupdisasterrecovery.GetBackupPlanAssociationsArgs{
/// 			Location: "us-central1",
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_backupdisasterrecovery_getbackupplanassociations" "allAssociations" {
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetBackupPlanAssociationsArgs;
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
///         final var allAssociations = BackupdisasterrecoveryFunctions.getBackupPlanAssociations(GetBackupPlanAssociationsArgs.builder()
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   allAssociations:
///     fn::invoke:
///       function: gcp:backupdisasterrecovery:getBackupPlanAssociations
///       arguments:
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_backup_plan_associations_get_backup_plan_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlanAssociationsResult> getBackupPlanAssociations(
  GetBackupPlanAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlanAssociations:getBackupPlanAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlanAssociationsResult.fromMap(result);
}

pulumi.Output<GetBackupPlanAssociationsResult> getBackupPlanAssociationsOutput(
  GetBackupPlanAssociationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupPlanAssociations:getBackupPlanAssociations',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupPlanAssociationsResult.fromMap);
}

/// A Backup and DRBackupVault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_backup_vault = gcp.backupdisasterrecovery.getBackupVault({
///     location: "us-central1",
///     backupVaultId: "bv-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_vault = gcp.backupdisasterrecovery.get_backup_vault(location="us-central1",
///     backup_vault_id="bv-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_backup_vault = Gcp.BackupDisasterRecovery.GetBackupVault.Invoke(new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "bv-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.LookupBackupVault(ctx, &backupdisasterrecovery.LookupBackupVaultArgs{
/// 			Location:      "us-central1",
/// 			BackupVaultId: "bv-1",
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_backupdisasterrecovery_getbackupvault" "my-backup-vault" {
///   location        = "us-central1"
///   backup_vault_id = "bv-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetBackupVaultArgs;
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
///         final var my-backup-vault = BackupdisasterrecoveryFunctions.getBackupVault(GetBackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("bv-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-backup-vault:
///     fn::invoke:
///       function: gcp:backupdisasterrecovery:getBackupVault
///       arguments:
///         location: us-central1
///         backupVaultId: bv-1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_backup_vault_get_backup_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupVaultResult> getBackupVault(
  GetBackupVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupVault:getBackupVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupVaultResult.fromMap(result);
}

pulumi.Output<GetBackupVaultResult> getBackupVaultOutput(
  GetBackupVaultArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getBackupVault:getBackupVault',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupVaultResult.fromMap);
}

/// A Backup and DR Data Source.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.backupdisasterrecovery.getDataSource({
///     location: "us-central1",
///     project: "project-test",
///     dataSourceId: "ds-test",
///     backupVaultId: "bv-test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.backupdisasterrecovery.get_data_source(location="us-central1",
///     project="project-test",
///     data_source_id="ds-test",
///     backup_vault_id="bv-test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.BackupDisasterRecovery.GetDataSource.Invoke(new()
///     {
///         Location = "us-central1",
///         Project = "project-test",
///         DataSourceId = "ds-test",
///         BackupVaultId = "bv-test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.GetDataSource(ctx, &backupdisasterrecovery.GetDataSourceArgs{
/// 			Location:      "us-central1",
/// 			Project:       pulumi.StringRef("project-test"),
/// 			DataSourceId:  "ds-test",
/// 			BackupVaultId: "bv-test",
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_backupdisasterrecovery_getdatasource" "foo" {
///   location        = "us-central1"
///   project         = "project-test"
///   data_source_id  = "ds-test"
///   backup_vault_id = "bv-test"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetDataSourceArgs;
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
///         final var foo = BackupdisasterrecoveryFunctions.getDataSource(GetDataSourceArgs.builder()
///             .location("us-central1")
///             .project("project-test")
///             .dataSourceId("ds-test")
///             .backupVaultId("bv-test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:backupdisasterrecovery:getDataSource
///       arguments:
///         location: us-central1
///         project: project-test
///         dataSourceId: ds-test
///         backupVaultId: bv-test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_data_source_get_data_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataSourceResult> getDataSource(
  GetDataSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSource:getDataSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSourceResult.fromMap(result);
}

pulumi.Output<GetDataSourceResult> getDataSourceOutput(
  GetDataSourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSource:getDataSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataSourceResult.fromMap);
}

/// Get information about a specific Backup and DR data source reference.
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_data_source_reference_get_data_source_reference_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataSourceReferenceResult> getDataSourceReference(
  GetDataSourceReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSourceReference:getDataSourceReference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSourceReferenceResult.fromMap(result);
}

pulumi.Output<GetDataSourceReferenceResult> getDataSourceReferenceOutput(
  GetDataSourceReferenceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSourceReference:getDataSourceReference',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataSourceReferenceResult.fromMap);
}

/// A list of Backup and DR data source references.
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_data_source_references_get_data_source_references_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataSourceReferencesResult> getDataSourceReferences(
  GetDataSourceReferencesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSourceReferences:getDataSourceReferences',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSourceReferencesResult.fromMap(result);
}

pulumi.Output<GetDataSourceReferencesResult> getDataSourceReferencesOutput(
  GetDataSourceReferencesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSourceReferences:getDataSourceReferences',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataSourceReferencesResult.fromMap);
}

/// A Backup and DR Data Sources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.backupdisasterrecovery.getDataSources({
///     location: "us-central1",
///     project: "project-test",
///     backupVaultId: "bv-test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.backupdisasterrecovery.get_data_sources(location="us-central1",
///     project="project-test",
///     backup_vault_id="bv-test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.BackupDisasterRecovery.GetDataSources.Invoke(new()
///     {
///         Location = "us-central1",
///         Project = "project-test",
///         BackupVaultId = "bv-test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.GetDataSources(ctx, &backupdisasterrecovery.GetDataSourcesArgs{
/// 			Location:      "us-central1",
/// 			Project:       pulumi.StringRef("project-test"),
/// 			BackupVaultId: "bv-test",
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_backupdisasterrecovery_getdatasources" "foo" {
///   location        = "us-central1"
///   project         = "project-test"
///   backup_vault_id = "bv-test"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetDataSourcesArgs;
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
///         final var foo = BackupdisasterrecoveryFunctions.getDataSources(GetDataSourcesArgs.builder()
///             .location("us-central1")
///             .project("project-test")
///             .backupVaultId("bv-test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:backupdisasterrecovery:getDataSources
///       arguments:
///         location: us-central1
///         project: project-test
///         backupVaultId: bv-test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_data_sources_get_data_sources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataSourcesResult> getDataSources(
  GetDataSourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSources:getDataSources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSourcesResult.fromMap(result);
}

pulumi.Output<GetDataSourcesResult> getDataSourcesOutput(
  GetDataSourcesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getDataSources:getDataSources',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataSourcesResult.fromMap);
}

/// Get information about a Google Backup DR Management server.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_backup_dr_management_server = gcp.backupdisasterrecovery.getManagementServer({
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_dr_management_server = gcp.backupdisasterrecovery.get_management_server(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_backup_dr_management_server = Gcp.BackupDisasterRecovery.GetManagementServer.Invoke(new()
///     {
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.LookupManagementServer(ctx, &backupdisasterrecovery.LookupManagementServerArgs{
/// 			Location: "us-central1",
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_backupdisasterrecovery_getmanagementserver" "my-backup-dr-management-server" {
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetManagementServerArgs;
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
///         final var my-backup-dr-management-server = BackupdisasterrecoveryFunctions.getManagementServer(GetManagementServerArgs.builder()
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-backup-dr-management-server:
///     fn::invoke:
///       function: gcp:backupdisasterrecovery:getManagementServer
///       arguments:
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_backupdisasterrecovery_get_management_server_get_management_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementServerResult> getManagementServer(
  GetManagementServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getManagementServer:getManagementServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementServerResult.fromMap(result);
}

pulumi.Output<GetManagementServerResult> getManagementServerOutput(
  GetManagementServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getManagementServer:getManagementServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementServerResult.fromMap);
}

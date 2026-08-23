import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_run_args.dart';
import 'get_backup_run_result.dart';
import 'get_ca_certs_args.dart';
import 'get_ca_certs_result.dart';
import 'get_database_args.dart';
import 'get_database_instance_args.dart';
import 'get_database_instance_latest_recovery_time_args.dart';
import 'get_database_instance_latest_recovery_time_result.dart';
import 'get_database_instance_result.dart';
import 'get_database_instances_args.dart';
import 'get_database_instances_result.dart';
import 'get_database_result.dart';
import 'get_databases_args.dart';
import 'get_databases_result.dart';
import 'get_tiers_args.dart';
import 'get_tiers_result.dart';

/// Use this data source to get information about a Cloud SQL instance backup run.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const backup = gcp.sql.getBackupRun({
///     instance: main.name,
///     mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// backup = gcp.sql.get_backup_run(instance=main["name"],
///     most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backup = Gcp.Sql.GetBackupRun.Invoke(new()
///     {
///         Instance = main.Name,
///         MostRecent = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.GetBackupRun(ctx, &sql.GetBackupRunArgs{
/// 			Instance:   main.Name,
/// 			MostRecent: pulumi.BoolRef(true),
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
/// data "gcp_sql_getbackuprun" "backup" {
///   instance    = main.name
///   most_recent = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.SqlFunctions;
/// import com.pulumi.gcp.sql.inputs.GetBackupRunArgs;
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
///         final var backup = SqlFunctions.getBackupRun(GetBackupRunArgs.builder()
///             .instance(main.get("name"))
///             .mostRecent(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   backup:
///     fn::invoke:
///       function: gcp:sql:getBackupRun
///       arguments:
///         instance: ${main.name}
///         mostRecent: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_backup_run_get_backup_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupRunResult> getBackupRun(
  GetBackupRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getBackupRun:getBackupRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupRunResult.fromMap(result);
}

/// Get all of the trusted Certificate Authorities (CAs) for the specified SQL database instance. For more information see the
/// [official documentation](https://cloud.google.com/sql/)
/// and
/// [API](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/instances/listServerCas).
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_ca_certs_get_ca_certs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCaCertsResult> getCaCerts(
  GetCaCertsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getCaCerts:getCaCerts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaCertsResult.fromMap(result);
}

/// Use this data source to get information about a database in a Cloud SQL instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.sql.getDatabase({
///     name: "test-sql-database",
///     instance: main.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.sql.get_database(name="test-sql-database",
///     instance=main["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.Sql.GetDatabase.Invoke(new()
///     {
///         Name = "test-sql-database",
///         Instance = main.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.LookupDatabase(ctx, &sql.LookupDatabaseArgs{
/// 			Name:     "test-sql-database",
/// 			Instance: main.Name,
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
/// data "gcp_sql_getdatabase" "qa" {
///   name     = "test-sql-database"
///   instance = main.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.SqlFunctions;
/// import com.pulumi.gcp.sql.inputs.GetDatabaseArgs;
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
///         final var qa = SqlFunctions.getDatabase(GetDatabaseArgs.builder()
///             .name("test-sql-database")
///             .instance(main.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:sql:getDatabase
///       arguments:
///         name: test-sql-database
///         instance: ${main.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabase:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

/// Use this data source to get information about a Cloud SQL instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.sql.getDatabaseInstance({
///     name: "test-sql-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.sql.get_database_instance(name="test-sql-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.Sql.GetDatabaseInstance.Invoke(new()
///     {
///         Name = "test-sql-instance",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.LookupDatabaseInstance(ctx, &sql.LookupDatabaseInstanceArgs{
/// 			Name: "test-sql-instance",
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
/// data "gcp_sql_getdatabaseinstance" "qa" {
///   name = "test-sql-instance"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.SqlFunctions;
/// import com.pulumi.gcp.sql.inputs.GetDatabaseInstanceArgs;
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
///         final var qa = SqlFunctions.getDatabaseInstance(GetDatabaseInstanceArgs.builder()
///             .name("test-sql-instance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:sql:getDatabaseInstance
///       arguments:
///         name: test-sql-instance
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_instance_get_database_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseInstanceResult> getDatabaseInstance(
  GetDatabaseInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabaseInstance:getDatabaseInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseInstanceResult.fromMap(result);
}

/// Get Latest Recovery Time for a given instance. For more information see the
/// [official documentation](https://cloud.google.com/sql/)
/// and
/// [API](https://cloud.google.com/sql/docs/postgres/backup-recovery/pitr#get-the-latest-recovery-time).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.sql.getDatabaseInstanceLatestRecoveryTime({
///     instance: "sample-instance",
/// });
/// export const latestRecoveryTime = _default;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.sql.get_database_instance_latest_recovery_time(instance="sample-instance")
/// pulumi.export("latestRecoveryTime", default)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Sql.GetDatabaseInstanceLatestRecoveryTime.Invoke(new()
///     {
///         Instance = "sample-instance",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["latestRecoveryTime"] = @default,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := sql.GetDatabaseInstanceLatestRecoveryTime(ctx, &sql.GetDatabaseInstanceLatestRecoveryTimeArgs{
/// 			Instance: "sample-instance",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("latestRecoveryTime", _default)
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
/// data "gcp_sql_getdatabaseinstancelatestrecoverytime" "default" {
///   instance = "sample-instance"
/// }
///
/// output "latestRecoveryTime" {
///   value = data.gcp_sql_getdatabaseinstancelatestrecoverytime.default
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.SqlFunctions;
/// import com.pulumi.gcp.sql.inputs.GetDatabaseInstanceLatestRecoveryTimeArgs;
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
///         final var default = SqlFunctions.getDatabaseInstanceLatestRecoveryTime(GetDatabaseInstanceLatestRecoveryTimeArgs.builder()
///             .instance("sample-instance")
///             .build());
///
///         ctx.export("latestRecoveryTime", default_);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:sql:getDatabaseInstanceLatestRecoveryTime
///       arguments:
///         instance: sample-instance
/// outputs:
///   latestRecoveryTime: ${default}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_instance_latest_recovery_time_get_database_instance_latest_recovery_time_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseInstanceLatestRecoveryTimeResult> getDatabaseInstanceLatestRecoveryTime(
  GetDatabaseInstanceLatestRecoveryTimeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabaseInstanceLatestRecoveryTime:getDatabaseInstanceLatestRecoveryTime',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseInstanceLatestRecoveryTimeResult.fromMap(result);
}

/// Use this data source to get information about a list of Cloud SQL instances in a project. You can also apply some filters over this list to get a more filtered list of Cloud SQL instances.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.sql.getDatabaseInstances({
///     project: "test-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.sql.get_database_instances(project="test-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.Sql.GetDatabaseInstances.Invoke(new()
///     {
///         Project = "test-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.GetDatabaseInstances(ctx, &sql.GetDatabaseInstancesArgs{
/// 			Project: pulumi.StringRef("test-project"),
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
/// data "gcp_sql_getdatabaseinstances" "qa" {
///   project = "test-project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.SqlFunctions;
/// import com.pulumi.gcp.sql.inputs.GetDatabaseInstancesArgs;
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
///         final var qa = SqlFunctions.getDatabaseInstances(GetDatabaseInstancesArgs.builder()
///             .project("test-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:sql:getDatabaseInstances
///       arguments:
///         project: test-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_database_instances_get_database_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseInstancesResult> getDatabaseInstances(
  GetDatabaseInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabaseInstances:getDatabaseInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseInstancesResult.fromMap(result);
}

/// Use this data source to get information about a list of databases in a Cloud SQL instance.
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.sql.getDatabases({
///     instance: main.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.sql.get_databases(instance=main["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.Sql.GetDatabases.Invoke(new()
///     {
///         Instance = main.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.GetDatabases(ctx, &sql.GetDatabasesArgs{
/// 			Instance: main.Name,
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
/// data "gcp_sql_getdatabases" "qa" {
///   instance = main.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.SqlFunctions;
/// import com.pulumi.gcp.sql.inputs.GetDatabasesArgs;
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
///         final var qa = SqlFunctions.getDatabases(GetDatabasesArgs.builder()
///             .instance(main.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:sql:getDatabases
///       arguments:
///         instance: ${main.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_databases_get_databases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabasesResult> getDatabases(
  GetDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabases:getDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasesResult.fromMap(result);
}

/// Get all available machine types (tiers) for a project, for example, db-custom-1-3840. For more information see the
/// [official documentation](https://cloud.google.com/sql/)
/// and
/// [API](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/tiers/list).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tiers = gcp.sql.getTiers({
///     project: "sample-project",
/// });
/// const allAvailableTiers = tiers.then(tiers => .map(v => (v.tier)));
/// export const avaialbleTiers = allAvailableTiers;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tiers = gcp.sql.get_tiers(project="sample-project")
/// all_available_tiers = [v.tier for v in tiers.tiers]
/// pulumi.export("avaialbleTiers", all_available_tiers)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tiers = Gcp.Sql.GetTiers.Invoke(new()
///     {
///         Project = "sample-project",
///     });
///
///     var allAvailableTiers = .Select(v =>
///     {
///         return v.Tier;
///     }).ToList();
///
///     return new Dictionary<string, object?>
///     {
///         ["avaialbleTiers"] = allAvailableTiers,
///     };
/// });
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
/// data "gcp_sql_gettiers" "tiers" {
///   project = "sample-project"
/// }
///
/// locals {
///   allAvailableTiers = [for v in data.gcp_sql_gettiers.tiers.tiers : v.tier]
/// }
/// output "avaialbleTiers" {
///   value = local.allAvailableTiers
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sql_get_tiers_get_tiers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTiersResult> getTiers(
  GetTiersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getTiers:getTiers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTiersResult.fromMap(result);
}

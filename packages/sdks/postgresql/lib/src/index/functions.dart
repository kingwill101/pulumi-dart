import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schemas_args.dart';
import 'get_schemas_result.dart';
import 'get_sequences_args.dart';
import 'get_sequences_result.dart';
import 'get_tables_args.dart';
import 'get_tables_result.dart';

/// The ``postgresql.getSchemas`` data source retrieves a list of schema names from a specified PostgreSQL database.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const mySchemas = postgresql.getSchemas({
///     database: "my_database",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_schemas = postgresql.get_schemas(database="my_database")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySchemas = PostgreSql.GetSchemas.Invoke(new()
///     {
///         Database = "my_database",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-postgresql/sdk/v3/go/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := postgresql.GetSchemas(ctx, &postgresql.GetSchemasArgs{
/// 			Database: "my_database",
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
///     postgresql = {
///       source = "pulumi/postgresql"
///     }
///   }
/// }
///
/// data "postgresql_getschemas" "mySchemas" {
///   database = "my_database"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.PostgresqlFunctions;
/// import com.pulumi.postgresql.inputs.GetSchemasArgs;
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
///         final var mySchemas = PostgresqlFunctions.getSchemas(GetSchemasArgs.builder()
///             .database("my_database")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   mySchemas:
///     fn::invoke:
///       function: postgresql:getSchemas
///       arguments:
///         database: my_database
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_schemas_get_schemas_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchemasResult> getSchemas(
  GetSchemasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'postgresql:index/getSchemas:getSchemas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchemasResult.fromMap(result);
}

/// The ``postgresql.getSequences`` data source retrieves a list of sequence names from a specified PostgreSQL database.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const mySequences = postgresql.getSequences({
///     database: "my_database",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_sequences = postgresql.get_sequences(database="my_database")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySequences = PostgreSql.GetSequences.Invoke(new()
///     {
///         Database = "my_database",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-postgresql/sdk/v3/go/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := postgresql.GetSequences(ctx, &postgresql.GetSequencesArgs{
/// 			Database: "my_database",
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
///     postgresql = {
///       source = "pulumi/postgresql"
///     }
///   }
/// }
///
/// data "postgresql_getsequences" "mySequences" {
///   database = "my_database"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.PostgresqlFunctions;
/// import com.pulumi.postgresql.inputs.GetSequencesArgs;
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
///         final var mySequences = PostgresqlFunctions.getSequences(GetSequencesArgs.builder()
///             .database("my_database")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   mySequences:
///     fn::invoke:
///       function: postgresql:getSequences
///       arguments:
///         database: my_database
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_sequences_get_sequences_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSequencesResult> getSequences(
  GetSequencesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'postgresql:index/getSequences:getSequences',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSequencesResult.fromMap(result);
}

/// The ``postgresql.getTables`` data source retrieves a list of table names from a specified PostgreSQL database.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const myTables = postgresql.getTables({
///     database: "my_database",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_tables = postgresql.get_tables(database="my_database")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myTables = PostgreSql.GetTables.Invoke(new()
///     {
///         Database = "my_database",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-postgresql/sdk/v3/go/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := postgresql.GetTables(ctx, &postgresql.GetTablesArgs{
/// 			Database: "my_database",
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
///     postgresql = {
///       source = "pulumi/postgresql"
///     }
///   }
/// }
///
/// data "postgresql_gettables" "myTables" {
///   database = "my_database"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.PostgresqlFunctions;
/// import com.pulumi.postgresql.inputs.GetTablesArgs;
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
///         final var myTables = PostgresqlFunctions.getTables(GetTablesArgs.builder()
///             .database("my_database")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myTables:
///     fn::invoke:
///       function: postgresql:getTables
///       arguments:
///         database: my_database
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_tables_get_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTablesResult> getTables(
  GetTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'postgresql:index/getTables:getTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTablesResult.fromMap(result);
}

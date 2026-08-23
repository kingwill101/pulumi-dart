import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant_args.dart';
import 'grant_state.dart';

/// The ``postgresql.Grant`` resource creates and manages privileges given to a user for a database schema.
///
/// See [PostgreSQL documentation](https://www.postgresql.org/docs/current/sql-grant.html)
///
/// &gt; **Note:** This resource needs Postgresql version 9 or above.
/// &gt; **Note:** Using column & table grants on the _same_ table with the _same_ privileges can lead to unexpected behaviours.
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// // Grant SELECT privileges on 2 tables
/// const readonlyTables = new postgresql.Grant("readonly_tables", {
///     database: "test_db",
///     role: "test_role",
///     schema: "public",
///     objectType: "table",
///     objects: [
///         "table1",
///         "table2",
///     ],
///     privileges: ["SELECT"],
/// });
/// // Grant SELECT & INSERT privileges on 2 columns in 1 table
/// const readInsertColumn = new postgresql.Grant("read_insert_column", {
///     database: "test_db",
///     role: "test_role",
///     schema: "public",
///     objectType: "column",
///     objects: ["table1"],
///     columns: [
///         "col1",
///         "col2",
///     ],
///     privileges: [
///         "UPDATE",
///         "INSERT",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// # Grant SELECT privileges on 2 tables
/// readonly_tables = postgresql.Grant("readonly_tables",
///     database="test_db",
///     role="test_role",
///     schema="public",
///     object_type="table",
///     objects=[
///         "table1",
///         "table2",
///     ],
///     privileges=["SELECT"])
/// # Grant SELECT & INSERT privileges on 2 columns in 1 table
/// read_insert_column = postgresql.Grant("read_insert_column",
///     database="test_db",
///     role="test_role",
///     schema="public",
///     object_type="column",
///     objects=["table1"],
///     columns=[
///         "col1",
///         "col2",
///     ],
///     privileges=[
///         "UPDATE",
///         "INSERT",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Grant SELECT privileges on 2 tables
///     var readonlyTables = new PostgreSql.Grant("readonly_tables", new()
///     {
///         Database = "test_db",
///         Role = "test_role",
///         Schema = "public",
///         ObjectType = "table",
///         Objects = new[]
///         {
///             "table1",
///             "table2",
///         },
///         Privileges = new[]
///         {
///             "SELECT",
///         },
///     });
///
///     // Grant SELECT & INSERT privileges on 2 columns in 1 table
///     var readInsertColumn = new PostgreSql.Grant("read_insert_column", new()
///     {
///         Database = "test_db",
///         Role = "test_role",
///         Schema = "public",
///         ObjectType = "column",
///         Objects = new[]
///         {
///             "table1",
///         },
///         Columns = new[]
///         {
///             "col1",
///             "col2",
///         },
///         Privileges = new[]
///         {
///             "UPDATE",
///             "INSERT",
///         },
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
/// 		// Grant SELECT privileges on 2 tables
/// 		_, err := postgresql.NewGrant(ctx, "readonly_tables", &postgresql.GrantArgs{
/// 			Database:   pulumi.String("test_db"),
/// 			Role:       pulumi.String("test_role"),
/// 			Schema:     pulumi.String("public"),
/// 			ObjectType: pulumi.String("table"),
/// 			Objects: pulumi.StringArray{
/// 				pulumi.String("table1"),
/// 				pulumi.String("table2"),
/// 			},
/// 			Privileges: pulumi.StringArray{
/// 				pulumi.String("SELECT"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant SELECT & INSERT privileges on 2 columns in 1 table
/// 		_, err = postgresql.NewGrant(ctx, "read_insert_column", &postgresql.GrantArgs{
/// 			Database:   pulumi.String("test_db"),
/// 			Role:       pulumi.String("test_role"),
/// 			Schema:     pulumi.String("public"),
/// 			ObjectType: pulumi.String("column"),
/// 			Objects: pulumi.StringArray{
/// 				pulumi.String("table1"),
/// 			},
/// 			Columns: pulumi.StringArray{
/// 				pulumi.String("col1"),
/// 				pulumi.String("col2"),
/// 			},
/// 			Privileges: pulumi.StringArray{
/// 				pulumi.String("UPDATE"),
/// 				pulumi.String("INSERT"),
/// 			},
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
///     postgresql = {
///       source = "pulumi/postgresql"
///     }
///   }
/// }
///
/// # Grant SELECT privileges on 2 tables
/// resource "postgresql_grant" "readonly_tables" {
///   database    = "test_db"
///   role        = "test_role"
///   schema      = "public"
///   object_type = "table"
///   objects     = ["table1", "table2"]
///   privileges  = ["SELECT"]
/// }
/// # Grant SELECT & INSERT privileges on 2 columns in 1 table
/// resource "postgresql_grant" "read_insert_column" {
///   database    = "test_db"
///   role        = "test_role"
///   schema      = "public"
///   object_type = "column"
///   objects     = ["table1"]
///   columns     = ["col1", "col2"]
///   privileges  = ["UPDATE", "INSERT"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Grant;
/// import com.pulumi.postgresql.GrantArgs;
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
///         // Grant SELECT privileges on 2 tables
///         var readonlyTables = new Grant("readonlyTables", GrantArgs.builder()
///             .database("test_db")
///             .role("test_role")
///             .schema("public")
///             .objectType("table")
///             .objects(
///                 "table1",
///                 "table2")
///             .privileges("SELECT")
///             .build());
///
///         // Grant SELECT & INSERT privileges on 2 columns in 1 table
///         var readInsertColumn = new Grant("readInsertColumn", GrantArgs.builder()
///             .database("test_db")
///             .role("test_role")
///             .schema("public")
///             .objectType("column")
///             .objects("table1")
///             .columns(
///                 "col1",
///                 "col2")
///             .privileges(
///                 "UPDATE",
///                 "INSERT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Grant SELECT privileges on 2 tables
///   readonlyTables:
///     type: postgresql:Grant
///     name: readonly_tables
///     properties:
///       database: test_db
///       role: test_role
///       schema: public
///       objectType: table
///       objects:
///         - table1
///         - table2
///       privileges:
///         - SELECT
///   # Grant SELECT & INSERT privileges on 2 columns in 1 table
///   readInsertColumn:
///     type: postgresql:Grant
///     name: read_insert_column
///     properties:
///       database: test_db
///       role: test_role
///       schema: public
///       objectType: column
///       objects:
///         - table1
///       columns:
///         - col1
///         - col2
///       privileges:
///         - UPDATE
///         - INSERT
/// ```
///
///
/// ## Examples
///
/// Revoke default accesses for public schema:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const revokePublic = new postgresql.Grant("revoke_public", {
///     database: "test_db",
///     role: "public",
///     schema: "public",
///     objectType: "schema",
///     privileges: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// revoke_public = postgresql.Grant("revoke_public",
///     database="test_db",
///     role="public",
///     schema="public",
///     object_type="schema",
///     privileges=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var revokePublic = new PostgreSql.Grant("revoke_public", new()
///     {
///         Database = "test_db",
///         Role = "public",
///         Schema = "public",
///         ObjectType = "schema",
///         Privileges = new[] {},
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
/// 		_, err := postgresql.NewGrant(ctx, "revoke_public", &postgresql.GrantArgs{
/// 			Database:   pulumi.String("test_db"),
/// 			Role:       pulumi.String("public"),
/// 			Schema:     pulumi.String("public"),
/// 			ObjectType: pulumi.String("schema"),
/// 			Privileges: pulumi.StringArray{},
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
///     postgresql = {
///       source = "pulumi/postgresql"
///     }
///   }
/// }
///
/// resource "postgresql_grant" "revoke_public" {
///   database    = "test_db"
///   role        = "public"
///   schema      = "public"
///   object_type = "schema"
///   privileges  = []
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Grant;
/// import com.pulumi.postgresql.GrantArgs;
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
///         var revokePublic = new Grant("revokePublic", GrantArgs.builder()
///             .database("test_db")
///             .role("public")
///             .schema("public")
///             .objectType("schema")
///             .privileges()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   revokePublic:
///     type: postgresql:Grant
///     name: revoke_public
///     properties:
///       database: test_db
///       role: public
///       schema: public
///       objectType: schema
///       privileges: []
/// ```
class Grant extends pulumi.CustomResource {
  /// The columns upon which to grant the privileges. Required when `objectType` is `column`. You cannot specify this option if the `objectType` is not `column`.
  late final pulumi.Output<List<String>?> columns;
  /// The database to grant privileges on for this role.
  late final pulumi.Output<String> database;
  /// The PostgreSQL object type to grant the privileges on (one of: database, schema, table, sequence, function, procedure, routine, foreign_data_wrapper, foreign_server, column).
  late final pulumi.Output<String> objectType;
  /// The objects upon which to grant the privileges. An empty list (the default) means to grant permissions on *all* objects of the specified type. You cannot specify this option if the `objectType` is `database` or `schema`. When `objectType` is `column`, only one value is allowed.
  late final pulumi.Output<List<String>?> objects;
  /// The list of privileges to grant. There are different kinds of privileges: SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER, CREATE, CONNECT, TEMPORARY, EXECUTE, and USAGE. An empty list could be provided to revoke all privileges for this role.
  late final pulumi.Output<List<String>> privileges;
  /// The name of the role to grant privileges on, Set it to "public" for all roles.
  late final pulumi.Output<String> role;
  /// The database schema to grant privileges on for this role (Required except if objectType is "database")
  late final pulumi.Output<String?> schema;
  /// Whether the recipient of these privileges can grant the same privileges to others. Defaults to false.
  late final pulumi.Output<bool?> withGrantOption;

  /// Creates a new [Grant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Grant]. {@macro pulumi_index_grant_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Grant(
    String name, {
    GrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/grant:Grant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    columns = registerOutput<List<String>?>('columns');
    database = registerOutput<String>('database');
    objectType = registerOutput<String>('objectType');
    objects = registerOutput<List<String>?>('objects');
    privileges = registerOutput<List<String>>('privileges');
    role = registerOutput<String>('role');
    schema = registerOutput<String?>('schema');
    withGrantOption = registerOutput<bool?>('withGrantOption');
  }

  /// Gets an existing [Grant] resource's state with the given [name] and [id].
  static Grant get(
    String name,
    pulumi.Input<String> id, {
    GrantState? state,
  }) {
    return Grant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Grant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/grant:Grant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    columns = registerOutput<List<String>?>('columns');
    database = registerOutput<String>('database');
    objectType = registerOutput<String>('objectType');
    objects = registerOutput<List<String>?>('objects');
    privileges = registerOutput<List<String>>('privileges');
    role = registerOutput<String>('role');
    schema = registerOutput<String?>('schema');
    withGrantOption = registerOutput<bool?>('withGrantOption');
  }
}

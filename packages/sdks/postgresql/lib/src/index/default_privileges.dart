import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_privileges_args.dart';
import 'default_privileges_state.dart';

/// The ``postgresql.DefaultPrivileges`` resource creates and manages default privileges given to a user for a database schema.
///
/// &gt; **Note:** This resource needs Postgresql version 9 or above.
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const readOnlyTables = new postgresql.DefaultPrivileges("read_only_tables", {
///     role: "test_role",
///     database: "test_db",
///     schema: "public",
///     owner: "db_owner",
///     objectType: "table",
///     privileges: ["SELECT"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// read_only_tables = postgresql.DefaultPrivileges("read_only_tables",
///     role="test_role",
///     database="test_db",
///     schema="public",
///     owner="db_owner",
///     object_type="table",
///     privileges=["SELECT"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var readOnlyTables = new PostgreSql.DefaultPrivileges("read_only_tables", new()
///     {
///         Role = "test_role",
///         Database = "test_db",
///         Schema = "public",
///         Owner = "db_owner",
///         ObjectType = "table",
///         Privileges = new[]
///         {
///             "SELECT",
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
/// 		_, err := postgresql.NewDefaultPrivileges(ctx, "read_only_tables", &postgresql.DefaultPrivilegesArgs{
/// 			Role:       pulumi.String("test_role"),
/// 			Database:   pulumi.String("test_db"),
/// 			Schema:     pulumi.String("public"),
/// 			Owner:      pulumi.String("db_owner"),
/// 			ObjectType: pulumi.String("table"),
/// 			Privileges: pulumi.StringArray{
/// 				pulumi.String("SELECT"),
/// 			},
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
/// import com.pulumi.postgresql.DefaultPrivileges;
/// import com.pulumi.postgresql.DefaultPrivilegesArgs;
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
///         var readOnlyTables = new DefaultPrivileges("readOnlyTables", DefaultPrivilegesArgs.builder()
///             .role("test_role")
///             .database("test_db")
///             .schema("public")
///             .owner("db_owner")
///             .objectType("table")
///             .privileges("SELECT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   readOnlyTables:
///     type: postgresql:DefaultPrivileges
///     name: read_only_tables
///     properties:
///       role: test_role
///       database: test_db
///       schema: public
///       owner: db_owner
///       objectType: table
///       privileges:
///         - SELECT
/// ```
///
///
/// ## Examples
///
/// ### Grant default privileges for tables to "current_role" role:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const grantTablePrivileges = new postgresql.DefaultPrivileges("grant_table_privileges", {
///     database: exampleDb.name,
///     role: "current_role",
///     owner: "owner_role",
///     schema: "public",
///     objectType: "table",
///     privileges: [
///         "SELECT",
///         "INSERT",
///         "UPDATE",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// grant_table_privileges = postgresql.DefaultPrivileges("grant_table_privileges",
///     database=example_db["name"],
///     role="current_role",
///     owner="owner_role",
///     schema="public",
///     object_type="table",
///     privileges=[
///         "SELECT",
///         "INSERT",
///         "UPDATE",
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
///     var grantTablePrivileges = new PostgreSql.DefaultPrivileges("grant_table_privileges", new()
///     {
///         Database = exampleDb.Name,
///         Role = "current_role",
///         Owner = "owner_role",
///         Schema = "public",
///         ObjectType = "table",
///         Privileges = new[]
///         {
///             "SELECT",
///             "INSERT",
///             "UPDATE",
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
/// 		_, err := postgresql.NewDefaultPrivileges(ctx, "grant_table_privileges", &postgresql.DefaultPrivilegesArgs{
/// 			Database:   pulumi.Any(exampleDb.Name),
/// 			Role:       pulumi.String("current_role"),
/// 			Owner:      pulumi.String("owner_role"),
/// 			Schema:     pulumi.String("public"),
/// 			ObjectType: pulumi.String("table"),
/// 			Privileges: pulumi.StringArray{
/// 				pulumi.String("SELECT"),
/// 				pulumi.String("INSERT"),
/// 				pulumi.String("UPDATE"),
/// 			},
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
/// import com.pulumi.postgresql.DefaultPrivileges;
/// import com.pulumi.postgresql.DefaultPrivilegesArgs;
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
///         var grantTablePrivileges = new DefaultPrivileges("grantTablePrivileges", DefaultPrivilegesArgs.builder()
///             .database(exampleDb.name())
///             .role("current_role")
///             .owner("owner_role")
///             .schema("public")
///             .objectType("table")
///             .privileges(
///                 "SELECT",
///                 "INSERT",
///                 "UPDATE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   grantTablePrivileges:
///     type: postgresql:DefaultPrivileges
///     name: grant_table_privileges
///     properties:
///       database: ${exampleDb.name}
///       role: current_role
///       owner: owner_role
///       schema: public
///       objectType: table
///       privileges:
///         - SELECT
///         - INSERT
///         - UPDATE
/// ```
///
/// Whenever the `owner_role` creates a new table in the `public` schema, the `current_role` is automatically granted SELECT, INSERT, and UPDATE privileges on that table.
///
/// ### Revoke default privileges for functions for "public" role:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const revokePublic = new postgresql.DefaultPrivileges("revoke_public", {
///     database: exampleDb.name,
///     role: "public",
///     owner: "object_owner",
///     objectType: "function",
///     privileges: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// revoke_public = postgresql.DefaultPrivileges("revoke_public",
///     database=example_db["name"],
///     role="public",
///     owner="object_owner",
///     object_type="function",
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
///     var revokePublic = new PostgreSql.DefaultPrivileges("revoke_public", new()
///     {
///         Database = exampleDb.Name,
///         Role = "public",
///         Owner = "object_owner",
///         ObjectType = "function",
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
/// 		_, err := postgresql.NewDefaultPrivileges(ctx, "revoke_public", &postgresql.DefaultPrivilegesArgs{
/// 			Database:   pulumi.Any(exampleDb.Name),
/// 			Role:       pulumi.String("public"),
/// 			Owner:      pulumi.String("object_owner"),
/// 			ObjectType: pulumi.String("function"),
/// 			Privileges: pulumi.StringArray{},
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
/// import com.pulumi.postgresql.DefaultPrivileges;
/// import com.pulumi.postgresql.DefaultPrivilegesArgs;
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
///         var revokePublic = new DefaultPrivileges("revokePublic", DefaultPrivilegesArgs.builder()
///             .database(exampleDb.name())
///             .role("public")
///             .owner("object_owner")
///             .objectType("function")
///             .privileges()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   revokePublic:
///     type: postgresql:DefaultPrivileges
///     name: revoke_public
///     properties:
///       database: ${exampleDb.name}
///       role: public
///       owner: object_owner
///       objectType: function
///       privileges: []
/// ```
class DefaultPrivileges extends pulumi.CustomResource {
  /// The database to grant default privileges for this role.
  late final pulumi.Output<String> database;
  /// The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  late final pulumi.Output<String> objectType;
  /// Specifies the role that creates objects for which the default privileges will be applied.
  late final pulumi.Output<String> owner;
  /// List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  late final pulumi.Output<List<String>> privileges;
  /// The role that will automatically be granted the specified privileges on new objects created by the owner.
  late final pulumi.Output<String> role;
  /// The database schema to set default privileges for this role.
  late final pulumi.Output<String?> schema;
  /// Permit the grant recipient to grant it to others
  late final pulumi.Output<bool?> withGrantOption;

  /// Creates a new [DefaultPrivileges].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultPrivileges]. {@macro pulumi_index_default_privileges_default_privileges_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultPrivileges(
    String name, {
    DefaultPrivilegesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/defaultPrivileges:DefaultPrivileges',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    database = registerOutput<String>('database');
    objectType = registerOutput<String>('objectType');
    owner = registerOutput<String>('owner');
    privileges = registerOutput<List<String>>('privileges');
    role = registerOutput<String>('role');
    schema = registerOutput<String?>('schema');
    withGrantOption = registerOutput<bool?>('withGrantOption');
  }

  /// Gets an existing [DefaultPrivileges] resource's state with the given [name] and [id].
  static DefaultPrivileges get(
    String name,
    pulumi.Input<String> id, {
    DefaultPrivilegesState? state,
  }) {
    return DefaultPrivileges._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefaultPrivileges._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/defaultPrivileges:DefaultPrivileges',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    database = registerOutput<String>('database');
    objectType = registerOutput<String>('objectType');
    owner = registerOutput<String>('owner');
    privileges = registerOutput<List<String>>('privileges');
    role = registerOutput<String>('role');
    schema = registerOutput<String?>('schema');
    withGrantOption = registerOutput<bool?>('withGrantOption');
  }
}

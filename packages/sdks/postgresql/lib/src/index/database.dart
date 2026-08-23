import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_state.dart';

/// The ``postgresql.Database`` resource creates and manages [database
/// objects](https://www.postgresql.org/docs/current/static/managing-databases.html)
/// within a PostgreSQL server instance.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const myDb = new postgresql.Database("my_db", {
///     name: "my_db",
///     owner: "my_role",
///     template: "template0",
///     lcCollate: "C",
///     connectionLimit: -1,
///     allowConnections: true,
///     alterObjectOwnership: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_db = postgresql.Database("my_db",
///     name="my_db",
///     owner="my_role",
///     template="template0",
///     lc_collate="C",
///     connection_limit=-1,
///     allow_connections=True,
///     alter_object_ownership=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDb = new PostgreSql.Database("my_db", new()
///     {
///         Name = "my_db",
///         Owner = "my_role",
///         Template = "template0",
///         LcCollate = "C",
///         ConnectionLimit = -1,
///         AllowConnections = true,
///         AlterObjectOwnership = true,
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
/// 		_, err := postgresql.NewDatabase(ctx, "my_db", &postgresql.DatabaseArgs{
/// 			Name:                 pulumi.String("my_db"),
/// 			Owner:                pulumi.String("my_role"),
/// 			Template:             pulumi.String("template0"),
/// 			LcCollate:            pulumi.String("C"),
/// 			ConnectionLimit:      pulumi.Int(-1),
/// 			AllowConnections:     pulumi.Bool(true),
/// 			AlterObjectOwnership: pulumi.Bool(true),
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
/// resource "postgresql_database" "my_db" {
///   name                   = "my_db"
///   owner                  = "my_role"
///   template               = "template0"
///   lc_collate             = "C"
///   connection_limit       = -1
///   allow_connections      = true
///   alter_object_ownership = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Database;
/// import com.pulumi.postgresql.DatabaseArgs;
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
///         var myDb = new Database("myDb", DatabaseArgs.builder()
///             .name("my_db")
///             .owner("my_role")
///             .template("template0")
///             .lcCollate("C")
///             .connectionLimit(-1)
///             .allowConnections(true)
///             .alterObjectOwnership(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myDb:
///     type: postgresql:Database
///     name: my_db
///     properties:
///       name: my_db
///       owner: my_role
///       template: template0
///       lcCollate: C
///       connectionLimit: -1
///       allowConnections: true
///       alterObjectOwnership: true
/// ```
///
///
/// ## Import Example
///
/// `postgresql.Database` supports importing resources.  Supposing the following
/// Terraform:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const db1 = new postgresql.Database("db1", {name: "testdb1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// db1 = postgresql.Database("db1", name="testdb1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var db1 = new PostgreSql.Database("db1", new()
///     {
///         Name = "testdb1",
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
/// 		_, err := postgresql.NewDatabase(ctx, "db1", &postgresql.DatabaseArgs{
/// 			Name: pulumi.String("testdb1"),
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
/// resource "postgresql_database" "db1" {
///   name = "testdb1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Database;
/// import com.pulumi.postgresql.DatabaseArgs;
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
///         var db1 = new Database("db1", DatabaseArgs.builder()
///             .name("testdb1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   db1:
///     type: postgresql:Database
///     properties:
///       name: testdb1
/// ```
///
///
/// It is possible to import a `postgresql.Database` resource with the following
/// command:
///
/// ```
/// $ terraform import postgresql_database.db1 testdb1
/// ```
///
/// Where `testdb1` is the name of the database to import and
/// `postgresql_database.db1` is the name of the resource whose state will be
/// populated as a result of the command.
class Database extends pulumi.CustomResource {
  /// If `false` then no one can connect to this
  /// database. The default is `true`, allowing connections (except as restricted by
  /// other mechanisms, such as `GRANT` or `REVOKE CONNECT`).
  late final pulumi.Output<bool?> allowConnections;
  /// If `true`, the change of the database
  /// `owner` will also include a reassignment of the ownership of preexisting
  /// objects like tables or sequences from the previous owner to the new one.
  /// If set to `false` (the default), then the previous database `owner` will still
  /// hold the ownership of the objects in that database. To alter existing objects in
  /// the database, you must be a direct or indirect member of the specified role, or
  /// the username in the provider must be superuser.
  late final pulumi.Output<bool?> alterObjectOwnership;
  /// How many concurrent connections can be
  /// established to this database. `-1` (the default) means no limit.
  late final pulumi.Output<int?> connectionLimit;
  /// Character set encoding to use in the database.
  /// Specify a string constant (e.g. `UTF8` or `SQL_ASCII`), or an integer encoding
  /// number.  If unset or set to an empty string the default encoding is set to
  /// `UTF8`.  If set to `DEFAULT` Terraform will use the same encoding as the
  /// template database.  Changing this value will force the creation of a new
  /// resource as this value can only be changed when a database is created.
  late final pulumi.Output<String> encoding;
  /// If `true`, then this database can be cloned by any
  /// user with `CREATEDB` privileges; if `false` (the default), then only
  /// superusers or the owner of the database can clone it.
  late final pulumi.Output<bool> isTemplate;
  /// Collation order (`LC_COLLATE`) to use in the
  /// database.  This affects the sort order applied to strings, e.g. in queries
  /// with `ORDER BY`, as well as the order used in indexes on text columns. If
  /// unset or set to an empty string the default collation is set to `C`.  If set
  /// to `DEFAULT` Terraform will use the same collation order as the specified
  /// `template` database.  Changing this value will force the creation of a new
  /// resource as this value can only be changed when a database is created.
  late final pulumi.Output<String> lcCollate;
  /// Character classification (`LC_CTYPE`) to use in the
  /// database. This affects the categorization of characters, e.g. lower, upper and
  /// digit. If unset or set to an empty string the default character classification
  /// is set to `C`.  If set to `DEFAULT` Terraform will use the character
  /// classification of the specified `template` database.  Changing this value will
  /// force the creation of a new resource as this value can only be changed when a
  /// database is created.
  late final pulumi.Output<String> lcCtype;
  /// The name of the database. Must be unique on the PostgreSQL
  /// server instance where it is configured.
  late final pulumi.Output<String> name;
  /// The role name of the user who will own the database, or
  /// `DEFAULT` to use the default (namely, the user executing the command). To
  /// create a database owned by another role or to change the owner of an existing
  /// database, you must be a direct or indirect member of the specified role, or
  /// the username in the provider is a superuser.
  late final pulumi.Output<String> owner;
  /// The name of the tablespace that will be
  /// associated with the database, or `DEFAULT` to use the template database's
  /// tablespace.  This tablespace will be the default tablespace used for objects
  /// created in this database.
  late final pulumi.Output<String> tablespaceName;
  /// The name of the template database from which to create
  /// the database, or `DEFAULT` to use the default template (`template0`).  NOTE:
  /// the default in Terraform is `template0`, not `template1`.  Changing this value
  /// will force the creation of a new resource as this value can only be changed
  /// when a database is created.
  late final pulumi.Output<String> template;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_index_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowConnections = registerOutput<bool?>('allowConnections');
    alterObjectOwnership = registerOutput<bool?>('alterObjectOwnership');
    connectionLimit = registerOutput<int?>('connectionLimit');
    encoding = registerOutput<String>('encoding');
    isTemplate = registerOutput<bool>('isTemplate');
    lcCollate = registerOutput<String>('lcCollate');
    lcCtype = registerOutput<String>('lcCtype');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    tablespaceName = registerOutput<String>('tablespaceName');
    template = registerOutput<String>('template');
  }

  /// Gets an existing [Database] resource's state with the given [name] and [id].
  static Database get(
    String name,
    pulumi.Input<String> id, {
    DatabaseState? state,
  }) {
    return Database._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Database._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/database:Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowConnections = registerOutput<bool?>('allowConnections');
    alterObjectOwnership = registerOutput<bool?>('alterObjectOwnership');
    connectionLimit = registerOutput<int?>('connectionLimit');
    encoding = registerOutput<String>('encoding');
    isTemplate = registerOutput<bool>('isTemplate');
    lcCollate = registerOutput<String>('lcCollate');
    lcCtype = registerOutput<String>('lcCtype');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    tablespaceName = registerOutput<String>('tablespaceName');
    template = registerOutput<String>('template');
  }
}

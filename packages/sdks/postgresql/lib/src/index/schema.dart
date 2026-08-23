import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'schema_state.dart';

/// The ``postgresql.Schema`` resource creates and manages [schema
/// objects](https://www.postgresql.org/docs/current/static/ddl-schemas.html) within
/// a PostgreSQL database.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const appWww = new postgresql.Role("app_www", {name: "app_www"});
/// const appDba = new postgresql.Role("app_dba", {name: "app_dba"});
/// const appReleng = new postgresql.Role("app_releng", {name: "app_releng"});
/// const mySchema = new postgresql.Schema("my_schema", {
///     name: "my_schema",
///     owner: "postgres",
///     policies: [
///         {
///             usage: true,
///             role: appWww.name,
///         },
///         {
///             create: true,
///             usage: true,
///             role: appReleng.name,
///         },
///         {
///             createWithGrant: true,
///             usageWithGrant: true,
///             role: appDba.name,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// app_www = postgresql.Role("app_www", name="app_www")
/// app_dba = postgresql.Role("app_dba", name="app_dba")
/// app_releng = postgresql.Role("app_releng", name="app_releng")
/// my_schema = postgresql.Schema("my_schema",
///     name="my_schema",
///     owner="postgres",
///     policies=[
///         {
///             "usage": True,
///             "role": app_www.name,
///         },
///         {
///             "create": True,
///             "usage": True,
///             "role": app_releng.name,
///         },
///         {
///             "create_with_grant": True,
///             "usage_with_grant": True,
///             "role": app_dba.name,
///         },
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
///     var appWww = new PostgreSql.Role("app_www", new()
///     {
///         Name = "app_www",
///     });
///
///     var appDba = new PostgreSql.Role("app_dba", new()
///     {
///         Name = "app_dba",
///     });
///
///     var appReleng = new PostgreSql.Role("app_releng", new()
///     {
///         Name = "app_releng",
///     });
///
///     var mySchema = new PostgreSql.Schema("my_schema", new()
///     {
///         Name = "my_schema",
///         Owner = "postgres",
///         Policies = new[]
///         {
///             new PostgreSql.Inputs.SchemaPolicyArgs
///             {
///                 Usage = true,
///                 Role = appWww.Name,
///             },
///             new PostgreSql.Inputs.SchemaPolicyArgs
///             {
///                 Create = true,
///                 Usage = true,
///                 Role = appReleng.Name,
///             },
///             new PostgreSql.Inputs.SchemaPolicyArgs
///             {
///                 CreateWithGrant = true,
///                 UsageWithGrant = true,
///                 Role = appDba.Name,
///             },
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
/// 		appWww, err := postgresql.NewRole(ctx, "app_www", &postgresql.RoleArgs{
/// 			Name: pulumi.String("app_www"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appDba, err := postgresql.NewRole(ctx, "app_dba", &postgresql.RoleArgs{
/// 			Name: pulumi.String("app_dba"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appReleng, err := postgresql.NewRole(ctx, "app_releng", &postgresql.RoleArgs{
/// 			Name: pulumi.String("app_releng"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewSchema(ctx, "my_schema", &postgresql.SchemaArgs{
/// 			Name:  pulumi.String("my_schema"),
/// 			Owner: pulumi.String("postgres"),
/// 			Policies: postgresql.SchemaPolicyArray{
/// 				&postgresql.SchemaPolicyArgs{
/// 					Usage: pulumi.Bool(true),
/// 					Role:  appWww.Name,
/// 				},
/// 				&postgresql.SchemaPolicyArgs{
/// 					Create: pulumi.Bool(true),
/// 					Usage:  pulumi.Bool(true),
/// 					Role:   appReleng.Name,
/// 				},
/// 				&postgresql.SchemaPolicyArgs{
/// 					CreateWithGrant: pulumi.Bool(true),
/// 					UsageWithGrant:  pulumi.Bool(true),
/// 					Role:            appDba.Name,
/// 				},
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
/// resource "postgresql_role" "app_www" {
///   name = "app_www"
/// }
/// resource "postgresql_role" "app_dba" {
///   name = "app_dba"
/// }
/// resource "postgresql_role" "app_releng" {
///   name = "app_releng"
/// }
/// resource "postgresql_schema" "my_schema" {
///   name  = "my_schema"
///   owner = "postgres"
///   policies {
///     usage = true
///     role  = postgresql_role.app_www.name
///   }
///   policies {
///     create = true
///     usage  = true
///     role   = postgresql_role.app_releng.name
///   }
///   policies {
///     create_with_grant = true
///     usage_with_grant  = true
///     role              = postgresql_role.app_dba.name
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Role;
/// import com.pulumi.postgresql.RoleArgs;
/// import com.pulumi.postgresql.Schema;
/// import com.pulumi.postgresql.SchemaArgs;
/// import com.pulumi.postgresql.inputs.SchemaPolicyArgs;
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
///         var appWww = new Role("appWww", RoleArgs.builder()
///             .name("app_www")
///             .build());
///
///         var appDba = new Role("appDba", RoleArgs.builder()
///             .name("app_dba")
///             .build());
///
///         var appReleng = new Role("appReleng", RoleArgs.builder()
///             .name("app_releng")
///             .build());
///
///         var mySchema = new Schema("mySchema", SchemaArgs.builder()
///             .name("my_schema")
///             .owner("postgres")
///             .policies(
///                 SchemaPolicyArgs.builder()
///                     .usage(true)
///                     .role(appWww.name())
///                     .build(),
///                 SchemaPolicyArgs.builder()
///                     .create(true)
///                     .usage(true)
///                     .role(appReleng.name())
///                     .build(),
///                 SchemaPolicyArgs.builder()
///                     .createWithGrant(true)
///                     .usageWithGrant(true)
///                     .role(appDba.name())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appWww:
///     type: postgresql:Role
///     name: app_www
///     properties:
///       name: app_www
///   appDba:
///     type: postgresql:Role
///     name: app_dba
///     properties:
///       name: app_dba
///   appReleng:
///     type: postgresql:Role
///     name: app_releng
///     properties:
///       name: app_releng
///   mySchema:
///     type: postgresql:Schema
///     name: my_schema
///     properties:
///       name: my_schema
///       owner: postgres
///       policies:
///         - usage: true
///           role: ${appWww.name}
///         - create: true
///           usage: true
///           role: ${appReleng.name}
///         - createWithGrant: true
///           usageWithGrant: true
///           role: ${appDba.name}
/// ```
///
///
/// ## Import Example
///
/// `postgresql.Schema` supports importing resources.  Supposing the following
/// Terraform:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const _public = new postgresql.Schema("public", {name: "public"});
/// const schemaFoo = new postgresql.Schema("schema_foo", {
///     name: "my_schema",
///     owner: "postgres",
///     policies: [{
///         usage: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// public = postgresql.Schema("public", name="public")
/// schema_foo = postgresql.Schema("schema_foo",
///     name="my_schema",
///     owner="postgres",
///     policies=[{
///         "usage": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @public = new PostgreSql.Schema("public", new()
///     {
///         Name = "public",
///     });
///
///     var schemaFoo = new PostgreSql.Schema("schema_foo", new()
///     {
///         Name = "my_schema",
///         Owner = "postgres",
///         Policies = new[]
///         {
///             new PostgreSql.Inputs.SchemaPolicyArgs
///             {
///                 Usage = true,
///             },
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
/// 		_, err := postgresql.NewSchema(ctx, "public", &postgresql.SchemaArgs{
/// 			Name: pulumi.String("public"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewSchema(ctx, "schema_foo", &postgresql.SchemaArgs{
/// 			Name:  pulumi.String("my_schema"),
/// 			Owner: pulumi.String("postgres"),
/// 			Policies: postgresql.SchemaPolicyArray{
/// 				&postgresql.SchemaPolicyArgs{
/// 					Usage: pulumi.Bool(true),
/// 				},
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
/// resource "postgresql_schema" "public" {
///   name = "public"
/// }
/// resource "postgresql_schema" "schema_foo" {
///   name  = "my_schema"
///   owner = "postgres"
///   policies {
///     usage = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Schema;
/// import com.pulumi.postgresql.SchemaArgs;
/// import com.pulumi.postgresql.inputs.SchemaPolicyArgs;
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
///         var public_ = new Schema("public", SchemaArgs.builder()
///             .name("public")
///             .build());
///
///         var schemaFoo = new Schema("schemaFoo", SchemaArgs.builder()
///             .name("my_schema")
///             .owner("postgres")
///             .policies(SchemaPolicyArgs.builder()
///                 .usage(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   public:
///     type: postgresql:Schema
///     properties:
///       name: public
///   schemaFoo:
///     type: postgresql:Schema
///     name: schema_foo
///     properties:
///       name: my_schema
///       owner: postgres
///       policies:
///         - usage: true
/// ```
///
///
/// It is possible to import a `postgresql.Schema` resource with the following
/// command:
///
/// ```
/// $ terraform import postgresql_schema.schema_foo my_database.my_schema
/// ```
///
/// Where `myDatabase` is the name of the database containing the schema,
/// `mySchema` is the name of the schema in the PostgreSQL database and
/// `postgresql_schema.schema_foo` is the name of the resource whose state will be
/// populated as a result of the command.
class Schema extends pulumi.CustomResource {
  /// The DATABASE in which where this schema will be created. (Default: The database used by your `provider` configuration)
  late final pulumi.Output<String> database;
  /// When true, will also drop all the objects that are contained in the schema. (Default: false)
  late final pulumi.Output<bool?> dropCascade;
  /// When true, use the existing schema if it exists. (Default: true)
  late final pulumi.Output<bool?> ifNotExists;
  /// The name of the schema. Must be unique in the PostgreSQL
  /// database instance where it is configured.
  late final pulumi.Output<String> name;
  /// The ROLE who owns the schema.
  late final pulumi.Output<String> owner;
  /// Can be specified multiple times for each policy.  Each
  /// policy block supports fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> policies;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_index_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/schema:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    ifNotExists = registerOutput<bool?>('ifNotExists');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    policies = registerOutput<List<Map<String, dynamic>>>('policies');
  }

  /// Gets an existing [Schema] resource's state with the given [name] and [id].
  static Schema get(
    String name,
    pulumi.Input<String> id, {
    SchemaState? state,
  }) {
    return Schema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Schema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/schema:Schema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    ifNotExists = registerOutput<bool?>('ifNotExists');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    policies = registerOutput<List<Map<String, dynamic>>>('policies');
  }
}

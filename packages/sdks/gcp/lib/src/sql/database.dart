import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_state.dart';

/// Represents a SQL database inside the Cloud SQL instance, hosted in
/// Google's cloud.
///
///
///
/// ## Example Usage
///
/// ### Sql Database Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-database-instance",
///     region: "us-central1",
///     databaseVersion: "MYSQL_8_0",
///     settings: {
///         tier: "db-f1-micro",
///     },
///     deletionProtection: true,
/// });
/// const database = new gcp.sql.Database("database", {
///     name: "my-database",
///     instance: instance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-database-instance",
///     region="us-central1",
///     database_version="MYSQL_8_0",
///     settings={
///         "tier": "db-f1-micro",
///     },
///     deletion_protection=True)
/// database = gcp.sql.Database("database",
///     name="my-database",
///     instance=instance.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-database-instance",
///         Region = "us-central1",
///         DatabaseVersion = "MYSQL_8_0",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///         DeletionProtection = true,
///     });
///
///     var database = new Gcp.Sql.Database("database", new()
///     {
///         Name = "my-database",
///         Instance = instance.Name,
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
/// 		// See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			Name:     pulumi.String("my-database"),
/// 			Instance: instance.Name,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_database" "database" {
///   name     = "my-database"
///   instance = gcp_sql_databaseinstance.instance.name
/// }
/// # See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-database-instance"
///   region           = "us-central1"
///   database_version = "MYSQL_8_0"
///   settings = {
///     tier = "db-f1-micro"
///   }
///   deletion_protection = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
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
///         // See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("my-database-instance")
///             .region("us-central1")
///             .databaseVersion("MYSQL_8_0")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .name("my-database")
///             .instance(instance.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:sql:Database
///     properties:
///       name: my-database
///       instance: ${instance.name}
///   # See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database-instance
///       region: us-central1
///       databaseVersion: MYSQL_8_0
///       settings:
///         tier: db-f1-micro
///       deletionProtection: true
/// ```
///
/// ### Sql Database Deletion Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-database-instance",
///     region: "us-central1",
///     databaseVersion: "POSTGRES_14",
///     settings: {
///         tier: "db-g1-small",
///     },
///     deletionProtection: true,
/// });
/// const databaseDeletionPolicy = new gcp.sql.Database("database_deletion_policy", {
///     name: "my-database",
///     instance: instance.name,
///     deletionPolicy: "ABANDON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-database-instance",
///     region="us-central1",
///     database_version="POSTGRES_14",
///     settings={
///         "tier": "db-g1-small",
///     },
///     deletion_protection=True)
/// database_deletion_policy = gcp.sql.Database("database_deletion_policy",
///     name="my-database",
///     instance=instance.name,
///     deletion_policy="ABANDON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-database-instance",
///         Region = "us-central1",
///         DatabaseVersion = "POSTGRES_14",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-g1-small",
///         },
///         DeletionProtection = true,
///     });
///
///     var databaseDeletionPolicy = new Gcp.Sql.Database("database_deletion_policy", new()
///     {
///         Name = "my-database",
///         Instance = instance.Name,
///         DeletionPolicy = "ABANDON",
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
/// 		// See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_14"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-g1-small"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewDatabase(ctx, "database_deletion_policy", &sql.DatabaseArgs{
/// 			Name:           pulumi.String("my-database"),
/// 			Instance:       instance.Name,
/// 			DeletionPolicy: pulumi.String("ABANDON"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_database" "database_deletion_policy" {
///   name            = "my-database"
///   instance        = gcp_sql_databaseinstance.instance.name
///   deletion_policy = "ABANDON"
/// }
/// # See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-database-instance"
///   region           = "us-central1"
///   database_version = "POSTGRES_14"
///   settings = {
///     tier = "db-g1-small"
///   }
///   deletion_protection = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
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
///         // See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("my-database-instance")
///             .region("us-central1")
///             .databaseVersion("POSTGRES_14")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-g1-small")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var databaseDeletionPolicy = new Database("databaseDeletionPolicy", DatabaseArgs.builder()
///             .name("my-database")
///             .instance(instance.name())
///             .deletionPolicy("ABANDON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   databaseDeletionPolicy:
///     type: gcp:sql:Database
///     name: database_deletion_policy
///     properties:
///       name: my-database
///       instance: ${instance.name}
///       deletionPolicy: ABANDON
///   # See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database-instance
///       region: us-central1
///       databaseVersion: POSTGRES_14
///       settings:
///         tier: db-g1-small
///       deletionProtection: true
/// ```
///
///
/// ## Import
///
/// Database can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/databases/{{name}}`
/// * `instances/{{instance}}/databases/{{name}}`
/// * `{{project}}/{{instance}}/{{name}}`
/// * `{{instance}}/{{name}}`
///
///
/// When using the `pulumi import` command, Database can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sql/database:Database default projects/{{project}}/instances/{{instance}}/databases/{{name}}
/// $ pulumi import gcp:sql/database:Database default instances/{{instance}}/databases/{{name}}
/// $ pulumi import gcp:sql/database:Database default {{project}}/{{instance}}/{{name}}
/// $ pulumi import gcp:sql/database:Database default {{instance}}/{{name}}
/// ```
class Database extends pulumi.CustomResource {
  /// The charset value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of `UTF8` at creation time.
  late final pulumi.Output<String> charset;
  /// The collation value. See MySQL's
  /// [Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
  /// and Postgres' [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
  /// for more details and supported values. Postgres databases only support
  /// a value of `en_US.UTF8` at creation time.
  late final pulumi.Output<String> collation;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name of the Cloud SQL instance. This does not include the project
  /// ID.
  late final pulumi.Output<String> instance;
  /// The name of the database in the Cloud SQL instance.
  /// This does not include the project ID or instance name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_sql_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    charset = registerOutput<String>('charset');
    collation = registerOutput<String>('collation');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
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
          'gcp:sql/database:Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    charset = registerOutput<String>('charset');
    collation = registerOutput<String>('collation');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
  }
}

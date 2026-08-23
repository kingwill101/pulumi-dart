import 'package:pulumi/pulumi.dart' as pulumi;
import 'provision_script_args.dart';
import 'provision_script_state.dart';

/// Executes a SQL script to provision in-database resources on a Cloud SQL Instance. Before executing a SQL script, you may need to configure your database user and permissions. For more information, see the [Cloud SQL official documentation](https://cloud.google.com/sql/docs/postgres/executesql-instance), or the [JSON API](https://cloud.google.com/sql/docs/admin-api/v1beta4/instances/executeSql).
///
/// &gt; **Note:** The SQL script and its execution response might transit through intermediate locations between your client and the location of the target instance.
///
/// &gt; **Note:** If you let Terraform connect to the instance via [IAM database authentication](https://cloud.google.com/sql/docs/mysql/authentication) to execute the script, the identity account used to apply your Terraform config must exist as an IAM user, IAM service account, or IAM group in the instance. You also need to grant roles or privileges to this IAM account so it has permission to execute statements in your provision scripts. See the example below.
///
///
///
/// ## Example Usage
///
/// Example managing a Cloud SQL Postgres instance with a provision script using IAM Database Authentication.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-instance",
///     databaseVersion: "POSTGRES_17",
///     settings: {
///         tier: "db-perf-optimized-N-2",
///         dataApiAccess: "ALLOW_DATA_API",
///         databaseFlags: [{
///             name: "cloudsql.iam_authentication",
///             value: "on",
///         }],
///     },
///     rootPassword: "changeme",
/// });
/// // Create a database user for your account and grant roles so it has privilege
/// // to access the database. Choose an IAM type, e.g., "CLOUD_IAM_USER"
/// // and "CLOUD_IAM_SERVICE_ACCOUNT". If a service account is used and the
/// // instance is Postgres, please trim the ".gserviceaccount.com" suffix to
/// // avoid exceeding the username length limit.
/// const iamUser = new gcp.sql.User("iam_user", {
///     name: "account-used-to-apply-this-config@example.com",
///     instance: instance.name,
///     type: "CLOUD_IAM_USER",
///     databaseRoles: ["cloudsqlsuperuser"],
/// });
/// const database = new gcp.sql.Database("database", {
///     name: "my-database",
///     instance: instance.name,
/// });
/// const table = new gcp.sql.ProvisionScript("table", {
///     script: "CREATE TABLE IF NOT EXISTS table1 ( col VARCHAR(16) NOT NULL );",
///     instance: instance.name,
///     database: database.name,
///     description: "sql script to create tables",
/// }, {
///     dependsOn: [iamUser],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-instance",
///     database_version="POSTGRES_17",
///     settings={
///         "tier": "db-perf-optimized-N-2",
///         "data_api_access": "ALLOW_DATA_API",
///         "database_flags": [{
///             "name": "cloudsql.iam_authentication",
///             "value": "on",
///         }],
///     },
///     root_password="changeme")
/// # Create a database user for your account and grant roles so it has privilege
/// # to access the database. Choose an IAM type, e.g., "CLOUD_IAM_USER"
/// # and "CLOUD_IAM_SERVICE_ACCOUNT". If a service account is used and the
/// # instance is Postgres, please trim the ".gserviceaccount.com" suffix to
/// # avoid exceeding the username length limit.
/// iam_user = gcp.sql.User("iam_user",
///     name="account-used-to-apply-this-config@example.com",
///     instance=instance.name,
///     type="CLOUD_IAM_USER",
///     database_roles=["cloudsqlsuperuser"])
/// database = gcp.sql.Database("database",
///     name="my-database",
///     instance=instance.name)
/// table = gcp.sql.ProvisionScript("table",
///     script="CREATE TABLE IF NOT EXISTS table1 ( col VARCHAR(16) NOT NULL );",
///     instance=instance.name,
///     database=database.name,
///     description="sql script to create tables",
///     opts = pulumi.ResourceOptions(depends_on=[iam_user]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-instance",
///         DatabaseVersion = "POSTGRES_17",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-perf-optimized-N-2",
///             DataApiAccess = "ALLOW_DATA_API",
///             DatabaseFlags = new[]
///             {
///                 new Gcp.Sql.Inputs.DatabaseInstanceSettingsDatabaseFlagArgs
///                 {
///                     Name = "cloudsql.iam_authentication",
///                     Value = "on",
///                 },
///             },
///         },
///         RootPassword = "changeme",
///     });
///
///     // Create a database user for your account and grant roles so it has privilege
///     // to access the database. Choose an IAM type, e.g., "CLOUD_IAM_USER"
///     // and "CLOUD_IAM_SERVICE_ACCOUNT". If a service account is used and the
///     // instance is Postgres, please trim the ".gserviceaccount.com" suffix to
///     // avoid exceeding the username length limit.
///     var iamUser = new Gcp.Sql.User("iam_user", new()
///     {
///         Name = "account-used-to-apply-this-config@example.com",
///         Instance = instance.Name,
///         Type = "CLOUD_IAM_USER",
///         DatabaseRoles = new[]
///         {
///             "cloudsqlsuperuser",
///         },
///     });
///
///     var database = new Gcp.Sql.Database("database", new()
///     {
///         Name = "my-database",
///         Instance = instance.Name,
///     });
///
///     var table = new Gcp.Sql.ProvisionScript("table", new()
///     {
///         Script = "CREATE TABLE IF NOT EXISTS table1 ( col VARCHAR(16) NOT NULL );",
///         Instance = instance.Name,
///         Database = database.Name,
///         Description = "sql script to create tables",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             iamUser,
///         },
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
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-instance"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_17"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier:          pulumi.String("db-perf-optimized-N-2"),
/// 				DataApiAccess: pulumi.String("ALLOW_DATA_API"),
/// 				DatabaseFlags: sql.DatabaseInstanceSettingsDatabaseFlagArray{
/// 					&sql.DatabaseInstanceSettingsDatabaseFlagArgs{
/// 						Name:  pulumi.String("cloudsql.iam_authentication"),
/// 						Value: pulumi.String("on"),
/// 					},
/// 				},
/// 			},
/// 			RootPassword: pulumi.String("changeme"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a database user for your account and grant roles so it has privilege
/// 		// to access the database. Choose an IAM type, e.g., "CLOUD_IAM_USER"
/// 		// and "CLOUD_IAM_SERVICE_ACCOUNT". If a service account is used and the
/// 		// instance is Postgres, please trim the ".gserviceaccount.com" suffix to
/// 		// avoid exceeding the username length limit.
/// 		iamUser, err := sql.NewUser(ctx, "iam_user", &sql.UserArgs{
/// 			Name:     pulumi.String("account-used-to-apply-this-config@example.com"),
/// 			Instance: instance.Name,
/// 			Type:     pulumi.String("CLOUD_IAM_USER"),
/// 			DatabaseRoles: pulumi.StringArray{
/// 				pulumi.String("cloudsqlsuperuser"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		database, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			Name:     pulumi.String("my-database"),
/// 			Instance: instance.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewProvisionScript(ctx, "table", &sql.ProvisionScriptArgs{
/// 			Script:      pulumi.String("CREATE TABLE IF NOT EXISTS table1 ( col VARCHAR(16) NOT NULL );"),
/// 			Instance:    instance.Name,
/// 			Database:    database.Name,
/// 			Description: pulumi.String("sql script to create tables"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			iamUser,
/// 		}))
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
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-instance"
///   database_version = "POSTGRES_17"
///   settings = {
///     tier            = "db-perf-optimized-N-2"
///     data_api_access = "ALLOW_DATA_API"
///     database_flags = [{
///       "name"  = "cloudsql.iam_authentication"
///       "value" = "on"
///     }]
///   }
///   root_password = "changeme"
/// }
/// # Create a database user for your account and grant roles so it has privilege
/// # to access the database. Choose an IAM type, e.g., "CLOUD_IAM_USER"
/// # and "CLOUD_IAM_SERVICE_ACCOUNT". If a service account is used and the
/// # instance is Postgres, please trim the ".gserviceaccount.com" suffix to
/// # avoid exceeding the username length limit.
/// resource "gcp_sql_user" "iam_user" {
///   name           = "account-used-to-apply-this-config@example.com"
///   instance       = gcp_sql_databaseinstance.instance.name
///   type           = "CLOUD_IAM_USER"
///   database_roles = ["cloudsqlsuperuser"]
/// }
/// resource "gcp_sql_database" "database" {
///   name     = "my-database"
///   instance = gcp_sql_databaseinstance.instance.name
/// }
/// resource "gcp_sql_provisionscript" "table" {
///   depends_on  = [gcp_sql_user.iam_user]
///   script      = "CREATE TABLE IF NOT EXISTS table1 ( col VARCHAR(16) NOT NULL );"
///   instance    = gcp_sql_databaseinstance.instance.name
///   database    = gcp_sql_database.database.name
///   description = "sql script to create tables"
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
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsDatabaseFlagArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.sql.Database;
/// import com.pulumi.gcp.sql.DatabaseArgs;
/// import com.pulumi.gcp.sql.ProvisionScript;
/// import com.pulumi.gcp.sql.ProvisionScriptArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("my-instance")
///             .databaseVersion("POSTGRES_17")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-perf-optimized-N-2")
///                 .dataApiAccess("ALLOW_DATA_API")
///                 .databaseFlags(DatabaseInstanceSettingsDatabaseFlagArgs.builder()
///                     .name("cloudsql.iam_authentication")
///                     .value("on")
///                     .build())
///                 .build())
///             .rootPassword("changeme")
///             .build());
///
///         // Create a database user for your account and grant roles so it has privilege
///         // to access the database. Choose an IAM type, e.g., "CLOUD_IAM_USER"
///         // and "CLOUD_IAM_SERVICE_ACCOUNT". If a service account is used and the
///         // instance is Postgres, please trim the ".gserviceaccount.com" suffix to
///         // avoid exceeding the username length limit.
///         var iamUser = new User("iamUser", UserArgs.builder()
///             .name("account-used-to-apply-this-config@example.com")
///             .instance(instance.name())
///             .type("CLOUD_IAM_USER")
///             .databaseRoles("cloudsqlsuperuser")
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .name("my-database")
///             .instance(instance.name())
///             .build());
///
///         var table = new ProvisionScript("table", ProvisionScriptArgs.builder()
///             .script("CREATE TABLE IF NOT EXISTS table1 ( col VARCHAR(16) NOT NULL );")
///             .instance(instance.name())
///             .database(database.name())
///             .description("sql script to create tables")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iamUser)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-instance
///       databaseVersion: POSTGRES_17
///       settings:
///         tier: db-perf-optimized-N-2
///         dataApiAccess: ALLOW_DATA_API
///         databaseFlags:
///           - name: cloudsql.iam_authentication
///             value: on
///       rootPassword: changeme
///   # Create a database user for your account and grant roles so it has privilege
///   # to access the database. Choose an IAM type, e.g., "CLOUD_IAM_USER"
///   # and "CLOUD_IAM_SERVICE_ACCOUNT". If a service account is used and the
///   # instance is Postgres, please trim the ".gserviceaccount.com" suffix to
///   # avoid exceeding the username length limit.
///   iamUser:
///     type: gcp:sql:User
///     name: iam_user
///     properties:
///       name: account-used-to-apply-this-config@example.com
///       instance: ${instance.name}
///       type: CLOUD_IAM_USER
///       databaseRoles:
///         - cloudsqlsuperuser
///   database:
///     type: gcp:sql:Database
///     properties:
///       name: my-database
///       instance: ${instance.name}
///   table:
///     type: gcp:sql:ProvisionScript
///     properties:
///       script: CREATE TABLE IF NOT EXISTS table1 ( col VARCHAR(16) NOT NULL );
///       instance: ${instance.name}
///       database: ${database.name}
///       description: sql script to create tables
///     options:
///       dependsOn:
///         - ${iamUser}
/// ```
///
///
///
/// Example managing a Cloud SQL MySQL instance with a provision script using IAM Database Authentication.
class ProvisionScript extends pulumi.CustomResource {
  /// The name of the database to which Terraform connects. Changing
  /// this forces Terraform to connect to the new database and run the script. This argument is
  /// required for Postgres instances. It's optional for MySQL, but some of your queries may require
  /// a database. You can create and use a database in the script or explicitly reference a
  /// google_sql_database.
  late final pulumi.Output<String?> database;
  /// The deletion policy for the resources created by the script. The
  /// default is "ABANDON". It must be "ABANDON" to allow Terraform to abandon the resources. If you
  /// want to delete resources, add statements in the script such as `drop … if exists`.
  late final pulumi.Output<String?> deletionPolicy;
  /// The description of the provision script.
  late final pulumi.Output<String?> description;
  /// The name of the Cloud SQL instance. Changing this forces the script to
  /// be run on the new instance.
  late final pulumi.Output<String> instance;
  /// The resource name of the Secret Manager secret storing the
  /// password. The secret should be a regional secret and stored in the exact same region as the Cloud
  /// SQL instance. Follow https://docs.cloud.google.com/secret-manager/regional-secrets/create-regional-secret.
  /// When user and passwordSecretVersion are provided, the script is run using this user.
  /// Otherwise, the script is run using the identity account used to apply your Terraform config.
  /// Changing this field forces the script to be run again.
  late final pulumi.Output<String?> passwordSecretVersion;
  /// The ID of the project in which the resource belongs. If it is not provided,
  /// the provider project is used.
  late final pulumi.Output<String> project;
  /// The SQL script to provision database resources. Its execution time limit
  /// is 30 s and it will be canceled if it takes longer than 30 s. You can use patterns like
  /// `create if not exists …` or `if not exists (select …) then … end if` to avoid existence-related
  /// errors. If it's not possible to make a statement idempotent, you can run it once and then remove
  /// it from this script.
  late final pulumi.Output<String> script;
  /// The name of the built-in database user to authenticate as. For MySQL user,
  /// omit '@' and the hostname. The user should exist as a built-in user in the database.
  /// When `user` and `passwordSecretVersion` are provided, the script is run using this user.
  /// Otherwise, the script is run using the identity account used to apply your Terraform config.
  /// Changing this forces the script to be run using the new user.
  late final pulumi.Output<String?> user;

  /// Creates a new [ProvisionScript].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisionScript]. {@macro pulumi_sql_provision_script_provision_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisionScript(
    String name, {
    ProvisionScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/provisionScript:ProvisionScript',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    database = registerOutput<String?>('database');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    description = registerOutput<String?>('description');
    instance = registerOutput<String>('instance');
    passwordSecretVersion = registerOutput<String?>('passwordSecretVersion');
    project = registerOutput<String>('project');
    script = registerOutput<String>('script');
    user = registerOutput<String?>('user');
  }

  /// Gets an existing [ProvisionScript] resource's state with the given [name] and [id].
  static ProvisionScript get(
    String name,
    pulumi.Input<String> id, {
    ProvisionScriptState? state,
  }) {
    return ProvisionScript._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProvisionScript._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/provisionScript:ProvisionScript',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    database = registerOutput<String?>('database');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    description = registerOutput<String?>('description');
    instance = registerOutput<String>('instance');
    passwordSecretVersion = registerOutput<String?>('passwordSecretVersion');
    project = registerOutput<String>('project');
    script = registerOutput<String>('script');
    user = registerOutput<String?>('user');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_password_policy.dart';
import 'user_sql_server_user_detail.dart';
import 'user_state.dart';

/// Creates a new Google SQL User on a Google SQL User Instance. For more information, see the [official documentation](https://cloud.google.com/sql/), or the [JSON API](https://cloud.google.com/sql/docs/admin-api/v1beta4/users).
///
///
/// Read more about sensitive data in state. Passwords will not be retrieved when running
/// "terraform import".
///
/// &gt; **Note:** Write-Only argument `passwordWo` is available to use in place of `password`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// Example creating a SQL User.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: `main-instance-${dbNameSuffix.hex}`,
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-f1-micro",
///     },
/// });
/// const users = new gcp.sql.User("users", {
///     name: "me",
///     instance: main.name,
///     host: "me.com",
///     password: "changeme",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// db_name_suffix = random.Id("db_name_suffix", byte_length=4)
/// main = gcp.sql.DatabaseInstance("main",
///     name=f"main-instance-{db_name_suffix['hex']}",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-f1-micro",
///     })
/// users = gcp.sql.User("users",
///     name="me",
///     instance=main.name,
///     host="me.com",
///     password="changeme")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dbNameSuffix = new Random.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = $"main-instance-{dbNameSuffix.Hex}",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///     });
///
///     var users = new Gcp.Sql.User("users", new()
///     {
///         Name = "me",
///         Instance = main.Name,
///         Host = "me.com",
///         Password = "changeme",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.Sprintf("main-instance-%v", dbNameSuffix.Hex),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewUser(ctx, "users", &sql.UserArgs{
/// 			Name:     pulumi.String("me"),
/// 			Instance: main.Name,
/// 			Host:     pulumi.String("me.com"),
/// 			Password: pulumi.String("changeme"),
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
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "random_id" "db_name_suffix" {
///   byte_length = 4
/// }
/// resource "gcp_sql_databaseinstance" "main" {
///   name             ="main-instance-${random_id.db_name_suffix.hex}"
///   database_version = "MYSQL_5_7"
///   settings = {
///     tier = "db-f1-micro"
///   }
/// }
/// resource "gcp_sql_user" "users" {
///   name     = "me"
///   instance = gcp_sql_databaseinstance.main.name
///   host     = "me.com"
///   password = "changeme"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
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
///         var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name(String.format("main-instance-%s", dbNameSuffix.get("hex")))
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .build());
///
///         var users = new User("users", UserArgs.builder()
///             .name("me")
///             .instance(main.name())
///             .host("me.com")
///             .password("changeme")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dbNameSuffix:
///     type: random:Id
///     name: db_name_suffix
///     properties:
///       byteLength: 4
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance-${dbNameSuffix.hex}
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-f1-micro
///   users:
///     type: gcp:sql:User
///     properties:
///       name: me
///       instance: ${main.name}
///       host: me.com
///       password: changeme
/// ```
///
///
/// Example creating a SQL User with database roles(applicable for Postgres/MySQL
/// only).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: `main-instance-${dbNameSuffix.hex}`,
///     databaseVersion: "POSTGRES_15",
///     settings: {
///         tier: "db-f1-micro",
///     },
/// });
/// const users = new gcp.sql.User("users", {
///     name: "me",
///     instance: main.name,
///     host: "me.com",
///     password: "changeme",
///     databaseRoles: ["cloudsqlsuperuser"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// db_name_suffix = random.Id("db_name_suffix", byte_length=4)
/// main = gcp.sql.DatabaseInstance("main",
///     name=f"main-instance-{db_name_suffix['hex']}",
///     database_version="POSTGRES_15",
///     settings={
///         "tier": "db-f1-micro",
///     })
/// users = gcp.sql.User("users",
///     name="me",
///     instance=main.name,
///     host="me.com",
///     password="changeme",
///     database_roles=["cloudsqlsuperuser"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dbNameSuffix = new Random.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = $"main-instance-{dbNameSuffix.Hex}",
///         DatabaseVersion = "POSTGRES_15",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///     });
///
///     var users = new Gcp.Sql.User("users", new()
///     {
///         Name = "me",
///         Instance = main.Name,
///         Host = "me.com",
///         Password = "changeme",
///         DatabaseRoles = new[]
///         {
///             "cloudsqlsuperuser",
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.Sprintf("main-instance-%v", dbNameSuffix.Hex),
/// 			DatabaseVersion: pulumi.String("POSTGRES_15"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewUser(ctx, "users", &sql.UserArgs{
/// 			Name:     pulumi.String("me"),
/// 			Instance: main.Name,
/// 			Host:     pulumi.String("me.com"),
/// 			Password: pulumi.String("changeme"),
/// 			DatabaseRoles: pulumi.StringArray{
/// 				pulumi.String("cloudsqlsuperuser"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "random_id" "db_name_suffix" {
///   byte_length = 4
/// }
/// resource "gcp_sql_databaseinstance" "main" {
///   name             ="main-instance-${random_id.db_name_suffix.hex}"
///   database_version = "POSTGRES_15"
///   settings = {
///     tier = "db-f1-micro"
///   }
/// }
/// resource "gcp_sql_user" "users" {
///   name           = "me"
///   instance       = gcp_sql_databaseinstance.main.name
///   host           = "me.com"
///   password       = "changeme"
///   database_roles = ["cloudsqlsuperuser"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
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
///         var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name(String.format("main-instance-%s", dbNameSuffix.get("hex")))
///             .databaseVersion("POSTGRES_15")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .build());
///
///         var users = new User("users", UserArgs.builder()
///             .name("me")
///             .instance(main.name())
///             .host("me.com")
///             .password("changeme")
///             .databaseRoles("cloudsqlsuperuser")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dbNameSuffix:
///     type: random:Id
///     name: db_name_suffix
///     properties:
///       byteLength: 4
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance-${dbNameSuffix.hex}
///       databaseVersion: POSTGRES_15
///       settings:
///         tier: db-f1-micro
///   users:
///     type: gcp:sql:User
///     properties:
///       name: me
///       instance: ${main.name}
///       host: me.com
///       password: changeme
///       databaseRoles:
///         - cloudsqlsuperuser
/// ```
///
///
/// Example using [Cloud SQL IAM database authentication](https://cloud.google.com/sql/docs/mysql/authentication).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: `main-instance-${dbNameSuffix.hex}`,
///     databaseVersion: "POSTGRES_15",
///     settings: {
///         tier: "db-f1-micro",
///         databaseFlags: [{
///             name: "cloudsql.iam_authentication",
///             value: "on",
///         }],
///     },
/// });
/// const iamUser = new gcp.sql.User("iam_user", {
///     name: "me@example.com",
///     instance: main.name,
///     type: "CLOUD_IAM_USER",
/// });
/// const iamServiceAccountUser = new gcp.sql.User("iam_service_account_user", {
///     name: std.trimsuffix({
///         input: serviceAccount.email,
///         suffix: ".gserviceaccount.com",
///     }).then(invoke => invoke.result),
///     instance: main.name,
///     type: "CLOUD_IAM_SERVICE_ACCOUNT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
/// import pulumi_std as std
///
/// db_name_suffix = random.Id("db_name_suffix", byte_length=4)
/// main = gcp.sql.DatabaseInstance("main",
///     name=f"main-instance-{db_name_suffix['hex']}",
///     database_version="POSTGRES_15",
///     settings={
///         "tier": "db-f1-micro",
///         "database_flags": [{
///             "name": "cloudsql.iam_authentication",
///             "value": "on",
///         }],
///     })
/// iam_user = gcp.sql.User("iam_user",
///     name="me@example.com",
///     instance=main.name,
///     type="CLOUD_IAM_USER")
/// iam_service_account_user = gcp.sql.User("iam_service_account_user",
///     name=std.trimsuffix(input=service_account["email"],
///         suffix=".gserviceaccount.com").result,
///     instance=main.name,
///     type="CLOUD_IAM_SERVICE_ACCOUNT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dbNameSuffix = new Random.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = $"main-instance-{dbNameSuffix.Hex}",
///         DatabaseVersion = "POSTGRES_15",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             DatabaseFlags = new[]
///             {
///                 new Gcp.Sql.Inputs.DatabaseInstanceSettingsDatabaseFlagArgs
///                 {
///                     Name = "cloudsql.iam_authentication",
///                     Value = "on",
///                 },
///             },
///         },
///     });
///
///     var iamUser = new Gcp.Sql.User("iam_user", new()
///     {
///         Name = "me@example.com",
///         Instance = main.Name,
///         Type = "CLOUD_IAM_USER",
///     });
///
///     var iamServiceAccountUser = new Gcp.Sql.User("iam_service_account_user", new()
///     {
///         Name = Std.Trimsuffix.Invoke(new()
///         {
///             Input = serviceAccount.Email,
///             Suffix = ".gserviceaccount.com",
///         }).Apply(invoke => invoke.Result),
///         Instance = main.Name,
///         Type = "CLOUD_IAM_SERVICE_ACCOUNT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.Sprintf("main-instance-%v", dbNameSuffix.Hex),
/// 			DatabaseVersion: pulumi.String("POSTGRES_15"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				DatabaseFlags: sql.DatabaseInstanceSettingsDatabaseFlagArray{
/// 					&sql.DatabaseInstanceSettingsDatabaseFlagArgs{
/// 						Name:  pulumi.String("cloudsql.iam_authentication"),
/// 						Value: pulumi.String("on"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewUser(ctx, "iam_user", &sql.UserArgs{
/// 			Name:     pulumi.String("me@example.com"),
/// 			Instance: main.Name,
/// 			Type:     pulumi.String("CLOUD_IAM_USER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeTrimsuffix, err := std.Trimsuffix(ctx, &std.TrimsuffixArgs{
/// 			Input:  serviceAccount.Email,
/// 			Suffix: ".gserviceaccount.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewUser(ctx, "iam_service_account_user", &sql.UserArgs{
/// 			Name:     pulumi.String(invokeTrimsuffix.Result),
/// 			Instance: main.Name,
/// 			Type:     pulumi.String("CLOUD_IAM_SERVICE_ACCOUNT"),
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
///     random = {
///       source = "pulumi/random"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "random_id" "db_name_suffix" {
///   byte_length = 4
/// }
/// resource "gcp_sql_databaseinstance" "main" {
///   name             ="main-instance-${random_id.db_name_suffix.hex}"
///   database_version = "POSTGRES_15"
///   settings = {
///     tier = "db-f1-micro"
///     database_flags = [{
///       "name"  = "cloudsql.iam_authentication"
///       "value" = "on"
///     }]
///   }
/// }
/// resource "gcp_sql_user" "iam_user" {
///   name     = "me@example.com"
///   instance = gcp_sql_databaseinstance.main.name
///   type     = "CLOUD_IAM_USER"
/// }
/// resource "gcp_sql_user" "iam_service_account_user" {
///   name     = trimsuffix(serviceAccount.email, ".gserviceaccount.com")
///   instance = gcp_sql_databaseinstance.main.name
///   type     = "CLOUD_IAM_SERVICE_ACCOUNT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsDatabaseFlagArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TrimsuffixArgs;
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
///         var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name(String.format("main-instance-%s", dbNameSuffix.get("hex")))
///             .databaseVersion("POSTGRES_15")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .databaseFlags(DatabaseInstanceSettingsDatabaseFlagArgs.builder()
///                     .name("cloudsql.iam_authentication")
///                     .value("on")
///                     .build())
///                 .build())
///             .build());
///
///         var iamUser = new User("iamUser", UserArgs.builder()
///             .name("me@example.com")
///             .instance(main.name())
///             .type("CLOUD_IAM_USER")
///             .build());
///
///         var iamServiceAccountUser = new User("iamServiceAccountUser", UserArgs.builder()
///             .name(StdFunctions.trimsuffix(TrimsuffixArgs.builder()
///                 .input(serviceAccount.get("email"))
///                 .suffix(".gserviceaccount.com")
///                 .build()).result())
///             .instance(main.name())
///             .type("CLOUD_IAM_SERVICE_ACCOUNT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dbNameSuffix:
///     type: random:Id
///     name: db_name_suffix
///     properties:
///       byteLength: 4
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance-${dbNameSuffix.hex}
///       databaseVersion: POSTGRES_15
///       settings:
///         tier: db-f1-micro
///         databaseFlags:
///           - name: cloudsql.iam_authentication
///             value: on
///   iamUser:
///     type: gcp:sql:User
///     name: iam_user
///     properties:
///       name: me@example.com
///       instance: ${main.name}
///       type: CLOUD_IAM_USER
///   iamServiceAccountUser:
///     type: gcp:sql:User
///     name: iam_service_account_user
///     properties:
///       name:
///         fn::invoke:
///           function: std:trimsuffix
///           arguments:
///             input: ${serviceAccount.email}
///             suffix: .gserviceaccount.com
///           return: result
///       instance: ${main.name}
///       type: CLOUD_IAM_SERVICE_ACCOUNT
/// ```
///
///
/// Example using [Cloud SQL IAM Group authentication](https://cloud.google.com/sql/docs/mysql/iam-authentication#iam-group-auth).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: `main-instance-${dbNameSuffix.hex}`,
///     databaseVersion: "MYSQL_8_0",
///     settings: {
///         tier: "db-f1-micro",
///         databaseFlags: [{
///             name: "cloudsql_iam_authentication",
///             value: "on",
///         }],
///     },
/// });
/// const iamGroupUser = new gcp.sql.User("iam_group_user", {
///     name: "iam_group@example.com",
///     instance: main.name,
///     type: "CLOUD_IAM_GROUP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// db_name_suffix = random.Id("db_name_suffix", byte_length=4)
/// main = gcp.sql.DatabaseInstance("main",
///     name=f"main-instance-{db_name_suffix['hex']}",
///     database_version="MYSQL_8_0",
///     settings={
///         "tier": "db-f1-micro",
///         "database_flags": [{
///             "name": "cloudsql_iam_authentication",
///             "value": "on",
///         }],
///     })
/// iam_group_user = gcp.sql.User("iam_group_user",
///     name="iam_group@example.com",
///     instance=main.name,
///     type="CLOUD_IAM_GROUP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dbNameSuffix = new Random.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = $"main-instance-{dbNameSuffix.Hex}",
///         DatabaseVersion = "MYSQL_8_0",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///             DatabaseFlags = new[]
///             {
///                 new Gcp.Sql.Inputs.DatabaseInstanceSettingsDatabaseFlagArgs
///                 {
///                     Name = "cloudsql_iam_authentication",
///                     Value = "on",
///                 },
///             },
///         },
///     });
///
///     var iamGroupUser = new Gcp.Sql.User("iam_group_user", new()
///     {
///         Name = "iam_group@example.com",
///         Instance = main.Name,
///         Type = "CLOUD_IAM_GROUP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.Sprintf("main-instance-%v", dbNameSuffix.Hex),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 				DatabaseFlags: sql.DatabaseInstanceSettingsDatabaseFlagArray{
/// 					&sql.DatabaseInstanceSettingsDatabaseFlagArgs{
/// 						Name:  pulumi.String("cloudsql_iam_authentication"),
/// 						Value: pulumi.String("on"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewUser(ctx, "iam_group_user", &sql.UserArgs{
/// 			Name:     pulumi.String("iam_group@example.com"),
/// 			Instance: main.Name,
/// 			Type:     pulumi.String("CLOUD_IAM_GROUP"),
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
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "random_id" "db_name_suffix" {
///   byte_length = 4
/// }
/// resource "gcp_sql_databaseinstance" "main" {
///   name             ="main-instance-${random_id.db_name_suffix.hex}"
///   database_version = "MYSQL_8_0"
///   settings = {
///     tier = "db-f1-micro"
///     database_flags = [{
///       "name"  = "cloudsql_iam_authentication"
///       "value" = "on"
///     }]
///   }
/// }
/// resource "gcp_sql_user" "iam_group_user" {
///   name     = "iam_group@example.com"
///   instance = gcp_sql_databaseinstance.main.name
///   type     = "CLOUD_IAM_GROUP"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsDatabaseFlagArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
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
///         var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name(String.format("main-instance-%s", dbNameSuffix.get("hex")))
///             .databaseVersion("MYSQL_8_0")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .databaseFlags(DatabaseInstanceSettingsDatabaseFlagArgs.builder()
///                     .name("cloudsql_iam_authentication")
///                     .value("on")
///                     .build())
///                 .build())
///             .build());
///
///         var iamGroupUser = new User("iamGroupUser", UserArgs.builder()
///             .name("iam_group@example.com")
///             .instance(main.name())
///             .type("CLOUD_IAM_GROUP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dbNameSuffix:
///     type: random:Id
///     name: db_name_suffix
///     properties:
///       byteLength: 4
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance-${dbNameSuffix.hex}
///       databaseVersion: MYSQL_8_0
///       settings:
///         tier: db-f1-micro
///         databaseFlags:
///           - name: cloudsql_iam_authentication
///             value: on
///   iamGroupUser:
///     type: gcp:sql:User
///     name: iam_group_user
///     properties:
///       name: iam_group@example.com
///       instance: ${main.name}
///       type: CLOUD_IAM_GROUP
/// ```
///
///
/// ## Import
///
/// SQL users for MySQL databases can be imported using the `project`, `instance`, `host` and `name`, e.g.
///
/// * `{{project_id}}/{{instance}}/{{host}}/{{name}}`
///
/// SQL users for PostgreSQL databases can be imported using the `project`, `instance` and `name`, e.g.
///
/// * `{{project_id}}/{{instance}}/{{name}}`
///
///
/// When using the `pulumi import` command, NAME_HERE can be imported using one of the formats above. For example:
///
/// MySQL database
///
/// ```sh
/// $ pulumi import gcp:sql/user:User default {{project_id}}/{{instance}}/{{host}}/{{name}}
/// ```
///
/// PostgreSQL database
///
/// ```sh
/// $ pulumi import gcp:sql/user:User default {{project_id}}/{{instance}}/{{name}}
/// ```
class User extends pulumi.CustomResource {
  /// A list of database roles to be assigned to the user.
  /// This option is only available for MySQL 8+ and PostgreSQL instances. You
  /// can include predefined Cloud SQL roles, like cloudsqlsuperuser, or your
  /// own custom roles. Custom roles must be created in the database before
  /// you can assign them. You can create roles using the CREATE ROLE
  /// statement for both MySQL and PostgreSQL.
  /// **Note**: This property is write-only and will not be read from the API.
  /// **Caution**: Existing database roles will be overwriten with new values from this field.
  late final pulumi.Output<List<String>?> databaseRoles;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API. This is useful
  /// for Postgres, where users cannot be deleted from the API if they have been granted SQL roles.
  ///
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  late final pulumi.Output<String> deletionPolicy;
  /// The host the user can connect from. This is only supported
  /// for BUILT_IN users in MySQL instances. Don't set this field for PostgreSQL and SQL Server instances.
  /// Can be an IP address. Changing this forces a new resource to be created.
  late final pulumi.Output<String> host;
  /// IAM email address for MySQL IAM database users.
  late final pulumi.Output<String> iamEmail;
  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  late final pulumi.Output<String> instance;
  /// The name of the user. Changing this forces a new resource
  /// to be created.
  late final pulumi.Output<String> name;
  /// The password for the user. Can be updated. For Postgres
  /// instances this is a Required field, unless type is set to either CLOUD_IAM_USER
  /// or CLOUD_IAM_SERVICE_ACCOUNT. Don't set this field for CLOUD_IAM_USER
  /// and CLOUD_IAM_SERVICE_ACCOUNT user types for any Cloud SQL instance.
  late final pulumi.Output<String?> password;
  late final pulumi.Output<UserPasswordPolicy?> passwordPolicy;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password for the user. Can be updated. For Postgres
  /// instances this is a Required field, unless type is set to either CLOUD_IAM_USER
  /// or CLOUD_IAM_SERVICE_ACCOUNT. Don't set this field for CLOUD_IAM_USER
  /// and CLOUD_IAM_SERVICE_ACCOUNT user types for any Cloud SQL instance.
  ///
  /// * &gt; **Note:** One of `value` or `valueWo` can only be set.
  late final pulumi.Output<String?> passwordWo;
  /// An integer value used to trigger an update for `passwordWo`. This property should be incremented when updating `passwordWo`. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_attributes.html#updating-write-only-attributes).
  late final pulumi.Output<int?> passwordWoVersion;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  late final pulumi.Output<List<UserSqlServerUserDetail>> sqlServerUserDetails;
  /// The user type. It determines the method to authenticate the
  /// user during login. The default is the database's built-in user type. Flags
  /// include "BUILT_IN", "CLOUD_IAM_USER", "CLOUD_IAM_SERVICE_ACCOUNT", "CLOUD_IAM_GROUP",
  /// "CLOUD_IAM_GROUP_USER" and "CLOUD_IAM_GROUP_SERVICE_ACCOUNT" for
  /// [Postgres](https://cloud.google.com/sql/docs/postgres/admin-api/rest/v1beta4/users#sqlusertype)
  /// and [MySQL](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/users#sqlusertype).
  late final pulumi.Output<String?> type;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_sql_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['password', 'passwordWo'],
        ) {
    databaseRoles = registerOutput<List<String>?>('databaseRoles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    host = registerOutput<String>('host');
    iamEmail = registerOutput<String>('iamEmail');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordPolicy = registerOutput<UserPasswordPolicy?>('passwordPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserPasswordPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    passwordWo = registerOutput<String?>('passwordWo', isSecret: true);
    passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    project = registerOutput<String>('project');
    sqlServerUserDetails = registerOutput<List<UserSqlServerUserDetail>>('sqlServerUserDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserSqlServerUserDetail>(guardedValue, (value) => UserSqlServerUserDetail.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    databaseRoles = registerOutput<List<String>?>('databaseRoles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    host = registerOutput<String>('host');
    iamEmail = registerOutput<String>('iamEmail');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordPolicy = registerOutput<UserPasswordPolicy?>('passwordPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserPasswordPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    passwordWo = registerOutput<String?>('passwordWo', isSecret: true);
    passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    project = registerOutput<String>('project');
    sqlServerUserDetails = registerOutput<List<UserSqlServerUserDetail>>('sqlServerUserDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserSqlServerUserDetail>(guardedValue, (value) => UserSqlServerUserDetail.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'gcp:sql/user:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password', 'passwordWo'],
        isResourceReference: true,
      ) {
    databaseRoles = registerOutput<List<String>?>('databaseRoles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    host = registerOutput<String>('host');
    iamEmail = registerOutput<String>('iamEmail');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    passwordPolicy = registerOutput<UserPasswordPolicy?>('passwordPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserPasswordPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    passwordWo = registerOutput<String?>('passwordWo', isSecret: true);
    passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    project = registerOutput<String>('project');
    sqlServerUserDetails = registerOutput<List<UserSqlServerUserDetail>>('sqlServerUserDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserSqlServerUserDetail>(guardedValue, (value) => UserSqlServerUserDetail.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String?>('type');
  }
}

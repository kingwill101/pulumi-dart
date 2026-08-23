import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_aws.dart';
import 'connection_azure.dart';
import 'connection_cloud_resource.dart';
import 'connection_cloud_spanner.dart';
import 'connection_cloud_sql.dart';
import 'connection_configuration.dart';
import 'connection_spark.dart';
import 'connection_state.dart';

/// A connection allows BigQuery connections to external data sources..
///
///
/// To get more information about Connection, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/bigqueryconnection/rest/v1/projects.locations.connections/create)
/// * How-to Guides
/// * [Cloud SQL federated queries](https://cloud.google.com/bigquery/docs/cloud-sql-federated-queries)
///
///
///
/// ## Example Usage
///
/// ### Bigquery Connection Cloud Resource
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.bigquery.Connection("connection", {
///     connectionId: "my-connection",
///     location: "US",
///     friendlyName: "👋",
///     description: "a riveting description",
///     cloudResource: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.bigquery.Connection("connection",
///     connection_id="my-connection",
///     location="US",
///     friendly_name="👋",
///     description="a riveting description",
///     cloud_resource={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         ConnectionId = "my-connection",
///         Location = "US",
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         CloudResource = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			ConnectionId:  pulumi.String("my-connection"),
/// 			Location:      pulumi.String("US"),
/// 			FriendlyName:  pulumi.String("👋"),
/// 			Description:   pulumi.String("a riveting description"),
/// 			CloudResource: &bigquery.ConnectionCloudResourceArgs{},
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
/// resource "gcp_bigquery_connection" "connection" {
///   connection_id  = "my-connection"
///   location       = "US"
///   friendly_name  = "👋"
///   description    = "a riveting description"
///   cloud_resource = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudResourceArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionId("my-connection")
///             .location("US")
///             .friendlyName("👋")
///             .description("a riveting description")
///             .cloudResource(ConnectionCloudResourceArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       connectionId: my-connection
///       location: US
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       cloudResource: {}
/// ```
///
/// ### Bigquery Connection Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-database-instance",
///     databaseVersion: "POSTGRES_11",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///     },
///     deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
///     length: 16,
///     special: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     password: pwd.result,
/// });
/// const connection = new gcp.bigquery.Connection("connection", {
///     friendlyName: "👋",
///     description: "a riveting description",
///     location: "US",
///     cloudSql: {
///         instanceId: instance.connectionName,
///         database: db.name,
///         type: "POSTGRES",
///         credential: {
///             username: user.name,
///             password: user.password,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-database-instance",
///     database_version="POSTGRES_11",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///     },
///     deletion_protection=True)
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// pwd = random.Password("pwd",
///     length=16,
///     special=False)
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     password=pwd["result"])
/// connection = gcp.bigquery.Connection("connection",
///     friendly_name="👋",
///     description="a riveting description",
///     location="US",
///     cloud_sql={
///         "instance_id": instance.connection_name,
///         "database": db.name,
///         "type": "POSTGRES",
///         "credential": {
///             "username": user.name,
///             "password": user.password,
///         },
///     })
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
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-database-instance",
///         DatabaseVersion = "POSTGRES_11",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///         DeletionProtection = true,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
///     var pwd = new Random.Password("pwd", new()
///     {
///         Length = 16,
///         Special = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Password = pwd.Result,
///     });
///
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         Location = "US",
///         CloudSql = new Gcp.BigQuery.Inputs.ConnectionCloudSqlArgs
///         {
///             InstanceId = instance.ConnectionName,
///             Database = db.Name,
///             Type = "POSTGRES",
///             Credential = new Gcp.BigQuery.Inputs.ConnectionCloudSqlCredentialArgs
///             {
///                 Username = user.Name,
///                 Password = user.Password,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database-instance"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_11"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// 			Length:  16,
/// 			Special: false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Password: pwd.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			FriendlyName: pulumi.String("👋"),
/// 			Description:  pulumi.String("a riveting description"),
/// 			Location:     pulumi.String("US"),
/// 			CloudSql: &bigquery.ConnectionCloudSqlArgs{
/// 				InstanceId: instance.ConnectionName,
/// 				Database:   db.Name,
/// 				Type:       pulumi.String("POSTGRES"),
/// 				Credential: &bigquery.ConnectionCloudSqlCredentialArgs{
/// 					Username: user.Name,
/// 					Password: user.Password,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-database-instance"
///   database_version = "POSTGRES_11"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///   }
///   deletion_protection = true
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "random_password" "pwd" {
///   length  = 16
///   special = false
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   password = random_password.pwd.result
/// }
/// resource "gcp_bigquery_connection" "connection" {
///   friendly_name = "👋"
///   description   = "a riveting description"
///   location      = "US"
///   cloud_sql = {
///     instance_id = gcp_sql_databaseinstance.instance.connection_name
///     database    = gcp_sql_database.db.name
///     type        = "POSTGRES"
///     credential = {
///       username = gcp_sql_user.user.name
///       password = gcp_sql_user.user.password
///     }
///   }
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
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudSqlArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudSqlCredentialArgs;
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
///             .name("my-database-instance")
///             .databaseVersion("POSTGRES_11")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///         var pwd = new Password("pwd", PasswordArgs.builder()
///             .length(16)
///             .special(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .password(pwd.get("result"))
///             .build());
///
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .friendlyName("👋")
///             .description("a riveting description")
///             .location("US")
///             .cloudSql(ConnectionCloudSqlArgs.builder()
///                 .instanceId(instance.connectionName())
///                 .database(db.name())
///                 .type("POSTGRES")
///                 .credential(ConnectionCloudSqlCredentialArgs.builder()
///                     .username(user.name())
///                     .password(user.password())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database-instance
///       databaseVersion: POSTGRES_11
///       region: us-central1
///       settings:
///         tier: db-f1-micro
///       deletionProtection: true
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   pwd:
///     type: random:Password
///     properties:
///       length: 16
///       special: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       password: ${pwd.result}
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       location: US
///       cloudSql:
///         instanceId: ${instance.connectionName}
///         database: ${db.name}
///         type: POSTGRES
///         credential:
///           username: ${user.name}
///           password: ${user.password}
/// ```
///
/// ### Bigquery Connection Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-database-instance",
///     databaseVersion: "POSTGRES_11",
///     region: "us-central1",
///     settings: {
///         tier: "db-f1-micro",
///     },
///     deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// const pwd = new random.index.Password("pwd", {
///     length: 16,
///     special: false,
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     password: pwd.result,
/// });
/// const connection = new gcp.bigquery.Connection("connection", {
///     connectionId: "my-connection",
///     location: "US",
///     friendlyName: "👋",
///     description: "a riveting description",
///     cloudSql: {
///         instanceId: instance.connectionName,
///         database: db.name,
///         type: "POSTGRES",
///         credential: {
///             username: user.name,
///             password: user.password,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-database-instance",
///     database_version="POSTGRES_11",
///     region="us-central1",
///     settings={
///         "tier": "db-f1-micro",
///     },
///     deletion_protection=True)
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// pwd = random.Password("pwd",
///     length=16,
///     special=False)
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     password=pwd["result"])
/// connection = gcp.bigquery.Connection("connection",
///     connection_id="my-connection",
///     location="US",
///     friendly_name="👋",
///     description="a riveting description",
///     cloud_sql={
///         "instance_id": instance.connection_name,
///         "database": db.name,
///         "type": "POSTGRES",
///         "credential": {
///             "username": user.name,
///             "password": user.password,
///         },
///     })
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
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "my-database-instance",
///         DatabaseVersion = "POSTGRES_11",
///         Region = "us-central1",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///         DeletionProtection = true,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
///     var pwd = new Random.Password("pwd", new()
///     {
///         Length = 16,
///         Special = false,
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Password = pwd.Result,
///     });
///
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         ConnectionId = "my-connection",
///         Location = "US",
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         CloudSql = new Gcp.BigQuery.Inputs.ConnectionCloudSqlArgs
///         {
///             InstanceId = instance.ConnectionName,
///             Database = db.Name,
///             Type = "POSTGRES",
///             Credential = new Gcp.BigQuery.Inputs.ConnectionCloudSqlCredentialArgs
///             {
///                 Username = user.Name,
///                 Password = user.Password,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database-instance"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_11"),
/// 			Region:          pulumi.String("us-central1"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pwd, err := random.NewPassword(ctx, "pwd", &random.PasswordArgs{
/// 			Length:  16,
/// 			Special: false,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Password: pwd.Result,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			Location:     pulumi.String("US"),
/// 			FriendlyName: pulumi.String("👋"),
/// 			Description:  pulumi.String("a riveting description"),
/// 			CloudSql: &bigquery.ConnectionCloudSqlArgs{
/// 				InstanceId: instance.ConnectionName,
/// 				Database:   db.Name,
/// 				Type:       pulumi.String("POSTGRES"),
/// 				Credential: &bigquery.ConnectionCloudSqlCredentialArgs{
/// 					Username: user.Name,
/// 					Password: user.Password,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-database-instance"
///   database_version = "POSTGRES_11"
///   region           = "us-central1"
///   settings = {
///     tier = "db-f1-micro"
///   }
///   deletion_protection = true
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "random_password" "pwd" {
///   length  = 16
///   special = false
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   password = random_password.pwd.result
/// }
/// resource "gcp_bigquery_connection" "connection" {
///   connection_id = "my-connection"
///   location      = "US"
///   friendly_name = "👋"
///   description   = "a riveting description"
///   cloud_sql = {
///     instance_id = gcp_sql_databaseinstance.instance.connection_name
///     database    = gcp_sql_database.db.name
///     type        = "POSTGRES"
///     credential = {
///       username = gcp_sql_user.user.name
///       password = gcp_sql_user.user.password
///     }
///   }
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
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudSqlArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudSqlCredentialArgs;
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
///             .name("my-database-instance")
///             .databaseVersion("POSTGRES_11")
///             .region("us-central1")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///         var pwd = new Password("pwd", PasswordArgs.builder()
///             .length(16)
///             .special(false)
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .password(pwd.get("result"))
///             .build());
///
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionId("my-connection")
///             .location("US")
///             .friendlyName("👋")
///             .description("a riveting description")
///             .cloudSql(ConnectionCloudSqlArgs.builder()
///                 .instanceId(instance.connectionName())
///                 .database(db.name())
///                 .type("POSTGRES")
///                 .credential(ConnectionCloudSqlCredentialArgs.builder()
///                     .username(user.name())
///                     .password(user.password())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database-instance
///       databaseVersion: POSTGRES_11
///       region: us-central1
///       settings:
///         tier: db-f1-micro
///       deletionProtection: true
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   pwd:
///     type: random:Password
///     properties:
///       length: 16
///       special: false
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       password: ${pwd.result}
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       connectionId: my-connection
///       location: US
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       cloudSql:
///         instanceId: ${instance.connectionName}
///         database: ${db.name}
///         type: POSTGRES
///         credential:
///           username: ${user.name}
///           password: ${user.password}
/// ```
///
/// ### Bigquery Connection Aws
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.bigquery.Connection("connection", {
///     connectionId: "my-connection",
///     location: "aws-us-east-1",
///     friendlyName: "👋",
///     description: "a riveting description",
///     aws: {
///         accessRole: {
///             iamRoleId: "arn:aws:iam::999999999999:role/omnirole",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.bigquery.Connection("connection",
///     connection_id="my-connection",
///     location="aws-us-east-1",
///     friendly_name="👋",
///     description="a riveting description",
///     aws={
///         "access_role": {
///             "iam_role_id": "arn:aws:iam::999999999999:role/omnirole",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         ConnectionId = "my-connection",
///         Location = "aws-us-east-1",
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         Aws = new Gcp.BigQuery.Inputs.ConnectionAwsArgs
///         {
///             AccessRole = new Gcp.BigQuery.Inputs.ConnectionAwsAccessRoleArgs
///             {
///                 IamRoleId = "arn:aws:iam::999999999999:role/omnirole",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			Location:     pulumi.String("aws-us-east-1"),
/// 			FriendlyName: pulumi.String("👋"),
/// 			Description:  pulumi.String("a riveting description"),
/// 			Aws: &bigquery.ConnectionAwsArgs{
/// 				AccessRole: &bigquery.ConnectionAwsAccessRoleArgs{
/// 					IamRoleId: pulumi.String("arn:aws:iam::999999999999:role/omnirole"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_connection" "connection" {
///   connection_id = "my-connection"
///   location      = "aws-us-east-1"
///   friendly_name = "👋"
///   description   = "a riveting description"
///   aws = {
///     access_role = {
///       iam_role_id = "arn:aws:iam::999999999999:role/omnirole"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionAwsArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionAwsAccessRoleArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionId("my-connection")
///             .location("aws-us-east-1")
///             .friendlyName("👋")
///             .description("a riveting description")
///             .aws(ConnectionAwsArgs.builder()
///                 .accessRole(ConnectionAwsAccessRoleArgs.builder()
///                     .iamRoleId("arn:aws:iam::999999999999:role/omnirole")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       connectionId: my-connection
///       location: aws-us-east-1
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       aws:
///         accessRole:
///           iamRoleId: arn:aws:iam::999999999999:role/omnirole
/// ```
///
/// ### Bigquery Connection Azure
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.bigquery.Connection("connection", {
///     connectionId: "my-connection",
///     location: "azure-eastus2",
///     friendlyName: "👋",
///     description: "a riveting description",
///     azure: {
///         customerTenantId: "customer-tenant-id",
///         federatedApplicationClientId: "b43eeeee-eeee-eeee-eeee-a480155501ce",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.bigquery.Connection("connection",
///     connection_id="my-connection",
///     location="azure-eastus2",
///     friendly_name="👋",
///     description="a riveting description",
///     azure={
///         "customer_tenant_id": "customer-tenant-id",
///         "federated_application_client_id": "b43eeeee-eeee-eeee-eeee-a480155501ce",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         ConnectionId = "my-connection",
///         Location = "azure-eastus2",
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         Azure = new Gcp.BigQuery.Inputs.ConnectionAzureArgs
///         {
///             CustomerTenantId = "customer-tenant-id",
///             FederatedApplicationClientId = "b43eeeee-eeee-eeee-eeee-a480155501ce",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			Location:     pulumi.String("azure-eastus2"),
/// 			FriendlyName: pulumi.String("👋"),
/// 			Description:  pulumi.String("a riveting description"),
/// 			Azure: &bigquery.ConnectionAzureArgs{
/// 				CustomerTenantId:             pulumi.String("customer-tenant-id"),
/// 				FederatedApplicationClientId: pulumi.String("b43eeeee-eeee-eeee-eeee-a480155501ce"),
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
///   }
/// }
///
/// resource "gcp_bigquery_connection" "connection" {
///   connection_id = "my-connection"
///   location      = "azure-eastus2"
///   friendly_name = "👋"
///   description   = "a riveting description"
///   azure = {
///     customer_tenant_id              = "customer-tenant-id"
///     federated_application_client_id = "b43eeeee-eeee-eeee-eeee-a480155501ce"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionAzureArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionId("my-connection")
///             .location("azure-eastus2")
///             .friendlyName("👋")
///             .description("a riveting description")
///             .azure(ConnectionAzureArgs.builder()
///                 .customerTenantId("customer-tenant-id")
///                 .federatedApplicationClientId("b43eeeee-eeee-eeee-eeee-a480155501ce")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       connectionId: my-connection
///       location: azure-eastus2
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       azure:
///         customerTenantId: customer-tenant-id
///         federatedApplicationClientId: b43eeeee-eeee-eeee-eeee-a480155501ce
/// ```
///
/// ### Bigquery Connection Cloudspanner
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.bigquery.Connection("connection", {
///     connectionId: "my-connection",
///     location: "US",
///     friendlyName: "👋",
///     description: "a riveting description",
///     cloudSpanner: {
///         database: "projects/project/instances/instance/databases/database",
///         databaseRole: "database_role",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.bigquery.Connection("connection",
///     connection_id="my-connection",
///     location="US",
///     friendly_name="👋",
///     description="a riveting description",
///     cloud_spanner={
///         "database": "projects/project/instances/instance/databases/database",
///         "database_role": "database_role",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         ConnectionId = "my-connection",
///         Location = "US",
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         CloudSpanner = new Gcp.BigQuery.Inputs.ConnectionCloudSpannerArgs
///         {
///             Database = "projects/project/instances/instance/databases/database",
///             DatabaseRole = "database_role",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			Location:     pulumi.String("US"),
/// 			FriendlyName: pulumi.String("👋"),
/// 			Description:  pulumi.String("a riveting description"),
/// 			CloudSpanner: &bigquery.ConnectionCloudSpannerArgs{
/// 				Database:     pulumi.String("projects/project/instances/instance/databases/database"),
/// 				DatabaseRole: pulumi.String("database_role"),
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
///   }
/// }
///
/// resource "gcp_bigquery_connection" "connection" {
///   connection_id = "my-connection"
///   location      = "US"
///   friendly_name = "👋"
///   description   = "a riveting description"
///   cloud_spanner = {
///     database      = "projects/project/instances/instance/databases/database"
///     database_role = "database_role"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudSpannerArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionId("my-connection")
///             .location("US")
///             .friendlyName("👋")
///             .description("a riveting description")
///             .cloudSpanner(ConnectionCloudSpannerArgs.builder()
///                 .database("projects/project/instances/instance/databases/database")
///                 .databaseRole("database_role")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       connectionId: my-connection
///       location: US
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       cloudSpanner:
///         database: projects/project/instances/instance/databases/database
///         databaseRole: database_role
/// ```
///
/// ### Bigquery Connection Cloudspanner Databoost
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const connection = new gcp.bigquery.Connection("connection", {
///     connectionId: "my-connection",
///     location: "US",
///     friendlyName: "👋",
///     description: "a riveting description",
///     cloudSpanner: {
///         database: "projects/project/instances/instance/databases/database",
///         useParallelism: true,
///         useDataBoost: true,
///         maxParallelism: 100,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// connection = gcp.bigquery.Connection("connection",
///     connection_id="my-connection",
///     location="US",
///     friendly_name="👋",
///     description="a riveting description",
///     cloud_spanner={
///         "database": "projects/project/instances/instance/databases/database",
///         "use_parallelism": True,
///         "use_data_boost": True,
///         "max_parallelism": 100,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         ConnectionId = "my-connection",
///         Location = "US",
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         CloudSpanner = new Gcp.BigQuery.Inputs.ConnectionCloudSpannerArgs
///         {
///             Database = "projects/project/instances/instance/databases/database",
///             UseParallelism = true,
///             UseDataBoost = true,
///             MaxParallelism = 100,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			Location:     pulumi.String("US"),
/// 			FriendlyName: pulumi.String("👋"),
/// 			Description:  pulumi.String("a riveting description"),
/// 			CloudSpanner: &bigquery.ConnectionCloudSpannerArgs{
/// 				Database:       pulumi.String("projects/project/instances/instance/databases/database"),
/// 				UseParallelism: pulumi.Bool(true),
/// 				UseDataBoost:   pulumi.Bool(true),
/// 				MaxParallelism: pulumi.Int(100),
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
///   }
/// }
///
/// resource "gcp_bigquery_connection" "connection" {
///   connection_id = "my-connection"
///   location      = "US"
///   friendly_name = "👋"
///   description   = "a riveting description"
///   cloud_spanner = {
///     database        = "projects/project/instances/instance/databases/database"
///     use_parallelism = true
///     use_data_boost  = true
///     max_parallelism = 100
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudSpannerArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionId("my-connection")
///             .location("US")
///             .friendlyName("👋")
///             .description("a riveting description")
///             .cloudSpanner(ConnectionCloudSpannerArgs.builder()
///                 .database("projects/project/instances/instance/databases/database")
///                 .useParallelism(true)
///                 .useDataBoost(true)
///                 .maxParallelism(100)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       connectionId: my-connection
///       location: US
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       cloudSpanner:
///         database: projects/project/instances/instance/databases/database
///         useParallelism: true
///         useDataBoost: true
///         maxParallelism: 100
/// ```
///
/// ### Bigquery Connection Spark
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataproc.Cluster("basic", {
///     name: "my-connection",
///     region: "us-central1",
///     clusterConfig: {
///         softwareConfig: {
///             overrideProperties: {
///                 "dataproc:dataproc.allow.zero.workers": "true",
///             },
///         },
///         masterConfig: {
///             numInstances: 1,
///             machineType: "e2-standard-2",
///             diskConfig: {
///                 bootDiskSizeGb: 35,
///             },
///         },
///     },
/// });
/// const connection = new gcp.bigquery.Connection("connection", {
///     connectionId: "my-connection",
///     location: "US",
///     friendlyName: "👋",
///     description: "a riveting description",
///     spark: {
///         sparkHistoryServerConfig: {
///             dataprocCluster: basic.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataproc.Cluster("basic",
///     name="my-connection",
///     region="us-central1",
///     cluster_config={
///         "software_config": {
///             "override_properties": {
///                 "dataproc:dataproc.allow.zero.workers": "true",
///             },
///         },
///         "master_config": {
///             "num_instances": 1,
///             "machine_type": "e2-standard-2",
///             "disk_config": {
///                 "boot_disk_size_gb": 35,
///             },
///         },
///     })
/// connection = gcp.bigquery.Connection("connection",
///     connection_id="my-connection",
///     location="US",
///     friendly_name="👋",
///     description="a riveting description",
///     spark={
///         "spark_history_server_config": {
///             "dataproc_cluster": basic.id,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Dataproc.Cluster("basic", new()
///     {
///         Name = "my-connection",
///         Region = "us-central1",
///         ClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigArgs
///         {
///             SoftwareConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigSoftwareConfigArgs
///             {
///                 OverrideProperties =
///                 {
///                     { "dataproc:dataproc.allow.zero.workers", "true" },
///                 },
///             },
///             MasterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigArgs
///             {
///                 NumInstances = 1,
///                 MachineType = "e2-standard-2",
///                 DiskConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigDiskConfigArgs
///                 {
///                     BootDiskSizeGb = 35,
///                 },
///             },
///         },
///     });
///
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         ConnectionId = "my-connection",
///         Location = "US",
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         Spark = new Gcp.BigQuery.Inputs.ConnectionSparkArgs
///         {
///             SparkHistoryServerConfig = new Gcp.BigQuery.Inputs.ConnectionSparkSparkHistoryServerConfigArgs
///             {
///                 DataprocCluster = basic.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := dataproc.NewCluster(ctx, "basic", &dataproc.ClusterArgs{
/// 			Name:   pulumi.String("my-connection"),
/// 			Region: pulumi.String("us-central1"),
/// 			ClusterConfig: &dataproc.ClusterClusterConfigArgs{
/// 				SoftwareConfig: &dataproc.ClusterClusterConfigSoftwareConfigArgs{
/// 					OverrideProperties: pulumi.StringMap{
/// 						"dataproc:dataproc.allow.zero.workers": pulumi.String("true"),
/// 					},
/// 				},
/// 				MasterConfig: &dataproc.ClusterClusterConfigMasterConfigArgs{
/// 					NumInstances: pulumi.Int(1),
/// 					MachineType:  pulumi.String("e2-standard-2"),
/// 					DiskConfig: &dataproc.ClusterClusterConfigMasterConfigDiskConfigArgs{
/// 						BootDiskSizeGb: pulumi.Int(35),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			Location:     pulumi.String("US"),
/// 			FriendlyName: pulumi.String("👋"),
/// 			Description:  pulumi.String("a riveting description"),
/// 			Spark: &bigquery.ConnectionSparkArgs{
/// 				SparkHistoryServerConfig: &bigquery.ConnectionSparkSparkHistoryServerConfigArgs{
/// 					DataprocCluster: basic.ID().ToIDOutput().ToStringOutput(),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_connection" "connection" {
///   connection_id = "my-connection"
///   location      = "US"
///   friendly_name = "👋"
///   description   = "a riveting description"
///   spark = {
///     spark_history_server_config = {
///       dataproc_cluster = gcp_dataproc_cluster.basic.id
///     }
///   }
/// }
/// resource "gcp_dataproc_cluster" "basic" {
///   name   = "my-connection"
///   region = "us-central1"
///   cluster_config = {
///     software_config = {
///       override_properties = {
///         "dataproc:dataproc.allow.zero.workers" = "true"
///       }
///     }
///     master_config = {
///       num_instances = 1
///       machine_type  = "e2-standard-2"
///       disk_config = {
///         boot_disk_size_gb = 35
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigDiskConfigArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionSparkArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionSparkSparkHistoryServerConfigArgs;
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
///         var basic = new Cluster("basic", ClusterArgs.builder()
///             .name("my-connection")
///             .region("us-central1")
///             .clusterConfig(ClusterClusterConfigArgs.builder()
///                 .softwareConfig(ClusterClusterConfigSoftwareConfigArgs.builder()
///                     .overrideProperties(Map.of("dataproc:dataproc.allow.zero.workers", "true"))
///                     .build())
///                 .masterConfig(ClusterClusterConfigMasterConfigArgs.builder()
///                     .numInstances(1)
///                     .machineType("e2-standard-2")
///                     .diskConfig(ClusterClusterConfigMasterConfigDiskConfigArgs.builder()
///                         .bootDiskSizeGb(35)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionId("my-connection")
///             .location("US")
///             .friendlyName("👋")
///             .description("a riveting description")
///             .spark(ConnectionSparkArgs.builder()
///                 .sparkHistoryServerConfig(ConnectionSparkSparkHistoryServerConfigArgs.builder()
///                     .dataprocCluster(basic.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       connectionId: my-connection
///       location: US
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       spark:
///         sparkHistoryServerConfig:
///           dataprocCluster: ${basic.id}
///   basic:
///     type: gcp:dataproc:Cluster
///     properties:
///       name: my-connection
///       region: us-central1
///       clusterConfig:
///         softwareConfig:
///           overrideProperties:
///             dataproc:dataproc.allow.zero.workers: 'true'
///         masterConfig:
///           numInstances: 1
///           machineType: e2-standard-2
///           diskConfig:
///             bootDiskSizeGb: 35
/// ```
///
/// ### Bigquery Connection Sql With Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "my-database-instance",
///     region: "us-central1",
///     databaseVersion: "POSTGRES_11",
///     settings: {
///         tier: "db-f1-micro",
///     },
///     deletionProtection: true,
/// });
/// const db = new gcp.sql.Database("db", {
///     instance: instance.name,
///     name: "db",
/// });
/// const user = new gcp.sql.User("user", {
///     name: "user",
///     instance: instance.name,
///     password: "tf-test-my-password_85840",
/// });
/// const bq_connection_cmek = new gcp.bigquery.Connection("bq-connection-cmek", {
///     friendlyName: "👋",
///     description: "a riveting description",
///     location: "US",
///     kmsKeyName: "projects/project/locations/us-central1/keyRings/us-central1/cryptoKeys/bq-key",
///     cloudSql: {
///         instanceId: instance.connectionName,
///         database: db.name,
///         type: "POSTGRES",
///         credential: {
///             username: user.name,
///             password: user.password,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="my-database-instance",
///     region="us-central1",
///     database_version="POSTGRES_11",
///     settings={
///         "tier": "db-f1-micro",
///     },
///     deletion_protection=True)
/// db = gcp.sql.Database("db",
///     instance=instance.name,
///     name="db")
/// user = gcp.sql.User("user",
///     name="user",
///     instance=instance.name,
///     password="tf-test-my-password_85840")
/// bq_connection_cmek = gcp.bigquery.Connection("bq-connection-cmek",
///     friendly_name="👋",
///     description="a riveting description",
///     location="US",
///     kms_key_name="projects/project/locations/us-central1/keyRings/us-central1/cryptoKeys/bq-key",
///     cloud_sql={
///         "instance_id": instance.connection_name,
///         "database": db.name,
///         "type": "POSTGRES",
///         "credential": {
///             "username": user.name,
///             "password": user.password,
///         },
///     })
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
///         Name = "my-database-instance",
///         Region = "us-central1",
///         DatabaseVersion = "POSTGRES_11",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///         DeletionProtection = true,
///     });
///
///     var db = new Gcp.Sql.Database("db", new()
///     {
///         Instance = instance.Name,
///         Name = "db",
///     });
///
///     var user = new Gcp.Sql.User("user", new()
///     {
///         Name = "user",
///         Instance = instance.Name,
///         Password = "tf-test-my-password_85840",
///     });
///
///     var bq_connection_cmek = new Gcp.BigQuery.Connection("bq-connection-cmek", new()
///     {
///         FriendlyName = "👋",
///         Description = "a riveting description",
///         Location = "US",
///         KmsKeyName = "projects/project/locations/us-central1/keyRings/us-central1/cryptoKeys/bq-key",
///         CloudSql = new Gcp.BigQuery.Inputs.ConnectionCloudSqlArgs
///         {
///             InstanceId = instance.ConnectionName,
///             Database = db.Name,
///             Type = "POSTGRES",
///             Credential = new Gcp.BigQuery.Inputs.ConnectionCloudSqlCredentialArgs
///             {
///                 Username = user.Name,
///                 Password = user.Password,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("my-database-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_11"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		db, err := sql.NewDatabase(ctx, "db", &sql.DatabaseArgs{
/// 			Instance: instance.Name,
/// 			Name:     pulumi.String("db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := sql.NewUser(ctx, "user", &sql.UserArgs{
/// 			Name:     pulumi.String("user"),
/// 			Instance: instance.Name,
/// 			Password: pulumi.String("tf-test-my-password_85840"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewConnection(ctx, "bq-connection-cmek", &bigquery.ConnectionArgs{
/// 			FriendlyName: pulumi.String("👋"),
/// 			Description:  pulumi.String("a riveting description"),
/// 			Location:     pulumi.String("US"),
/// 			KmsKeyName:   pulumi.String("projects/project/locations/us-central1/keyRings/us-central1/cryptoKeys/bq-key"),
/// 			CloudSql: &bigquery.ConnectionCloudSqlArgs{
/// 				InstanceId: instance.ConnectionName,
/// 				Database:   db.Name,
/// 				Type:       pulumi.String("POSTGRES"),
/// 				Credential: &bigquery.ConnectionCloudSqlCredentialArgs{
/// 					Username: user.Name,
/// 					Password: user.Password,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "my-database-instance"
///   region           = "us-central1"
///   database_version = "POSTGRES_11"
///   settings = {
///     tier = "db-f1-micro"
///   }
///   deletion_protection = true
/// }
/// resource "gcp_sql_database" "db" {
///   instance = gcp_sql_databaseinstance.instance.name
///   name     = "db"
/// }
/// resource "gcp_sql_user" "user" {
///   name     = "user"
///   instance = gcp_sql_databaseinstance.instance.name
///   password = "tf-test-my-password_85840"
/// }
/// resource "gcp_bigquery_connection" "bq-connection-cmek" {
///   friendly_name = "👋"
///   description   = "a riveting description"
///   location      = "US"
///   kms_key_name  = "projects/project/locations/us-central1/keyRings/us-central1/cryptoKeys/bq-key"
///   cloud_sql = {
///     instance_id = gcp_sql_databaseinstance.instance.connection_name
///     database    = gcp_sql_database.db.name
///     type        = "POSTGRES"
///     credential = {
///       username = gcp_sql_user.user.name
///       password = gcp_sql_user.user.password
///     }
///   }
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
/// import com.pulumi.gcp.sql.User;
/// import com.pulumi.gcp.sql.UserArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudSqlArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudSqlCredentialArgs;
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
///             .name("my-database-instance")
///             .region("us-central1")
///             .databaseVersion("POSTGRES_11")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var db = new Database("db", DatabaseArgs.builder()
///             .instance(instance.name())
///             .name("db")
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name("user")
///             .instance(instance.name())
///             .password("tf-test-my-password_85840")
///             .build());
///
///         var bq_connection_cmek = new Connection("bq-connection-cmek", ConnectionArgs.builder()
///             .friendlyName("👋")
///             .description("a riveting description")
///             .location("US")
///             .kmsKeyName("projects/project/locations/us-central1/keyRings/us-central1/cryptoKeys/bq-key")
///             .cloudSql(ConnectionCloudSqlArgs.builder()
///                 .instanceId(instance.connectionName())
///                 .database(db.name())
///                 .type("POSTGRES")
///                 .credential(ConnectionCloudSqlCredentialArgs.builder()
///                     .username(user.name())
///                     .password(user.password())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: my-database-instance
///       region: us-central1
///       databaseVersion: POSTGRES_11
///       settings:
///         tier: db-f1-micro
///       deletionProtection: true
///   db:
///     type: gcp:sql:Database
///     properties:
///       instance: ${instance.name}
///       name: db
///   user:
///     type: gcp:sql:User
///     properties:
///       name: user
///       instance: ${instance.name}
///       password: tf-test-my-password_85840
///   bq-connection-cmek:
///     type: gcp:bigquery:Connection
///     properties:
///       friendlyName: "\U0001F44B"
///       description: a riveting description
///       location: US
///       kmsKeyName: projects/project/locations/us-central1/keyRings/us-central1/cryptoKeys/bq-key
///       cloudSql:
///         instanceId: ${instance.connectionName}
///         database: ${db.name}
///         type: POSTGRES
///         credential:
///           username: ${user.name}
///           password: ${user.password}
/// ```
///
/// ### Bigquery Connection Connector Configuration
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const nameSuffix = "my-connection";
/// const defaultNetwork = new gcp.compute.Network("default", {name: `alloydb-network-${nameSuffix}`});
/// const _default = new gcp.alloydb.Cluster("default", {
///     clusterId: `alloydb-cluster-${nameSuffix}`,
///     location: "us-central1",
///     networkConfig: {
///         network: defaultNetwork.id,
///     },
///     initialUser: {
///         password: "alloydb-cluster-password",
///     },
///     deletionProtection: false,
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: `alloydb-ip-${nameSuffix}`,
///     addressType: "INTERNAL",
///     purpose: "VPC_PEERING",
///     prefixLength: 16,
///     network: defaultNetwork.id,
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
///     network: defaultNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const defaultInstance = new gcp.alloydb.Instance("default", {
///     cluster: _default.name,
///     instanceId: `alloydb-instance-${nameSuffix}`,
///     instanceType: "PRIMARY",
///     machineConfig: {
///         cpuCount: 2,
///     },
/// }, {
///     dependsOn: [vpcConnection],
/// });
/// const connection = new gcp.bigquery.Connection("connection", {
///     connectionId: "my-connection",
///     location: "us-central1",
///     friendlyName: "alloydb connection",
///     description: "AlloyDB connection using connector configuration",
///     configuration: {
///         connectorId: "google-alloydb",
///         asset: {
///             database: "postgres",
///             googleCloudResource: pulumi.interpolate`//alloydb.googleapis.com/${defaultInstance.id}`,
///         },
///         authentication: {
///             usernamePassword: {
///                 username: "user",
///                 password: {
///                     plaintext: "password",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// name_suffix = "my-connection"
/// default_network = gcp.compute.Network("default", name=f"alloydb-network-{name_suffix}")
/// default = gcp.alloydb.Cluster("default",
///     cluster_id=f"alloydb-cluster-{name_suffix}",
///     location="us-central1",
///     network_config={
///         "network": default_network.id,
///     },
///     initial_user={
///         "password": "alloydb-cluster-password",
///     },
///     deletion_protection=False)
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name=f"alloydb-ip-{name_suffix}",
///     address_type="INTERNAL",
///     purpose="VPC_PEERING",
///     prefix_length=16,
///     network=default_network.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
///     network=default_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_alloc.name])
/// default_instance = gcp.alloydb.Instance("default",
///     cluster=default.name,
///     instance_id=f"alloydb-instance-{name_suffix}",
///     instance_type="PRIMARY",
///     machine_config={
///         "cpu_count": 2,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// connection = gcp.bigquery.Connection("connection",
///     connection_id="my-connection",
///     location="us-central1",
///     friendly_name="alloydb connection",
///     description="AlloyDB connection using connector configuration",
///     configuration={
///         "connector_id": "google-alloydb",
///         "asset": {
///             "database": "postgres",
///             "google_cloud_resource": default_instance.id.apply(lambda id: f"//alloydb.googleapis.com/{id}"),
///         },
///         "authentication": {
///             "username_password": {
///                 "username": "user",
///                 "password": {
///                     "plaintext": "password",
///                 },
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nameSuffix = "my-connection";
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = $"alloydb-network-{nameSuffix}",
///     });
///
///     var @default = new Gcp.Alloydb.Cluster("default", new()
///     {
///         ClusterId = $"alloydb-cluster-{nameSuffix}",
///         Location = "us-central1",
///         NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
///         {
///             Network = defaultNetwork.Id,
///         },
///         InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
///         {
///             Password = "alloydb-cluster-password",
///         },
///         DeletionProtection = false,
///     });
///
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = $"alloydb-ip-{nameSuffix}",
///         AddressType = "INTERNAL",
///         Purpose = "VPC_PEERING",
///         PrefixLength = 16,
///         Network = defaultNetwork.Id,
///     });
///
///     var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
///     {
///         Network = defaultNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAlloc.Name,
///         },
///     });
///
///     var defaultInstance = new Gcp.Alloydb.Instance("default", new()
///     {
///         Cluster = @default.Name,
///         InstanceId = $"alloydb-instance-{nameSuffix}",
///         InstanceType = "PRIMARY",
///         MachineConfig = new Gcp.Alloydb.Inputs.InstanceMachineConfigArgs
///         {
///             CpuCount = 2,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcConnection,
///         },
///     });
///
///     var connection = new Gcp.BigQuery.Connection("connection", new()
///     {
///         ConnectionId = "my-connection",
///         Location = "us-central1",
///         FriendlyName = "alloydb connection",
///         Description = "AlloyDB connection using connector configuration",
///         Configuration = new Gcp.BigQuery.Inputs.ConnectionConfigurationArgs
///         {
///             ConnectorId = "google-alloydb",
///             Asset = new Gcp.BigQuery.Inputs.ConnectionConfigurationAssetArgs
///             {
///                 Database = "postgres",
///                 GoogleCloudResource = defaultInstance.Id.Apply(id => $"//alloydb.googleapis.com/{id}"),
///             },
///             Authentication = new Gcp.BigQuery.Inputs.ConnectionConfigurationAuthenticationArgs
///             {
///                 UsernamePassword = new Gcp.BigQuery.Inputs.ConnectionConfigurationAuthenticationUsernamePasswordArgs
///                 {
///                     Username = "user",
///                     Password = new Gcp.BigQuery.Inputs.ConnectionConfigurationAuthenticationUsernamePasswordPasswordArgs
///                     {
///                         Plaintext = "password",
///                     },
///                 },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		nameSuffix := "my-connection"
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.Sprintf("alloydb-network-%v", nameSuffix),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alloydb.NewCluster(ctx, "default", &alloydb.ClusterArgs{
/// 			ClusterId: pulumi.Sprintf("alloydb-cluster-%v", nameSuffix),
/// 			Location:  pulumi.String("us-central1"),
/// 			NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// 				Network: defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			InitialUser: &alloydb.ClusterInitialUserArgs{
/// 				Password: pulumi.String("alloydb-cluster-password"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.Sprintf("alloydb-ip-%v", nameSuffix),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: defaultNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := alloydb.NewInstance(ctx, "default", &alloydb.InstanceArgs{
/// 			Cluster:      _default.Name,
/// 			InstanceId:   pulumi.Sprintf("alloydb-instance-%v", nameSuffix),
/// 			InstanceType: pulumi.String("PRIMARY"),
/// 			MachineConfig: &alloydb.InstanceMachineConfigArgs{
/// 				CpuCount: pulumi.Int(2),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcConnection,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewConnection(ctx, "connection", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("my-connection"),
/// 			Location:     pulumi.String("us-central1"),
/// 			FriendlyName: pulumi.String("alloydb connection"),
/// 			Description:  pulumi.String("AlloyDB connection using connector configuration"),
/// 			Configuration: &bigquery.ConnectionConfigurationArgs{
/// 				ConnectorId: pulumi.String("google-alloydb"),
/// 				Asset: &bigquery.ConnectionConfigurationAssetArgs{
/// 					Database: pulumi.String("postgres"),
/// 					GoogleCloudResource: defaultInstance.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 						return fmt.Sprintf("//alloydb.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				Authentication: &bigquery.ConnectionConfigurationAuthenticationArgs{
/// 					UsernamePassword: &bigquery.ConnectionConfigurationAuthenticationUsernamePasswordArgs{
/// 						Username: pulumi.String("user"),
/// 						Password: &bigquery.ConnectionConfigurationAuthenticationUsernamePasswordPasswordArgs{
/// 							Plaintext: pulumi.String("password"),
/// 						},
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_alloydb_cluster" "default" {
///   cluster_id ="alloydb-cluster-${local.nameSuffix}"
///   location   = "us-central1"
///   network_config = {
///     network = gcp_compute_network.default.id
///   }
///   initial_user = {
///     password = "alloydb-cluster-password"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_alloydb_instance" "default" {
///   depends_on    = [gcp_servicenetworking_connection.vpc_connection]
///   cluster       = gcp_alloydb_cluster.default.name
///   instance_id   ="alloydb-instance-${local.nameSuffix}"
///   instance_type = "PRIMARY"
///   machine_config = {
///     cpu_count = 2
///   }
/// }
/// resource "gcp_compute_network" "default" {
///   name ="alloydb-network-${local.nameSuffix}"
/// }
/// resource "gcp_compute_globaladdress" "private_ip_alloc" {
///   name          ="alloydb-ip-${local.nameSuffix}"
///   address_type  = "INTERNAL"
///   purpose       = "VPC_PEERING"
///   prefix_length = 16
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_servicenetworking_connection" "vpc_connection" {
///   network                 = gcp_compute_network.default.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.private_ip_alloc.name]
/// }
/// resource "gcp_bigquery_connection" "connection" {
///   connection_id = "my-connection"
///   location      = "us-central1"
///   friendly_name = "alloydb connection"
///   description   = "AlloyDB connection using connector configuration"
///   configuration = {
///     connector_id = "google-alloydb"
///     asset = {
///       database              = "postgres"
///       google_cloud_resource ="//alloydb.googleapis.com/${gcp_alloydb_instance.default.id}"
///     }
///     authentication = {
///       username_password = {
///         username = "user"
///         password = {
///           plaintext = "password"
///         }
///       }
///     }
///   }
/// }
/// locals {
///   nameSuffix = "my-connection"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.alloydb.inputs.InstanceMachineConfigArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionConfigurationArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionConfigurationAssetArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionConfigurationAuthenticationArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionConfigurationAuthenticationUsernamePasswordArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionConfigurationAuthenticationUsernamePasswordPasswordArgs;
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
///         final var nameSuffix = "my-connection";
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name(String.format("alloydb-network-%s", nameSuffix))
///             .build());
///
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterId(String.format("alloydb-cluster-%s", nameSuffix))
///             .location("us-central1")
///             .networkConfig(ClusterNetworkConfigArgs.builder()
///                 .network(defaultNetwork.id())
///                 .build())
///             .initialUser(ClusterInitialUserArgs.builder()
///                 .password("alloydb-cluster-password")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name(String.format("alloydb-ip-%s", nameSuffix))
///             .addressType("INTERNAL")
///             .purpose("VPC_PEERING")
///             .prefixLength(16)
///             .network(defaultNetwork.id())
///             .build());
///
///         var vpcConnection = new com.pulumi.gcp.servicenetworking.Connection("vpcConnection", com.pulumi.gcp.servicenetworking.ConnectionArgs.builder()
///             .network(defaultNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAlloc.name())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cluster(default_.name())
///             .instanceId(String.format("alloydb-instance-%s", nameSuffix))
///             .instanceType("PRIMARY")
///             .machineConfig(InstanceMachineConfigArgs.builder()
///                 .cpuCount(2)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcConnection)
///                 .build());
///
///         var connection = new com.pulumi.gcp.bigquery.Connection("connection", com.pulumi.gcp.bigquery.ConnectionArgs.builder()
///             .connectionId("my-connection")
///             .location("us-central1")
///             .friendlyName("alloydb connection")
///             .description("AlloyDB connection using connector configuration")
///             .configuration(ConnectionConfigurationArgs.builder()
///                 .connectorId("google-alloydb")
///                 .asset(ConnectionConfigurationAssetArgs.builder()
///                     .database("postgres")
///                     .googleCloudResource(defaultInstance.id().applyValue(_id -> String.format("//alloydb.googleapis.com/%s", _id)))
///                     .build())
///                 .authentication(ConnectionConfigurationAuthenticationArgs.builder()
///                     .usernamePassword(ConnectionConfigurationAuthenticationUsernamePasswordArgs.builder()
///                         .username("user")
///                         .password(ConnectionConfigurationAuthenticationUsernamePasswordPasswordArgs.builder()
///                             .plaintext("password")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:alloydb:Cluster
///     properties:
///       clusterId: alloydb-cluster-${nameSuffix}
///       location: us-central1
///       networkConfig:
///         network: ${defaultNetwork.id}
///       initialUser:
///         password: alloydb-cluster-password
///       deletionProtection: false
///   defaultInstance:
///     type: gcp:alloydb:Instance
///     name: default
///     properties:
///       cluster: ${default.name}
///       instanceId: alloydb-instance-${nameSuffix}
///       instanceType: PRIMARY
///       machineConfig:
///         cpuCount: 2
///     options:
///       dependsOn:
///         - ${vpcConnection}
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: alloydb-network-${nameSuffix}
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: alloydb-ip-${nameSuffix}
///       addressType: INTERNAL
///       purpose: VPC_PEERING
///       prefixLength: 16
///       network: ${defaultNetwork.id}
///   vpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: vpc_connection
///     properties:
///       network: ${defaultNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAlloc.name}
///   connection:
///     type: gcp:bigquery:Connection
///     properties:
///       connectionId: my-connection
///       location: us-central1
///       friendlyName: alloydb connection
///       description: AlloyDB connection using connector configuration
///       configuration:
///         connectorId: google-alloydb
///         asset:
///           database: postgres
///           googleCloudResource: //alloydb.googleapis.com/${defaultInstance.id}
///         authentication:
///           usernamePassword:
///             username: user
///             password:
///               plaintext: password
/// variables:
///   nameSuffix: my-connection
/// ```
///
///
/// ## Import
///
/// Connection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{connection_id}}`
/// * `{{project}}/{{location}}/{{connection_id}}`
/// * `{{location}}/{{connection_id}}`
///
///
/// When using the `pulumi import` command, Connection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/connection:Connection default projects/{{project}}/locations/{{location}}/connections/{{connection_id}}
/// $ pulumi import gcp:bigquery/connection:Connection default {{project}}/{{location}}/{{connection_id}}
/// $ pulumi import gcp:bigquery/connection:Connection default {{location}}/{{connection_id}}
/// ```
class Connection extends pulumi.CustomResource {
  /// Connection properties specific to Amazon Web Services.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionAws?> aws;
  /// Container for connection properties specific to Azure.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionAzure?> azure;
  /// Container for connection properties for delegation of access to GCP resources.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionCloudResource?> cloudResource;
  /// Connection properties specific to Cloud Spanner
  /// Structure is documented below.
  late final pulumi.Output<ConnectionCloudSpanner?> cloudSpanner;
  /// Connection properties specific to the Cloud SQL.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionCloudSql?> cloudSql;
  /// Connector configuration. This is a generic configuration that is used to connect to
  /// external data sources such as AlloyDB, MySQL, and PostgreSQL using the BigQuery
  /// Connector framework.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionConfiguration?> configuration;
  /// Optional connection id that should be assigned to the created connection.
  late final pulumi.Output<String> connectionId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A descriptive description for the connection
  late final pulumi.Output<String?> description;
  /// A descriptive name for the connection
  late final pulumi.Output<String?> friendlyName;
  /// True if the connection has credential assigned.
  late final pulumi.Output<bool> hasCredential;
  /// Optional. The Cloud KMS key that is used for encryption.
  /// Example: projects/[kmsProjectId]/locations/[region]/keyRings/[keyRegion]/cryptoKeys/[key]
  late final pulumi.Output<String?> kmsKeyName;
  /// The geographic location where the connection should reside.
  /// Cloud SQL instance must be in the same location as the connection
  /// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
  /// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
  /// Spanner Connections same as spanner region
  /// AWS allowed regions are aws-us-east-1
  /// Azure allowed regions are azure-eastus2
  late final pulumi.Output<String?> location;
  /// The resource name of the connection in the form of:
  /// "projects/{project_id}/locations/{location_id}/connections/{connectionId}"
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Container for connection properties to execute stored procedures for Apache Spark. resources.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionSpark?> spark;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_bigquery_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aws = registerOutput<ConnectionAws?>('aws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionAws.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azure = registerOutput<ConnectionAzure?>('azure', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionAzure.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudResource = registerOutput<ConnectionCloudResource?>('cloudResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionCloudResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudSpanner = registerOutput<ConnectionCloudSpanner?>('cloudSpanner', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionCloudSpanner.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudSql = registerOutput<ConnectionCloudSql?>('cloudSql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionCloudSql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configuration = registerOutput<ConnectionConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionId = registerOutput<String>('connectionId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    hasCredential = registerOutput<bool>('hasCredential');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spark = registerOutput<ConnectionSpark?>('spark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionSpark.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aws = registerOutput<ConnectionAws?>('aws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionAws.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azure = registerOutput<ConnectionAzure?>('azure', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionAzure.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudResource = registerOutput<ConnectionCloudResource?>('cloudResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionCloudResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudSpanner = registerOutput<ConnectionCloudSpanner?>('cloudSpanner', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionCloudSpanner.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudSql = registerOutput<ConnectionCloudSql?>('cloudSql', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionCloudSql.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    configuration = registerOutput<ConnectionConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectionId = registerOutput<String>('connectionId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    friendlyName = registerOutput<String?>('friendlyName');
    hasCredential = registerOutput<bool>('hasCredential');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    spark = registerOutput<ConnectionSpark?>('spark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionSpark.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

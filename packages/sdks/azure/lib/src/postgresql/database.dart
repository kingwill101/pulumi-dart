import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_state.dart';

/// Manages a PostgreSQL Database within a PostgreSQL Server
///
/// &gt; **Note:** The `azure.postgresql.Database` resource is deprecated and will be removed in v5.0 of the AzureRM Provider. Azure Database for PostgreSQL Single Server and its sub resources have been retired as of 2025-03-28, please use the `azure.postgresql.FlexibleServerDatabase` resource instead. For more information, see https://techcommunity.microsoft.com/blog/adforpostgresql/retiring-azure-database-for-postgresql-single-server-in-2025/3783783.
///
/// !&gt; **Note:** To mitigate the possibility of accidental data loss it is highly recommended that you use the `prevent_destroy` lifecycle argument in your configuration file for this resource. For more information on the `prevent_destroy` lifecycle argument please see the terraform documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const exampleServer = new azure.postgresql.Server("example", {
///     name: "postgresql-server-1",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "B_Gen5_2",
///     storageMb: 5120,
///     backupRetentionDays: 7,
///     geoRedundantBackupEnabled: false,
///     autoGrowEnabled: true,
///     administratorLogin: "psqladmin",
///     administratorLoginPassword: "H@Sh1CoR3!",
///     version: "9.5",
///     sslEnforcementEnabled: true,
/// });
/// const exampleDatabase = new azure.postgresql.Database("example", {
///     name: "exampledb",
///     resourceGroupName: example.name,
///     serverName: exampleServer.name,
///     charset: "UTF8",
///     collation: "English_United States.1252",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_server = azure.postgresql.Server("example",
///     name="postgresql-server-1",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="B_Gen5_2",
///     storage_mb=5120,
///     backup_retention_days=7,
///     geo_redundant_backup_enabled=False,
///     auto_grow_enabled=True,
///     administrator_login="psqladmin",
///     administrator_login_password="H@Sh1CoR3!",
///     version="9.5",
///     ssl_enforcement_enabled=True)
/// example_database = azure.postgresql.Database("example",
///     name="exampledb",
///     resource_group_name=example.name,
///     server_name=example_server.name,
///     charset="UTF8",
///     collation="English_United States.1252")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var exampleServer = new Azure.PostgreSql.Server("example", new()
///     {
///         Name = "postgresql-server-1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "B_Gen5_2",
///         StorageMb = 5120,
///         BackupRetentionDays = 7,
///         GeoRedundantBackupEnabled = false,
///         AutoGrowEnabled = true,
///         AdministratorLogin = "psqladmin",
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         Version = "9.5",
///         SslEnforcementEnabled = true,
///     });
///
///     var exampleDatabase = new Azure.PostgreSql.Database("example", new()
///     {
///         Name = "exampledb",
///         ResourceGroupName = example.Name,
///         ServerName = exampleServer.Name,
///         Charset = "UTF8",
///         Collation = "English_United States.1252",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := postgresql.NewServer(ctx, "example", &postgresql.ServerArgs{
/// 			Name:                       pulumi.String("postgresql-server-1"),
/// 			Location:                   example.Location,
/// 			ResourceGroupName:          example.Name,
/// 			SkuName:                    pulumi.String("B_Gen5_2"),
/// 			StorageMb:                  pulumi.Int(5120),
/// 			BackupRetentionDays:        pulumi.Int(7),
/// 			GeoRedundantBackupEnabled:  pulumi.Bool(false),
/// 			AutoGrowEnabled:            pulumi.Bool(true),
/// 			AdministratorLogin:         pulumi.String("psqladmin"),
/// 			AdministratorLoginPassword: pulumi.String("H@Sh1CoR3!"),
/// 			Version:                    pulumi.String("9.5"),
/// 			SslEnforcementEnabled:      pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewDatabase(ctx, "example", &postgresql.DatabaseArgs{
/// 			Name:              pulumi.String("exampledb"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleServer.Name,
/// 			Charset:           pulumi.String("UTF8"),
/// 			Collation:         pulumi.String("English_United States.1252"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.postgresql.Server;
/// import com.pulumi.azure.postgresql.ServerArgs;
/// import com.pulumi.azure.postgresql.Database;
/// import com.pulumi.azure.postgresql.DatabaseArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("postgresql-server-1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("B_Gen5_2")
///             .storageMb(5120)
///             .backupRetentionDays(7)
///             .geoRedundantBackupEnabled(false)
///             .autoGrowEnabled(true)
///             .administratorLogin("psqladmin")
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .version("9.5")
///             .sslEnforcementEnabled(true)
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("exampledb")
///             .resourceGroupName(example.name())
///             .serverName(exampleServer.name())
///             .charset("UTF8")
///             .collation("English_United States.1252")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: api-rg-pro
///       location: West Europe
///   exampleServer:
///     type: azure:postgresql:Server
///     name: example
///     properties:
///       name: postgresql-server-1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: B_Gen5_2
///       storageMb: 5120
///       backupRetentionDays: 7
///       geoRedundantBackupEnabled: false
///       autoGrowEnabled: true
///       administratorLogin: psqladmin
///       administratorLoginPassword: H@Sh1CoR3!
///       version: '9.5'
///       sslEnforcementEnabled: true
///   exampleDatabase:
///     type: azure:postgresql:Database
///     name: example
///     properties:
///       name: exampledb
///       resourceGroupName: ${example.name}
///       serverName: ${exampleServer.name}
///       charset: UTF8
///       collation: English_United States.1252
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2017-12-01
///
/// ## Import
///
/// PostgreSQL Database's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/database:Database database1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DBforPostgreSQL/servers/server1/databases/database1
/// ```
class Database extends pulumi.CustomResource {
  /// Specifies the Charset for the PostgreSQL Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Changing this forces a new resource to be created.
  late final pulumi.Output<String> charset;
  /// Specifies the Collation for the PostgreSQL Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Note that Microsoft uses different [notation](https://msdn.microsoft.com/library/windows/desktop/dd373814.aspx) - en-US instead of en_US. Changing this forces a new resource to be created.
  late final pulumi.Output<String> collation;
  /// Specifies the name of the PostgreSQL Database, which needs [to be a valid PostgreSQL identifier](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS). Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_postgresql_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    charset = registerOutput<String>('charset');
    collation = registerOutput<String>('collation');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
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
          'azure:postgresql/database:Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    charset = registerOutput<String>('charset');
    collation = registerOutput<String>('collation');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
  }
}

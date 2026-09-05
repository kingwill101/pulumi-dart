import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_database_args.dart';
import 'flexible_server_database_state.dart';

/// Manages a PostgreSQL Flexible Server Database.
///
/// &gt; **Note:** To mitigate the possibility of accidental data loss it is highly recommended that you use the `preventDestroy` lifecycle argument in your configuration file for this resource. For more information on the `preventDestroy` lifecycle argument please see the terraform documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFlexibleServer = new azure.postgresql.FlexibleServer("example", {
///     name: "example-psqlflexibleserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12",
///     administratorLogin: "psqladmin",
///     administratorPassword: "H@Sh1CoR3!",
///     storageMb: 32768,
///     skuName: "GP_Standard_D4s_v3",
/// });
/// const exampleFlexibleServerDatabase = new azure.postgresql.FlexibleServerDatabase("example", {
///     name: "exampledb",
///     serverId: exampleFlexibleServer.id,
///     collation: "en_US.utf8",
///     charset: "UTF8",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_flexible_server = azure.postgresql.FlexibleServer("example",
///     name="example-psqlflexibleserver",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12",
///     administrator_login="psqladmin",
///     administrator_password="H@Sh1CoR3!",
///     storage_mb=32768,
///     sku_name="GP_Standard_D4s_v3")
/// example_flexible_server_database = azure.postgresql.FlexibleServerDatabase("example",
///     name="exampledb",
///     server_id=example_flexible_server.id,
///     collation="en_US.utf8",
///     charset="UTF8")
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFlexibleServer = new Azure.PostgreSql.FlexibleServer("example", new()
///     {
///         Name = "example-psqlflexibleserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12",
///         AdministratorLogin = "psqladmin",
///         AdministratorPassword = "H@Sh1CoR3!",
///         StorageMb = 32768,
///         SkuName = "GP_Standard_D4s_v3",
///     });
///
///     var exampleFlexibleServerDatabase = new Azure.PostgreSql.FlexibleServerDatabase("example", new()
///     {
///         Name = "exampledb",
///         ServerId = exampleFlexibleServer.Id,
///         Collation = "en_US.utf8",
///         Charset = "UTF8",
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleServer, err := postgresql.NewFlexibleServer(ctx, "example", &postgresql.FlexibleServerArgs{
/// 			Name:                  pulumi.String("example-psqlflexibleserver"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			Version:               pulumi.String("12"),
/// 			AdministratorLogin:    pulumi.String("psqladmin"),
/// 			AdministratorPassword: pulumi.String("H@Sh1CoR3!"),
/// 			StorageMb:             pulumi.Int(32768),
/// 			SkuName:               pulumi.String("GP_Standard_D4s_v3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewFlexibleServerDatabase(ctx, "example", &postgresql.FlexibleServerDatabaseArgs{
/// 			Name:      pulumi.String("exampledb"),
/// 			ServerId:  exampleFlexibleServer.ID().ToIDOutput().ToStringOutput(),
/// 			Collation: pulumi.String("en_US.utf8"),
/// 			Charset:   pulumi.String("UTF8"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_postgresql_flexibleserver" "example" {
///   name                   = "example-psqlflexibleserver"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   version                = "12"
///   administrator_login    = "psqladmin"
///   administrator_password = "H@Sh1CoR3!"
///   storage_mb             = 32768
///   sku_name               = "GP_Standard_D4s_v3"
/// }
/// resource "azure_postgresql_flexibleserverdatabase" "example" {
///   name      = "exampledb"
///   server_id = azure_postgresql_flexibleserver.example.id
///   collation = "en_US.utf8"
///   charset   = "UTF8"
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
/// import com.pulumi.azure.postgresql.FlexibleServer;
/// import com.pulumi.azure.postgresql.FlexibleServerArgs;
/// import com.pulumi.azure.postgresql.FlexibleServerDatabase;
/// import com.pulumi.azure.postgresql.FlexibleServerDatabaseArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example-psqlflexibleserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12")
///             .administratorLogin("psqladmin")
///             .administratorPassword("H@Sh1CoR3!")
///             .storageMb(32768)
///             .skuName("GP_Standard_D4s_v3")
///             .build());
///
///         var exampleFlexibleServerDatabase = new FlexibleServerDatabase("exampleFlexibleServerDatabase", FlexibleServerDatabaseArgs.builder()
///             .name("exampledb")
///             .serverId(exampleFlexibleServer.id())
///             .collation("en_US.utf8")
///             .charset("UTF8")
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
///       name: example-resources
///       location: West Europe
///   exampleFlexibleServer:
///     type: azure:postgresql:FlexibleServer
///     name: example
///     properties:
///       name: example-psqlflexibleserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12'
///       administratorLogin: psqladmin
///       administratorPassword: H@Sh1CoR3!
///       storageMb: 32768
///       skuName: GP_Standard_D4s_v3
///   exampleFlexibleServerDatabase:
///     type: azure:postgresql:FlexibleServerDatabase
///     name: example
///     properties:
///       name: exampledb
///       serverId: ${exampleFlexibleServer.id}
///       collation: en_US.utf8
///       charset: UTF8
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2025-08-01
///
/// ## Import
///
/// Azure PostgreSQL Flexible Server Database can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/flexibleServerDatabase:FlexibleServerDatabase example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServer1/databases/database1
/// ```
class FlexibleServerDatabase extends pulumi.CustomResource {
  /// Specifies the Charset for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Defaults to `UTF8`. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  late final pulumi.Output<String?> charset;
  /// Specifies the Collation for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Defaults to `en_US.utf8`. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  late final pulumi.Output<String?> collation;
  /// Specifies the name of the PostgreSQL Database, which needs [to be a valid PostgreSQL identifier](https://www.postgresql.org/docs/current/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS). Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Azure PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Database. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  late final pulumi.Output<String> serverId;

  /// Creates a new [FlexibleServerDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerDatabase]. {@macro pulumi_postgresql_flexible_server_database_flexible_server_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerDatabase(
    String name, {
    FlexibleServerDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerDatabase:FlexibleServerDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    charset = registerOutput<String?>('charset');
    collation = registerOutput<String?>('collation');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
  }

  /// Gets an existing [FlexibleServerDatabase] resource's state with the given [name] and [id].
  static FlexibleServerDatabase get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FlexibleServerDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FlexibleServerDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerDatabase:FlexibleServerDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    charset = registerOutput<String?>('charset');
    collation = registerOutput<String?>('collation');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
  }

  /// Creates a typed reference to an existing [FlexibleServerDatabase] resource.
  FlexibleServerDatabase.reference(String urn)
    : super(
        'azure:postgresql/flexibleServerDatabase:FlexibleServerDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    charset = registerOutput<String?>('charset');
    collation = registerOutput<String?>('collation');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
  }
}

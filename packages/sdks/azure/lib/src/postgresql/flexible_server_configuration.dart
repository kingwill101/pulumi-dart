import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_configuration_args.dart';
import 'flexible_server_configuration_state.dart';

/// Sets a PostgreSQL Configuration value on a Azure PostgreSQL Flexible Server.
///
/// &gt; **Note:** Changes to static server parameters will automatically trigger Azure Flex Server restart. This behavior can be disabled in the provider `features` block by setting the `restart_server_on_configuration_value_change` field to `false` within the `postgresql_flexible_server` block.
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
/// const exampleFlexibleServerConfiguration = new azure.postgresql.FlexibleServerConfiguration("example", {
///     name: "backslash_quote",
///     serverId: exampleFlexibleServer.id,
///     value: "on",
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
/// example_flexible_server_configuration = azure.postgresql.FlexibleServerConfiguration("example",
///     name="backslash_quote",
///     server_id=example_flexible_server.id,
///     value="on")
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
///     var exampleFlexibleServerConfiguration = new Azure.PostgreSql.FlexibleServerConfiguration("example", new()
///     {
///         Name = "backslash_quote",
///         ServerId = exampleFlexibleServer.Id,
///         Value = "on",
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
/// 		_, err = postgresql.NewFlexibleServerConfiguration(ctx, "example", &postgresql.FlexibleServerConfigurationArgs{
/// 			Name:     pulumi.String("backslash_quote"),
/// 			ServerId: exampleFlexibleServer.ID(),
/// 			Value:    pulumi.String("on"),
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
/// import com.pulumi.azure.postgresql.FlexibleServer;
/// import com.pulumi.azure.postgresql.FlexibleServerArgs;
/// import com.pulumi.azure.postgresql.FlexibleServerConfiguration;
/// import com.pulumi.azure.postgresql.FlexibleServerConfigurationArgs;
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
///         var exampleFlexibleServerConfiguration = new FlexibleServerConfiguration("exampleFlexibleServerConfiguration", FlexibleServerConfigurationArgs.builder()
///             .name("backslash_quote")
///             .serverId(exampleFlexibleServer.id())
///             .value("on")
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
///   exampleFlexibleServerConfiguration:
///     type: azure:postgresql:FlexibleServerConfiguration
///     name: example
///     properties:
///       name: backslash_quote
///       serverId: ${exampleFlexibleServer.id}
///       value: on
/// ```
///
///
/// ### Azure Extensions
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
/// const exampleFlexibleServerConfiguration = new azure.postgresql.FlexibleServerConfiguration("example", {
///     name: "azure.extensions",
///     serverId: exampleFlexibleServer.id,
///     value: "CUBE,CITEXT,BTREE_GIST",
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
/// example_flexible_server_configuration = azure.postgresql.FlexibleServerConfiguration("example",
///     name="azure.extensions",
///     server_id=example_flexible_server.id,
///     value="CUBE,CITEXT,BTREE_GIST")
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
///     var exampleFlexibleServerConfiguration = new Azure.PostgreSql.FlexibleServerConfiguration("example", new()
///     {
///         Name = "azure.extensions",
///         ServerId = exampleFlexibleServer.Id,
///         Value = "CUBE,CITEXT,BTREE_GIST",
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
/// 		_, err = postgresql.NewFlexibleServerConfiguration(ctx, "example", &postgresql.FlexibleServerConfigurationArgs{
/// 			Name:     pulumi.String("azure.extensions"),
/// 			ServerId: exampleFlexibleServer.ID(),
/// 			Value:    pulumi.String("CUBE,CITEXT,BTREE_GIST"),
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
/// import com.pulumi.azure.postgresql.FlexibleServer;
/// import com.pulumi.azure.postgresql.FlexibleServerArgs;
/// import com.pulumi.azure.postgresql.FlexibleServerConfiguration;
/// import com.pulumi.azure.postgresql.FlexibleServerConfigurationArgs;
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
///         var exampleFlexibleServerConfiguration = new FlexibleServerConfiguration("exampleFlexibleServerConfiguration", FlexibleServerConfigurationArgs.builder()
///             .name("azure.extensions")
///             .serverId(exampleFlexibleServer.id())
///             .value("CUBE,CITEXT,BTREE_GIST")
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
///   exampleFlexibleServerConfiguration:
///     type: azure:postgresql:FlexibleServerConfiguration
///     name: example
///     properties:
///       name: azure.extensions
///       serverId: ${exampleFlexibleServer.id}
///       value: CUBE,CITEXT,BTREE_GIST
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
/// PostgreSQL Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/flexibleServerConfiguration:FlexibleServerConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DBforPostgreSQL/flexibleServers/server1/configurations/configuration1
/// ```
class FlexibleServerConfiguration extends pulumi.CustomResource {
  /// Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** PostgreSQL provides the ability to extend the functionality using azure extensions, with PostgreSQL azure extensions you should specify the `name` value as `azure.extensions` and the `value` you wish to allow in the [extensions list](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-extensions?WT.mc_id=Portal-Microsoft_Azure_OSSDatabases#extension-versions).
  late final pulumi.Output<String> name;

  /// The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource.
  late final pulumi.Output<String> serverId;

  /// Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values.
  late final pulumi.Output<String> value;

  /// Creates a new [FlexibleServerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerConfiguration]. {@macro pulumi_postgresql_flexible_server_configuration_flexible_server_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerConfiguration(
    String name, {
    FlexibleServerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:postgresql/flexibleServerConfiguration:FlexibleServerConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [FlexibleServerConfiguration] resource's state with the given [name] and [id].
  static FlexibleServerConfiguration get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerConfigurationState? state,
  }) {
    return FlexibleServerConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlexibleServerConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:postgresql/flexibleServerConfiguration:FlexibleServerConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
    value = registerOutput<String>('value');
  }
}

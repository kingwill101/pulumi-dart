import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_database_args.dart';
import 'flexible_database_state.dart';

/// Manages a MySQL Database within a MySQL Flexible Server
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
/// const exampleFlexibleServer = new azure.mysql.FlexibleServer("example", {
///     name: "example-mysql-flexible-server",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLogin: "mysqladminun",
///     administratorPassword: "H@Sh1CoR3!",
///     skuName: "B_Standard_B1ms",
/// });
/// const exampleFlexibleDatabase = new azure.mysql.FlexibleDatabase("example", {
///     name: "exampledb",
///     resourceGroupName: example.name,
///     serverName: exampleFlexibleServer.name,
///     charset: "utf8",
///     collation: "utf8_unicode_ci",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_flexible_server = azure.mysql.FlexibleServer("example",
///     name="example-mysql-flexible-server",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login="mysqladminun",
///     administrator_password="H@Sh1CoR3!",
///     sku_name="B_Standard_B1ms")
/// example_flexible_database = azure.mysql.FlexibleDatabase("example",
///     name="exampledb",
///     resource_group_name=example.name,
///     server_name=example_flexible_server.name,
///     charset="utf8",
///     collation="utf8_unicode_ci")
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
///     var exampleFlexibleServer = new Azure.MySql.FlexibleServer("example", new()
///     {
///         Name = "example-mysql-flexible-server",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLogin = "mysqladminun",
///         AdministratorPassword = "H@Sh1CoR3!",
///         SkuName = "B_Standard_B1ms",
///     });
///
///     var exampleFlexibleDatabase = new Azure.MySql.FlexibleDatabase("example", new()
///     {
///         Name = "exampledb",
///         ResourceGroupName = example.Name,
///         ServerName = exampleFlexibleServer.Name,
///         Charset = "utf8",
///         Collation = "utf8_unicode_ci",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
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
/// 		exampleFlexibleServer, err := mysql.NewFlexibleServer(ctx, "example", &mysql.FlexibleServerArgs{
/// 			Name:                  pulumi.String("example-mysql-flexible-server"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorLogin:    pulumi.String("mysqladminun"),
/// 			AdministratorPassword: pulumi.String("H@Sh1CoR3!"),
/// 			SkuName:               pulumi.String("B_Standard_B1ms"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewFlexibleDatabase(ctx, "example", &mysql.FlexibleDatabaseArgs{
/// 			Name:              pulumi.String("exampledb"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleFlexibleServer.Name,
/// 			Charset:           pulumi.String("utf8"),
/// 			Collation:         pulumi.String("utf8_unicode_ci"),
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
/// import com.pulumi.azure.mysql.FlexibleServer;
/// import com.pulumi.azure.mysql.FlexibleServerArgs;
/// import com.pulumi.azure.mysql.FlexibleDatabase;
/// import com.pulumi.azure.mysql.FlexibleDatabaseArgs;
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
///             .name("example-mysql-flexible-server")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLogin("mysqladminun")
///             .administratorPassword("H@Sh1CoR3!")
///             .skuName("B_Standard_B1ms")
///             .build());
///
///         var exampleFlexibleDatabase = new FlexibleDatabase("exampleFlexibleDatabase", FlexibleDatabaseArgs.builder()
///             .name("exampledb")
///             .resourceGroupName(example.name())
///             .serverName(exampleFlexibleServer.name())
///             .charset("utf8")
///             .collation("utf8_unicode_ci")
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
///     type: azure:mysql:FlexibleServer
///     name: example
///     properties:
///       name: example-mysql-flexible-server
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLogin: mysqladminun
///       administratorPassword: H@Sh1CoR3!
///       skuName: B_Standard_B1ms
///   exampleFlexibleDatabase:
///     type: azure:mysql:FlexibleDatabase
///     name: example
///     properties:
///       name: exampledb
///       resourceGroupName: ${example.name}
///       serverName: ${exampleFlexibleServer.name}
///       charset: utf8
///       collation: utf8_unicode_ci
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforMySQL` - 2023-12-30
///
/// ## Import
///
/// MySQL Database's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mysql/flexibleDatabase:FlexibleDatabase database1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DBforMySQL/flexibleServers/flexibleserver1/databases/database1
/// ```
class FlexibleDatabase extends pulumi.CustomResource {
  /// Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL Charset](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html). Changing this forces a new resource to be created.
  late final pulumi.Output<String> charset;
  /// Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created.
  late final pulumi.Output<String> collation;
  /// Specifies the name of the MySQL Database, which needs [to be a valid MySQL identifier](https://dev.mysql.com/doc/refman/5.7/en/identifiers.html). Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;

  /// Creates a new [FlexibleDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleDatabase]. {@macro pulumi_mysql_flexible_database_flexible_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleDatabase(
    String name, {
    FlexibleDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleDatabase:FlexibleDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.charset = registerOutput<String>('charset');
    this.collation = registerOutput<String>('collation');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
  }

  /// Gets an existing [FlexibleDatabase] resource's state with the given [name] and [id].
  static FlexibleDatabase get(
    String name,
    pulumi.Input<String> id, {
    FlexibleDatabaseState? state,
  }) {
    return FlexibleDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlexibleDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleDatabase:FlexibleDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.charset = registerOutput<String>('charset');
    this.collation = registerOutput<String>('collation');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
  }
}

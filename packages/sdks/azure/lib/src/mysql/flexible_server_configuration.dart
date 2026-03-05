import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_configuration_args.dart';
import 'flexible_server_configuration_state.dart';

/// Sets a MySQL Flexible Server Configuration value on a MySQL Flexible Server.
///
/// ## Disclaimers
///
/// &gt; **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.
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
///     name: "example-fs",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLogin: "adminTerraform",
///     administratorPassword: "H@Sh1CoR3!",
///     skuName: "GP_Standard_D2ds_v4",
/// });
/// const exampleFlexibleServerConfiguration = new azure.mysql.FlexibleServerConfiguration("example", {
///     name: "interactive_timeout",
///     resourceGroupName: example.name,
///     serverName: exampleFlexibleServer.name,
///     value: "600",
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
///     name="example-fs",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login="adminTerraform",
///     administrator_password="H@Sh1CoR3!",
///     sku_name="GP_Standard_D2ds_v4")
/// example_flexible_server_configuration = azure.mysql.FlexibleServerConfiguration("example",
///     name="interactive_timeout",
///     resource_group_name=example.name,
///     server_name=example_flexible_server.name,
///     value="600")
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
///         Name = "example-fs",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLogin = "adminTerraform",
///         AdministratorPassword = "H@Sh1CoR3!",
///         SkuName = "GP_Standard_D2ds_v4",
///     });
///
///     var exampleFlexibleServerConfiguration = new Azure.MySql.FlexibleServerConfiguration("example", new()
///     {
///         Name = "interactive_timeout",
///         ResourceGroupName = example.Name,
///         ServerName = exampleFlexibleServer.Name,
///         Value = "600",
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
/// 			Name:                  pulumi.String("example-fs"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorLogin:    pulumi.String("adminTerraform"),
/// 			AdministratorPassword: pulumi.String("H@Sh1CoR3!"),
/// 			SkuName:               pulumi.String("GP_Standard_D2ds_v4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewFlexibleServerConfiguration(ctx, "example", &mysql.FlexibleServerConfigurationArgs{
/// 			Name:              pulumi.String("interactive_timeout"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleFlexibleServer.Name,
/// 			Value:             pulumi.String("600"),
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
/// import com.pulumi.azure.mysql.FlexibleServerConfiguration;
/// import com.pulumi.azure.mysql.FlexibleServerConfigurationArgs;
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
///             .name("example-fs")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLogin("adminTerraform")
///             .administratorPassword("H@Sh1CoR3!")
///             .skuName("GP_Standard_D2ds_v4")
///             .build());
///
///         var exampleFlexibleServerConfiguration = new FlexibleServerConfiguration("exampleFlexibleServerConfiguration", FlexibleServerConfigurationArgs.builder()
///             .name("interactive_timeout")
///             .resourceGroupName(example.name())
///             .serverName(exampleFlexibleServer.name())
///             .value("600")
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
///       name: example-fs
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLogin: adminTerraform
///       administratorPassword: H@Sh1CoR3!
///       skuName: GP_Standard_D2ds_v4
///   exampleFlexibleServerConfiguration:
///     type: azure:mysql:FlexibleServerConfiguration
///     name: example
///     properties:
///       name: interactive_timeout
///       resourceGroupName: ${example.name}
///       serverName: ${exampleFlexibleServer.name}
///       value: '600'
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforMySQL` - 2023-12-30
///
/// ## Import
///
/// MySQL Flexible Server Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mysql/flexibleServerConfiguration:FlexibleServerConfiguration interactive_timeout /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforMySQL/flexibleServers/flexibleServer1/configurations/interactive_timeout
/// ```
class FlexibleServerConfiguration extends pulumi.CustomResource {
  /// Specifies the name of the MySQL Flexible Server Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;
  /// Specifies the value of the MySQL Flexible Server Configuration. See the MySQL documentation for valid values.
  late final pulumi.Output<String> value;

  /// Creates a new [FlexibleServerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerConfiguration]. {@macro pulumi_mysql_flexible_server_configuration_flexible_server_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerConfiguration(
    String name, {
    FlexibleServerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mysql/flexibleServerConfiguration:FlexibleServerConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
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
          'azure:mysql/flexibleServerConfiguration:FlexibleServerConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serverName = registerOutput<String>('serverName');
    value = registerOutput<String>('value');
  }
}

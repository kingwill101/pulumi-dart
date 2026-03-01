import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';
import 'configuration_state.dart';

/// Sets a PostgreSQL Configuration value on a PostgreSQL Server.
///
/// > **Note:** The `azure.postgresql.Configuration` resource is deprecated and will be removed in v5.0 of the AzureRM Provider. Azure Database for PostgreSQL Single Server and its sub resources have been retired as of 2025-03-28, please use the `azure.postgresql.FlexibleServerConfiguration` resource instead. For more information, see https://techcommunity.microsoft.com/blog/adforpostgresql/retiring-azure-database-for-postgresql-single-server-in-2025/3783783.
///
/// ## Disclaimers
///
/// > **Note:** Since this resource is provisioned by default, the Azure Provider will not check for the presence of an existing resource prior to attempting to create it.
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
/// const exampleConfiguration = new azure.postgresql.Configuration("example", {
///     name: "backslash_quote",
///     resourceGroupName: example.name,
///     serverName: exampleServer.name,
///     value: "on",
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
/// example_configuration = azure.postgresql.Configuration("example",
///     name="backslash_quote",
///     resource_group_name=example.name,
///     server_name=example_server.name,
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
///     var exampleConfiguration = new Azure.PostgreSql.Configuration("example", new()
///     {
///         Name = "backslash_quote",
///         ResourceGroupName = example.Name,
///         ServerName = exampleServer.Name,
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
/// 		_, err = postgresql.NewConfiguration(ctx, "example", &postgresql.ConfigurationArgs{
/// 			Name:              pulumi.String("backslash_quote"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleServer.Name,
/// 			Value:             pulumi.String("on"),
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
/// import com.pulumi.azure.postgresql.Configuration;
/// import com.pulumi.azure.postgresql.ConfigurationArgs;
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
///         var exampleConfiguration = new Configuration("exampleConfiguration", ConfigurationArgs.builder()
///             .name("backslash_quote")
///             .resourceGroupName(example.name())
///             .serverName(exampleServer.name())
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
///   exampleConfiguration:
///     type: azure:postgresql:Configuration
///     name: example
///     properties:
///       name: backslash_quote
///       resourceGroupName: ${example.name}
///       serverName: ${exampleServer.name}
///       value: on
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2017-12-01
///
/// ## Import
///
/// PostgreSQL Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/configuration:Configuration backslash_quote /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DBforPostgreSQL/servers/server1/configurations/backslash_quote
/// ```
class Configuration extends pulumi.CustomResource {
  /// Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;
  /// Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created.
  late final pulumi.Output<String> value;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_postgresql_configuration_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.value = registerOutput<String>('value');
  }

  /// Gets an existing [Configuration] resource's state with the given [name] and [id].
  static Configuration get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationState? state,
  }) {
    return Configuration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Configuration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.value = registerOutput<String>('value');
  }
}

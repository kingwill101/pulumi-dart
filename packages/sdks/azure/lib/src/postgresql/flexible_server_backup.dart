import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_backup_args.dart';
import 'flexible_server_backup_state.dart';

/// Manages a PostgreSQL Flexible Server Backup.
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
///     name: "example-fs",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLogin: "adminTerraform",
///     administratorPassword: "QAZwsx123",
///     version: "12",
///     skuName: "GP_Standard_D2s_v3",
///     zone: "2",
/// });
/// const exampleFlexibleServerBackup = new azure.postgresql.FlexibleServerBackup("example", {
///     name: "example-pfsb",
///     serverId: exampleFlexibleServer.id,
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
///     name="example-fs",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login="adminTerraform",
///     administrator_password="QAZwsx123",
///     version="12",
///     sku_name="GP_Standard_D2s_v3",
///     zone="2")
/// example_flexible_server_backup = azure.postgresql.FlexibleServerBackup("example",
///     name="example-pfsb",
///     server_id=example_flexible_server.id)
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
///         Name = "example-fs",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLogin = "adminTerraform",
///         AdministratorPassword = "QAZwsx123",
///         Version = "12",
///         SkuName = "GP_Standard_D2s_v3",
///         Zone = "2",
///     });
///
///     var exampleFlexibleServerBackup = new Azure.PostgreSql.FlexibleServerBackup("example", new()
///     {
///         Name = "example-pfsb",
///         ServerId = exampleFlexibleServer.Id,
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
/// 			Name:                  pulumi.String("example-fs"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorLogin:    pulumi.String("adminTerraform"),
/// 			AdministratorPassword: pulumi.String("QAZwsx123"),
/// 			Version:               pulumi.String("12"),
/// 			SkuName:               pulumi.String("GP_Standard_D2s_v3"),
/// 			Zone:                  pulumi.String("2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewFlexibleServerBackup(ctx, "example", &postgresql.FlexibleServerBackupArgs{
/// 			Name:     pulumi.String("example-pfsb"),
/// 			ServerId: exampleFlexibleServer.ID().ToIDOutput().ToStringOutput(),
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
///   name                   = "example-fs"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   administrator_login    = "adminTerraform"
///   administrator_password = "QAZwsx123"
///   version                = "12"
///   sku_name               = "GP_Standard_D2s_v3"
///   zone                   = "2"
/// }
/// resource "azure_postgresql_flexibleserverbackup" "example" {
///   name      = "example-pfsb"
///   server_id = azure_postgresql_flexibleserver.example.id
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
/// import com.pulumi.azure.postgresql.FlexibleServerBackup;
/// import com.pulumi.azure.postgresql.FlexibleServerBackupArgs;
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
///             .name("example-fs")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLogin("adminTerraform")
///             .administratorPassword("QAZwsx123")
///             .version("12")
///             .skuName("GP_Standard_D2s_v3")
///             .zone("2")
///             .build());
///
///         var exampleFlexibleServerBackup = new FlexibleServerBackup("exampleFlexibleServerBackup", FlexibleServerBackupArgs.builder()
///             .name("example-pfsb")
///             .serverId(exampleFlexibleServer.id())
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
///       name: example-fs
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLogin: adminTerraform
///       administratorPassword: QAZwsx123
///       version: '12'
///       skuName: GP_Standard_D2s_v3
///       zone: '2'
///   exampleFlexibleServerBackup:
///     type: azure:postgresql:FlexibleServerBackup
///     name: example
///     properties:
///       name: example-pfsb
///       serverId: ${exampleFlexibleServer.id}
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
/// An existing PostgreSQL Flexible Server Backup can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/flexibleServerBackup:FlexibleServerBackup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforPostgreSQL/flexibleServers/fs1/backups/backup1
/// ```
class FlexibleServerBackup extends pulumi.CustomResource {
  /// The Time (ISO8601 format) at which the backup was completed.
  late final pulumi.Output<String> completedTime;
  /// Specifies the name of this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Backup. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;

  /// Creates a new [FlexibleServerBackup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerBackup]. {@macro pulumi_postgresql_flexible_server_backup_flexible_server_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerBackup(
    String name, {
    FlexibleServerBackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerBackup:FlexibleServerBackup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    completedTime = registerOutput<String>('completedTime');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
  }

  /// Gets an existing [FlexibleServerBackup] resource's state with the given [name] and [id].
  static FlexibleServerBackup get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerBackupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FlexibleServerBackup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FlexibleServerBackup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerBackup:FlexibleServerBackup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    completedTime = registerOutput<String>('completedTime');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
  }

  /// Creates a typed reference to an existing [FlexibleServerBackup] resource.
  FlexibleServerBackup.reference(String urn)
    : super(
        'azure:postgresql/flexibleServerBackup:FlexibleServerBackup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    completedTime = registerOutput<String>('completedTime');
    this.name = registerOutput<String>('name');
    serverId = registerOutput<String>('serverId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_args.dart';
import 'failover_group_read_write_endpoint_failover_policy.dart';
import 'failover_group_state.dart';

/// Manages a Microsoft Azure SQL Failover Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "database-rg",
///     location: "West Europe",
/// });
/// const primary = new azure.mssql.Server("primary", {
///     name: "mssqlserver-primary",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "12.0",
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "thisIsKat11",
/// });
/// const secondary = new azure.mssql.Server("secondary", {
///     name: "mssqlserver-secondary",
///     resourceGroupName: example.name,
///     location: "North Europe",
///     version: "12.0",
///     administratorLogin: "missadministrator",
///     administratorLoginPassword: "thisIsKat12",
/// });
/// const exampleDatabase = new azure.mssql.Database("example", {
///     name: "exampledb",
///     serverId: primary.id,
///     skuName: "S1",
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     maxSizeGb: 200,
/// });
/// const exampleFailoverGroup = new azure.mssql.FailoverGroup("example", {
///     name: "example",
///     serverId: primary.id,
///     databases: [exampleDatabase.id],
///     partnerServers: [{
///         id: secondary.id,
///     }],
///     readWriteEndpointFailoverPolicy: {
///         mode: "Automatic",
///         graceMinutes: 80,
///     },
///     tags: {
///         environment: "prod",
///         database: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="database-rg",
///     location="West Europe")
/// primary = azure.mssql.Server("primary",
///     name="mssqlserver-primary",
///     resource_group_name=example.name,
///     location=example.location,
///     version="12.0",
///     administrator_login="missadministrator",
///     administrator_login_password="thisIsKat11")
/// secondary = azure.mssql.Server("secondary",
///     name="mssqlserver-secondary",
///     resource_group_name=example.name,
///     location="North Europe",
///     version="12.0",
///     administrator_login="missadministrator",
///     administrator_login_password="thisIsKat12")
/// example_database = azure.mssql.Database("example",
///     name="exampledb",
///     server_id=primary.id,
///     sku_name="S1",
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     max_size_gb=200)
/// example_failover_group = azure.mssql.FailoverGroup("example",
///     name="example",
///     server_id=primary.id,
///     databases=[example_database.id],
///     partner_servers=[{
///         "id": secondary.id,
///     }],
///     read_write_endpoint_failover_policy={
///         "mode": "Automatic",
///         "grace_minutes": 80,
///     },
///     tags={
///         "environment": "prod",
///         "database": "example",
///     })
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
///         Name = "database-rg",
///         Location = "West Europe",
///     });
///
///     var primary = new Azure.MSSql.Server("primary", new()
///     {
///         Name = "mssqlserver-primary",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "12.0",
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "thisIsKat11",
///     });
///
///     var secondary = new Azure.MSSql.Server("secondary", new()
///     {
///         Name = "mssqlserver-secondary",
///         ResourceGroupName = example.Name,
///         Location = "North Europe",
///         Version = "12.0",
///         AdministratorLogin = "missadministrator",
///         AdministratorLoginPassword = "thisIsKat12",
///     });
///
///     var exampleDatabase = new Azure.MSSql.Database("example", new()
///     {
///         Name = "exampledb",
///         ServerId = primary.Id,
///         SkuName = "S1",
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         MaxSizeGb = 200,
///     });
///
///     var exampleFailoverGroup = new Azure.MSSql.FailoverGroup("example", new()
///     {
///         Name = "example",
///         ServerId = primary.Id,
///         Databases = new[]
///         {
///             exampleDatabase.Id,
///         },
///         PartnerServers = new[]
///         {
///             new Azure.MSSql.Inputs.FailoverGroupPartnerServerArgs
///             {
///                 Id = secondary.Id,
///             },
///         },
///         ReadWriteEndpointFailoverPolicy = new Azure.MSSql.Inputs.FailoverGroupReadWriteEndpointFailoverPolicyArgs
///         {
///             Mode = "Automatic",
///             GraceMinutes = 80,
///         },
///         Tags =
///         {
///             { "environment", "prod" },
///             { "database", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("database-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := mssql.NewServer(ctx, "primary", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("mssqlserver-primary"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsKat11"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := mssql.NewServer(ctx, "secondary", &mssql.ServerArgs{
/// 			Name:                       pulumi.String("mssqlserver-secondary"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   pulumi.String("North Europe"),
/// 			Version:                    pulumi.String("12.0"),
/// 			AdministratorLogin:         pulumi.String("missadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsKat12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := mssql.NewDatabase(ctx, "example", &mssql.DatabaseArgs{
/// 			Name:      pulumi.String("exampledb"),
/// 			ServerId:  primary.ID(),
/// 			SkuName:   pulumi.String("S1"),
/// 			Collation: pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			MaxSizeGb: pulumi.Float64(200),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewFailoverGroup(ctx, "example", &mssql.FailoverGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			ServerId: primary.ID(),
/// 			Databases: pulumi.StringArray{
/// 				exampleDatabase.ID(),
/// 			},
/// 			PartnerServers: mssql.FailoverGroupPartnerServerArray{
/// 				&mssql.FailoverGroupPartnerServerArgs{
/// 					Id: secondary.ID(),
/// 				},
/// 			},
/// 			ReadWriteEndpointFailoverPolicy: &mssql.FailoverGroupReadWriteEndpointFailoverPolicyArgs{
/// 				Mode:         pulumi.String("Automatic"),
/// 				GraceMinutes: pulumi.Int(80),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("prod"),
/// 				"database":    pulumi.String("example"),
/// 			},
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
/// import com.pulumi.azure.mssql.Server;
/// import com.pulumi.azure.mssql.ServerArgs;
/// import com.pulumi.azure.mssql.Database;
/// import com.pulumi.azure.mssql.DatabaseArgs;
/// import com.pulumi.azure.mssql.FailoverGroup;
/// import com.pulumi.azure.mssql.FailoverGroupArgs;
/// import com.pulumi.azure.mssql.inputs.FailoverGroupPartnerServerArgs;
/// import com.pulumi.azure.mssql.inputs.FailoverGroupReadWriteEndpointFailoverPolicyArgs;
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
///             .name("database-rg")
///             .location("West Europe")
///             .build());
///
///         var primary = new Server("primary", ServerArgs.builder()
///             .name("mssqlserver-primary")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("12.0")
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("thisIsKat11")
///             .build());
///
///         var secondary = new Server("secondary", ServerArgs.builder()
///             .name("mssqlserver-secondary")
///             .resourceGroupName(example.name())
///             .location("North Europe")
///             .version("12.0")
///             .administratorLogin("missadministrator")
///             .administratorLoginPassword("thisIsKat12")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("exampledb")
///             .serverId(primary.id())
///             .skuName("S1")
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .maxSizeGb(200.0)
///             .build());
///
///         var exampleFailoverGroup = new FailoverGroup("exampleFailoverGroup", FailoverGroupArgs.builder()
///             .name("example")
///             .serverId(primary.id())
///             .databases(exampleDatabase.id())
///             .partnerServers(FailoverGroupPartnerServerArgs.builder()
///                 .id(secondary.id())
///                 .build())
///             .readWriteEndpointFailoverPolicy(FailoverGroupReadWriteEndpointFailoverPolicyArgs.builder()
///                 .mode("Automatic")
///                 .graceMinutes(80)
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "prod"),
///                 Map.entry("database", "example")
///             ))
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
///       name: database-rg
///       location: West Europe
///   primary:
///     type: azure:mssql:Server
///     properties:
///       name: mssqlserver-primary
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '12.0'
///       administratorLogin: missadministrator
///       administratorLoginPassword: thisIsKat11
///   secondary:
///     type: azure:mssql:Server
///     properties:
///       name: mssqlserver-secondary
///       resourceGroupName: ${example.name}
///       location: North Europe
///       version: '12.0'
///       administratorLogin: missadministrator
///       administratorLoginPassword: thisIsKat12
///   exampleDatabase:
///     type: azure:mssql:Database
///     name: example
///     properties:
///       name: exampledb
///       serverId: ${primary.id}
///       skuName: S1
///       collation: SQL_Latin1_General_CP1_CI_AS
///       maxSizeGb: '200'
///   exampleFailoverGroup:
///     type: azure:mssql:FailoverGroup
///     name: example
///     properties:
///       name: example
///       serverId: ${primary.id}
///       databases:
///         - ${exampleDatabase.id}
///       partnerServers:
///         - id: ${secondary.id}
///       readWriteEndpointFailoverPolicy:
///         mode: Automatic
///         graceMinutes: 80
///       tags:
///         environment: prod
///         database: example
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// Failover Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/failoverGroup:FailoverGroup example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Sql/servers/server1/failoverGroups/failoverGroup1
/// ```
class FailoverGroup extends pulumi.CustomResource {
  /// A set of database names to include in the failover group.
  late final pulumi.Output<List<String>?> databases;

  /// The name of the Failover Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A `partner_server` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> partnerServers;

  /// A `read_write_endpoint_failover_policy` block as defined below.
  late final pulumi.Output<FailoverGroupReadWriteEndpointFailoverPolicy>
  readWriteEndpointFailoverPolicy;

  /// Whether failover is enabled for the readonly endpoint. Defaults to `false`.
  late final pulumi.Output<bool> readonlyEndpointFailoverPolicyEnabled;

  /// The ID of the primary SQL Server on which to create the failover group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [FailoverGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FailoverGroup]. {@macro pulumi_mssql_failover_group_failover_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FailoverGroup(
    String name, {
    FailoverGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/failoverGroup:FailoverGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    databases = registerOutput<List<String>?>('databases');
    this.name = registerOutput<String>('name');
    partnerServers = registerOutput<List<Map<String, dynamic>>>(
      'partnerServers',
    );
    readWriteEndpointFailoverPolicy =
        registerOutput<FailoverGroupReadWriteEndpointFailoverPolicy>(
          'readWriteEndpointFailoverPolicy',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return FailoverGroupReadWriteEndpointFailoverPolicy.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    readonlyEndpointFailoverPolicyEnabled = registerOutput<bool>(
      'readonlyEndpointFailoverPolicyEnabled',
    );
    serverId = registerOutput<String>('serverId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [FailoverGroup] resource's state with the given [name] and [id].
  static FailoverGroup get(
    String name,
    pulumi.Input<String> id, {
    FailoverGroupState? state,
  }) {
    return FailoverGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FailoverGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/failoverGroup:FailoverGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    databases = registerOutput<List<String>?>('databases');
    this.name = registerOutput<String>('name');
    partnerServers = registerOutput<List<Map<String, dynamic>>>(
      'partnerServers',
    );
    readWriteEndpointFailoverPolicy =
        registerOutput<FailoverGroupReadWriteEndpointFailoverPolicy>(
          'readWriteEndpointFailoverPolicy',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return FailoverGroupReadWriteEndpointFailoverPolicy.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    readonlyEndpointFailoverPolicyEnabled = registerOutput<bool>(
      'readonlyEndpointFailoverPolicyEnabled',
    );
    serverId = registerOutput<String>('serverId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}

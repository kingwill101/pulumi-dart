import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_virtual_endpoint_args.dart';
import 'flexible_server_virtual_endpoint_state.dart';

/// Allows you to create a Virtual Endpoint associated with a Postgres Flexible Replica.
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
///     location: "East US",
/// });
/// const exampleFlexibleServer = new azure.postgresql.FlexibleServer("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     version: "16",
///     publicNetworkAccessEnabled: false,
///     administratorLogin: "psqladmin",
///     administratorPassword: "H@Sh1CoR3!",
///     zone: "1",
///     storageMb: 32768,
///     storageTier: "P30",
///     skuName: "GP_Standard_D2ads_v5",
/// });
/// const exampleReplica = new azure.postgresql.FlexibleServer("example_replica", {
///     name: "example-replica",
///     resourceGroupName: exampleFlexibleServer.resourceGroupName,
///     location: exampleFlexibleServer.location,
///     createMode: "Replica",
///     sourceServerId: exampleFlexibleServer.id,
///     version: "16",
///     publicNetworkAccessEnabled: false,
///     zone: "1",
///     storageMb: 32768,
///     storageTier: "P30",
///     skuName: "GP_Standard_D2ads_v5",
/// });
/// const exampleFlexibleServerVirtualEndpoint = new azure.postgresql.FlexibleServerVirtualEndpoint("example", {
///     name: "example-endpoint-1",
///     sourceServerId: exampleFlexibleServer.id,
///     replicaServerId: exampleReplica.id,
///     type: "ReadWrite",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="East US")
/// example_flexible_server = azure.postgresql.FlexibleServer("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     version="16",
///     public_network_access_enabled=False,
///     administrator_login="psqladmin",
///     administrator_password="H@Sh1CoR3!",
///     zone="1",
///     storage_mb=32768,
///     storage_tier="P30",
///     sku_name="GP_Standard_D2ads_v5")
/// example_replica = azure.postgresql.FlexibleServer("example_replica",
///     name="example-replica",
///     resource_group_name=example_flexible_server.resource_group_name,
///     location=example_flexible_server.location,
///     create_mode="Replica",
///     source_server_id=example_flexible_server.id,
///     version="16",
///     public_network_access_enabled=False,
///     zone="1",
///     storage_mb=32768,
///     storage_tier="P30",
///     sku_name="GP_Standard_D2ads_v5")
/// example_flexible_server_virtual_endpoint = azure.postgresql.FlexibleServerVirtualEndpoint("example",
///     name="example-endpoint-1",
///     source_server_id=example_flexible_server.id,
///     replica_server_id=example_replica.id,
///     type="ReadWrite")
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
///         Location = "East US",
///     });
///
///     var exampleFlexibleServer = new Azure.PostgreSql.FlexibleServer("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Version = "16",
///         PublicNetworkAccessEnabled = false,
///         AdministratorLogin = "psqladmin",
///         AdministratorPassword = "H@Sh1CoR3!",
///         Zone = "1",
///         StorageMb = 32768,
///         StorageTier = "P30",
///         SkuName = "GP_Standard_D2ads_v5",
///     });
///
///     var exampleReplica = new Azure.PostgreSql.FlexibleServer("example_replica", new()
///     {
///         Name = "example-replica",
///         ResourceGroupName = exampleFlexibleServer.ResourceGroupName,
///         Location = exampleFlexibleServer.Location,
///         CreateMode = "Replica",
///         SourceServerId = exampleFlexibleServer.Id,
///         Version = "16",
///         PublicNetworkAccessEnabled = false,
///         Zone = "1",
///         StorageMb = 32768,
///         StorageTier = "P30",
///         SkuName = "GP_Standard_D2ads_v5",
///     });
///
///     var exampleFlexibleServerVirtualEndpoint = new Azure.PostgreSql.FlexibleServerVirtualEndpoint("example", new()
///     {
///         Name = "example-endpoint-1",
///         SourceServerId = exampleFlexibleServer.Id,
///         ReplicaServerId = exampleReplica.Id,
///         Type = "ReadWrite",
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
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFlexibleServer, err := postgresql.NewFlexibleServer(ctx, "example", &postgresql.FlexibleServerArgs{
/// 			Name:                       pulumi.String("example"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			Version:                    pulumi.String("16"),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(false),
/// 			AdministratorLogin:         pulumi.String("psqladmin"),
/// 			AdministratorPassword:      pulumi.String("H@Sh1CoR3!"),
/// 			Zone:                       pulumi.String("1"),
/// 			StorageMb:                  pulumi.Int(32768),
/// 			StorageTier:                pulumi.String("P30"),
/// 			SkuName:                    pulumi.String("GP_Standard_D2ads_v5"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleReplica, err := postgresql.NewFlexibleServer(ctx, "example_replica", &postgresql.FlexibleServerArgs{
/// 			Name:                       pulumi.String("example-replica"),
/// 			ResourceGroupName:          exampleFlexibleServer.ResourceGroupName,
/// 			Location:                   exampleFlexibleServer.Location,
/// 			CreateMode:                 pulumi.String("Replica"),
/// 			SourceServerId:             exampleFlexibleServer.ID(),
/// 			Version:                    pulumi.String("16"),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(false),
/// 			Zone:                       pulumi.String("1"),
/// 			StorageMb:                  pulumi.Int(32768),
/// 			StorageTier:                pulumi.String("P30"),
/// 			SkuName:                    pulumi.String("GP_Standard_D2ads_v5"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewFlexibleServerVirtualEndpoint(ctx, "example", &postgresql.FlexibleServerVirtualEndpointArgs{
/// 			Name:            pulumi.String("example-endpoint-1"),
/// 			SourceServerId:  exampleFlexibleServer.ID(),
/// 			ReplicaServerId: exampleReplica.ID(),
/// 			Type:            pulumi.String("ReadWrite"),
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
/// import com.pulumi.azure.postgresql.FlexibleServerVirtualEndpoint;
/// import com.pulumi.azure.postgresql.FlexibleServerVirtualEndpointArgs;
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
///             .location("East US")
///             .build());
///
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .version("16")
///             .publicNetworkAccessEnabled(false)
///             .administratorLogin("psqladmin")
///             .administratorPassword("H@Sh1CoR3!")
///             .zone("1")
///             .storageMb(32768)
///             .storageTier("P30")
///             .skuName("GP_Standard_D2ads_v5")
///             .build());
///
///         var exampleReplica = new FlexibleServer("exampleReplica", FlexibleServerArgs.builder()
///             .name("example-replica")
///             .resourceGroupName(exampleFlexibleServer.resourceGroupName())
///             .location(exampleFlexibleServer.location())
///             .createMode("Replica")
///             .sourceServerId(exampleFlexibleServer.id())
///             .version("16")
///             .publicNetworkAccessEnabled(false)
///             .zone("1")
///             .storageMb(32768)
///             .storageTier("P30")
///             .skuName("GP_Standard_D2ads_v5")
///             .build());
///
///         var exampleFlexibleServerVirtualEndpoint = new FlexibleServerVirtualEndpoint("exampleFlexibleServerVirtualEndpoint", FlexibleServerVirtualEndpointArgs.builder()
///             .name("example-endpoint-1")
///             .sourceServerId(exampleFlexibleServer.id())
///             .replicaServerId(exampleReplica.id())
///             .type("ReadWrite")
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
///       location: East US
///   exampleFlexibleServer:
///     type: azure:postgresql:FlexibleServer
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       version: '16'
///       publicNetworkAccessEnabled: false
///       administratorLogin: psqladmin
///       administratorPassword: H@Sh1CoR3!
///       zone: '1'
///       storageMb: 32768
///       storageTier: P30
///       skuName: GP_Standard_D2ads_v5
///   exampleReplica:
///     type: azure:postgresql:FlexibleServer
///     name: example_replica
///     properties:
///       name: example-replica
///       resourceGroupName: ${exampleFlexibleServer.resourceGroupName}
///       location: ${exampleFlexibleServer.location}
///       createMode: Replica
///       sourceServerId: ${exampleFlexibleServer.id}
///       version: '16'
///       publicNetworkAccessEnabled: false
///       zone: '1'
///       storageMb: 32768
///       storageTier: P30
///       skuName: GP_Standard_D2ads_v5
///   exampleFlexibleServerVirtualEndpoint:
///     type: azure:postgresql:FlexibleServerVirtualEndpoint
///     name: example
///     properties:
///       name: example-endpoint-1
///       sourceServerId: ${exampleFlexibleServer.id}
///       replicaServerId: ${exampleReplica.id}
///       type: ReadWrite
/// ```
///
///
/// > **Note:** If creating multiple replicas, an error can occur if virtual endpoints are created before all replicas have been completed. To avoid this error, use a `depends_on` property on `azure.postgresql.FlexibleServerVirtualEndpoint` that references all Postgres Flexible Server Replicas.
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2025-08-01
///
/// ## Import
///
/// A PostgreSQL Flexible Virtual Endpoint can be imported using the `resource id`, e.g.
/// ```sh
/// $ pulumi import azure:postgresql/flexibleServerVirtualEndpoint:FlexibleServerVirtualEndpoint example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforPostgreSQL/flexibleServers/sourceServerName/virtualEndpoints/endpointName|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforPostgreSQL/flexibleServers/replicaServerName/virtualEndpoints/endpointName"
/// ```
class FlexibleServerVirtualEndpoint extends pulumi.CustomResource {
  /// The name of the Virtual Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Resource ID of the *Replica* Postgres Flexible Server this should be associated with
  ///
  /// > **Note:** If a fail-over has occurred, you will be unable to update `replica_server_id`. You can remove the resource from state and reimport it back in with `source_server_id` and `replica_server_id` flipped and then update `replica_server_id`.
  late final pulumi.Output<String> replicaServerId;
  /// The Resource ID of the *Source* Postgres Flexible Server this should be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceServerId;
  /// The type of Virtual Endpoint. Currently only `ReadWrite` is supported. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;

  /// Creates a new [FlexibleServerVirtualEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerVirtualEndpoint]. {@macro pulumi_postgresql_flexible_server_virtual_endpoint_flexible_server_virtual_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerVirtualEndpoint(
    String name, {
    FlexibleServerVirtualEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerVirtualEndpoint:FlexibleServerVirtualEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.replicaServerId = registerOutput<String>('replicaServerId');
    this.sourceServerId = registerOutput<String>('sourceServerId');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [FlexibleServerVirtualEndpoint] resource's state with the given [name] and [id].
  static FlexibleServerVirtualEndpoint get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerVirtualEndpointState? state,
  }) {
    return FlexibleServerVirtualEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlexibleServerVirtualEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerVirtualEndpoint:FlexibleServerVirtualEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.replicaServerId = registerOutput<String>('replicaServerId');
    this.sourceServerId = registerOutput<String>('sourceServerId');
    this.type = registerOutput<String>('type');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_role_args.dart';
import 'postgresql_role_state.dart';

/// Manages an Azure Cosmos DB for PostgreSQL Role.
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
/// const examplePostgresqlCluster = new azure.cosmosdb.PostgresqlCluster("example", {
///     name: "examplecluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLoginPassword: "H@Sh1CoR3!",
///     coordinatorStorageQuotaInMb: 131072,
///     coordinatorVcoreCount: 2,
///     nodeCount: 0,
/// });
/// const examplePostgresqlRole = new azure.cosmosdb.PostgresqlRole("example", {
///     name: "examplerole",
///     clusterId: examplePostgresqlCluster.id,
///     password: "H@Sh1CoR3!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_postgresql_cluster = azure.cosmosdb.PostgresqlCluster("example",
///     name="examplecluster",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login_password="H@Sh1CoR3!",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_vcore_count=2,
///     node_count=0)
/// example_postgresql_role = azure.cosmosdb.PostgresqlRole("example",
///     name="examplerole",
///     cluster_id=example_postgresql_cluster.id,
///     password="H@Sh1CoR3!")
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
///     var examplePostgresqlCluster = new Azure.CosmosDB.PostgresqlCluster("example", new()
///     {
///         Name = "examplecluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVcoreCount = 2,
///         NodeCount = 0,
///     });
///
///     var examplePostgresqlRole = new Azure.CosmosDB.PostgresqlRole("example", new()
///     {
///         Name = "examplerole",
///         ClusterId = examplePostgresqlCluster.Id,
///         Password = "H@Sh1CoR3!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
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
/// 		examplePostgresqlCluster, err := cosmosdb.NewPostgresqlCluster(ctx, "example", &cosmosdb.PostgresqlClusterArgs{
/// 			Name:                        pulumi.String("examplecluster"),
/// 			ResourceGroupName:           example.Name,
/// 			Location:                    example.Location,
/// 			AdministratorLoginPassword:  pulumi.String("H@Sh1CoR3!"),
/// 			CoordinatorStorageQuotaInMb: pulumi.Int(131072),
/// 			CoordinatorVcoreCount:       pulumi.Int(2),
/// 			NodeCount:                   pulumi.Int(0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewPostgresqlRole(ctx, "example", &cosmosdb.PostgresqlRoleArgs{
/// 			Name:      pulumi.String("examplerole"),
/// 			ClusterId: examplePostgresqlCluster.ID(),
/// 			Password:  pulumi.String("H@Sh1CoR3!"),
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
/// resource "azure_cosmosdb_postgresqlcluster" "example" {
///   name                            = "examplecluster"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   location                        = azure_core_resourcegroup.example.location
///   administrator_login_password    = "H@Sh1CoR3!"
///   coordinator_storage_quota_in_mb = 131072
///   coordinator_vcore_count         = 2
///   node_count                      = 0
/// }
/// resource "azure_cosmosdb_postgresqlrole" "example" {
///   name       = "examplerole"
///   cluster_id = azure_cosmosdb_postgresqlcluster.example.id
///   password   = "H@Sh1CoR3!"
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
/// import com.pulumi.azure.cosmosdb.PostgresqlCluster;
/// import com.pulumi.azure.cosmosdb.PostgresqlClusterArgs;
/// import com.pulumi.azure.cosmosdb.PostgresqlRole;
/// import com.pulumi.azure.cosmosdb.PostgresqlRoleArgs;
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
///         var examplePostgresqlCluster = new PostgresqlCluster("examplePostgresqlCluster", PostgresqlClusterArgs.builder()
///             .name("examplecluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVcoreCount(2)
///             .nodeCount(0)
///             .build());
///
///         var examplePostgresqlRole = new PostgresqlRole("examplePostgresqlRole", PostgresqlRoleArgs.builder()
///             .name("examplerole")
///             .clusterId(examplePostgresqlCluster.id())
///             .password("H@Sh1CoR3!")
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
///   examplePostgresqlCluster:
///     type: azure:cosmosdb:PostgresqlCluster
///     name: example
///     properties:
///       name: examplecluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLoginPassword: H@Sh1CoR3!
///       coordinatorStorageQuotaInMb: 131072
///       coordinatorVcoreCount: 2
///       nodeCount: 0
///   examplePostgresqlRole:
///     type: azure:cosmosdb:PostgresqlRole
///     name: example
///     properties:
///       name: examplerole
///       clusterId: ${examplePostgresqlCluster.id}
///       password: H@Sh1CoR3!
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2022-11-08
///
/// ## Import
///
/// Azure Cosmos DB for PostgreSQL Roles can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/postgresqlRole:PostgresqlRole example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/cluster1/roles/role1
/// ```
class PostgresqlRole extends pulumi.CustomResource {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterId;
  /// The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created.
  late final pulumi.Output<String> password;

  /// Creates a new [PostgresqlRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PostgresqlRole]. {@macro pulumi_cosmosdb_postgresql_role_postgresql_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PostgresqlRole(
    String name, {
    PostgresqlRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlRole:PostgresqlRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
  }

  /// Gets an existing [PostgresqlRole] resource's state with the given [name] and [id].
  static PostgresqlRole get(
    String name,
    pulumi.Input<String> id, {
    PostgresqlRoleState? state,
  }) {
    return PostgresqlRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PostgresqlRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlRole:PostgresqlRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
  }
}

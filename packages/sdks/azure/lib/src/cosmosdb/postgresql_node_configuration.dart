import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_node_configuration_args.dart';
import 'postgresql_node_configuration_state.dart';

/// Sets a Node Configuration value on Azure Cosmos DB for PostgreSQL Cluster.
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
///     nodeCount: 2,
///     nodeStorageQuotaInMb: 131072,
///     nodeVcores: 2,
/// });
/// const examplePostgresqlNodeConfiguration = new azure.cosmosdb.PostgresqlNodeConfiguration("example", {
///     name: "array_nulls",
///     clusterId: examplePostgresqlCluster.id,
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
/// example_postgresql_cluster = azure.cosmosdb.PostgresqlCluster("example",
///     name="examplecluster",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login_password="H@Sh1CoR3!",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_vcore_count=2,
///     node_count=2,
///     node_storage_quota_in_mb=131072,
///     node_vcores=2)
/// example_postgresql_node_configuration = azure.cosmosdb.PostgresqlNodeConfiguration("example",
///     name="array_nulls",
///     cluster_id=example_postgresql_cluster.id,
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
///     var examplePostgresqlCluster = new Azure.CosmosDB.PostgresqlCluster("example", new()
///     {
///         Name = "examplecluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVcoreCount = 2,
///         NodeCount = 2,
///         NodeStorageQuotaInMb = 131072,
///         NodeVcores = 2,
///     });
///
///     var examplePostgresqlNodeConfiguration = new Azure.CosmosDB.PostgresqlNodeConfiguration("example", new()
///     {
///         Name = "array_nulls",
///         ClusterId = examplePostgresqlCluster.Id,
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
/// 			NodeCount:                   pulumi.Int(2),
/// 			NodeStorageQuotaInMb:        pulumi.Int(131072),
/// 			NodeVcores:                  pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cosmosdb.NewPostgresqlNodeConfiguration(ctx, "example", &cosmosdb.PostgresqlNodeConfigurationArgs{
/// 			Name:      pulumi.String("array_nulls"),
/// 			ClusterId: examplePostgresqlCluster.ID(),
/// 			Value:     pulumi.String("on"),
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
/// import com.pulumi.azure.cosmosdb.PostgresqlCluster;
/// import com.pulumi.azure.cosmosdb.PostgresqlClusterArgs;
/// import com.pulumi.azure.cosmosdb.PostgresqlNodeConfiguration;
/// import com.pulumi.azure.cosmosdb.PostgresqlNodeConfigurationArgs;
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
///         var examplePostgresqlCluster = new PostgresqlCluster("examplePostgresqlCluster", PostgresqlClusterArgs.builder()
///             .name("examplecluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVcoreCount(2)
///             .nodeCount(2)
///             .nodeStorageQuotaInMb(131072)
///             .nodeVcores(2)
///             .build());
///
///         var examplePostgresqlNodeConfiguration = new PostgresqlNodeConfiguration("examplePostgresqlNodeConfiguration", PostgresqlNodeConfigurationArgs.builder()
///             .name("array_nulls")
///             .clusterId(examplePostgresqlCluster.id())
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
///       nodeCount: 2
///       nodeStorageQuotaInMb: 131072
///       nodeVcores: 2
///   examplePostgresqlNodeConfiguration:
///     type: azure:cosmosdb:PostgresqlNodeConfiguration
///     name: example
///     properties:
///       name: array_nulls
///       clusterId: ${examplePostgresqlCluster.id}
///       value: on
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DBforPostgreSQL` - 2022-11-08
///
/// ## Import
///
/// Node Configurations on Azure Cosmos DB for PostgreSQL Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/postgresqlNodeConfiguration:PostgresqlNodeConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/cluster1/nodeConfigurations/array_nulls
/// ```
class PostgresqlNodeConfiguration extends pulumi.CustomResource {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterId;
  /// The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  late final pulumi.Output<String> value;

  /// Creates a new [PostgresqlNodeConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PostgresqlNodeConfiguration]. {@macro pulumi_cosmosdb_postgresql_node_configuration_postgresql_node_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PostgresqlNodeConfiguration(
    String name, {
    PostgresqlNodeConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlNodeConfiguration:PostgresqlNodeConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.name = registerOutput<String>('name');
    this.value = registerOutput<String>('value');
  }

  /// Gets an existing [PostgresqlNodeConfiguration] resource's state with the given [name] and [id].
  static PostgresqlNodeConfiguration get(
    String name,
    pulumi.Input<String> id, {
    PostgresqlNodeConfigurationState? state,
  }) {
    return PostgresqlNodeConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PostgresqlNodeConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlNodeConfiguration:PostgresqlNodeConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.name = registerOutput<String>('name');
    this.value = registerOutput<String>('value');
  }
}

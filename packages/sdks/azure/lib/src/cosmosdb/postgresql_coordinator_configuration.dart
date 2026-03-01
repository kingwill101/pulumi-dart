import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_coordinator_configuration_args.dart';
import 'postgresql_coordinator_configuration_state.dart';

/// Sets a Coordinator Configuration value on Azure Cosmos DB for PostgreSQL Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = new azure.core.ResourceGroup("test", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = new azure.cosmosdb.PostgresqlCluster("example", {
///     name: "examplecluster",
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     location: exampleAzurermResourceGroup.location,
///     administratorLoginPassword: "H@Sh1CoR3!",
///     coordinatorStorageQuotaInMb: 131072,
///     coordinatorVcoreCount: 2,
///     nodeCount: 2,
///     nodeStorageQuotaInMb: 131072,
///     nodeVcores: 2,
/// });
/// const examplePostgresqlCoordinatorConfiguration = new azure.cosmosdb.PostgresqlCoordinatorConfiguration("example", {
///     name: "array_nulls",
///     clusterId: example.id,
///     value: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.core.ResourceGroup("test",
///     name="example-resources",
///     location="West Europe")
/// example = azure.cosmosdb.PostgresqlCluster("example",
///     name="examplecluster",
///     resource_group_name=example_azurerm_resource_group["name"],
///     location=example_azurerm_resource_group["location"],
///     administrator_login_password="H@Sh1CoR3!",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_vcore_count=2,
///     node_count=2,
///     node_storage_quota_in_mb=131072,
///     node_vcores=2)
/// example_postgresql_coordinator_configuration = azure.cosmosdb.PostgresqlCoordinatorConfiguration("example",
///     name="array_nulls",
///     cluster_id=example.id,
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
///     var test = new Azure.Core.ResourceGroup("test", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = new Azure.CosmosDB.PostgresqlCluster("example", new()
///     {
///         Name = "examplecluster",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Location = exampleAzurermResourceGroup.Location,
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVcoreCount = 2,
///         NodeCount = 2,
///         NodeStorageQuotaInMb = 131072,
///         NodeVcores = 2,
///     });
///
///     var examplePostgresqlCoordinatorConfiguration = new Azure.CosmosDB.PostgresqlCoordinatorConfiguration("example", new()
///     {
///         Name = "array_nulls",
///         ClusterId = example.Id,
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
/// 		_, err := core.NewResourceGroup(ctx, "test", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cosmosdb.NewPostgresqlCluster(ctx, "example", &cosmosdb.PostgresqlClusterArgs{
/// 			Name:                        pulumi.String("examplecluster"),
/// 			ResourceGroupName:           pulumi.Any(exampleAzurermResourceGroup.Name),
/// 			Location:                    pulumi.Any(exampleAzurermResourceGroup.Location),
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
/// 		_, err = cosmosdb.NewPostgresqlCoordinatorConfiguration(ctx, "example", &cosmosdb.PostgresqlCoordinatorConfigurationArgs{
/// 			Name:      pulumi.String("array_nulls"),
/// 			ClusterId: example.ID(),
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
/// import com.pulumi.azure.cosmosdb.PostgresqlCoordinatorConfiguration;
/// import com.pulumi.azure.cosmosdb.PostgresqlCoordinatorConfigurationArgs;
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
///         var test = new ResourceGroup("test", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var example = new PostgresqlCluster("example", PostgresqlClusterArgs.builder()
///             .name("examplecluster")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .location(exampleAzurermResourceGroup.location())
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVcoreCount(2)
///             .nodeCount(2)
///             .nodeStorageQuotaInMb(131072)
///             .nodeVcores(2)
///             .build());
///
///         var examplePostgresqlCoordinatorConfiguration = new PostgresqlCoordinatorConfiguration("examplePostgresqlCoordinatorConfiguration", PostgresqlCoordinatorConfigurationArgs.builder()
///             .name("array_nulls")
///             .clusterId(example.id())
///             .value("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   example:
///     type: azure:cosmosdb:PostgresqlCluster
///     properties:
///       name: examplecluster
///       resourceGroupName: ${exampleAzurermResourceGroup.name}
///       location: ${exampleAzurermResourceGroup.location}
///       administratorLoginPassword: H@Sh1CoR3!
///       coordinatorStorageQuotaInMb: 131072
///       coordinatorVcoreCount: 2
///       nodeCount: 2
///       nodeStorageQuotaInMb: 131072
///       nodeVcores: 2
///   examplePostgresqlCoordinatorConfiguration:
///     type: azure:cosmosdb:PostgresqlCoordinatorConfiguration
///     name: example
///     properties:
///       name: array_nulls
///       clusterId: ${example.id}
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
/// Coordinator Configurations on Azure Cosmos DB for PostgreSQL Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/postgresqlCoordinatorConfiguration:PostgresqlCoordinatorConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/cluster1/coordinatorConfigurations/array_nulls
/// ```
class PostgresqlCoordinatorConfiguration extends pulumi.CustomResource {
  /// The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterId;
  /// The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster.
  late final pulumi.Output<String> value;

  /// Creates a new [PostgresqlCoordinatorConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PostgresqlCoordinatorConfiguration]. {@macro pulumi_cosmosdb_postgresql_coordinator_configuration_postgresql_coordinator_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PostgresqlCoordinatorConfiguration(
    String name, {
    PostgresqlCoordinatorConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlCoordinatorConfiguration:PostgresqlCoordinatorConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.name = registerOutput<String>('name');
    this.value = registerOutput<String>('value');
  }

  /// Gets an existing [PostgresqlCoordinatorConfiguration] resource's state with the given [name] and [id].
  static PostgresqlCoordinatorConfiguration get(
    String name,
    pulumi.Input<String> id, {
    PostgresqlCoordinatorConfigurationState? state,
  }) {
    return PostgresqlCoordinatorConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PostgresqlCoordinatorConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlCoordinatorConfiguration:PostgresqlCoordinatorConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.name = registerOutput<String>('name');
    this.value = registerOutput<String>('value');
  }
}

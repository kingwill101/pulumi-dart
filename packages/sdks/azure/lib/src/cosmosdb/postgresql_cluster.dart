import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_cluster_args.dart';
import 'postgresql_cluster_maintenance_window.dart';
import 'postgresql_cluster_server.dart';
import 'postgresql_cluster_state.dart';

/// Manages an Azure Cosmos DB for PostgreSQL Cluster.
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
///     name: "example-cluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLoginPassword: "H@Sh1CoR3!",
///     coordinatorStorageQuotaInMb: 131072,
///     coordinatorVcoreCount: 2,
///     nodeCount: 0,
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
///     name="example-cluster",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login_password="H@Sh1CoR3!",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_vcore_count=2,
///     node_count=0)
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
///         Name = "example-cluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVcoreCount = 2,
///         NodeCount = 0,
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
/// 		_, err = cosmosdb.NewPostgresqlCluster(ctx, "example", &cosmosdb.PostgresqlClusterArgs{
/// 			Name:                        pulumi.String("example-cluster"),
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
///             .name("example-cluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVcoreCount(2)
///             .nodeCount(0)
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
///       name: example-cluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLoginPassword: H@Sh1CoR3!
///       coordinatorStorageQuotaInMb: 131072
///       coordinatorVcoreCount: 2
///       nodeCount: 0
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
/// Azure Cosmos DB for PostgreSQL Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/postgresqlCluster:PostgresqlCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/cluster1
/// ```
class PostgresqlCluster extends pulumi.CustomResource {
  /// The password of the administrator login. This is required when `source_resource_id` is not set.
  late final pulumi.Output<String?> administratorLoginPassword;
  /// The citus extension version on the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `8.3`, `9.0`, `9.1`, `9.2`, `9.3`, `9.4`, `9.5`, `10.0`, `10.1`, `10.2`, `11.0`, `11.1`, `11.2`, `11.3` and `12.1`.
  late final pulumi.Output<String> citusVersion;
  /// Is public access enabled on coordinator? Defaults to `true`.
  late final pulumi.Output<bool?> coordinatorPublicIpAccessEnabled;
  /// The edition of the coordinator server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose`, and `MemoryOptimized`. Defaults to `GeneralPurpose`.
  ///
  /// > **Note:** When using `BurstableGeneralPurpose`, the minimum supported value for `coordinator_vcore_count` is `2`. Setting `coordinator_vcore_count = 1` with this edition will result in an error from the Azure API. See [Azure Cosmos DB for PostgreSQL compute documentation](https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute) for more details.
  late final pulumi.Output<String?> coordinatorServerEdition;
  /// The coordinator storage allowed for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608`, `16777216`, and `33554432`.
  ///
  /// > **Note:** More information on [the types of compute resources available for CosmosDB can be found in the product documentation](https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute)
  late final pulumi.Output<int?> coordinatorStorageQuotaInMb;
  /// The coordinator vCore count for the Azure Cosmos DB for PostgreSQL Cluster. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64` and `96`.
  late final pulumi.Output<int?> coordinatorVcoreCount;
  /// The earliest restore point time (ISO8601 format) for the Azure Cosmos DB for PostgreSQL Cluster.
  late final pulumi.Output<String> earliestRestoreTime;
  /// Is high availability enabled for the Azure Cosmos DB for PostgreSQL cluster? Defaults to `false`.
  late final pulumi.Output<bool?> haEnabled;
  /// The Azure Region where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `maintenance_window` block as defined below.
  late final pulumi.Output<PostgresqlClusterMaintenanceWindow?> maintenanceWindow;
  /// The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The worker node count of the Azure Cosmos DB for PostgreSQL Cluster. Possible value is between `0` and `20` except `1`.
  late final pulumi.Output<int> nodeCount;
  /// Is public access enabled on worker nodes. Defaults to `false`.
  late final pulumi.Output<bool?> nodePublicIpAccessEnabled;
  /// The edition of the node server. Possible values are `BurstableGeneralPurpose`, `BurstableMemoryOptimized`, `GeneralPurpose` and `MemoryOptimized`. Defaults to `MemoryOptimized`.
  late final pulumi.Output<String?> nodeServerEdition;
  /// The storage quota in MB on each worker node. Possible values are `32768`, `65536`, `131072`, `262144`, `524288`, `1048576`, `2097152`, `4194304`, `8388608` and `16777216`.
  late final pulumi.Output<int> nodeStorageQuotaInMb;
  /// The vCores count on each worker node. Possible values are `1`, `2`, `4`, `8`, `16`, `32`, `64`, `96` and `104`.
  late final pulumi.Output<int> nodeVcores;
  /// The date and time in UTC (ISO8601 format) for the Azure Cosmos DB for PostgreSQL cluster restore. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> pointInTimeInUtc;
  /// The preferred primary availability zone for the Azure Cosmos DB for PostgreSQL cluster.
  late final pulumi.Output<String?> preferredPrimaryZone;
  /// The name of the Resource Group where the Azure Cosmos DB for PostgreSQL Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `servers` block as defined below.
  late final pulumi.Output<List<PostgresqlClusterServer>> servers;
  /// Is shards on coordinator enabled for the Azure Cosmos DB for PostgreSQL cluster.
  late final pulumi.Output<bool> shardsOnCoordinatorEnabled;
  /// The Azure region of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceLocation;
  /// The resource ID of the source Azure Cosmos DB for PostgreSQL cluster for read replica clusters. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> sourceResourceId;
  /// The major PostgreSQL version on the Azure Cosmos DB for PostgreSQL cluster. Possible values are `11`, `12`, `13`, `14`, `15` and `16`.
  late final pulumi.Output<String> sqlVersion;
  /// A mapping of tags which should be assigned to the Azure Cosmos DB for PostgreSQL Cluster.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PostgresqlCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PostgresqlCluster]. {@macro pulumi_cosmosdb_postgresql_cluster_postgresql_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PostgresqlCluster(
    String name, {
    PostgresqlClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlCluster:PostgresqlCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administratorLoginPassword = registerOutput<String?>('administratorLoginPassword');
    this.citusVersion = registerOutput<String>('citusVersion');
    this.coordinatorPublicIpAccessEnabled = registerOutput<bool?>('coordinatorPublicIpAccessEnabled');
    this.coordinatorServerEdition = registerOutput<String?>('coordinatorServerEdition');
    this.coordinatorStorageQuotaInMb = registerOutput<int?>('coordinatorStorageQuotaInMb');
    this.coordinatorVcoreCount = registerOutput<int?>('coordinatorVcoreCount');
    this.earliestRestoreTime = registerOutput<String>('earliestRestoreTime');
    this.haEnabled = registerOutput<bool?>('haEnabled');
    this.location = registerOutput<String>('location');
    this.maintenanceWindow = registerOutput<PostgresqlClusterMaintenanceWindow?>('maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.nodePublicIpAccessEnabled = registerOutput<bool?>('nodePublicIpAccessEnabled');
    this.nodeServerEdition = registerOutput<String?>('nodeServerEdition');
    this.nodeStorageQuotaInMb = registerOutput<int>('nodeStorageQuotaInMb');
    this.nodeVcores = registerOutput<int>('nodeVcores');
    this.pointInTimeInUtc = registerOutput<String?>('pointInTimeInUtc');
    this.preferredPrimaryZone = registerOutput<String?>('preferredPrimaryZone');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.servers = registerOutput<List<PostgresqlClusterServer>>('servers');
    this.shardsOnCoordinatorEnabled = registerOutput<bool>('shardsOnCoordinatorEnabled');
    this.sourceLocation = registerOutput<String?>('sourceLocation');
    this.sourceResourceId = registerOutput<String?>('sourceResourceId');
    this.sqlVersion = registerOutput<String>('sqlVersion');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [PostgresqlCluster] resource's state with the given [name] and [id].
  static PostgresqlCluster get(
    String name,
    pulumi.Input<String> id, {
    PostgresqlClusterState? state,
  }) {
    return PostgresqlCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PostgresqlCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/postgresqlCluster:PostgresqlCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administratorLoginPassword = registerOutput<String?>('administratorLoginPassword');
    this.citusVersion = registerOutput<String>('citusVersion');
    this.coordinatorPublicIpAccessEnabled = registerOutput<bool?>('coordinatorPublicIpAccessEnabled');
    this.coordinatorServerEdition = registerOutput<String?>('coordinatorServerEdition');
    this.coordinatorStorageQuotaInMb = registerOutput<int?>('coordinatorStorageQuotaInMb');
    this.coordinatorVcoreCount = registerOutput<int?>('coordinatorVcoreCount');
    this.earliestRestoreTime = registerOutput<String>('earliestRestoreTime');
    this.haEnabled = registerOutput<bool?>('haEnabled');
    this.location = registerOutput<String>('location');
    this.maintenanceWindow = registerOutput<PostgresqlClusterMaintenanceWindow?>('maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.nodePublicIpAccessEnabled = registerOutput<bool?>('nodePublicIpAccessEnabled');
    this.nodeServerEdition = registerOutput<String?>('nodeServerEdition');
    this.nodeStorageQuotaInMb = registerOutput<int>('nodeStorageQuotaInMb');
    this.nodeVcores = registerOutput<int>('nodeVcores');
    this.pointInTimeInUtc = registerOutput<String?>('pointInTimeInUtc');
    this.preferredPrimaryZone = registerOutput<String?>('preferredPrimaryZone');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.servers = registerOutput<List<PostgresqlClusterServer>>('servers');
    this.shardsOnCoordinatorEnabled = registerOutput<bool>('shardsOnCoordinatorEnabled');
    this.sourceLocation = registerOutput<String?>('sourceLocation');
    this.sourceResourceId = registerOutput<String?>('sourceResourceId');
    this.sqlVersion = registerOutput<String>('sqlVersion');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}

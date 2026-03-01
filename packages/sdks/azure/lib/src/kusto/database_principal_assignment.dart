import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_principal_assignment_args.dart';
import 'database_principal_assignment_state.dart';

/// Manages a Kusto (also known as Azure Data Explorer) Database Principal Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "KustoRG",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "kustocluster",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Standard_D13_v2",
///         capacity: 2,
///     },
/// });
/// const exampleDatabase = new azure.kusto.Database("example", {
///     name: "KustoDatabase",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: exampleCluster.name,
///     hotCachePeriod: "P7D",
///     softDeletePeriod: "P31D",
/// });
/// const exampleDatabasePrincipalAssignment = new azure.kusto.DatabasePrincipalAssignment("example", {
///     name: "KustoPrincipalAssignment",
///     resourceGroupName: example.name,
///     clusterName: exampleCluster.name,
///     databaseName: exampleDatabase.name,
///     tenantId: current.then(current => current.tenantId),
///     principalId: current.then(current => current.clientId),
///     principalType: "App",
///     role: "Viewer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="KustoRG",
///     location="West Europe")
/// example_cluster = azure.kusto.Cluster("example",
///     name="kustocluster",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_D13_v2",
///         "capacity": 2,
///     })
/// example_database = azure.kusto.Database("example",
///     name="KustoDatabase",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=example_cluster.name,
///     hot_cache_period="P7D",
///     soft_delete_period="P31D")
/// example_database_principal_assignment = azure.kusto.DatabasePrincipalAssignment("example",
///     name="KustoPrincipalAssignment",
///     resource_group_name=example.name,
///     cluster_name=example_cluster.name,
///     database_name=example_database.name,
///     tenant_id=current.tenant_id,
///     principal_id=current.client_id,
///     principal_type="App",
///     role="Viewer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "KustoRG",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "kustocluster",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Standard_D13_v2",
///             Capacity = 2,
///         },
///     });
///
///     var exampleDatabase = new Azure.Kusto.Database("example", new()
///     {
///         Name = "KustoDatabase",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = exampleCluster.Name,
///         HotCachePeriod = "P7D",
///         SoftDeletePeriod = "P31D",
///     });
///
///     var exampleDatabasePrincipalAssignment = new Azure.Kusto.DatabasePrincipalAssignment("example", new()
///     {
///         Name = "KustoPrincipalAssignment",
///         ResourceGroupName = example.Name,
///         ClusterName = exampleCluster.Name,
///         DatabaseName = exampleDatabase.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///         PrincipalType = "App",
///         Role = "Viewer",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("KustoRG"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("kustocluster"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Standard_D13_v2"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := kusto.NewDatabase(ctx, "example", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("KustoDatabase"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       exampleCluster.Name,
/// 			HotCachePeriod:    pulumi.String("P7D"),
/// 			SoftDeletePeriod:  pulumi.String("P31D"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewDatabasePrincipalAssignment(ctx, "example", &kusto.DatabasePrincipalAssignmentArgs{
/// 			Name:              pulumi.String("KustoPrincipalAssignment"),
/// 			ResourceGroupName: example.Name,
/// 			ClusterName:       exampleCluster.Name,
/// 			DatabaseName:      exampleDatabase.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			PrincipalId:       pulumi.String(current.ClientId),
/// 			PrincipalType:     pulumi.String("App"),
/// 			Role:              pulumi.String("Viewer"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.kusto.DatabasePrincipalAssignment;
/// import com.pulumi.azure.kusto.DatabasePrincipalAssignmentArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("KustoRG")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("kustocluster")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Standard_D13_v2")
///                 .capacity(2)
///                 .build())
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("KustoDatabase")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(exampleCluster.name())
///             .hotCachePeriod("P7D")
///             .softDeletePeriod("P31D")
///             .build());
///
///         var exampleDatabasePrincipalAssignment = new DatabasePrincipalAssignment("exampleDatabasePrincipalAssignment", DatabasePrincipalAssignmentArgs.builder()
///             .name("KustoPrincipalAssignment")
///             .resourceGroupName(example.name())
///             .clusterName(exampleCluster.name())
///             .databaseName(exampleDatabase.name())
///             .tenantId(current.tenantId())
///             .principalId(current.clientId())
///             .principalType("App")
///             .role("Viewer")
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
///       name: KustoRG
///       location: West Europe
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: kustocluster
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Standard_D13_v2
///         capacity: 2
///   exampleDatabase:
///     type: azure:kusto:Database
///     name: example
///     properties:
///       name: KustoDatabase
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${exampleCluster.name}
///       hotCachePeriod: P7D
///       softDeletePeriod: P31D
///   exampleDatabasePrincipalAssignment:
///     type: azure:kusto:DatabasePrincipalAssignment
///     name: example
///     properties:
///       name: KustoPrincipalAssignment
///       resourceGroupName: ${example.name}
///       clusterName: ${exampleCluster.name}
///       databaseName: ${exampleDatabase.name}
///       tenantId: ${current.tenantId}
///       principalId: ${current.clientId}
///       principalType: App
///       role: Viewer
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Kusto Database Principal Assignment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/databasePrincipalAssignment:DatabasePrincipalAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/databases/database1/principalAssignments/assignment1
/// ```
class DatabasePrincipalAssignment extends pulumi.CustomResource {
  /// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterName;
  /// The name of the database in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;
  /// The name of the kusto principal assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The object id of the principal. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalId;
  /// The name of the principal.
  late final pulumi.Output<String> principalName;
  /// The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalType;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The database role assigned to the principal. Valid values include `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User` and `Viewer`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> role;
  /// The tenant id in which the principal resides. Changing this forces a new resource to be created.
  late final pulumi.Output<String> tenantId;
  /// The name of the tenant.
  late final pulumi.Output<String> tenantName;

  /// Creates a new [DatabasePrincipalAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabasePrincipalAssignment]. {@macro pulumi_kusto_database_principal_assignment_database_principal_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabasePrincipalAssignment(
    String name, {
    DatabasePrincipalAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/databasePrincipalAssignment:DatabasePrincipalAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String>('clusterName');
    this.databaseName = registerOutput<String>('databaseName');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.principalName = registerOutput<String>('principalName');
    this.principalType = registerOutput<String>('principalType');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.role = registerOutput<String>('role');
    this.tenantId = registerOutput<String>('tenantId');
    this.tenantName = registerOutput<String>('tenantName');
  }

  /// Gets an existing [DatabasePrincipalAssignment] resource's state with the given [name] and [id].
  static DatabasePrincipalAssignment get(
    String name,
    pulumi.Input<String> id, {
    DatabasePrincipalAssignmentState? state,
  }) {
    return DatabasePrincipalAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabasePrincipalAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/databasePrincipalAssignment:DatabasePrincipalAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String>('clusterName');
    this.databaseName = registerOutput<String>('databaseName');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.principalName = registerOutput<String>('principalName');
    this.principalType = registerOutput<String>('principalType');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.role = registerOutput<String>('role');
    this.tenantId = registerOutput<String>('tenantId');
    this.tenantName = registerOutput<String>('tenantName');
  }
}

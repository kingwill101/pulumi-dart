import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_database_configuration_args.dart';
import 'attached_database_configuration_sharing.dart';
import 'attached_database_configuration_state.dart';

/// Manages a Kusto (also known as Azure Data Explorer) Attached Database Configuration
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "my-kusto-rg",
///     location: "West Europe",
/// });
/// const followerCluster = new azure.kusto.Cluster("follower_cluster", {
///     name: "cluster1",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Dev(No SLA)_Standard_D11_v2",
///         capacity: 1,
///     },
/// });
/// const followedCluster = new azure.kusto.Cluster("followed_cluster", {
///     name: "cluster2",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Dev(No SLA)_Standard_D11_v2",
///         capacity: 1,
///     },
/// });
/// const followedDatabase = new azure.kusto.Database("followed_database", {
///     name: "my-followed-database",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: followerCluster.name,
/// });
/// const exampleDatabase = new azure.kusto.Database("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: followerCluster.name,
/// });
/// const exampleAttachedDatabaseConfiguration = new azure.kusto.AttachedDatabaseConfiguration("example", {
///     name: "configuration1",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: followerCluster.name,
///     clusterId: followedCluster.id,
///     databaseName: exampleDatabase.name,
///     sharing: {
///         externalTablesToExcludes: ["ExternalTable2"],
///         externalTablesToIncludes: ["ExternalTable1"],
///         functionsToExcludes: ["Function2"],
///         functionsToIncludes: ["Function1"],
///         materializedViewsToExcludes: ["MaterializedViewTable2"],
///         materializedViewsToIncludes: ["MaterializedViewTable1"],
///         tablesToExcludes: ["Table2"],
///         tablesToIncludes: ["Table1"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="my-kusto-rg",
///     location="West Europe")
/// follower_cluster = azure.kusto.Cluster("follower_cluster",
///     name="cluster1",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Dev(No SLA)_Standard_D11_v2",
///         "capacity": 1,
///     })
/// followed_cluster = azure.kusto.Cluster("followed_cluster",
///     name="cluster2",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Dev(No SLA)_Standard_D11_v2",
///         "capacity": 1,
///     })
/// followed_database = azure.kusto.Database("followed_database",
///     name="my-followed-database",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=follower_cluster.name)
/// example_database = azure.kusto.Database("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=follower_cluster.name)
/// example_attached_database_configuration = azure.kusto.AttachedDatabaseConfiguration("example",
///     name="configuration1",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=follower_cluster.name,
///     cluster_id=followed_cluster.id,
///     database_name=example_database.name,
///     sharing={
///         "external_tables_to_excludes": ["ExternalTable2"],
///         "external_tables_to_includes": ["ExternalTable1"],
///         "functions_to_excludes": ["Function2"],
///         "functions_to_includes": ["Function1"],
///         "materialized_views_to_excludes": ["MaterializedViewTable2"],
///         "materialized_views_to_includes": ["MaterializedViewTable1"],
///         "tables_to_excludes": ["Table2"],
///         "tables_to_includes": ["Table1"],
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
///         Name = "my-kusto-rg",
///         Location = "West Europe",
///     });
///
///     var followerCluster = new Azure.Kusto.Cluster("follower_cluster", new()
///     {
///         Name = "cluster1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Dev(No SLA)_Standard_D11_v2",
///             Capacity = 1,
///         },
///     });
///
///     var followedCluster = new Azure.Kusto.Cluster("followed_cluster", new()
///     {
///         Name = "cluster2",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Dev(No SLA)_Standard_D11_v2",
///             Capacity = 1,
///         },
///     });
///
///     var followedDatabase = new Azure.Kusto.Database("followed_database", new()
///     {
///         Name = "my-followed-database",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = followerCluster.Name,
///     });
///
///     var exampleDatabase = new Azure.Kusto.Database("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = followerCluster.Name,
///     });
///
///     var exampleAttachedDatabaseConfiguration = new Azure.Kusto.AttachedDatabaseConfiguration("example", new()
///     {
///         Name = "configuration1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = followerCluster.Name,
///         ClusterId = followedCluster.Id,
///         DatabaseName = exampleDatabase.Name,
///         Sharing = new Azure.Kusto.Inputs.AttachedDatabaseConfigurationSharingArgs
///         {
///             ExternalTablesToExcludes = new[]
///             {
///                 "ExternalTable2",
///             },
///             ExternalTablesToIncludes = new[]
///             {
///                 "ExternalTable1",
///             },
///             FunctionsToExcludes = new[]
///             {
///                 "Function2",
///             },
///             FunctionsToIncludes = new[]
///             {
///                 "Function1",
///             },
///             MaterializedViewsToExcludes = new[]
///             {
///                 "MaterializedViewTable2",
///             },
///             MaterializedViewsToIncludes = new[]
///             {
///                 "MaterializedViewTable1",
///             },
///             TablesToExcludes = new[]
///             {
///                 "Table2",
///             },
///             TablesToIncludes = new[]
///             {
///                 "Table1",
///             },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("my-kusto-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		followerCluster, err := kusto.NewCluster(ctx, "follower_cluster", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("cluster1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Dev(No SLA)_Standard_D11_v2"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		followedCluster, err := kusto.NewCluster(ctx, "followed_cluster", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("cluster2"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Dev(No SLA)_Standard_D11_v2"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewDatabase(ctx, "followed_database", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("my-followed-database"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       followerCluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := kusto.NewDatabase(ctx, "example", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       followerCluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewAttachedDatabaseConfiguration(ctx, "example", &kusto.AttachedDatabaseConfigurationArgs{
/// 			Name:              pulumi.String("configuration1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       followerCluster.Name,
/// 			ClusterId:         followedCluster.ID(),
/// 			DatabaseName:      exampleDatabase.Name,
/// 			Sharing: &kusto.AttachedDatabaseConfigurationSharingArgs{
/// 				ExternalTablesToExcludes: pulumi.StringArray{
/// 					pulumi.String("ExternalTable2"),
/// 				},
/// 				ExternalTablesToIncludes: pulumi.StringArray{
/// 					pulumi.String("ExternalTable1"),
/// 				},
/// 				FunctionsToExcludes: pulumi.StringArray{
/// 					pulumi.String("Function2"),
/// 				},
/// 				FunctionsToIncludes: pulumi.StringArray{
/// 					pulumi.String("Function1"),
/// 				},
/// 				MaterializedViewsToExcludes: pulumi.StringArray{
/// 					pulumi.String("MaterializedViewTable2"),
/// 				},
/// 				MaterializedViewsToIncludes: pulumi.StringArray{
/// 					pulumi.String("MaterializedViewTable1"),
/// 				},
/// 				TablesToExcludes: pulumi.StringArray{
/// 					pulumi.String("Table2"),
/// 				},
/// 				TablesToIncludes: pulumi.StringArray{
/// 					pulumi.String("Table1"),
/// 				},
/// 			},
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
///   name     = "my-kusto-rg"
///   location = "West Europe"
/// }
/// resource "azure_kusto_cluster" "follower_cluster" {
///   name                = "cluster1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     name     = "Dev(No SLA)_Standard_D11_v2"
///     capacity = 1
///   }
/// }
/// resource "azure_kusto_cluster" "followed_cluster" {
///   name                = "cluster2"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     name     = "Dev(No SLA)_Standard_D11_v2"
///     capacity = 1
///   }
/// }
/// resource "azure_kusto_database" "followed_database" {
///   name                = "my-followed-database"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   cluster_name        = azure_kusto_cluster.follower_cluster.name
/// }
/// resource "azure_kusto_database" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   cluster_name        = azure_kusto_cluster.follower_cluster.name
/// }
/// resource "azure_kusto_attacheddatabaseconfiguration" "example" {
///   name                = "configuration1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   cluster_name        = azure_kusto_cluster.follower_cluster.name
///   cluster_id          = azure_kusto_cluster.followed_cluster.id
///   database_name       = azure_kusto_database.example.name
///   sharing = {
///     external_tables_to_excludes    = ["ExternalTable2"]
///     external_tables_to_includes    = ["ExternalTable1"]
///     functions_to_excludes          = ["Function2"]
///     functions_to_includes          = ["Function1"]
///     materialized_views_to_excludes = ["MaterializedViewTable2"]
///     materialized_views_to_includes = ["MaterializedViewTable1"]
///     tables_to_excludes             = ["Table2"]
///     tables_to_includes             = ["Table1"]
///   }
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
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.kusto.AttachedDatabaseConfiguration;
/// import com.pulumi.azure.kusto.AttachedDatabaseConfigurationArgs;
/// import com.pulumi.azure.kusto.inputs.AttachedDatabaseConfigurationSharingArgs;
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
///             .name("my-kusto-rg")
///             .location("West Europe")
///             .build());
///
///         var followerCluster = new Cluster("followerCluster", ClusterArgs.builder()
///             .name("cluster1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Dev(No SLA)_Standard_D11_v2")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var followedCluster = new Cluster("followedCluster", ClusterArgs.builder()
///             .name("cluster2")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Dev(No SLA)_Standard_D11_v2")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var followedDatabase = new Database("followedDatabase", DatabaseArgs.builder()
///             .name("my-followed-database")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(followerCluster.name())
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(followerCluster.name())
///             .build());
///
///         var exampleAttachedDatabaseConfiguration = new AttachedDatabaseConfiguration("exampleAttachedDatabaseConfiguration", AttachedDatabaseConfigurationArgs.builder()
///             .name("configuration1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(followerCluster.name())
///             .clusterId(followedCluster.id())
///             .databaseName(exampleDatabase.name())
///             .sharing(AttachedDatabaseConfigurationSharingArgs.builder()
///                 .externalTablesToExcludes("ExternalTable2")
///                 .externalTablesToIncludes("ExternalTable1")
///                 .functionsToExcludes("Function2")
///                 .functionsToIncludes("Function1")
///                 .materializedViewsToExcludes("MaterializedViewTable2")
///                 .materializedViewsToIncludes("MaterializedViewTable1")
///                 .tablesToExcludes("Table2")
///                 .tablesToIncludes("Table1")
///                 .build())
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
///       name: my-kusto-rg
///       location: West Europe
///   followerCluster:
///     type: azure:kusto:Cluster
///     name: follower_cluster
///     properties:
///       name: cluster1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Dev(No SLA)_Standard_D11_v2
///         capacity: 1
///   followedCluster:
///     type: azure:kusto:Cluster
///     name: followed_cluster
///     properties:
///       name: cluster2
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Dev(No SLA)_Standard_D11_v2
///         capacity: 1
///   followedDatabase:
///     type: azure:kusto:Database
///     name: followed_database
///     properties:
///       name: my-followed-database
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${followerCluster.name}
///   exampleDatabase:
///     type: azure:kusto:Database
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${followerCluster.name}
///   exampleAttachedDatabaseConfiguration:
///     type: azure:kusto:AttachedDatabaseConfiguration
///     name: example
///     properties:
///       name: configuration1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${followerCluster.name}
///       clusterId: ${followedCluster.id}
///       databaseName: ${exampleDatabase.name}
///       sharing:
///         externalTablesToExcludes:
///           - ExternalTable2
///         externalTablesToIncludes:
///           - ExternalTable1
///         functionsToExcludes:
///           - Function2
///         functionsToIncludes:
///           - Function1
///         materializedViewsToExcludes:
///           - MaterializedViewTable2
///         materializedViewsToIncludes:
///           - MaterializedViewTable1
///         tablesToExcludes:
///           - Table2
///         tablesToIncludes:
///           - Table1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Kusto Attached Database Configurations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/attachedDatabaseConfiguration:AttachedDatabaseConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/attachedDatabaseConfigurations/configuration1
/// ```
class AttachedDatabaseConfiguration extends pulumi.CustomResource {
  /// The list of databases from the `clusterResourceId` which are currently attached to the cluster.
  late final pulumi.Output<List<String>> attachedDatabaseNames;
  /// The resource id of the cluster where the databases you would like to attach reside.
  late final pulumi.Output<String> clusterId;
  /// Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterName;
  late final pulumi.Output<String> clusterResourceId;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;
  /// The database name to use for the attached database instead of using the original database name. Relevant only when attaching to a specific database.
  late final pulumi.Output<String?> databaseNameOverride;
  /// Adds a prefix to the attached databases name. When following an entire cluster, that prefix would be added to all of the databases original names from leader cluster.
  ///
  /// &gt; **Note:** Exactly one of  `databaseNameOverride` and `databaseNamePrefix` can be specified.
  late final pulumi.Output<String?> databaseNamePrefix;
  /// The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`.
  late final pulumi.Output<String?> defaultPrincipalModificationKind;
  /// Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `sharing` block as defined below.
  late final pulumi.Output<AttachedDatabaseConfigurationSharing?> sharing;

  /// Creates a new [AttachedDatabaseConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttachedDatabaseConfiguration]. {@macro pulumi_kusto_attached_database_configuration_attached_database_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttachedDatabaseConfiguration(
    String name, {
    AttachedDatabaseConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/attachedDatabaseConfiguration:AttachedDatabaseConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachedDatabaseNames = registerOutput<List<String>>('attachedDatabaseNames');
    clusterId = registerOutput<String>('clusterId');
    clusterName = registerOutput<String>('clusterName');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    databaseName = registerOutput<String>('databaseName');
    databaseNameOverride = registerOutput<String?>('databaseNameOverride');
    databaseNamePrefix = registerOutput<String?>('databaseNamePrefix');
    defaultPrincipalModificationKind = registerOutput<String?>('defaultPrincipalModificationKind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sharing = registerOutput<AttachedDatabaseConfigurationSharing?>('sharing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedDatabaseConfigurationSharing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AttachedDatabaseConfiguration] resource's state with the given [name] and [id].
  static AttachedDatabaseConfiguration get(
    String name,
    pulumi.Input<String> id, {
    AttachedDatabaseConfigurationState? state,
  }) {
    return AttachedDatabaseConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AttachedDatabaseConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/attachedDatabaseConfiguration:AttachedDatabaseConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachedDatabaseNames = registerOutput<List<String>>('attachedDatabaseNames');
    clusterId = registerOutput<String>('clusterId');
    clusterName = registerOutput<String>('clusterName');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    databaseName = registerOutput<String>('databaseName');
    databaseNameOverride = registerOutput<String?>('databaseNameOverride');
    databaseNamePrefix = registerOutput<String?>('databaseNamePrefix');
    defaultPrincipalModificationKind = registerOutput<String?>('defaultPrincipalModificationKind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sharing = registerOutput<AttachedDatabaseConfigurationSharing?>('sharing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttachedDatabaseConfigurationSharing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_kusto_database_args.dart';
import 'dataset_kusto_database_state.dart';

/// Manages a Data Share Kusto Database Dataset.
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
/// const exampleAccount = new azure.datashare.Account("example", {
///     name: "example-dsa",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleShare = new azure.datashare.Share("example", {
///     name: "example_ds",
///     accountId: exampleAccount.id,
///     kind: "InPlace",
/// });
/// const exampleCluster = new azure.kusto.Cluster("example", {
///     name: "examplekc",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Dev(No SLA)_Standard_D11_v2",
///         capacity: 1,
///     },
/// });
/// const exampleDatabase = new azure.kusto.Database("example", {
///     name: "examplekd",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: exampleCluster.name,
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleCluster.id,
///     roleDefinitionName: "Contributor",
///     principalId: exampleAccount.identity.principalId,
/// });
/// const exampleDatasetKustoDatabase = new azure.datashare.DatasetKustoDatabase("example", {
///     name: "example-dskd",
///     shareId: exampleShare.id,
///     kustoDatabaseId: exampleDatabase.id,
/// }, {
///     dependsOn: [exampleAssignment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.datashare.Account("example",
///     name="example-dsa",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_share = azure.datashare.Share("example",
///     name="example_ds",
///     account_id=example_account.id,
///     kind="InPlace")
/// example_cluster = azure.kusto.Cluster("example",
///     name="examplekc",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Dev(No SLA)_Standard_D11_v2",
///         "capacity": 1,
///     })
/// example_database = azure.kusto.Database("example",
///     name="examplekd",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=example_cluster.name)
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_cluster.id,
///     role_definition_name="Contributor",
///     principal_id=example_account.identity.principal_id)
/// example_dataset_kusto_database = azure.datashare.DatasetKustoDatabase("example",
///     name="example-dskd",
///     share_id=example_share.id,
///     kusto_database_id=example_database.id,
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
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
///     var exampleAccount = new Azure.DataShare.Account("example", new()
///     {
///         Name = "example-dsa",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.DataShare.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleShare = new Azure.DataShare.Share("example", new()
///     {
///         Name = "example_ds",
///         AccountId = exampleAccount.Id,
///         Kind = "InPlace",
///     });
///
///     var exampleCluster = new Azure.Kusto.Cluster("example", new()
///     {
///         Name = "examplekc",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Dev(No SLA)_Standard_D11_v2",
///             Capacity = 1,
///         },
///     });
///
///     var exampleDatabase = new Azure.Kusto.Database("example", new()
///     {
///         Name = "examplekd",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = exampleCluster.Name,
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleCluster.Id,
///         RoleDefinitionName = "Contributor",
///         PrincipalId = exampleAccount.Identity.Apply(identity => identity.PrincipalId),
///     });
///
///     var exampleDatasetKustoDatabase = new Azure.DataShare.DatasetKustoDatabase("example", new()
///     {
///         Name = "example-dskd",
///         ShareId = exampleShare.Id,
///         KustoDatabaseId = exampleDatabase.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datashare"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
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
/// 		exampleAccount, err := datashare.NewAccount(ctx, "example", &datashare.AccountArgs{
/// 			Name:              pulumi.String("example-dsa"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &datashare.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShare, err := datashare.NewShare(ctx, "example", &datashare.ShareArgs{
/// 			Name:      pulumi.String("example_ds"),
/// 			AccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			Kind:      pulumi.String("InPlace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := kusto.NewCluster(ctx, "example", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("examplekc"),
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
/// 		exampleDatabase, err := kusto.NewDatabase(ctx, "example", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("examplekd"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       exampleCluster.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleCluster.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Contributor"),
/// 			PrincipalId:        exampleAccount.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datashare.NewDatasetKustoDatabase(ctx, "example", &datashare.DatasetKustoDatabaseArgs{
/// 			Name:            pulumi.String("example-dskd"),
/// 			ShareId:         exampleShare.ID().ToIDOutput().ToStringOutput(),
/// 			KustoDatabaseId: exampleDatabase.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 		}))
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
/// resource "azure_datashare_account" "example" {
///   name                = "example-dsa"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_datashare_share" "example" {
///   name       = "example_ds"
///   account_id = azure_datashare_account.example.id
///   kind       = "InPlace"
/// }
/// resource "azure_kusto_cluster" "example" {
///   name                = "examplekc"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     name     = "Dev(No SLA)_Standard_D11_v2"
///     capacity = 1
///   }
/// }
/// resource "azure_kusto_database" "example" {
///   name                = "examplekd"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   cluster_name        = azure_kusto_cluster.example.name
/// }
/// resource "azure_authorization_assignment" "example" {
///   scope                = azure_kusto_cluster.example.id
///   role_definition_name = "Contributor"
///   principal_id         = azure_datashare_account.example.identity.principal_id
/// }
/// resource "azure_datashare_datasetkustodatabase" "example" {
///   depends_on        = [azure_authorization_assignment.example]
///   name              = "example-dskd"
///   share_id          = azure_datashare_share.example.id
///   kusto_database_id = azure_kusto_database.example.id
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
/// import com.pulumi.azure.datashare.Account;
/// import com.pulumi.azure.datashare.AccountArgs;
/// import com.pulumi.azure.datashare.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.datashare.Share;
/// import com.pulumi.azure.datashare.ShareArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.datashare.DatasetKustoDatabase;
/// import com.pulumi.azure.datashare.DatasetKustoDatabaseArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-dsa")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("example_ds")
///             .accountId(exampleAccount.id())
///             .kind("InPlace")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("examplekc")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Dev(No SLA)_Standard_D11_v2")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("examplekd")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(exampleCluster.name())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleCluster.id())
///             .roleDefinitionName("Contributor")
///             .principalId(exampleAccount.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleDatasetKustoDatabase = new DatasetKustoDatabase("exampleDatasetKustoDatabase", DatasetKustoDatabaseArgs.builder()
///             .name("example-dskd")
///             .shareId(exampleShare.id())
///             .kustoDatabaseId(exampleDatabase.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
///                 .build());
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
///   exampleAccount:
///     type: azure:datashare:Account
///     name: example
///     properties:
///       name: example-dsa
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///   exampleShare:
///     type: azure:datashare:Share
///     name: example
///     properties:
///       name: example_ds
///       accountId: ${exampleAccount.id}
///       kind: InPlace
///   exampleCluster:
///     type: azure:kusto:Cluster
///     name: example
///     properties:
///       name: examplekc
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Dev(No SLA)_Standard_D11_v2
///         capacity: 1
///   exampleDatabase:
///     type: azure:kusto:Database
///     name: example
///     properties:
///       name: examplekd
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${exampleCluster.name}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleCluster.id}
///       roleDefinitionName: Contributor
///       principalId: ${exampleAccount.identity.principalId}
///   exampleDatasetKustoDatabase:
///     type: azure:datashare:DatasetKustoDatabase
///     name: example
///     properties:
///       name: example-dskd
///       shareId: ${exampleShare.id}
///       kustoDatabaseId: ${exampleDatabase.id}
///     options:
///       dependsOn:
///         - ${exampleAssignment}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataShare` - 2019-11-01
///
/// ## Import
///
/// Data Share Kusto Database Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datashare/datasetKustoDatabase:DatasetKustoDatabase example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataShare/accounts/account1/shares/share1/dataSets/dataSet1
/// ```
class DatasetKustoDatabase extends pulumi.CustomResource {
  /// The name of the Data Share Dataset.
  late final pulumi.Output<String> displayName;
  /// The location of the Kusto Cluster.
  late final pulumi.Output<String> kustoClusterLocation;
  /// The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created.
  late final pulumi.Output<String> kustoDatabaseId;
  /// The name which should be used for this Data Share Kusto Database Dataset. Changing this forces a new Data Share Kusto Database Dataset to be created.
  late final pulumi.Output<String> name;
  /// The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created.
  late final pulumi.Output<String> shareId;

  /// Creates a new [DatasetKustoDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetKustoDatabase]. {@macro pulumi_datashare_dataset_kusto_database_dataset_kusto_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetKustoDatabase(
    String name, {
    DatasetKustoDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datashare/datasetKustoDatabase:DatasetKustoDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    displayName = registerOutput<String>('displayName');
    kustoClusterLocation = registerOutput<String>('kustoClusterLocation');
    kustoDatabaseId = registerOutput<String>('kustoDatabaseId');
    this.name = registerOutput<String>('name');
    shareId = registerOutput<String>('shareId');
  }

  /// Gets an existing [DatasetKustoDatabase] resource's state with the given [name] and [id].
  static DatasetKustoDatabase get(
    String name,
    pulumi.Input<String> id, {
    DatasetKustoDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DatasetKustoDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DatasetKustoDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datashare/datasetKustoDatabase:DatasetKustoDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    kustoClusterLocation = registerOutput<String>('kustoClusterLocation');
    kustoDatabaseId = registerOutput<String>('kustoDatabaseId');
    this.name = registerOutput<String>('name');
    shareId = registerOutput<String>('shareId');
  }

  /// Creates a typed reference to an existing [DatasetKustoDatabase] resource.
  DatasetKustoDatabase.reference(String urn)
    : super(
        'azure:datashare/datasetKustoDatabase:DatasetKustoDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    displayName = registerOutput<String>('displayName');
    kustoClusterLocation = registerOutput<String>('kustoClusterLocation');
    kustoDatabaseId = registerOutput<String>('kustoDatabaseId');
    this.name = registerOutput<String>('name');
    shareId = registerOutput<String>('shareId');
  }
}

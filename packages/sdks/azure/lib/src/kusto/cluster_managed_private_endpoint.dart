import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_managed_private_endpoint_args.dart';
import 'cluster_managed_private_endpoint_state.dart';

/// Manages a Managed Private Endpoint for a Kusto Cluster.
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
///     name: "example-resources",
///     location: "West Europe",
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleClusterManagedPrivateEndpoint = new azure.kusto.ClusterManagedPrivateEndpoint("example", {
///     name: "examplempe",
///     resourceGroupName: example.name,
///     clusterName: exampleCluster.name,
///     privateLinkResourceId: exampleAccount.id,
///     privateLinkResourceRegion: exampleAccount.location,
///     groupId: "blob",
///     requestMessage: "Please Approve",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_cluster = azure.kusto.Cluster("example",
///     name="examplekc",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Dev(No SLA)_Standard_D11_v2",
///         "capacity": 1,
///     })
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_cluster_managed_private_endpoint = azure.kusto.ClusterManagedPrivateEndpoint("example",
///     name="examplempe",
///     resource_group_name=example.name,
///     cluster_name=example_cluster.name,
///     private_link_resource_id=example_account.id,
///     private_link_resource_region=example_account.location,
///     group_id="blob",
///     request_message="Please Approve")
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
///         Name = "example-resources",
///         Location = "West Europe",
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleClusterManagedPrivateEndpoint = new Azure.Kusto.ClusterManagedPrivateEndpoint("example", new()
///     {
///         Name = "examplempe",
///         ResourceGroupName = example.Name,
///         ClusterName = exampleCluster.Name,
///         PrivateLinkResourceId = exampleAccount.Id,
///         PrivateLinkResourceRegion = exampleAccount.Location,
///         GroupId = "blob",
///         RequestMessage = "Please Approve",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewClusterManagedPrivateEndpoint(ctx, "example", &kusto.ClusterManagedPrivateEndpointArgs{
/// 			Name:                      pulumi.String("examplempe"),
/// 			ResourceGroupName:         example.Name,
/// 			ClusterName:               exampleCluster.Name,
/// 			PrivateLinkResourceId:     exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			PrivateLinkResourceRegion: exampleAccount.Location,
/// 			GroupId:                   pulumi.String("blob"),
/// 			RequestMessage:            pulumi.String("Please Approve"),
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
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
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
/// resource "azure_storage_account" "example" {
///   name                     = "examplesa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_kusto_clustermanagedprivateendpoint" "example" {
///   name                         = "examplempe"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   cluster_name                 = azure_kusto_cluster.example.name
///   private_link_resource_id     = azure_storage_account.example.id
///   private_link_resource_region = azure_storage_account.example.location
///   group_id                     = "blob"
///   request_message              = "Please Approve"
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.kusto.ClusterManagedPrivateEndpoint;
/// import com.pulumi.azure.kusto.ClusterManagedPrivateEndpointArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleClusterManagedPrivateEndpoint = new ClusterManagedPrivateEndpoint("exampleClusterManagedPrivateEndpoint", ClusterManagedPrivateEndpointArgs.builder()
///             .name("examplempe")
///             .resourceGroupName(example.name())
///             .clusterName(exampleCluster.name())
///             .privateLinkResourceId(exampleAccount.id())
///             .privateLinkResourceRegion(exampleAccount.location())
///             .groupId("blob")
///             .requestMessage("Please Approve")
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleClusterManagedPrivateEndpoint:
///     type: azure:kusto:ClusterManagedPrivateEndpoint
///     name: example
///     properties:
///       name: examplempe
///       resourceGroupName: ${example.name}
///       clusterName: ${exampleCluster.name}
///       privateLinkResourceId: ${exampleAccount.id}
///       privateLinkResourceRegion: ${exampleAccount.location}
///       groupId: blob
///       requestMessage: Please Approve
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Managed Private Endpoint for a Kusto Cluster can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/clusterManagedPrivateEndpoint:ClusterManagedPrivateEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/managedPrivateEndpoints/managedPrivateEndpoint1
/// ```
class ClusterManagedPrivateEndpoint extends pulumi.CustomResource {
  /// The name of the Kusto Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterName;
  /// The group id in which the managed private endpoint is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> groupId;
  /// The name of the Managed Private Endpoints to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> privateLinkResourceId;
  /// The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> privateLinkResourceRegion;
  /// The user request message.
  late final pulumi.Output<String?> requestMessage;
  /// Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ClusterManagedPrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterManagedPrivateEndpoint]. {@macro pulumi_kusto_cluster_managed_private_endpoint_cluster_managed_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterManagedPrivateEndpoint(
    String name, {
    ClusterManagedPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/clusterManagedPrivateEndpoint:ClusterManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    clusterName = registerOutput<String>('clusterName');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    privateLinkResourceId = registerOutput<String>('privateLinkResourceId');
    privateLinkResourceRegion = registerOutput<String?>('privateLinkResourceRegion');
    requestMessage = registerOutput<String?>('requestMessage');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ClusterManagedPrivateEndpoint] resource's state with the given [name] and [id].
  static ClusterManagedPrivateEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ClusterManagedPrivateEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ClusterManagedPrivateEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ClusterManagedPrivateEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/clusterManagedPrivateEndpoint:ClusterManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterName = registerOutput<String>('clusterName');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    privateLinkResourceId = registerOutput<String>('privateLinkResourceId');
    privateLinkResourceRegion = registerOutput<String?>('privateLinkResourceRegion');
    requestMessage = registerOutput<String?>('requestMessage');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Creates a typed reference to an existing [ClusterManagedPrivateEndpoint] resource.
  ClusterManagedPrivateEndpoint.reference(String urn)
    : super(
        'azure:kusto/clusterManagedPrivateEndpoint:ClusterManagedPrivateEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    clusterName = registerOutput<String>('clusterName');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    privateLinkResourceId = registerOutput<String>('privateLinkResourceId');
    privateLinkResourceRegion = registerOutput<String?>('privateLinkResourceRegion');
    requestMessage = registerOutput<String?>('requestMessage');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}

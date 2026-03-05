import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_private_endpoint_args.dart';
import 'managed_private_endpoint_state.dart';

/// Manages a Stream Analytics Managed Private Endpoint.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "StorageV2",
///     isHnsEnabled: true,
/// });
/// const exampleCluster = new azure.streamanalytics.Cluster("example", {
///     name: "examplestreamanalyticscluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     streamingCapacity: 36,
/// });
/// const exampleManagedPrivateEndpoint = new azure.streamanalytics.ManagedPrivateEndpoint("example", {
///     name: "exampleprivateendpoint",
///     resourceGroupName: example.name,
///     streamAnalyticsClusterName: exampleCluster.name,
///     targetResourceId: exampleAccount.id,
///     subresourceName: "blob",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="StorageV2",
///     is_hns_enabled=True)
/// example_cluster = azure.streamanalytics.Cluster("example",
///     name="examplestreamanalyticscluster",
///     resource_group_name=example.name,
///     location=example.location,
///     streaming_capacity=36)
/// example_managed_private_endpoint = azure.streamanalytics.ManagedPrivateEndpoint("example",
///     name="exampleprivateendpoint",
///     resource_group_name=example.name,
///     stream_analytics_cluster_name=example_cluster.name,
///     target_resource_id=example_account.id,
///     subresource_name="blob")
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "StorageV2",
///         IsHnsEnabled = true,
///     });
///
///     var exampleCluster = new Azure.StreamAnalytics.Cluster("example", new()
///     {
///         Name = "examplestreamanalyticscluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StreamingCapacity = 36,
///     });
///
///     var exampleManagedPrivateEndpoint = new Azure.StreamAnalytics.ManagedPrivateEndpoint("example", new()
///     {
///         Name = "exampleprivateendpoint",
///         ResourceGroupName = example.Name,
///         StreamAnalyticsClusterName = exampleCluster.Name,
///         TargetResourceId = exampleAccount.Id,
///         SubresourceName = "blob",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/streamanalytics"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := streamanalytics.NewCluster(ctx, "example", &streamanalytics.ClusterArgs{
/// 			Name:              pulumi.String("examplestreamanalyticscluster"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			StreamingCapacity: pulumi.Int(36),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewManagedPrivateEndpoint(ctx, "example", &streamanalytics.ManagedPrivateEndpointArgs{
/// 			Name:                       pulumi.String("exampleprivateendpoint"),
/// 			ResourceGroupName:          example.Name,
/// 			StreamAnalyticsClusterName: exampleCluster.Name,
/// 			TargetResourceId:           exampleAccount.ID(),
/// 			SubresourceName:            pulumi.String("blob"),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.streamanalytics.Cluster;
/// import com.pulumi.azure.streamanalytics.ClusterArgs;
/// import com.pulumi.azure.streamanalytics.ManagedPrivateEndpoint;
/// import com.pulumi.azure.streamanalytics.ManagedPrivateEndpointArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("StorageV2")
///             .isHnsEnabled(true)
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("examplestreamanalyticscluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .streamingCapacity(36)
///             .build());
///
///         var exampleManagedPrivateEndpoint = new ManagedPrivateEndpoint("exampleManagedPrivateEndpoint", ManagedPrivateEndpointArgs.builder()
///             .name("exampleprivateendpoint")
///             .resourceGroupName(example.name())
///             .streamAnalyticsClusterName(exampleCluster.name())
///             .targetResourceId(exampleAccount.id())
///             .subresourceName("blob")
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: StorageV2
///       isHnsEnabled: 'true'
///   exampleCluster:
///     type: azure:streamanalytics:Cluster
///     name: example
///     properties:
///       name: examplestreamanalyticscluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       streamingCapacity: 36
///   exampleManagedPrivateEndpoint:
///     type: azure:streamanalytics:ManagedPrivateEndpoint
///     name: example
///     properties:
///       name: exampleprivateendpoint
///       resourceGroupName: ${example.name}
///       streamAnalyticsClusterName: ${exampleCluster.name}
///       targetResourceId: ${exampleAccount.id}
///       subresourceName: blob
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2020-03-01
///
/// ## Import
///
/// Stream Analytics Private Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/managedPrivateEndpoint:ManagedPrivateEndpoint example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.StreamAnalytics/clusters/cluster1/privateEndpoints/endpoint1
/// ```
class ManagedPrivateEndpoint extends pulumi.CustomResource {
  /// The name which should be used for this Stream Analytics Managed Private Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Stream Analytics Managed Private Endpoint should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the Stream Analytics Cluster where the Managed Private Endpoint should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsClusterName;
  /// Specifies the sub resource name which the Stream Analytics Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subresourceName;
  /// The ID of the Private Link Enabled Remote Resource which this Stream Analytics Private endpoint should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [ManagedPrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPrivateEndpoint]. {@macro pulumi_streamanalytics_managed_private_endpoint_managed_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPrivateEndpoint(
    String name, {
    ManagedPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/managedPrivateEndpoint:ManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    streamAnalyticsClusterName = registerOutput<String>('streamAnalyticsClusterName');
    subresourceName = registerOutput<String>('subresourceName');
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [ManagedPrivateEndpoint] resource's state with the given [name] and [id].
  static ManagedPrivateEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ManagedPrivateEndpointState? state,
  }) {
    return ManagedPrivateEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedPrivateEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/managedPrivateEndpoint:ManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    streamAnalyticsClusterName = registerOutput<String>('streamAnalyticsClusterName');
    subresourceName = registerOutput<String>('subresourceName');
    targetResourceId = registerOutput<String>('targetResourceId');
  }
}

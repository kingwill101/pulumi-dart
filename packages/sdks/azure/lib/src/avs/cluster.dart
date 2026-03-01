import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';

/// Manages an Azure VMware Solution Cluster.
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
/// const examplePrivateCloud = new azure.avs.PrivateCloud("example", {
///     name: "example-vmware-private-cloud",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "av36",
///     managementCluster: {
///         size: 3,
///     },
///     networkSubnetCidr: "192.168.48.0/22",
///     internetConnectionEnabled: false,
///     nsxtPassword: "QazWsx13$Edc",
///     vcenterPassword: "WsxEdc23$Rfv",
/// });
/// const exampleCluster = new azure.avs.Cluster("example", {
///     name: "example-Cluster",
///     vmwareCloudId: examplePrivateCloud.id,
///     clusterNodeCount: 3,
///     skuName: "av36",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_private_cloud = azure.avs.PrivateCloud("example",
///     name="example-vmware-private-cloud",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="av36",
///     management_cluster={
///         "size": 3,
///     },
///     network_subnet_cidr="192.168.48.0/22",
///     internet_connection_enabled=False,
///     nsxt_password="QazWsx13$Edc",
///     vcenter_password="WsxEdc23$Rfv")
/// example_cluster = azure.avs.Cluster("example",
///     name="example-Cluster",
///     vmware_cloud_id=example_private_cloud.id,
///     cluster_node_count=3,
///     sku_name="av36")
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
///     var examplePrivateCloud = new Azure.Avs.PrivateCloud("example", new()
///     {
///         Name = "example-vmware-private-cloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "av36",
///         ManagementCluster = new Azure.Avs.Inputs.PrivateCloudManagementClusterArgs
///         {
///             Size = 3,
///         },
///         NetworkSubnetCidr = "192.168.48.0/22",
///         InternetConnectionEnabled = false,
///         NsxtPassword = "QazWsx13$Edc",
///         VcenterPassword = "WsxEdc23$Rfv",
///     });
///
///     var exampleCluster = new Azure.Avs.Cluster("example", new()
///     {
///         Name = "example-Cluster",
///         VmwareCloudId = examplePrivateCloud.Id,
///         ClusterNodeCount = 3,
///         SkuName = "av36",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/avs"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		examplePrivateCloud, err := avs.NewPrivateCloud(ctx, "example", &avs.PrivateCloudArgs{
/// 			Name:              pulumi.String("example-vmware-private-cloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("av36"),
/// 			ManagementCluster: &avs.PrivateCloudManagementClusterArgs{
/// 				Size: pulumi.Int(3),
/// 			},
/// 			NetworkSubnetCidr:         pulumi.String("192.168.48.0/22"),
/// 			InternetConnectionEnabled: pulumi.Bool(false),
/// 			NsxtPassword:              pulumi.String("QazWsx13$Edc"),
/// 			VcenterPassword:           pulumi.String("WsxEdc23$Rfv"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = avs.NewCluster(ctx, "example", &avs.ClusterArgs{
/// 			Name:             pulumi.String("example-Cluster"),
/// 			VmwareCloudId:    examplePrivateCloud.ID(),
/// 			ClusterNodeCount: pulumi.Int(3),
/// 			SkuName:          pulumi.String("av36"),
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
/// import com.pulumi.azure.avs.PrivateCloud;
/// import com.pulumi.azure.avs.PrivateCloudArgs;
/// import com.pulumi.azure.avs.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.azure.avs.Cluster;
/// import com.pulumi.azure.avs.ClusterArgs;
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
///         var examplePrivateCloud = new PrivateCloud("examplePrivateCloud", PrivateCloudArgs.builder()
///             .name("example-vmware-private-cloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("av36")
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .size(3)
///                 .build())
///             .networkSubnetCidr("192.168.48.0/22")
///             .internetConnectionEnabled(false)
///             .nsxtPassword("QazWsx13$Edc")
///             .vcenterPassword("WsxEdc23$Rfv")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example-Cluster")
///             .vmwareCloudId(examplePrivateCloud.id())
///             .clusterNodeCount(3)
///             .skuName("av36")
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
///   examplePrivateCloud:
///     type: azure:avs:PrivateCloud
///     name: example
///     properties:
///       name: example-vmware-private-cloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: av36
///       managementCluster:
///         size: 3
///       networkSubnetCidr: 192.168.48.0/22
///       internetConnectionEnabled: false
///       nsxtPassword: QazWsx13$Edc
///       vcenterPassword: WsxEdc23$Rfv
///   exampleCluster:
///     type: azure:avs:Cluster
///     name: example
///     properties:
///       name: example-Cluster
///       vmwareCloudId: ${examplePrivateCloud.id}
///       clusterNodeCount: 3
///       skuName: av36
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AVS` - 2022-05-01
///
/// ## Import
///
/// Azure VMware Solution Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:avs/cluster:Cluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AVS/privateClouds/privateCloud1/clusters/cluster1
/// ```
class Cluster extends pulumi.CustomResource {
  /// The count of the Azure VMware Solution Cluster nodes.
  late final pulumi.Output<int> clusterNodeCount;
  /// A number that identifies this Cluster in its Azure VMware Solution Private Cloud.
  late final pulumi.Output<int> clusterNumber;
  /// A list of hosts in the Azure VMware Solution Cluster.
  late final pulumi.Output<List<String>> hosts;
  /// The name which should be used for this Azure VMware Solution Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  late final pulumi.Output<String> name;
  /// The Cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av48`, `av48t`, `av36pt`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Cluster to be created.
  late final pulumi.Output<String> skuName;
  /// The ID of the Azure VMware Solution Private Cloud in which to create this Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  late final pulumi.Output<String> vmwareCloudId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_avs_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:avs/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterNodeCount = registerOutput<int>('clusterNodeCount');
    this.clusterNumber = registerOutput<int>('clusterNumber');
    this.hosts = registerOutput<List<String>>('hosts');
    this.name = registerOutput<String>('name');
    this.skuName = registerOutput<String>('skuName');
    this.vmwareCloudId = registerOutput<String>('vmwareCloudId');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:avs/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterNodeCount = registerOutput<int>('clusterNodeCount');
    this.clusterNumber = registerOutput<int>('clusterNumber');
    this.hosts = registerOutput<List<String>>('hosts');
    this.name = registerOutput<String>('name');
    this.skuName = registerOutput<String>('skuName');
    this.vmwareCloudId = registerOutput<String>('vmwareCloudId');
  }
}

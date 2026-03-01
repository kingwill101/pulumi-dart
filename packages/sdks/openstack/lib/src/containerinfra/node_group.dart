import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_args.dart';
import 'node_group_state.dart';

/// Manages a V1 Magnum node group resource within OpenStack.
///
/// ## Example Usage
///
/// ### Create a Nodegroup
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const nodegroup1 = new openstack.containerinfra.NodeGroup("nodegroup_1", {
///     name: "nodegroup_1",
///     clusterId: "b9a45c5c-cd03-4958-82aa-b80bf93cb922",
///     nodeCount: 5,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// nodegroup1 = openstack.containerinfra.NodeGroup("nodegroup_1",
///     name="nodegroup_1",
///     cluster_id="b9a45c5c-cd03-4958-82aa-b80bf93cb922",
///     node_count=5)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodegroup1 = new OpenStack.ContainerInfra.NodeGroup("nodegroup_1", new()
///     {
///         Name = "nodegroup_1",
///         ClusterId = "b9a45c5c-cd03-4958-82aa-b80bf93cb922",
///         NodeCount = 5,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/containerinfra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinfra.NewNodeGroup(ctx, "nodegroup_1", &containerinfra.NodeGroupArgs{
/// 			Name:      pulumi.String("nodegroup_1"),
/// 			ClusterId: pulumi.String("b9a45c5c-cd03-4958-82aa-b80bf93cb922"),
/// 			NodeCount: pulumi.Int(5),
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
/// import com.pulumi.openstack.containerinfra.NodeGroup;
/// import com.pulumi.openstack.containerinfra.NodeGroupArgs;
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
///         var nodegroup1 = new NodeGroup("nodegroup1", NodeGroupArgs.builder()
///             .name("nodegroup_1")
///             .clusterId("b9a45c5c-cd03-4958-82aa-b80bf93cb922")
///             .nodeCount(5)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   nodegroup1:
///     type: openstack:containerinfra:NodeGroup
///     name: nodegroup_1
///     properties:
///       name: nodegroup_1
///       clusterId: b9a45c5c-cd03-4958-82aa-b80bf93cb922
///       nodeCount: 5
/// ```
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `region` - See Argument Reference above.
/// * `name` - See Argument Reference above.
/// * `project_id` - See Argument Reference above.
/// * `created_at` - The time at which node group was created.
/// * `updated_at` - The time at which node group was created.
/// * `docker_volume_size` - See Argument Reference above.
/// * `role` - See Argument Reference above.
/// * `image_id` - See Argument Reference above.
/// * `flavor_id` - See Argument Reference above.
/// * `labels` - See Argument Reference above.
/// * `node_count` - See Argument Reference above.
/// * `min_node_count` - See Argument Reference above.
/// * `max_node_count` - See Argument Reference above.
/// * `role` - See Argument Reference above.
///
/// ## Import
///
/// Node groups can be imported using the `id` (cluster_id/nodegroup_id), e.g.
///
/// ```sh
/// $ pulumi import openstack:containerinfra/nodeGroup:NodeGroup nodegroup_1 b9a45c5c-cd03-4958-82aa-b80bf93cb922/ce0f9463-dd25-474b-9fe8-94de63e5e42b
/// ```
class NodeGroup extends pulumi.CustomResource {
  /// The UUID of the V1 Container Infra cluster.
  /// Changing this creates a new node group.
  late final pulumi.Output<String> clusterId;
  late final pulumi.Output<String> createdAt;
  /// The size (in GB) of the Docker volume.
  /// Changing this creates a new node group.
  late final pulumi.Output<int> dockerVolumeSize;
  /// The flavor for the nodes of the node group. Can be set
  /// via the `OS_MAGNUM_FLAVOR` environment variable. Changing this creates a new
  /// node group.
  late final pulumi.Output<String> flavorId;
  /// The reference to an image that is used for nodes of the
  /// node group. Can be set via the `OS_MAGNUM_IMAGE` environment variable.
  /// Changing this updates the image attribute of the existing node group.
  late final pulumi.Output<String> imageId;
  /// The list of key value pairs representing additional
  /// properties of the node group. Changing this creates a new node group.
  late final pulumi.Output<Map<String, String>> labels;
  /// The maximum number of nodes for the node group.
  /// Changing this update the maximum number of nodes of the node group.
  late final pulumi.Output<int?> maxNodeCount;
  /// Indicates whether the provided labels should be
  /// merged with cluster labels. Changing this creates a new nodegroup.
  late final pulumi.Output<bool?> mergeLabels;
  /// The minimum number of nodes for the node group.
  /// Changing this update the minimum number of nodes of the node group.
  late final pulumi.Output<int> minNodeCount;
  /// The name of the node group. Changing this creates a new
  /// node group.
  late final pulumi.Output<String> name;
  /// The number of nodes for the node group. Changing
  /// this update the number of nodes of the node group.
  late final pulumi.Output<int?> nodeCount;
  /// The project of the node group. Required if admin
  /// wants to create a cluster in another project. Changing this creates a new
  /// node group.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V1 Container Infra
  /// client. A Container Infra client is needed to create a cluster. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// node group.
  late final pulumi.Output<String> region;
  /// The role of nodes in the node group. Changing this
  /// creates a new node group.
  late final pulumi.Output<String> role;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [NodeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroup]. {@macro pulumi_containerinfra_node_group_node_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:containerinfra/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.createdAt = registerOutput<String>('createdAt');
    this.dockerVolumeSize = registerOutput<int>('dockerVolumeSize');
    this.flavorId = registerOutput<String>('flavorId');
    this.imageId = registerOutput<String>('imageId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.maxNodeCount = registerOutput<int?>('maxNodeCount');
    this.mergeLabels = registerOutput<bool?>('mergeLabels');
    this.minNodeCount = registerOutput<int>('minNodeCount');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int?>('nodeCount');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [NodeGroup] resource's state with the given [name] and [id].
  static NodeGroup get(
    String name,
    pulumi.Input<String> id, {
    NodeGroupState? state,
  }) {
    return NodeGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodeGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:containerinfra/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.createdAt = registerOutput<String>('createdAt');
    this.dockerVolumeSize = registerOutput<int>('dockerVolumeSize');
    this.flavorId = registerOutput<String>('flavorId');
    this.imageId = registerOutput<String>('imageId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.maxNodeCount = registerOutput<int?>('maxNodeCount');
    this.mergeLabels = registerOutput<bool?>('mergeLabels');
    this.minNodeCount = registerOutput<int>('minNodeCount');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int?>('nodeCount');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}

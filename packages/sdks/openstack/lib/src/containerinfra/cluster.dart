import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';

/// Manages a V1 Magnum cluster resource within OpenStack.
///
/// > **Note:** All arguments including the `kubeconfig` computed attribute will be
/// stored in the raw state as plain-text. Read more about sensitive data in
/// state.
///
/// ## Example Usage
///
/// ### Create a Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const cluster1 = new openstack.containerinfra.Cluster("cluster_1", {
///     name: "cluster_1",
///     clusterTemplateId: "b9a45c5c-cd03-4958-82aa-b80bf93cb922",
///     masterCount: 3,
///     nodeCount: 5,
///     keypair: "ssh_keypair",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// cluster1 = openstack.containerinfra.Cluster("cluster_1",
///     name="cluster_1",
///     cluster_template_id="b9a45c5c-cd03-4958-82aa-b80bf93cb922",
///     master_count=3,
///     node_count=5,
///     keypair="ssh_keypair")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster1 = new OpenStack.ContainerInfra.Cluster("cluster_1", new()
///     {
///         Name = "cluster_1",
///         ClusterTemplateId = "b9a45c5c-cd03-4958-82aa-b80bf93cb922",
///         MasterCount = 3,
///         NodeCount = 5,
///         Keypair = "ssh_keypair",
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
/// 		_, err := containerinfra.NewCluster(ctx, "cluster_1", &containerinfra.ClusterArgs{
/// 			Name:              pulumi.String("cluster_1"),
/// 			ClusterTemplateId: pulumi.String("b9a45c5c-cd03-4958-82aa-b80bf93cb922"),
/// 			MasterCount:       pulumi.Int(3),
/// 			NodeCount:         pulumi.Int(5),
/// 			Keypair:           pulumi.String("ssh_keypair"),
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
/// import com.pulumi.openstack.containerinfra.Cluster;
/// import com.pulumi.openstack.containerinfra.ClusterArgs;
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
///         var cluster1 = new Cluster("cluster1", ClusterArgs.builder()
///             .name("cluster_1")
///             .clusterTemplateId("b9a45c5c-cd03-4958-82aa-b80bf93cb922")
///             .masterCount(3)
///             .nodeCount(5)
///             .keypair("ssh_keypair")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster1:
///     type: openstack:containerinfra:Cluster
///     name: cluster_1
///     properties:
///       name: cluster_1
///       clusterTemplateId: b9a45c5c-cd03-4958-82aa-b80bf93cb922
///       masterCount: 3
///       nodeCount: 5
///       keypair: ssh_keypair
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
/// * `created_at` - The time at which cluster was created.
/// * `updated_at` - The time at which cluster was created.
/// * `api_address` - COE API address.
/// * `coe_version` - COE software version.
/// * `cluster_template_id` - See Argument Reference above.
/// * `container_version` - Container software version.
/// * `create_timeout` - See Argument Reference above.
/// * `discovery_url` - See Argument Reference above.
/// * `docker_volume_size` - See Argument Reference above.
/// * `flavor` - See Argument Reference above.
/// * `master_flavor` - See Argument Reference above.
/// * `keypair` - See Argument Reference above.
/// * `labels` - See Argument Reference above.
/// * `merge_labels` - See Argument Reference above.
/// * `master_count` - See Argument Reference above.
/// * `node_count` - See Argument Reference above.
/// * `fixed_network` - See Argument Reference above.
/// * `fixed_subnet` - See Argument Reference above.
/// * `floating_ip_enabled` - See Argument Reference above.
/// * `master_addresses` - IP addresses of the master node of the cluster.
/// * `node_addresses` - IP addresses of the node of the cluster.
/// * `stack_id` - UUID of the Orchestration service stack.
/// * `kubeconfig` - The Kubernetes cluster's credentials
/// * `raw_config` - The raw kubeconfig file
/// * `host` - The cluster's API server URL
/// * `cluster_ca_certificate` - The cluster's CA certificate
/// * `client_key` - The client's RSA key
/// * `client_certificate` - The client's certificate
///
/// ## Import
///
/// Clusters can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:containerinfra/cluster:Cluster cluster_1 ce0f9463-dd25-474b-9fe8-94de63e5e42b
/// ```
class Cluster extends pulumi.CustomResource {
  late final pulumi.Output<String> apiAddress;
  /// The UUID of the V1 Container Infra cluster
  /// template. Changing this creates a new cluster.
  late final pulumi.Output<String> clusterTemplateId;
  late final pulumi.Output<String> coeVersion;
  late final pulumi.Output<String> containerVersion;
  /// The timeout (in minutes) for creating the
  /// cluster. Changing this creates a new cluster.
  late final pulumi.Output<int> createTimeout;
  late final pulumi.Output<String> createdAt;
  /// The URL used for cluster node discovery.
  /// Changing this creates a new cluster.
  late final pulumi.Output<String> discoveryUrl;
  /// The size (in GB) of the Docker volume.
  /// Changing this creates a new cluster.
  late final pulumi.Output<int> dockerVolumeSize;
  /// The fixed network that will be attached to the
  /// cluster. Changing this creates a new cluster.
  late final pulumi.Output<String> fixedNetwork;
  /// The fixed subnet that will be attached to the
  /// cluster. Changing this creates a new cluster.
  late final pulumi.Output<String> fixedSubnet;
  /// The flavor for the nodes of the cluster. Can be set via
  /// the `OS_MAGNUM_FLAVOR` environment variable. Changing this creates a new
  /// cluster.
  late final pulumi.Output<String> flavor;
  /// Indicates whether floating IP should be
  /// created for every cluster node. Changing this creates a new cluster.
  late final pulumi.Output<bool> floatingIpEnabled;
  /// The name of the Compute service SSH keypair. Changing
  /// this creates a new cluster.
  late final pulumi.Output<String> keypair;
  late final pulumi.Output<Map<String, String>> kubeconfig;
  /// The list of key value pairs representing additional
  /// properties of the cluster. Changing this creates a new cluster.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<List<String>> masterAddresses;
  /// The number of master nodes for the cluster.
  /// Changing this creates a new cluster.
  late final pulumi.Output<int> masterCount;
  /// The flavor for the master nodes. Can be set via
  /// the `OS_MAGNUM_MASTER_FLAVOR` environment variable. Changing this creates a
  /// new cluster.
  late final pulumi.Output<String> masterFlavor;
  /// Indicates whether to create a load balancer
  /// for the master nodes. Changing this creates a new cluster.
  late final pulumi.Output<bool> masterLbEnabled;
  /// Indicates whether the provided labels should be
  /// merged with cluster template labels. Changing this creates a new cluster.
  late final pulumi.Output<bool?> mergeLabels;
  /// The name of the cluster. Changing this creates a new
  /// cluster.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<String>> nodeAddresses;
  /// The number of nodes for the cluster.
  late final pulumi.Output<int?> nodeCount;
  /// The project of the cluster. Required if admin wants
  /// to create a cluster in another project. Changing this creates a new
  /// cluster.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V1 Container Infra
  /// client. A Container Infra client is needed to create a cluster. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// cluster.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> stackId;
  late final pulumi.Output<String> updatedAt;
  /// The user of the cluster. Required if admin wants to
  /// create a cluster template for another user. Changing this creates a new
  /// cluster.
  late final pulumi.Output<String> userId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_containerinfra_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:containerinfra/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiAddress = registerOutput<String>('apiAddress');
    this.clusterTemplateId = registerOutput<String>('clusterTemplateId');
    this.coeVersion = registerOutput<String>('coeVersion');
    this.containerVersion = registerOutput<String>('containerVersion');
    this.createTimeout = registerOutput<int>('createTimeout');
    this.createdAt = registerOutput<String>('createdAt');
    this.discoveryUrl = registerOutput<String>('discoveryUrl');
    this.dockerVolumeSize = registerOutput<int>('dockerVolumeSize');
    this.fixedNetwork = registerOutput<String>('fixedNetwork');
    this.fixedSubnet = registerOutput<String>('fixedSubnet');
    this.flavor = registerOutput<String>('flavor');
    this.floatingIpEnabled = registerOutput<bool>('floatingIpEnabled');
    this.keypair = registerOutput<String>('keypair');
    this.kubeconfig = registerOutput<Map<String, String>>('kubeconfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.masterAddresses = registerOutput<List<String>>('masterAddresses');
    this.masterCount = registerOutput<int>('masterCount');
    this.masterFlavor = registerOutput<String>('masterFlavor');
    this.masterLbEnabled = registerOutput<bool>('masterLbEnabled');
    this.mergeLabels = registerOutput<bool?>('mergeLabels');
    this.name = registerOutput<String>('name');
    this.nodeAddresses = registerOutput<List<String>>('nodeAddresses');
    this.nodeCount = registerOutput<int?>('nodeCount');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.stackId = registerOutput<String>('stackId');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.userId = registerOutput<String>('userId');
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
          'openstack:containerinfra/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiAddress = registerOutput<String>('apiAddress');
    this.clusterTemplateId = registerOutput<String>('clusterTemplateId');
    this.coeVersion = registerOutput<String>('coeVersion');
    this.containerVersion = registerOutput<String>('containerVersion');
    this.createTimeout = registerOutput<int>('createTimeout');
    this.createdAt = registerOutput<String>('createdAt');
    this.discoveryUrl = registerOutput<String>('discoveryUrl');
    this.dockerVolumeSize = registerOutput<int>('dockerVolumeSize');
    this.fixedNetwork = registerOutput<String>('fixedNetwork');
    this.fixedSubnet = registerOutput<String>('fixedSubnet');
    this.flavor = registerOutput<String>('flavor');
    this.floatingIpEnabled = registerOutput<bool>('floatingIpEnabled');
    this.keypair = registerOutput<String>('keypair');
    this.kubeconfig = registerOutput<Map<String, String>>('kubeconfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.masterAddresses = registerOutput<List<String>>('masterAddresses');
    this.masterCount = registerOutput<int>('masterCount');
    this.masterFlavor = registerOutput<String>('masterFlavor');
    this.masterLbEnabled = registerOutput<bool>('masterLbEnabled');
    this.mergeLabels = registerOutput<bool?>('mergeLabels');
    this.name = registerOutput<String>('name');
    this.nodeAddresses = registerOutput<List<String>>('nodeAddresses');
    this.nodeCount = registerOutput<int?>('nodeCount');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.stackId = registerOutput<String>('stackId');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.userId = registerOutput<String>('userId');
  }
}

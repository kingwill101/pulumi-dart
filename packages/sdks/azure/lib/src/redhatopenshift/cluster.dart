import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_api_server_profile.dart';
import 'cluster_args.dart';
import 'cluster_cluster_profile.dart';
import 'cluster_ingress_profile.dart';
import 'cluster_main_profile.dart';
import 'cluster_network_profile.dart';
import 'cluster_service_principal.dart';
import 'cluster_state.dart';
import 'cluster_worker_profile.dart';

/// Manages a fully managed Azure Red Hat OpenShift Cluster (also known as ARO).
///
/// > **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
///
/// ## Import
///
/// Red Hat OpenShift Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:redhatopenshift/cluster:Cluster cluster1 /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/group1/providers/Microsoft.RedHatOpenShift/openShiftClusters/cluster1
/// ```
class Cluster extends pulumi.CustomResource {
  /// An `api_server_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ClusterApiServerProfile> apiServerProfile;
  /// A `cluster_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ClusterClusterProfile> clusterProfile;
  /// The Red Hat OpenShift cluster console URL.
  late final pulumi.Output<String> consoleUrl;
  /// An `ingress_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ClusterIngressProfile> ingressProfile;
  /// The location where the Azure Red Hat OpenShift Cluster should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `main_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ClusterMainProfile> mainProfile;
  /// The name of the Azure Red Hat OpenShift Cluster to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `network_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ClusterNetworkProfile> networkProfile;
  /// Specifies the Resource Group where the Azure Red Hat OpenShift Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `service_principal` block as defined below.
  late final pulumi.Output<ClusterServicePrincipal> servicePrincipal;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `worker_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ClusterWorkerProfile> workerProfile;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_redhatopenshift_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:redhatopenshift/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiServerProfile = registerOutput<ClusterApiServerProfile>('apiServerProfile');
    this.clusterProfile = registerOutput<ClusterClusterProfile>('clusterProfile');
    this.consoleUrl = registerOutput<String>('consoleUrl');
    this.ingressProfile = registerOutput<ClusterIngressProfile>('ingressProfile');
    this.location = registerOutput<String>('location');
    this.mainProfile = registerOutput<ClusterMainProfile>('mainProfile');
    this.name = registerOutput<String>('name');
    this.networkProfile = registerOutput<ClusterNetworkProfile>('networkProfile');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.servicePrincipal = registerOutput<ClusterServicePrincipal>('servicePrincipal');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.workerProfile = registerOutput<ClusterWorkerProfile>('workerProfile');
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
          'azure:redhatopenshift/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiServerProfile = registerOutput<ClusterApiServerProfile>('apiServerProfile');
    this.clusterProfile = registerOutput<ClusterClusterProfile>('clusterProfile');
    this.consoleUrl = registerOutput<String>('consoleUrl');
    this.ingressProfile = registerOutput<ClusterIngressProfile>('ingressProfile');
    this.location = registerOutput<String>('location');
    this.mainProfile = registerOutput<ClusterMainProfile>('mainProfile');
    this.name = registerOutput<String>('name');
    this.networkProfile = registerOutput<ClusterNetworkProfile>('networkProfile');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.servicePrincipal = registerOutput<ClusterServicePrincipal>('servicePrincipal');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.workerProfile = registerOutput<ClusterWorkerProfile>('workerProfile');
  }
}

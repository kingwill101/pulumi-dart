import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_cluster_args.dart';
import 'hci_cluster_identity.dart';
import 'hci_cluster_state.dart';

/// Manages an Azure Stack HCI Cluster.
///
/// ## Import
///
/// Azure Stack HCI Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciCluster:HciCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AzureStackHCI/clusters/cluster1
/// ```
class HciCluster extends pulumi.CustomResource {
  /// The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster.
  late final pulumi.Output<String?> automanageConfigurationId;

  /// The Client ID of the Azure Active Directory Application which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> clientId;

  /// An immutable UUID for the Azure Stack HCI Cluster.
  late final pulumi.Output<String> cloudId;

  /// An `identity` block as defined below.
  late final pulumi.Output<HciClusterIdentity?> identity;

  /// The Azure Region where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Azure Stack HCI Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The object ID of the Resource Provider Service Principal.
  late final pulumi.Output<String> resourceProviderObjectId;

  /// The region specific Data Path Endpoint of the Azure Stack HCI Cluster.
  late final pulumi.Output<String> serviceEndpoint;

  /// A mapping of tags which should be assigned to the Azure Stack HCI Cluster.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If unspecified the Tenant ID of the Provider will be used.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [HciCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciCluster]. {@macro pulumi_stack_hci_cluster_hci_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciCluster(
    String name, {
    HciClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:stack/hciCluster:HciCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automanageConfigurationId = registerOutput<String?>(
      'automanageConfigurationId',
    );
    clientId = registerOutput<String?>('clientId');
    cloudId = registerOutput<String>('cloudId');
    identity = registerOutput<HciClusterIdentity?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceProviderObjectId = registerOutput<String>(
      'resourceProviderObjectId',
    );
    serviceEndpoint = registerOutput<String>('serviceEndpoint');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [HciCluster] resource's state with the given [name] and [id].
  static HciCluster get(
    String name,
    pulumi.Input<String> id, {
    HciClusterState? state,
  }) {
    return HciCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HciCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:stack/hciCluster:HciCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automanageConfigurationId = registerOutput<String?>(
      'automanageConfigurationId',
    );
    clientId = registerOutput<String?>('clientId');
    cloudId = registerOutput<String>('cloudId');
    identity = registerOutput<HciClusterIdentity?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceProviderObjectId = registerOutput<String>(
      'resourceProviderObjectId',
    );
    serviceEndpoint = registerOutput<String>('serviceEndpoint');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
  }
}

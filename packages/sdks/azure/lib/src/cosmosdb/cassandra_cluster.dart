import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_cluster_args.dart';
import 'cassandra_cluster_identity.dart';
import 'cassandra_cluster_state.dart';

/// Manages a Cassandra Cluster.
///
/// > **Note:** In order for the `Azure Managed Instances for Apache Cassandra` to work properly the product requires the `Azure Cosmos DB` Application ID to be present and working in your tenant. If the `Azure Cosmos DB` Application ID is missing in your environment you will need to have an administrator of your tenant run the following command to add the `Azure Cosmos DB` Application ID to your tenant:
///
/// ```powershell
/// New-AzADServicePrincipal -ApplicationId a232010e-820c-4083-83bb-3ace5fc29d0b
/// ```
///
/// ## Import
///
/// Cassandra Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/cassandraCluster:CassandraCluster example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.DocumentDB/cassandraClusters/cluster1
/// ```
class CassandraCluster extends pulumi.CustomResource {
  /// The authentication method that is used to authenticate clients. Possible values are `None` and `Cassandra`. Defaults to `Cassandra`.
  late final pulumi.Output<String?> authenticationMethod;
  /// A list of TLS certificates that is used to authorize client connecting to the Cassandra Cluster.
  late final pulumi.Output<List<String>?> clientCertificatePems;
  /// The initial admin password for this Cassandra Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> defaultAdminPassword;
  /// The ID of the delegated management subnet for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
  late final pulumi.Output<String> delegatedManagementSubnetId;
  /// A list of TLS certificates that is used to authorize gossip from unmanaged Cassandra Data Center.
  late final pulumi.Output<List<String>?> externalGossipCertificatePems;
  /// A list of IP Addresses of the seed nodes in unmanaged the Cassandra Data Center which will be added to the seed node lists of all managed nodes.
  late final pulumi.Output<List<String>?> externalSeedNodeIpAddresses;
  /// The number of hours to wait between taking a backup of the Cassandra Cluster. Defaults to `24`.
  ///
  /// > **Note:** To disable this feature, set this property to `0`.
  late final pulumi.Output<int?> hoursBetweenBackups;
  /// An `identity` block as defined below.
  late final pulumi.Output<CassandraClusterIdentity?> identity;
  /// The Azure Region where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Cassandra Cluster. Changing this forces a new Cassandra Cluster to be created.
  late final pulumi.Output<String> name;
  /// Is the automatic repair enabled on the Cassandra Cluster? Defaults to `true`.
  late final pulumi.Output<bool?> repairEnabled;
  /// The name of the Resource Group where the Cassandra Cluster should exist. Changing this forces a new Cassandra Cluster to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The version of Cassandra what the Cluster converges to run. Possible values are `3.11`, `4.0`, `4.1` and `5.0`. Defaults to `3.11`. Changing this forces a new Cassandra Cluster to be created.
  late final pulumi.Output<String?> version;

  /// Creates a new [CassandraCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraCluster]. {@macro pulumi_cosmosdb_cassandra_cluster_cassandra_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraCluster(
    String name, {
    CassandraClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/cassandraCluster:CassandraCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMethod = registerOutput<String?>('authenticationMethod');
    this.clientCertificatePems = registerOutput<List<String>?>('clientCertificatePems');
    this.defaultAdminPassword = registerOutput<String>('defaultAdminPassword');
    this.delegatedManagementSubnetId = registerOutput<String>('delegatedManagementSubnetId');
    this.externalGossipCertificatePems = registerOutput<List<String>?>('externalGossipCertificatePems');
    this.externalSeedNodeIpAddresses = registerOutput<List<String>?>('externalSeedNodeIpAddresses');
    this.hoursBetweenBackups = registerOutput<int?>('hoursBetweenBackups');
    this.identity = registerOutput<CassandraClusterIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.repairEnabled = registerOutput<bool?>('repairEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.version = registerOutput<String?>('version');
  }

  /// Gets an existing [CassandraCluster] resource's state with the given [name] and [id].
  static CassandraCluster get(
    String name,
    pulumi.Input<String> id, {
    CassandraClusterState? state,
  }) {
    return CassandraCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CassandraCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cosmosdb/cassandraCluster:CassandraCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMethod = registerOutput<String?>('authenticationMethod');
    this.clientCertificatePems = registerOutput<List<String>?>('clientCertificatePems');
    this.defaultAdminPassword = registerOutput<String>('defaultAdminPassword');
    this.delegatedManagementSubnetId = registerOutput<String>('delegatedManagementSubnetId');
    this.externalGossipCertificatePems = registerOutput<List<String>?>('externalGossipCertificatePems');
    this.externalSeedNodeIpAddresses = registerOutput<List<String>?>('externalSeedNodeIpAddresses');
    this.hoursBetweenBackups = registerOutput<int?>('hoursBetweenBackups');
    this.identity = registerOutput<CassandraClusterIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.repairEnabled = registerOutput<bool?>('repairEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.version = registerOutput<String?>('version');
  }
}

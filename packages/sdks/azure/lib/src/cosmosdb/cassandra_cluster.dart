import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_cluster_args.dart';
import 'cassandra_cluster_identity.dart';
import 'cassandra_cluster_state.dart';

/// Manages a Cassandra Cluster.
///
/// &gt; **Note:** In order for the `Azure Managed Instances for Apache Cassandra` to work properly the product requires the `Azure Cosmos DB` Application ID to be present and working in your tenant. If the `Azure Cosmos DB` Application ID is missing in your environment you will need to have an administrator of your tenant run the following command to add the `Azure Cosmos DB` Application ID to your tenant:
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
  /// &gt; **Note:** To disable this feature, set this property to `0`.
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
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['defaultAdminPassword'],
        ) {
    authenticationMethod = registerOutput<String?>('authenticationMethod');
    clientCertificatePems = registerOutput<List<String>?>('clientCertificatePems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    defaultAdminPassword = registerOutput<String>('defaultAdminPassword', isSecret: true);
    delegatedManagementSubnetId = registerOutput<String>('delegatedManagementSubnetId');
    externalGossipCertificatePems = registerOutput<List<String>?>('externalGossipCertificatePems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    externalSeedNodeIpAddresses = registerOutput<List<String>?>('externalSeedNodeIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hoursBetweenBackups = registerOutput<int?>('hoursBetweenBackups');
    identity = registerOutput<CassandraClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    repairEnabled = registerOutput<bool?>('repairEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [CassandraCluster] resource's state with the given [name] and [id].
  static CassandraCluster get(
    String name,
    pulumi.Input<String> id, {
    CassandraClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CassandraCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    authenticationMethod = registerOutput<String?>('authenticationMethod');
    clientCertificatePems = registerOutput<List<String>?>('clientCertificatePems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    defaultAdminPassword = registerOutput<String>('defaultAdminPassword', isSecret: true);
    delegatedManagementSubnetId = registerOutput<String>('delegatedManagementSubnetId');
    externalGossipCertificatePems = registerOutput<List<String>?>('externalGossipCertificatePems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    externalSeedNodeIpAddresses = registerOutput<List<String>?>('externalSeedNodeIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hoursBetweenBackups = registerOutput<int?>('hoursBetweenBackups');
    identity = registerOutput<CassandraClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    repairEnabled = registerOutput<bool?>('repairEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String?>('version');
  }

  /// Creates a typed reference to an existing [CassandraCluster] resource.
  CassandraCluster.reference(String urn)
    : super(
        'azure:cosmosdb/cassandraCluster:CassandraCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['defaultAdminPassword'],
        isResourceReference: true,
      ) {
    authenticationMethod = registerOutput<String?>('authenticationMethod');
    clientCertificatePems = registerOutput<List<String>?>('clientCertificatePems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    defaultAdminPassword = registerOutput<String>('defaultAdminPassword', isSecret: true);
    delegatedManagementSubnetId = registerOutput<String>('delegatedManagementSubnetId');
    externalGossipCertificatePems = registerOutput<List<String>?>('externalGossipCertificatePems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    externalSeedNodeIpAddresses = registerOutput<List<String>?>('externalSeedNodeIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hoursBetweenBackups = registerOutput<int?>('hoursBetweenBackups');
    identity = registerOutput<CassandraClusterIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    repairEnabled = registerOutput<bool?>('repairEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    version = registerOutput<String?>('version');
  }
}

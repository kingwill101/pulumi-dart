import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_datacenter_args.dart';
import 'cassandra_datacenter_state.dart';

/// Manages a Cassandra Datacenter.
///
/// &gt; **Note:** In order for the `Azure Managed Instances for Apache Cassandra` to work properly the product requires the `Azure Cosmos DB` Application ID to be present and working in your tenant. If the `Azure Cosmos DB` Application ID is missing in your environment you will need to have an administrator of your tenant run the following command to add the `Azure Cosmos DB` Application ID to your tenant:
///
/// ```powershell
/// New-AzADServicePrincipal -ApplicationId a232010e-820c-4083-83bb-3ace5fc29d0b
/// ```
///
/// ## Import
///
/// Cassandra Datacenters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cosmosdb/cassandraDatacenter:CassandraDatacenter example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.DocumentDB/cassandraClusters/cluster1/dataCenters/dc1
/// ```
class CassandraDatacenter extends pulumi.CustomResource {
  /// Determines whether availability zones are enabled. Defaults to `true`.
  late final pulumi.Output<bool?> availabilityZonesEnabled;

  /// The key URI of the customer key to use for the encryption of the backup Storage Account.
  late final pulumi.Output<String?> backupStorageCustomerKeyUri;

  /// The fragment of the cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this Cassandra Datacenter. The fragment should be Base64 encoded and only a subset of keys is allowed.
  late final pulumi.Output<String?> base64EncodedYamlFragment;

  /// The ID of the Cassandra Cluster. Changing this forces a new Cassandra Datacenter to be created.
  late final pulumi.Output<String> cassandraClusterId;

  /// The ID of the delegated management subnet for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  late final pulumi.Output<String> delegatedManagementSubnetId;

  /// Determines the number of p30 disks that are attached to each node.
  late final pulumi.Output<int?> diskCount;

  /// The Disk SKU that is used for this Cassandra Datacenter. Defaults to `P30`.
  late final pulumi.Output<String?> diskSku;

  /// The Azure Region where the Cassandra Datacenter should exist. Changing this forces a new Cassandra Datacenter to be created.
  late final pulumi.Output<String> location;

  /// The key URI of the customer key to use for the encryption of the Managed Disk.
  late final pulumi.Output<String?> managedDiskCustomerKeyUri;

  /// The name which should be used for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  late final pulumi.Output<String> name;

  /// The number of nodes the Cassandra Datacenter should have. The number should be equal or greater than `3`. Defaults to `3`.
  late final pulumi.Output<int?> nodeCount;

  /// A list of IP Address for the seed nodes in this Cassandra Datacenter.
  late final pulumi.Output<List<String>> seedNodeIpAddresses;

  /// Determines the selected sku. Defaults to `Standard_E16s_v5`.
  ///
  /// &gt; **Note:** In v4.0 of the provider the `sku_name` will have a default value of `Standard_E16s_v5`.
  late final pulumi.Output<String?> skuName;

  /// Creates a new [CassandraDatacenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraDatacenter]. {@macro pulumi_cosmosdb_cassandra_datacenter_cassandra_datacenter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraDatacenter(
    String name, {
    CassandraDatacenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cosmosdb/cassandraDatacenter:CassandraDatacenter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availabilityZonesEnabled = registerOutput<bool?>(
      'availabilityZonesEnabled',
    );
    backupStorageCustomerKeyUri = registerOutput<String?>(
      'backupStorageCustomerKeyUri',
    );
    base64EncodedYamlFragment = registerOutput<String?>(
      'base64EncodedYamlFragment',
    );
    cassandraClusterId = registerOutput<String>('cassandraClusterId');
    delegatedManagementSubnetId = registerOutput<String>(
      'delegatedManagementSubnetId',
    );
    diskCount = registerOutput<int?>('diskCount');
    diskSku = registerOutput<String?>('diskSku');
    location = registerOutput<String>('location');
    managedDiskCustomerKeyUri = registerOutput<String?>(
      'managedDiskCustomerKeyUri',
    );
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int?>('nodeCount');
    seedNodeIpAddresses = registerOutput<List<String>>('seedNodeIpAddresses');
    skuName = registerOutput<String?>('skuName');
  }

  /// Gets an existing [CassandraDatacenter] resource's state with the given [name] and [id].
  static CassandraDatacenter get(
    String name,
    pulumi.Input<String> id, {
    CassandraDatacenterState? state,
  }) {
    return CassandraDatacenter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CassandraDatacenter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:cosmosdb/cassandraDatacenter:CassandraDatacenter',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availabilityZonesEnabled = registerOutput<bool?>(
      'availabilityZonesEnabled',
    );
    backupStorageCustomerKeyUri = registerOutput<String?>(
      'backupStorageCustomerKeyUri',
    );
    base64EncodedYamlFragment = registerOutput<String?>(
      'base64EncodedYamlFragment',
    );
    cassandraClusterId = registerOutput<String>('cassandraClusterId');
    delegatedManagementSubnetId = registerOutput<String>(
      'delegatedManagementSubnetId',
    );
    diskCount = registerOutput<int?>('diskCount');
    diskSku = registerOutput<String?>('diskSku');
    location = registerOutput<String>('location');
    managedDiskCustomerKeyUri = registerOutput<String?>(
      'managedDiskCustomerKeyUri',
    );
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int?>('nodeCount');
    seedNodeIpAddresses = registerOutput<List<String>>('seedNodeIpAddresses');
    skuName = registerOutput<String?>('skuName');
  }
}

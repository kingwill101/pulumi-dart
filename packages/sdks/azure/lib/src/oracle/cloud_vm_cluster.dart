import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_args.dart';
import 'cloud_vm_cluster_data_collection_options.dart';
import 'cloud_vm_cluster_state.dart';

/// Manages a Cloud VM Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleExadataInfrastructure = new azure.oracle.ExadataInfrastructure("example", {
///     name: "example-exadata-infrastructure",
///     displayName: "example-exadata-infrastructure",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     shape: "Exadata.X9M",
///     storageCount: 3,
///     computeCount: 2,
///     zones: ["3"],
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-virtual-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///             name: "Oracle.Database/networkAttachments",
///         },
///     }],
/// });
/// const example = azure.oracle.getDbServersOutput({
///     resourceGroupName: exampleResourceGroup.name,
///     cloudExadataInfrastructureName: exampleExadataInfrastructure.name,
/// });
/// const exampleCloudVmCluster = new azure.oracle.CloudVmCluster("example", {
///     name: "example-cloud-vm-cluster",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     giVersion: "23.0.0.0",
///     virtualNetworkId: exampleVirtualNetwork.id,
///     licenseModel: "BringYourOwnLicense",
///     dbServers: example.apply(example => .map(obj => (obj.ocid))),
///     sshPublicKeys: [std.file({
///         input: "~/.ssh/id_rsa.pub",
///     }).then(invoke => invoke.result)],
///     displayName: "example-cloud-vm-cluster",
///     cloudExadataInfrastructureId: exampleExadataInfrastructure.id,
///     cpuCoreCount: 2,
///     hostname: "hostname",
///     subnetId: exampleSubnet.id,
///     systemVersion: "23.1.19.0.0.241015",
///     fileSystemConfigurations: [{
///         mountPoint: "/var",
///         sizeInGb: 32,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_exadata_infrastructure = azure.oracle.ExadataInfrastructure("example",
///     name="example-exadata-infrastructure",
///     display_name="example-exadata-infrastructure",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     shape="Exadata.X9M",
///     storage_count=3,
///     compute_count=2,
///     zones=["3"])
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-virtual-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///             "name": "Oracle.Database/networkAttachments",
///         },
///     }])
/// example = azure.oracle.get_db_servers_output(resource_group_name=example_resource_group.name,
///     cloud_exadata_infrastructure_name=example_exadata_infrastructure.name)
/// example_cloud_vm_cluster = azure.oracle.CloudVmCluster("example",
///     name="example-cloud-vm-cluster",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     gi_version="23.0.0.0",
///     virtual_network_id=example_virtual_network.id,
///     license_model="BringYourOwnLicense",
///     db_servers=example.apply(lambda example: [obj.ocid for obj in example.db_servers]),
///     ssh_public_keys=[std.file(input="~/.ssh/id_rsa.pub").result],
///     display_name="example-cloud-vm-cluster",
///     cloud_exadata_infrastructure_id=example_exadata_infrastructure.id,
///     cpu_core_count=2,
///     hostname="hostname",
///     subnet_id=example_subnet.id,
///     system_version="23.1.19.0.0.241015",
///     file_system_configurations=[{
///         "mount_point": "/var",
///         "size_in_gb": 32,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleExadataInfrastructure = new Azure.Oracle.ExadataInfrastructure("example", new()
///     {
///         Name = "example-exadata-infrastructure",
///         DisplayName = "example-exadata-infrastructure",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Shape = "Exadata.X9M",
///         StorageCount = 3,
///         ComputeCount = 2,
///         Zones = new[]
///         {
///             "3",
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-virtual-network",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                     Name = "Oracle.Database/networkAttachments",
///                 },
///             },
///         },
///     });
///
///     var example = Azure.Oracle.GetDbServers.Invoke(new()
///     {
///         ResourceGroupName = exampleResourceGroup.Name,
///         CloudExadataInfrastructureName = exampleExadataInfrastructure.Name,
///     });
///
///     var exampleCloudVmCluster = new Azure.Oracle.CloudVmCluster("example", new()
///     {
///         Name = "example-cloud-vm-cluster",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         GiVersion = "23.0.0.0",
///         VirtualNetworkId = exampleVirtualNetwork.Id,
///         LicenseModel = "BringYourOwnLicense",
///         DbServers = .Select(obj =>
///         {
///             return obj.Ocid;
///         }).ToList(),
///         SshPublicKeys = new[]
///         {
///             Std.File.Invoke(new()
///             {
///                 Input = "~/.ssh/id_rsa.pub",
///             }).Apply(invoke => invoke.Result),
///         },
///         DisplayName = "example-cloud-vm-cluster",
///         CloudExadataInfrastructureId = exampleExadataInfrastructure.Id,
///         CpuCoreCount = 2,
///         Hostname = "hostname",
///         SubnetId = exampleSubnet.Id,
///         SystemVersion = "23.1.19.0.0.241015",
///         FileSystemConfigurations = new[]
///         {
///             new Azure.Oracle.Inputs.CloudVmClusterFileSystemConfigurationArgs
///             {
///                 MountPoint = "/var",
///                 SizeInGb = 32,
///             },
///         },
///     });
///
/// });
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
///
/// ## Import
///
/// Cloud VM Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:oracle/cloudVmCluster:CloudVmCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup/providers/Oracle.Database/cloudVmClusters/cloudVmClusters1
/// ```
class CloudVmCluster extends pulumi.CustomResource {
  /// The backup subnet CIDR of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String?> backupSubnetCidr;

  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata infrastructure. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> cloudExadataInfrastructureId;

  /// The cluster name for Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> clusterName;

  /// The number of CPU cores enabled on the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<int> cpuCoreCount;

  /// A `data_collection_options` block as defined below. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<CloudVmClusterDataCollectionOptions>
  dataCollectionOptions;

  /// The percentage assigned to DATA storage (user data and database files). Changing this forces a new Cloud VM Cluster to be created. The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are `35`, `40`, `60` and `80`.
  late final pulumi.Output<int> dataStoragePercentage;

  /// The data disk group size to be allocated in TBs. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<double> dataStorageSizeInTbs;

  /// The local node storage to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<int> dbNodeStorageSizeInGbs;

  /// The list of DB servers. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<List<String>> dbServers;

  /// The user-friendly name for the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created. The name does not need to be unique.
  late final pulumi.Output<String> displayName;

  /// The name of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> domain;

  /// A `file_system_configuration` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  fileSystemConfigurations;

  /// A valid Oracle Grid Infrastructure (GI) software version. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> giVersion;

  /// The hostname for the Cloud VM Cluster without suffix. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> hostname;

  /// The hostname for the Cloud VM Cluster with suffix.
  late final pulumi.Output<String> hostnameActual;

  /// The Oracle license model that applies to the Cloud VM Cluster, either `BringYourOwnLicense` or `LicenseIncluded`. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> licenseModel;

  /// If true, database backup on local Exadata storage is configured for the Cloud VM Cluster. If `false`, database backup on local Exadata storage is not available in the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<bool> localBackupEnabled;

  /// The Azure Region where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> location;

  /// The memory to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<int> memorySizeInGbs;

  /// The name which should be used for this Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> name;

  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Cloud VM Cluster.
  late final pulumi.Output<String> ocid;

  /// The name of the Resource Group where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The TCP Single Client Access Name (SCAN) port. The default port to 1521. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<int?> scanListenerPortTcp;

  /// The TCPS Single Client Access Name (SCAN) port. The default port to 2484. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<int?> scanListenerPortTcpSsl;

  /// If true, the sparse disk group is configured for the Cloud VM Cluster. If `false`, the sparse disk group is not created. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<bool> sparseDiskgroupEnabled;

  /// The public key portion of one or more key pairs used for SSH access to the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<List<String>> sshPublicKeys;

  /// The ID of the subnet associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> subnetId;

  /// Operating system version of the Exadata image. System version must be &lt;= Db server major version (the first two parts of the DB server version eg 23.1.X.X.XXXX). Accepted Values for Grid Infrastructure (GI) version 19.0.0.0 are 22.1.30.0.0.241204, 22.1.32.0.0.250205, 22.1.31.0.0.250110, 23.1.20.0.0.241112, 23.1.21.0.0.241204, 23.1.22.0.0.250119, 23.1.23.0.0.250207. For Grid Infrastructure (GI) version 23.0.0.0 allowed system versions are 23.1.19.0.0.241015, 23.1.20.0.0.241112, 23.1.22.0.0.250119, 23.1.21.0.0.241204, 23.1.23.0.0.250207. Changing this forces a new resource to be created.
  late final pulumi.Output<String> systemVersion;

  /// A mapping of tags which should be assigned to the Cloud VM Cluster.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The time zone of the Cloud VM Cluster. For details, see [Exadata Infrastructure Time Zones](https://docs.cloud.oracle.com/iaas/Content/Database/References/timezones.htm). Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> timeZone;

  /// The ID of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> virtualNetworkId;

  /// The OCID of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CloudVmCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudVmCluster]. {@macro pulumi_oracle_cloud_vm_cluster_cloud_vm_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudVmCluster(
    String name, {
    CloudVmClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:oracle/cloudVmCluster:CloudVmCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupSubnetCidr = registerOutput<String?>('backupSubnetCidr');
    cloudExadataInfrastructureId = registerOutput<String>(
      'cloudExadataInfrastructureId',
    );
    clusterName = registerOutput<String>('clusterName');
    cpuCoreCount = registerOutput<int>('cpuCoreCount');
    dataCollectionOptions = registerOutput<CloudVmClusterDataCollectionOptions>(
      'dataCollectionOptions',
    );
    dataStoragePercentage = registerOutput<int>('dataStoragePercentage');
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    dbNodeStorageSizeInGbs = registerOutput<int>('dbNodeStorageSizeInGbs');
    dbServers = registerOutput<List<String>>('dbServers');
    displayName = registerOutput<String>('displayName');
    domain = registerOutput<String>('domain');
    fileSystemConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'fileSystemConfigurations',
    );
    giVersion = registerOutput<String>('giVersion');
    hostname = registerOutput<String>('hostname');
    hostnameActual = registerOutput<String>('hostnameActual');
    licenseModel = registerOutput<String>('licenseModel');
    localBackupEnabled = registerOutput<bool>('localBackupEnabled');
    location = registerOutput<String>('location');
    memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    this.name = registerOutput<String>('name');
    ocid = registerOutput<String>('ocid');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scanListenerPortTcp = registerOutput<int?>('scanListenerPortTcp');
    scanListenerPortTcpSsl = registerOutput<int?>('scanListenerPortTcpSsl');
    sparseDiskgroupEnabled = registerOutput<bool>('sparseDiskgroupEnabled');
    sshPublicKeys = registerOutput<List<String>>('sshPublicKeys');
    subnetId = registerOutput<String>('subnetId');
    systemVersion = registerOutput<String>('systemVersion');
    tags = registerOutput<Map<String, String>?>('tags');
    timeZone = registerOutput<String>('timeZone');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CloudVmCluster] resource's state with the given [name] and [id].
  static CloudVmCluster get(
    String name,
    pulumi.Input<String> id, {
    CloudVmClusterState? state,
  }) {
    return CloudVmCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CloudVmCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:oracle/cloudVmCluster:CloudVmCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupSubnetCidr = registerOutput<String?>('backupSubnetCidr');
    cloudExadataInfrastructureId = registerOutput<String>(
      'cloudExadataInfrastructureId',
    );
    clusterName = registerOutput<String>('clusterName');
    cpuCoreCount = registerOutput<int>('cpuCoreCount');
    dataCollectionOptions = registerOutput<CloudVmClusterDataCollectionOptions>(
      'dataCollectionOptions',
    );
    dataStoragePercentage = registerOutput<int>('dataStoragePercentage');
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    dbNodeStorageSizeInGbs = registerOutput<int>('dbNodeStorageSizeInGbs');
    dbServers = registerOutput<List<String>>('dbServers');
    displayName = registerOutput<String>('displayName');
    domain = registerOutput<String>('domain');
    fileSystemConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'fileSystemConfigurations',
    );
    giVersion = registerOutput<String>('giVersion');
    hostname = registerOutput<String>('hostname');
    hostnameActual = registerOutput<String>('hostnameActual');
    licenseModel = registerOutput<String>('licenseModel');
    localBackupEnabled = registerOutput<bool>('localBackupEnabled');
    location = registerOutput<String>('location');
    memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    this.name = registerOutput<String>('name');
    ocid = registerOutput<String>('ocid');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scanListenerPortTcp = registerOutput<int?>('scanListenerPortTcp');
    scanListenerPortTcpSsl = registerOutput<int?>('scanListenerPortTcpSsl');
    sparseDiskgroupEnabled = registerOutput<bool>('sparseDiskgroupEnabled');
    sshPublicKeys = registerOutput<List<String>>('sshPublicKeys');
    subnetId = registerOutput<String>('subnetId');
    systemVersion = registerOutput<String>('systemVersion');
    tags = registerOutput<Map<String, String>?>('tags');
    timeZone = registerOutput<String>('timeZone');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
    zoneId = registerOutput<String>('zoneId');
  }
}

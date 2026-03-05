import 'package:pulumi/pulumi.dart' as pulumi;
import 'hbase_cluster_args.dart';
import 'hbase_cluster_component_version.dart';
import 'hbase_cluster_compute_isolation.dart';
import 'hbase_cluster_extension.dart';
import 'hbase_cluster_gateway.dart';
import 'hbase_cluster_metastores.dart';
import 'hbase_cluster_monitor.dart';
import 'hbase_cluster_network.dart';
import 'hbase_cluster_private_link_configuration.dart';
import 'hbase_cluster_roles.dart';
import 'hbase_cluster_security_profile.dart';
import 'hbase_cluster_state.dart';
import 'hbase_cluster_storage_account_gen2.dart';

/// Manages a HDInsight HBase Cluster.
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
///     name: "hdinsightstor",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "hdinsight",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleHBaseCluster = new azure.hdinsight.HBaseCluster("example", {
///     name: "example-hdicluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterVersion: "3.6",
///     tier: "Standard",
///     componentVersion: {
///         hbase: "1.1",
///     },
///     gateway: {
///         username: "acctestusrgw",
///         password: "Password123!",
///     },
///     storageAccounts: [{
///         storageContainerId: exampleContainer.id,
///         storageAccountKey: exampleAccount.primaryAccessKey,
///         isDefault: true,
///     }],
///     roles: {
///         headNode: {
///             vmSize: "Standard_D3_V2",
///             username: "acctestusrvm",
///             password: "AccTestvdSC4daf986!",
///         },
///         workerNode: {
///             vmSize: "Standard_D3_V2",
///             username: "acctestusrvm",
///             password: "AccTestvdSC4daf986!",
///             targetInstanceCount: 3,
///         },
///         zookeeperNode: {
///             vmSize: "Standard_D3_V2",
///             username: "acctestusrvm",
///             password: "AccTestvdSC4daf986!",
///         },
///     },
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
///     name="hdinsightstor",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="hdinsight",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_h_base_cluster = azure.hdinsight.HBaseCluster("example",
///     name="example-hdicluster",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_version="3.6",
///     tier="Standard",
///     component_version={
///         "hbase": "1.1",
///     },
///     gateway={
///         "username": "acctestusrgw",
///         "password": "Password123!",
///     },
///     storage_accounts=[{
///         "storage_container_id": example_container.id,
///         "storage_account_key": example_account.primary_access_key,
///         "is_default": True,
///     }],
///     roles={
///         "head_node": {
///             "vm_size": "Standard_D3_V2",
///             "username": "acctestusrvm",
///             "password": "AccTestvdSC4daf986!",
///         },
///         "worker_node": {
///             "vm_size": "Standard_D3_V2",
///             "username": "acctestusrvm",
///             "password": "AccTestvdSC4daf986!",
///             "target_instance_count": 3,
///         },
///         "zookeeper_node": {
///             "vm_size": "Standard_D3_V2",
///             "username": "acctestusrvm",
///             "password": "AccTestvdSC4daf986!",
///         },
///     })
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
///         Name = "hdinsightstor",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "hdinsight",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleHBaseCluster = new Azure.HDInsight.HBaseCluster("example", new()
///     {
///         Name = "example-hdicluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterVersion = "3.6",
///         Tier = "Standard",
///         ComponentVersion = new Azure.HDInsight.Inputs.HBaseClusterComponentVersionArgs
///         {
///             Hbase = "1.1",
///         },
///         Gateway = new Azure.HDInsight.Inputs.HBaseClusterGatewayArgs
///         {
///             Username = "acctestusrgw",
///             Password = "Password123!",
///         },
///         StorageAccounts = new[]
///         {
///             new Azure.HDInsight.Inputs.HBaseClusterStorageAccountArgs
///             {
///                 StorageContainerId = exampleContainer.Id,
///                 StorageAccountKey = exampleAccount.PrimaryAccessKey,
///                 IsDefault = true,
///             },
///         },
///         Roles = new Azure.HDInsight.Inputs.HBaseClusterRolesArgs
///         {
///             HeadNode = new Azure.HDInsight.Inputs.HBaseClusterRolesHeadNodeArgs
///             {
///                 VmSize = "Standard_D3_V2",
///                 Username = "acctestusrvm",
///                 Password = "AccTestvdSC4daf986!",
///             },
///             WorkerNode = new Azure.HDInsight.Inputs.HBaseClusterRolesWorkerNodeArgs
///             {
///                 VmSize = "Standard_D3_V2",
///                 Username = "acctestusrvm",
///                 Password = "AccTestvdSC4daf986!",
///                 TargetInstanceCount = 3,
///             },
///             ZookeeperNode = new Azure.HDInsight.Inputs.HBaseClusterRolesZookeeperNodeArgs
///             {
///                 VmSize = "Standard_D3_V2",
///                 Username = "acctestusrvm",
///                 Password = "AccTestvdSC4daf986!",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/hdinsight"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 			Name:                   pulumi.String("hdinsightstor"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("hdinsight"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hdinsight.NewHBaseCluster(ctx, "example", &hdinsight.HBaseClusterArgs{
/// 			Name:              pulumi.String("example-hdicluster"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterVersion:    pulumi.String("3.6"),
/// 			Tier:              pulumi.String("Standard"),
/// 			ComponentVersion: &hdinsight.HBaseClusterComponentVersionArgs{
/// 				Hbase: pulumi.String("1.1"),
/// 			},
/// 			Gateway: &hdinsight.HBaseClusterGatewayArgs{
/// 				Username: pulumi.String("acctestusrgw"),
/// 				Password: pulumi.String("Password123!"),
/// 			},
/// 			StorageAccounts: hdinsight.HBaseClusterStorageAccountArray{
/// 				&hdinsight.HBaseClusterStorageAccountArgs{
/// 					StorageContainerId: exampleContainer.ID(),
/// 					StorageAccountKey:  exampleAccount.PrimaryAccessKey,
/// 					IsDefault:          pulumi.Bool(true),
/// 				},
/// 			},
/// 			Roles: &hdinsight.HBaseClusterRolesArgs{
/// 				HeadNode: &hdinsight.HBaseClusterRolesHeadNodeArgs{
/// 					VmSize:   pulumi.String("Standard_D3_V2"),
/// 					Username: pulumi.String("acctestusrvm"),
/// 					Password: pulumi.String("AccTestvdSC4daf986!"),
/// 				},
/// 				WorkerNode: &hdinsight.HBaseClusterRolesWorkerNodeArgs{
/// 					VmSize:              pulumi.String("Standard_D3_V2"),
/// 					Username:            pulumi.String("acctestusrvm"),
/// 					Password:            pulumi.String("AccTestvdSC4daf986!"),
/// 					TargetInstanceCount: pulumi.Int(3),
/// 				},
/// 				ZookeeperNode: &hdinsight.HBaseClusterRolesZookeeperNodeArgs{
/// 					VmSize:   pulumi.String("Standard_D3_V2"),
/// 					Username: pulumi.String("acctestusrvm"),
/// 					Password: pulumi.String("AccTestvdSC4daf986!"),
/// 				},
/// 			},
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
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.hdinsight.HBaseCluster;
/// import com.pulumi.azure.hdinsight.HBaseClusterArgs;
/// import com.pulumi.azure.hdinsight.inputs.HBaseClusterComponentVersionArgs;
/// import com.pulumi.azure.hdinsight.inputs.HBaseClusterGatewayArgs;
/// import com.pulumi.azure.hdinsight.inputs.HBaseClusterStorageAccountArgs;
/// import com.pulumi.azure.hdinsight.inputs.HBaseClusterRolesArgs;
/// import com.pulumi.azure.hdinsight.inputs.HBaseClusterRolesHeadNodeArgs;
/// import com.pulumi.azure.hdinsight.inputs.HBaseClusterRolesWorkerNodeArgs;
/// import com.pulumi.azure.hdinsight.inputs.HBaseClusterRolesZookeeperNodeArgs;
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
///             .name("hdinsightstor")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("hdinsight")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleHBaseCluster = new HBaseCluster("exampleHBaseCluster", HBaseClusterArgs.builder()
///             .name("example-hdicluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterVersion("3.6")
///             .tier("Standard")
///             .componentVersion(HBaseClusterComponentVersionArgs.builder()
///                 .hbase("1.1")
///                 .build())
///             .gateway(HBaseClusterGatewayArgs.builder()
///                 .username("acctestusrgw")
///                 .password("Password123!")
///                 .build())
///             .storageAccounts(HBaseClusterStorageAccountArgs.builder()
///                 .storageContainerId(exampleContainer.id())
///                 .storageAccountKey(exampleAccount.primaryAccessKey())
///                 .isDefault(true)
///                 .build())
///             .roles(HBaseClusterRolesArgs.builder()
///                 .headNode(HBaseClusterRolesHeadNodeArgs.builder()
///                     .vmSize("Standard_D3_V2")
///                     .username("acctestusrvm")
///                     .password("AccTestvdSC4daf986!")
///                     .build())
///                 .workerNode(HBaseClusterRolesWorkerNodeArgs.builder()
///                     .vmSize("Standard_D3_V2")
///                     .username("acctestusrvm")
///                     .password("AccTestvdSC4daf986!")
///                     .targetInstanceCount(3)
///                     .build())
///                 .zookeeperNode(HBaseClusterRolesZookeeperNodeArgs.builder()
///                     .vmSize("Standard_D3_V2")
///                     .username("acctestusrvm")
///                     .password("AccTestvdSC4daf986!")
///                     .build())
///                 .build())
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
///       name: hdinsightstor
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: hdinsight
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleHBaseCluster:
///     type: azure:hdinsight:HBaseCluster
///     name: example
///     properties:
///       name: example-hdicluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterVersion: '3.6'
///       tier: Standard
///       componentVersion:
///         hbase: '1.1'
///       gateway:
///         username: acctestusrgw
///         password: Password123!
///       storageAccounts:
///         - storageContainerId: ${exampleContainer.id}
///           storageAccountKey: ${exampleAccount.primaryAccessKey}
///           isDefault: true
///       roles:
///         headNode:
///           vmSize: Standard_D3_V2
///           username: acctestusrvm
///           password: AccTestvdSC4daf986!
///         workerNode:
///           vmSize: Standard_D3_V2
///           username: acctestusrvm
///           password: AccTestvdSC4daf986!
///           targetInstanceCount: 3
///         zookeeperNode:
///           vmSize: Standard_D3_V2
///           username: acctestusrvm
///           password: AccTestvdSC4daf986!
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HDInsight` - 2021-06-01
///
/// ## Import
///
/// HDInsight HBase Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hdinsight/hBaseCluster:HBaseCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.HDInsight/clusters/cluster1
/// ```
class HBaseCluster extends pulumi.CustomResource {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterVersion;
  /// A `component_version` block as defined below.
  late final pulumi.Output<HBaseClusterComponentVersion> componentVersion;
  /// A `compute_isolation` block as defined below.
  late final pulumi.Output<HBaseClusterComputeIsolation?> computeIsolation;
  /// One or more `disk_encryption` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> diskEncryptions;
  /// An `extension` block as defined below.
  late final pulumi.Output<HBaseClusterExtension?> extension;
  /// A `gateway` block as defined below.
  late final pulumi.Output<HBaseClusterGateway> gateway;
  /// The HTTPS Connectivity Endpoint for this HDInsight HBase Cluster.
  late final pulumi.Output<String> httpsEndpoint;
  /// Specifies the Azure Region which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `metastores` block as defined below.
  late final pulumi.Output<HBaseClusterMetastores?> metastores;
  /// A `monitor` block as defined below.
  late final pulumi.Output<HBaseClusterMonitor?> monitor;
  /// Specifies the name for this HDInsight HBase Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `network` block as defined below.
  late final pulumi.Output<HBaseClusterNetwork?> network;
  /// A `private_link_configuration` block as defined below.
  late final pulumi.Output<HBaseClusterPrivateLinkConfiguration?> privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `roles` block as defined below.
  late final pulumi.Output<HBaseClusterRoles> roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<HBaseClusterSecurityProfile?> securityProfile;
  /// The SSH Connectivity Endpoint for this HDInsight HBase Cluster.
  late final pulumi.Output<String> sshEndpoint;
  /// A `storage_account_gen2` block as defined below.
  late final pulumi.Output<HBaseClusterStorageAccountGen2?> storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight HBase Cluster.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  late final pulumi.Output<String?> tlsMinVersion;

  /// Creates a new [HBaseCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HBaseCluster]. {@macro pulumi_hdinsight_h_base_cluster_hbase_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HBaseCluster(
    String name, {
    HBaseClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hdinsight/hBaseCluster:HBaseCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterVersion = registerOutput<String>('clusterVersion');
    componentVersion = registerOutput<HBaseClusterComponentVersion>('componentVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterComponentVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeIsolation = registerOutput<HBaseClusterComputeIsolation?>('computeIsolation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterComputeIsolation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskEncryptions = registerOutput<List<Map<String, dynamic>>?>('diskEncryptions');
    extension = registerOutput<HBaseClusterExtension?>('extension', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterExtension.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gateway = registerOutput<HBaseClusterGateway>('gateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsEndpoint = registerOutput<String>('httpsEndpoint');
    location = registerOutput<String>('location');
    metastores = registerOutput<HBaseClusterMetastores?>('metastores', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterMetastores.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitor = registerOutput<HBaseClusterMonitor?>('monitor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterMonitor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<HBaseClusterNetwork?>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkConfiguration = registerOutput<HBaseClusterPrivateLinkConfiguration?>('privateLinkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterPrivateLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roles = registerOutput<HBaseClusterRoles>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterRoles.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityProfile = registerOutput<HBaseClusterSecurityProfile?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sshEndpoint = registerOutput<String>('sshEndpoint');
    storageAccountGen2 = registerOutput<HBaseClusterStorageAccountGen2?>('storageAccountGen2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterStorageAccountGen2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>('storageAccounts');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    tlsMinVersion = registerOutput<String?>('tlsMinVersion');
  }

  /// Gets an existing [HBaseCluster] resource's state with the given [name] and [id].
  static HBaseCluster get(
    String name,
    pulumi.Input<String> id, {
    HBaseClusterState? state,
  }) {
    return HBaseCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HBaseCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hdinsight/hBaseCluster:HBaseCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterVersion = registerOutput<String>('clusterVersion');
    componentVersion = registerOutput<HBaseClusterComponentVersion>('componentVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterComponentVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeIsolation = registerOutput<HBaseClusterComputeIsolation?>('computeIsolation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterComputeIsolation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskEncryptions = registerOutput<List<Map<String, dynamic>>?>('diskEncryptions');
    extension = registerOutput<HBaseClusterExtension?>('extension', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterExtension.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gateway = registerOutput<HBaseClusterGateway>('gateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsEndpoint = registerOutput<String>('httpsEndpoint');
    location = registerOutput<String>('location');
    metastores = registerOutput<HBaseClusterMetastores?>('metastores', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterMetastores.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitor = registerOutput<HBaseClusterMonitor?>('monitor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterMonitor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<HBaseClusterNetwork?>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkConfiguration = registerOutput<HBaseClusterPrivateLinkConfiguration?>('privateLinkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterPrivateLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roles = registerOutput<HBaseClusterRoles>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterRoles.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityProfile = registerOutput<HBaseClusterSecurityProfile?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sshEndpoint = registerOutput<String>('sshEndpoint');
    storageAccountGen2 = registerOutput<HBaseClusterStorageAccountGen2?>('storageAccountGen2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HBaseClusterStorageAccountGen2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>('storageAccounts');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    tlsMinVersion = registerOutput<String?>('tlsMinVersion');
  }
}

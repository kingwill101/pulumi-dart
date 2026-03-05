import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_cluster_args.dart';
import 'spark_cluster_component_version.dart';
import 'spark_cluster_compute_isolation.dart';
import 'spark_cluster_extension.dart';
import 'spark_cluster_gateway.dart';
import 'spark_cluster_metastores.dart';
import 'spark_cluster_monitor.dart';
import 'spark_cluster_network.dart';
import 'spark_cluster_private_link_configuration.dart';
import 'spark_cluster_roles.dart';
import 'spark_cluster_security_profile.dart';
import 'spark_cluster_state.dart';
import 'spark_cluster_storage_account_gen2.dart';

/// Manages a HDInsight Spark Cluster.
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
/// const exampleSparkCluster = new azure.hdinsight.SparkCluster("example", {
///     name: "example-hdicluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterVersion: "3.6",
///     tier: "Standard",
///     componentVersion: {
///         spark: "2.3",
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
///             vmSize: "Standard_A3",
///             username: "acctestusrvm",
///             password: "AccTestvdSC4daf986!",
///         },
///         workerNode: {
///             vmSize: "Standard_A3",
///             username: "acctestusrvm",
///             password: "AccTestvdSC4daf986!",
///             targetInstanceCount: 3,
///         },
///         zookeeperNode: {
///             vmSize: "Medium",
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
/// example_spark_cluster = azure.hdinsight.SparkCluster("example",
///     name="example-hdicluster",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_version="3.6",
///     tier="Standard",
///     component_version={
///         "spark": "2.3",
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
///             "vm_size": "Standard_A3",
///             "username": "acctestusrvm",
///             "password": "AccTestvdSC4daf986!",
///         },
///         "worker_node": {
///             "vm_size": "Standard_A3",
///             "username": "acctestusrvm",
///             "password": "AccTestvdSC4daf986!",
///             "target_instance_count": 3,
///         },
///         "zookeeper_node": {
///             "vm_size": "Medium",
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
///     var exampleSparkCluster = new Azure.HDInsight.SparkCluster("example", new()
///     {
///         Name = "example-hdicluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterVersion = "3.6",
///         Tier = "Standard",
///         ComponentVersion = new Azure.HDInsight.Inputs.SparkClusterComponentVersionArgs
///         {
///             Spark = "2.3",
///         },
///         Gateway = new Azure.HDInsight.Inputs.SparkClusterGatewayArgs
///         {
///             Username = "acctestusrgw",
///             Password = "Password123!",
///         },
///         StorageAccounts = new[]
///         {
///             new Azure.HDInsight.Inputs.SparkClusterStorageAccountArgs
///             {
///                 StorageContainerId = exampleContainer.Id,
///                 StorageAccountKey = exampleAccount.PrimaryAccessKey,
///                 IsDefault = true,
///             },
///         },
///         Roles = new Azure.HDInsight.Inputs.SparkClusterRolesArgs
///         {
///             HeadNode = new Azure.HDInsight.Inputs.SparkClusterRolesHeadNodeArgs
///             {
///                 VmSize = "Standard_A3",
///                 Username = "acctestusrvm",
///                 Password = "AccTestvdSC4daf986!",
///             },
///             WorkerNode = new Azure.HDInsight.Inputs.SparkClusterRolesWorkerNodeArgs
///             {
///                 VmSize = "Standard_A3",
///                 Username = "acctestusrvm",
///                 Password = "AccTestvdSC4daf986!",
///                 TargetInstanceCount = 3,
///             },
///             ZookeeperNode = new Azure.HDInsight.Inputs.SparkClusterRolesZookeeperNodeArgs
///             {
///                 VmSize = "Medium",
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
/// 		_, err = hdinsight.NewSparkCluster(ctx, "example", &hdinsight.SparkClusterArgs{
/// 			Name:              pulumi.String("example-hdicluster"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterVersion:    pulumi.String("3.6"),
/// 			Tier:              pulumi.String("Standard"),
/// 			ComponentVersion: &hdinsight.SparkClusterComponentVersionArgs{
/// 				Spark: pulumi.String("2.3"),
/// 			},
/// 			Gateway: &hdinsight.SparkClusterGatewayArgs{
/// 				Username: pulumi.String("acctestusrgw"),
/// 				Password: pulumi.String("Password123!"),
/// 			},
/// 			StorageAccounts: hdinsight.SparkClusterStorageAccountArray{
/// 				&hdinsight.SparkClusterStorageAccountArgs{
/// 					StorageContainerId: exampleContainer.ID(),
/// 					StorageAccountKey:  exampleAccount.PrimaryAccessKey,
/// 					IsDefault:          pulumi.Bool(true),
/// 				},
/// 			},
/// 			Roles: &hdinsight.SparkClusterRolesArgs{
/// 				HeadNode: &hdinsight.SparkClusterRolesHeadNodeArgs{
/// 					VmSize:   pulumi.String("Standard_A3"),
/// 					Username: pulumi.String("acctestusrvm"),
/// 					Password: pulumi.String("AccTestvdSC4daf986!"),
/// 				},
/// 				WorkerNode: &hdinsight.SparkClusterRolesWorkerNodeArgs{
/// 					VmSize:              pulumi.String("Standard_A3"),
/// 					Username:            pulumi.String("acctestusrvm"),
/// 					Password:            pulumi.String("AccTestvdSC4daf986!"),
/// 					TargetInstanceCount: pulumi.Int(3),
/// 				},
/// 				ZookeeperNode: &hdinsight.SparkClusterRolesZookeeperNodeArgs{
/// 					VmSize:   pulumi.String("Medium"),
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
/// import com.pulumi.azure.hdinsight.SparkCluster;
/// import com.pulumi.azure.hdinsight.SparkClusterArgs;
/// import com.pulumi.azure.hdinsight.inputs.SparkClusterComponentVersionArgs;
/// import com.pulumi.azure.hdinsight.inputs.SparkClusterGatewayArgs;
/// import com.pulumi.azure.hdinsight.inputs.SparkClusterStorageAccountArgs;
/// import com.pulumi.azure.hdinsight.inputs.SparkClusterRolesArgs;
/// import com.pulumi.azure.hdinsight.inputs.SparkClusterRolesHeadNodeArgs;
/// import com.pulumi.azure.hdinsight.inputs.SparkClusterRolesWorkerNodeArgs;
/// import com.pulumi.azure.hdinsight.inputs.SparkClusterRolesZookeeperNodeArgs;
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
///         var exampleSparkCluster = new SparkCluster("exampleSparkCluster", SparkClusterArgs.builder()
///             .name("example-hdicluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterVersion("3.6")
///             .tier("Standard")
///             .componentVersion(SparkClusterComponentVersionArgs.builder()
///                 .spark("2.3")
///                 .build())
///             .gateway(SparkClusterGatewayArgs.builder()
///                 .username("acctestusrgw")
///                 .password("Password123!")
///                 .build())
///             .storageAccounts(SparkClusterStorageAccountArgs.builder()
///                 .storageContainerId(exampleContainer.id())
///                 .storageAccountKey(exampleAccount.primaryAccessKey())
///                 .isDefault(true)
///                 .build())
///             .roles(SparkClusterRolesArgs.builder()
///                 .headNode(SparkClusterRolesHeadNodeArgs.builder()
///                     .vmSize("Standard_A3")
///                     .username("acctestusrvm")
///                     .password("AccTestvdSC4daf986!")
///                     .build())
///                 .workerNode(SparkClusterRolesWorkerNodeArgs.builder()
///                     .vmSize("Standard_A3")
///                     .username("acctestusrvm")
///                     .password("AccTestvdSC4daf986!")
///                     .targetInstanceCount(3)
///                     .build())
///                 .zookeeperNode(SparkClusterRolesZookeeperNodeArgs.builder()
///                     .vmSize("Medium")
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
///   exampleSparkCluster:
///     type: azure:hdinsight:SparkCluster
///     name: example
///     properties:
///       name: example-hdicluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterVersion: '3.6'
///       tier: Standard
///       componentVersion:
///         spark: '2.3'
///       gateway:
///         username: acctestusrgw
///         password: Password123!
///       storageAccounts:
///         - storageContainerId: ${exampleContainer.id}
///           storageAccountKey: ${exampleAccount.primaryAccessKey}
///           isDefault: true
///       roles:
///         headNode:
///           vmSize: Standard_A3
///           username: acctestusrvm
///           password: AccTestvdSC4daf986!
///         workerNode:
///           vmSize: Standard_A3
///           username: acctestusrvm
///           password: AccTestvdSC4daf986!
///           targetInstanceCount: 3
///         zookeeperNode:
///           vmSize: Medium
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
/// HDInsight Spark Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hdinsight/sparkCluster:SparkCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.HDInsight/clusters/cluster1
/// ```
class SparkCluster extends pulumi.CustomResource {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterVersion;
  /// A `component_version` block as defined below.
  late final pulumi.Output<SparkClusterComponentVersion> componentVersion;
  /// A `compute_isolation` block as defined below.
  late final pulumi.Output<SparkClusterComputeIsolation?> computeIsolation;
  /// One or more `disk_encryption` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> diskEncryptions;
  /// Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> encryptionInTransitEnabled;
  /// An `extension` block as defined below.
  late final pulumi.Output<SparkClusterExtension?> extension;
  /// A `gateway` block as defined below.
  late final pulumi.Output<SparkClusterGateway> gateway;
  /// The HTTPS Connectivity Endpoint for this HDInsight Spark Cluster.
  late final pulumi.Output<String> httpsEndpoint;
  /// Specifies the Azure Region which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `metastores` block as defined below.
  late final pulumi.Output<SparkClusterMetastores?> metastores;
  /// A `monitor` block as defined below.
  late final pulumi.Output<SparkClusterMonitor?> monitor;
  /// Specifies the name for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `network` block as defined below.
  late final pulumi.Output<SparkClusterNetwork?> network;
  /// A `private_link_configuration` block as defined below.
  late final pulumi.Output<SparkClusterPrivateLinkConfiguration?> privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `roles` block as defined below.
  late final pulumi.Output<SparkClusterRoles> roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<SparkClusterSecurityProfile?> securityProfile;
  /// The SSH Connectivity Endpoint for this HDInsight Spark Cluster.
  late final pulumi.Output<String> sshEndpoint;
  /// A `storage_account_gen2` block as defined below.
  late final pulumi.Output<SparkClusterStorageAccountGen2?> storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight Spark Cluster.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the Tier which should be used for this HDInsight Spark Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  late final pulumi.Output<String?> tlsMinVersion;
  /// A list of Availability Zones which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [SparkCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SparkCluster]. {@macro pulumi_hdinsight_spark_cluster_spark_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SparkCluster(
    String name, {
    SparkClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hdinsight/sparkCluster:SparkCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterVersion = registerOutput<String>('clusterVersion');
    componentVersion = registerOutput<SparkClusterComponentVersion>('componentVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterComponentVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeIsolation = registerOutput<SparkClusterComputeIsolation?>('computeIsolation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterComputeIsolation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskEncryptions = registerOutput<List<Map<String, dynamic>>?>('diskEncryptions');
    encryptionInTransitEnabled = registerOutput<bool?>('encryptionInTransitEnabled');
    extension = registerOutput<SparkClusterExtension?>('extension', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterExtension.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gateway = registerOutput<SparkClusterGateway>('gateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsEndpoint = registerOutput<String>('httpsEndpoint');
    location = registerOutput<String>('location');
    metastores = registerOutput<SparkClusterMetastores?>('metastores', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterMetastores.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitor = registerOutput<SparkClusterMonitor?>('monitor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterMonitor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<SparkClusterNetwork?>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkConfiguration = registerOutput<SparkClusterPrivateLinkConfiguration?>('privateLinkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterPrivateLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roles = registerOutput<SparkClusterRoles>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterRoles.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityProfile = registerOutput<SparkClusterSecurityProfile?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sshEndpoint = registerOutput<String>('sshEndpoint');
    storageAccountGen2 = registerOutput<SparkClusterStorageAccountGen2?>('storageAccountGen2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterStorageAccountGen2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>('storageAccounts');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    tlsMinVersion = registerOutput<String?>('tlsMinVersion');
    zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [SparkCluster] resource's state with the given [name] and [id].
  static SparkCluster get(
    String name,
    pulumi.Input<String> id, {
    SparkClusterState? state,
  }) {
    return SparkCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SparkCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hdinsight/sparkCluster:SparkCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterVersion = registerOutput<String>('clusterVersion');
    componentVersion = registerOutput<SparkClusterComponentVersion>('componentVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterComponentVersion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeIsolation = registerOutput<SparkClusterComputeIsolation?>('computeIsolation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterComputeIsolation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    diskEncryptions = registerOutput<List<Map<String, dynamic>>?>('diskEncryptions');
    encryptionInTransitEnabled = registerOutput<bool?>('encryptionInTransitEnabled');
    extension = registerOutput<SparkClusterExtension?>('extension', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterExtension.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gateway = registerOutput<SparkClusterGateway>('gateway', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterGateway.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpsEndpoint = registerOutput<String>('httpsEndpoint');
    location = registerOutput<String>('location');
    metastores = registerOutput<SparkClusterMetastores?>('metastores', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterMetastores.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitor = registerOutput<SparkClusterMonitor?>('monitor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterMonitor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<SparkClusterNetwork?>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkConfiguration = registerOutput<SparkClusterPrivateLinkConfiguration?>('privateLinkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterPrivateLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    roles = registerOutput<SparkClusterRoles>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterRoles.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityProfile = registerOutput<SparkClusterSecurityProfile?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sshEndpoint = registerOutput<String>('sshEndpoint');
    storageAccountGen2 = registerOutput<SparkClusterStorageAccountGen2?>('storageAccountGen2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkClusterStorageAccountGen2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>('storageAccounts');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    tlsMinVersion = registerOutput<String?>('tlsMinVersion');
    zones = registerOutput<List<String>?>('zones');
  }
}

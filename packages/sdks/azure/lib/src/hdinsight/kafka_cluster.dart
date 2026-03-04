import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_cluster_args.dart';
import 'kafka_cluster_component_version.dart';
import 'kafka_cluster_compute_isolation.dart';
import 'kafka_cluster_extension.dart';
import 'kafka_cluster_gateway.dart';
import 'kafka_cluster_metastores.dart';
import 'kafka_cluster_monitor.dart';
import 'kafka_cluster_network.dart';
import 'kafka_cluster_private_link_configuration.dart';
import 'kafka_cluster_rest_proxy.dart';
import 'kafka_cluster_roles.dart';
import 'kafka_cluster_security_profile.dart';
import 'kafka_cluster_state.dart';
import 'kafka_cluster_storage_account_gen2.dart';

/// Manages a HDInsight Kafka Cluster.
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
/// const exampleKafkaCluster = new azure.hdinsight.KafkaCluster("example", {
///     name: "example-hdicluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterVersion: "4.0",
///     tier: "Standard",
///     componentVersion: {
///         kafka: "2.1",
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
///             numberOfDisksPerNode: 3,
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
/// example_kafka_cluster = azure.hdinsight.KafkaCluster("example",
///     name="example-hdicluster",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_version="4.0",
///     tier="Standard",
///     component_version={
///         "kafka": "2.1",
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
///             "number_of_disks_per_node": 3,
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
///     var exampleKafkaCluster = new Azure.HDInsight.KafkaCluster("example", new()
///     {
///         Name = "example-hdicluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterVersion = "4.0",
///         Tier = "Standard",
///         ComponentVersion = new Azure.HDInsight.Inputs.KafkaClusterComponentVersionArgs
///         {
///             Kafka = "2.1",
///         },
///         Gateway = new Azure.HDInsight.Inputs.KafkaClusterGatewayArgs
///         {
///             Username = "acctestusrgw",
///             Password = "Password123!",
///         },
///         StorageAccounts = new[]
///         {
///             new Azure.HDInsight.Inputs.KafkaClusterStorageAccountArgs
///             {
///                 StorageContainerId = exampleContainer.Id,
///                 StorageAccountKey = exampleAccount.PrimaryAccessKey,
///                 IsDefault = true,
///             },
///         },
///         Roles = new Azure.HDInsight.Inputs.KafkaClusterRolesArgs
///         {
///             HeadNode = new Azure.HDInsight.Inputs.KafkaClusterRolesHeadNodeArgs
///             {
///                 VmSize = "Standard_D3_V2",
///                 Username = "acctestusrvm",
///                 Password = "AccTestvdSC4daf986!",
///             },
///             WorkerNode = new Azure.HDInsight.Inputs.KafkaClusterRolesWorkerNodeArgs
///             {
///                 VmSize = "Standard_D3_V2",
///                 Username = "acctestusrvm",
///                 Password = "AccTestvdSC4daf986!",
///                 NumberOfDisksPerNode = 3,
///                 TargetInstanceCount = 3,
///             },
///             ZookeeperNode = new Azure.HDInsight.Inputs.KafkaClusterRolesZookeeperNodeArgs
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
/// 		_, err = hdinsight.NewKafkaCluster(ctx, "example", &hdinsight.KafkaClusterArgs{
/// 			Name:              pulumi.String("example-hdicluster"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterVersion:    pulumi.String("4.0"),
/// 			Tier:              pulumi.String("Standard"),
/// 			ComponentVersion: &hdinsight.KafkaClusterComponentVersionArgs{
/// 				Kafka: pulumi.String("2.1"),
/// 			},
/// 			Gateway: &hdinsight.KafkaClusterGatewayArgs{
/// 				Username: pulumi.String("acctestusrgw"),
/// 				Password: pulumi.String("Password123!"),
/// 			},
/// 			StorageAccounts: hdinsight.KafkaClusterStorageAccountArray{
/// 				&hdinsight.KafkaClusterStorageAccountArgs{
/// 					StorageContainerId: exampleContainer.ID(),
/// 					StorageAccountKey:  exampleAccount.PrimaryAccessKey,
/// 					IsDefault:          pulumi.Bool(true),
/// 				},
/// 			},
/// 			Roles: &hdinsight.KafkaClusterRolesArgs{
/// 				HeadNode: &hdinsight.KafkaClusterRolesHeadNodeArgs{
/// 					VmSize:   pulumi.String("Standard_D3_V2"),
/// 					Username: pulumi.String("acctestusrvm"),
/// 					Password: pulumi.String("AccTestvdSC4daf986!"),
/// 				},
/// 				WorkerNode: &hdinsight.KafkaClusterRolesWorkerNodeArgs{
/// 					VmSize:               pulumi.String("Standard_D3_V2"),
/// 					Username:             pulumi.String("acctestusrvm"),
/// 					Password:             pulumi.String("AccTestvdSC4daf986!"),
/// 					NumberOfDisksPerNode: pulumi.Int(3),
/// 					TargetInstanceCount:  pulumi.Int(3),
/// 				},
/// 				ZookeeperNode: &hdinsight.KafkaClusterRolesZookeeperNodeArgs{
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
/// import com.pulumi.azure.hdinsight.KafkaCluster;
/// import com.pulumi.azure.hdinsight.KafkaClusterArgs;
/// import com.pulumi.azure.hdinsight.inputs.KafkaClusterComponentVersionArgs;
/// import com.pulumi.azure.hdinsight.inputs.KafkaClusterGatewayArgs;
/// import com.pulumi.azure.hdinsight.inputs.KafkaClusterStorageAccountArgs;
/// import com.pulumi.azure.hdinsight.inputs.KafkaClusterRolesArgs;
/// import com.pulumi.azure.hdinsight.inputs.KafkaClusterRolesHeadNodeArgs;
/// import com.pulumi.azure.hdinsight.inputs.KafkaClusterRolesWorkerNodeArgs;
/// import com.pulumi.azure.hdinsight.inputs.KafkaClusterRolesZookeeperNodeArgs;
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
///         var exampleKafkaCluster = new KafkaCluster("exampleKafkaCluster", KafkaClusterArgs.builder()
///             .name("example-hdicluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterVersion("4.0")
///             .tier("Standard")
///             .componentVersion(KafkaClusterComponentVersionArgs.builder()
///                 .kafka("2.1")
///                 .build())
///             .gateway(KafkaClusterGatewayArgs.builder()
///                 .username("acctestusrgw")
///                 .password("Password123!")
///                 .build())
///             .storageAccounts(KafkaClusterStorageAccountArgs.builder()
///                 .storageContainerId(exampleContainer.id())
///                 .storageAccountKey(exampleAccount.primaryAccessKey())
///                 .isDefault(true)
///                 .build())
///             .roles(KafkaClusterRolesArgs.builder()
///                 .headNode(KafkaClusterRolesHeadNodeArgs.builder()
///                     .vmSize("Standard_D3_V2")
///                     .username("acctestusrvm")
///                     .password("AccTestvdSC4daf986!")
///                     .build())
///                 .workerNode(KafkaClusterRolesWorkerNodeArgs.builder()
///                     .vmSize("Standard_D3_V2")
///                     .username("acctestusrvm")
///                     .password("AccTestvdSC4daf986!")
///                     .numberOfDisksPerNode(3)
///                     .targetInstanceCount(3)
///                     .build())
///                 .zookeeperNode(KafkaClusterRolesZookeeperNodeArgs.builder()
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
///   exampleKafkaCluster:
///     type: azure:hdinsight:KafkaCluster
///     name: example
///     properties:
///       name: example-hdicluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterVersion: '4.0'
///       tier: Standard
///       componentVersion:
///         kafka: '2.1'
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
///           numberOfDisksPerNode: 3
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
/// HDInsight Kafka Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hdinsight/kafkaCluster:KafkaCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.HDInsight/clusters/cluster1
/// ```
class KafkaCluster extends pulumi.CustomResource {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterVersion;

  /// A `component_version` block as defined below.
  late final pulumi.Output<KafkaClusterComponentVersion> componentVersion;

  /// A `compute_isolation` block as defined below.
  late final pulumi.Output<KafkaClusterComputeIsolation?> computeIsolation;

  /// One or more `disk_encryption` block as defined below.
  ///
  /// &gt; **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  late final pulumi.Output<List<Map<String, dynamic>>?> diskEncryptions;

  /// Whether encryption in transit is enabled for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> encryptionInTransitEnabled;

  /// An `extension` block as defined below.
  late final pulumi.Output<KafkaClusterExtension?> extension;

  /// A `gateway` block as defined below.
  late final pulumi.Output<KafkaClusterGateway> gateway;

  /// The HTTPS Connectivity Endpoint for this HDInsight Kafka Cluster.
  late final pulumi.Output<String> httpsEndpoint;

  /// The Kafka Rest Proxy Endpoint for this HDInsight Kafka Cluster.
  late final pulumi.Output<String> kafkaRestProxyEndpoint;

  /// Specifies the Azure Region which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// A `metastores` block as defined below.
  late final pulumi.Output<KafkaClusterMetastores?> metastores;

  /// A `monitor` block as defined below.
  late final pulumi.Output<KafkaClusterMonitor?> monitor;

  /// Specifies the name for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A `network` block as defined below.
  late final pulumi.Output<KafkaClusterNetwork?> network;

  /// A `private_link_configuration` block as defined below.
  late final pulumi.Output<KafkaClusterPrivateLinkConfiguration?>
  privateLinkConfiguration;

  /// Specifies the name of the Resource Group in which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `rest_proxy` block as defined below.
  late final pulumi.Output<KafkaClusterRestProxy?> restProxy;

  /// A `roles` block as defined below.
  late final pulumi.Output<KafkaClusterRoles> roles;

  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<KafkaClusterSecurityProfile?> securityProfile;

  /// The SSH Connectivity Endpoint for this HDInsight Kafka Cluster.
  late final pulumi.Output<String> sshEndpoint;

  /// A `storage_account_gen2` block as defined below.
  late final pulumi.Output<KafkaClusterStorageAccountGen2?> storageAccountGen2;

  /// One or more `storage_account` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> storageAccounts;

  /// A map of Tags which should be assigned to this HDInsight Kafka Cluster.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the Tier which should be used for this HDInsight Kafka Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> tier;

  /// The minimal supported TLS version. Possible values are `1.0`, `1.1` or `1.2`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> tlsMinVersion;

  /// Creates a new [KafkaCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KafkaCluster]. {@macro pulumi_hdinsight_kafka_cluster_kafka_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KafkaCluster(
    String name, {
    KafkaClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:hdinsight/kafkaCluster:KafkaCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterVersion = registerOutput<String>('clusterVersion');
    componentVersion = registerOutput<KafkaClusterComponentVersion>(
      'componentVersion',
    );
    computeIsolation = registerOutput<KafkaClusterComputeIsolation?>(
      'computeIsolation',
    );
    diskEncryptions = registerOutput<List<Map<String, dynamic>>?>(
      'diskEncryptions',
    );
    encryptionInTransitEnabled = registerOutput<bool?>(
      'encryptionInTransitEnabled',
    );
    extension = registerOutput<KafkaClusterExtension?>('extension');
    gateway = registerOutput<KafkaClusterGateway>('gateway');
    httpsEndpoint = registerOutput<String>('httpsEndpoint');
    kafkaRestProxyEndpoint = registerOutput<String>('kafkaRestProxyEndpoint');
    location = registerOutput<String>('location');
    metastores = registerOutput<KafkaClusterMetastores?>('metastores');
    monitor = registerOutput<KafkaClusterMonitor?>('monitor');
    this.name = registerOutput<String>('name');
    network = registerOutput<KafkaClusterNetwork?>('network');
    privateLinkConfiguration =
        registerOutput<KafkaClusterPrivateLinkConfiguration?>(
          'privateLinkConfiguration',
        );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restProxy = registerOutput<KafkaClusterRestProxy?>('restProxy');
    roles = registerOutput<KafkaClusterRoles>('roles');
    securityProfile = registerOutput<KafkaClusterSecurityProfile?>(
      'securityProfile',
    );
    sshEndpoint = registerOutput<String>('sshEndpoint');
    storageAccountGen2 = registerOutput<KafkaClusterStorageAccountGen2?>(
      'storageAccountGen2',
    );
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>(
      'storageAccounts',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    tlsMinVersion = registerOutput<String?>('tlsMinVersion');
  }

  /// Gets an existing [KafkaCluster] resource's state with the given [name] and [id].
  static KafkaCluster get(
    String name,
    pulumi.Input<String> id, {
    KafkaClusterState? state,
  }) {
    return KafkaCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KafkaCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:hdinsight/kafkaCluster:KafkaCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterVersion = registerOutput<String>('clusterVersion');
    componentVersion = registerOutput<KafkaClusterComponentVersion>(
      'componentVersion',
    );
    computeIsolation = registerOutput<KafkaClusterComputeIsolation?>(
      'computeIsolation',
    );
    diskEncryptions = registerOutput<List<Map<String, dynamic>>?>(
      'diskEncryptions',
    );
    encryptionInTransitEnabled = registerOutput<bool?>(
      'encryptionInTransitEnabled',
    );
    extension = registerOutput<KafkaClusterExtension?>('extension');
    gateway = registerOutput<KafkaClusterGateway>('gateway');
    httpsEndpoint = registerOutput<String>('httpsEndpoint');
    kafkaRestProxyEndpoint = registerOutput<String>('kafkaRestProxyEndpoint');
    location = registerOutput<String>('location');
    metastores = registerOutput<KafkaClusterMetastores?>('metastores');
    monitor = registerOutput<KafkaClusterMonitor?>('monitor');
    this.name = registerOutput<String>('name');
    network = registerOutput<KafkaClusterNetwork?>('network');
    privateLinkConfiguration =
        registerOutput<KafkaClusterPrivateLinkConfiguration?>(
          'privateLinkConfiguration',
        );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    restProxy = registerOutput<KafkaClusterRestProxy?>('restProxy');
    roles = registerOutput<KafkaClusterRoles>('roles');
    securityProfile = registerOutput<KafkaClusterSecurityProfile?>(
      'securityProfile',
    );
    sshEndpoint = registerOutput<String>('sshEndpoint');
    storageAccountGen2 = registerOutput<KafkaClusterStorageAccountGen2?>(
      'storageAccountGen2',
    );
    storageAccounts = registerOutput<List<Map<String, dynamic>>?>(
      'storageAccounts',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String>('tier');
    tlsMinVersion = registerOutput<String?>('tlsMinVersion');
  }
}

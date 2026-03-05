import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_node_pool_args.dart';
import 'kubernetes_cluster_node_pool_kubelet_config.dart';
import 'kubernetes_cluster_node_pool_linux_os_config.dart';
import 'kubernetes_cluster_node_pool_node_network_profile.dart';
import 'kubernetes_cluster_node_pool_state.dart';
import 'kubernetes_cluster_node_pool_upgrade_settings.dart';
import 'kubernetes_cluster_node_pool_windows_profile.dart';

/// Manages a Node Pool within a Kubernetes Cluster
///
/// &gt; **NOTE:** Multiple Node Pools are only supported when the Kubernetes Cluster is using Virtual Machine Scale Sets.
///
/// &gt; **Note:** Changing certain properties is done by cycling the node pool. When cycling it, it doesn’t perform cordon and drain, and it will disrupt rescheduling pods currently running on the previous node pool. `temporary_name_for_rotation` must be specified when changing any of the following properties: `fips_enabled`, `host_encryption_enabled`, `kubelet_config`, `kubelet_disk_type`, `linux_os_config`, `max_pods`, `node_public_ip_enabled`, `os_disk_size_gb`, `os_disk_type`, `pod_subnet_id`, `snapshot_id`, `ultra_ssd_enabled`, `vm_size`, `vnet_subnet_id`, `zones`.
///
/// ## Example Usage
///
/// This example provisions a basic Kubernetes Node Pool.
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
/// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
///     name: "example-aks1",
///     location: example.location,
///     resourceGroupName: example.name,
///     dnsPrefix: "exampleaks1",
///     defaultNodePool: {
///         name: "default",
///         nodeCount: 1,
///         vmSize: "Standard_D2_v2",
///     },
///     servicePrincipal: {
///         clientId: "00000000-0000-0000-0000-000000000000",
///         clientSecret: "00000000000000000000000000000000",
///     },
/// });
/// const exampleKubernetesClusterNodePool = new azure.containerservice.KubernetesClusterNodePool("example", {
///     name: "internal",
///     kubernetesClusterId: exampleKubernetesCluster.id,
///     vmSize: "Standard_DS2_v2",
///     nodeCount: 1,
///     tags: {
///         Environment: "Production",
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
/// example_kubernetes_cluster = azure.containerservice.KubernetesCluster("example",
///     name="example-aks1",
///     location=example.location,
///     resource_group_name=example.name,
///     dns_prefix="exampleaks1",
///     default_node_pool={
///         "name": "default",
///         "node_count": 1,
///         "vm_size": "Standard_D2_v2",
///     },
///     service_principal={
///         "client_id": "00000000-0000-0000-0000-000000000000",
///         "client_secret": "00000000000000000000000000000000",
///     })
/// example_kubernetes_cluster_node_pool = azure.containerservice.KubernetesClusterNodePool("example",
///     name="internal",
///     kubernetes_cluster_id=example_kubernetes_cluster.id,
///     vm_size="Standard_DS2_v2",
///     node_count=1,
///     tags={
///         "Environment": "Production",
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
///     var exampleKubernetesCluster = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example-aks1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         DnsPrefix = "exampleaks1",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "default",
///             NodeCount = 1,
///             VmSize = "Standard_D2_v2",
///         },
///         ServicePrincipal = new Azure.ContainerService.Inputs.KubernetesClusterServicePrincipalArgs
///         {
///             ClientId = "00000000-0000-0000-0000-000000000000",
///             ClientSecret = "00000000000000000000000000000000",
///         },
///     });
///
///     var exampleKubernetesClusterNodePool = new Azure.ContainerService.KubernetesClusterNodePool("example", new()
///     {
///         Name = "internal",
///         KubernetesClusterId = exampleKubernetesCluster.Id,
///         VmSize = "Standard_DS2_v2",
///         NodeCount = 1,
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		exampleKubernetesCluster, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example-aks1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			DnsPrefix:         pulumi.String("exampleaks1"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				NodeCount: pulumi.Int(1),
/// 				VmSize:    pulumi.String("Standard_D2_v2"),
/// 			},
/// 			ServicePrincipal: &containerservice.KubernetesClusterServicePrincipalArgs{
/// 				ClientId:     pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				ClientSecret: pulumi.String("00000000000000000000000000000000"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewKubernetesClusterNodePool(ctx, "example", &containerservice.KubernetesClusterNodePoolArgs{
/// 			Name:                pulumi.String("internal"),
/// 			KubernetesClusterId: exampleKubernetesCluster.ID(),
/// 			VmSize:              pulumi.String("Standard_DS2_v2"),
/// 			NodeCount:           pulumi.Int(1),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
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
/// import com.pulumi.azure.containerservice.KubernetesCluster;
/// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterServicePrincipalArgs;
/// import com.pulumi.azure.containerservice.KubernetesClusterNodePool;
/// import com.pulumi.azure.containerservice.KubernetesClusterNodePoolArgs;
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
///         var exampleKubernetesCluster = new KubernetesCluster("exampleKubernetesCluster", KubernetesClusterArgs.builder()
///             .name("example-aks1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .dnsPrefix("exampleaks1")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("default")
///                 .nodeCount(1)
///                 .vmSize("Standard_D2_v2")
///                 .build())
///             .servicePrincipal(KubernetesClusterServicePrincipalArgs.builder()
///                 .clientId("00000000-0000-0000-0000-000000000000")
///                 .clientSecret("00000000000000000000000000000000")
///                 .build())
///             .build());
///
///         var exampleKubernetesClusterNodePool = new KubernetesClusterNodePool("exampleKubernetesClusterNodePool", KubernetesClusterNodePoolArgs.builder()
///             .name("internal")
///             .kubernetesClusterId(exampleKubernetesCluster.id())
///             .vmSize("Standard_DS2_v2")
///             .nodeCount(1)
///             .tags(Map.of("Environment", "Production"))
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
///   exampleKubernetesCluster:
///     type: azure:containerservice:KubernetesCluster
///     name: example
///     properties:
///       name: example-aks1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       dnsPrefix: exampleaks1
///       defaultNodePool:
///         name: default
///         nodeCount: 1
///         vmSize: Standard_D2_v2
///       servicePrincipal:
///         clientId: 00000000-0000-0000-0000-000000000000
///         clientSecret: '00000000000000000000000000000000'
///   exampleKubernetesClusterNodePool:
///     type: azure:containerservice:KubernetesClusterNodePool
///     name: example
///     properties:
///       name: internal
///       kubernetesClusterId: ${exampleKubernetesCluster.id}
///       vmSize: Standard_DS2_v2
///       nodeCount: 1
///       tags:
///         Environment: Production
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2025-07-01
///
/// ## Import
///
/// Kubernetes Cluster Node Pools can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/kubernetesClusterNodePool:KubernetesClusterNodePool pool1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ContainerService/managedClusters/cluster1/agentPools/pool1
/// ```
class KubernetesClusterNodePool extends pulumi.CustomResource {
  /// Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler).
  late final pulumi.Output<bool?> autoScalingEnabled;
  /// Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> capacityReservationGroupId;
  /// The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** An Eviction Policy can only be configured when `priority` is set to `Spot` and will default to `Delete` unless otherwise specified.
  late final pulumi.Output<String?> evictionPolicy;
  /// Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this property requires specifying `temporary_name_for_rotation`.
  ///
  /// &gt; **Note:** FIPS support is in Public Preview - more information and details on how to opt into the Preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview).
  late final pulumi.Output<bool?> fipsEnabled;
  /// Specifies whether to install the GPU Driver for the nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> gpuDriver;
  /// Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> gpuInstance;
  /// Should the nodes in this Node Pool have host encryption enabled? Changing this property requires specifying `temporary_name_for_rotation`.
  ///
  /// &gt; **NOTE:** Additional fields must be configured depending on the value of this field - see below.
  late final pulumi.Output<bool?> hostEncryptionEnabled;
  /// The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> hostGroupId;
  /// A `kubelet_config` block as defined below. Changing this requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<KubernetesClusterNodePoolKubeletConfig?> kubeletConfig;
  /// The type of disk used by kubelet. Possible values are `OS` and `Temporary`. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<String> kubeletDiskType;
  /// The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** The type of Default Node Pool for the Kubernetes Cluster must be `VirtualMachineScaleSets` to attach multiple node pools.
  late final pulumi.Output<String> kubernetesClusterId;
  /// A `linux_os_config` block as defined below. Changing this requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<KubernetesClusterNodePoolLinuxOsConfig?> linuxOsConfig;
  late final pulumi.Output<int?> maxCount;
  /// The maximum number of pods that can run on each agent. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<int> maxPods;
  late final pulumi.Output<int?> minCount;
  /// Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`.
  late final pulumi.Output<String?> mode;
  /// The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** A Windows Node Pool cannot have a `name` longer than 6 characters.
  late final pulumi.Output<String> name;
  late final pulumi.Output<int> nodeCount;
  /// A map of Kubernetes labels which should be applied to nodes in this Node Pool.
  late final pulumi.Output<Map<String, String>> nodeLabels;
  /// A `node_network_profile` block as documented below.
  late final pulumi.Output<KubernetesClusterNodePoolNodeNetworkProfile?> nodeNetworkProfile;
  /// Should each node have a Public IP Address? Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<bool?> nodePublicIpEnabled;
  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `node_public_ip_enabled` should be `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> nodePublicIpPrefixId;
  /// A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`).
  late final pulumi.Output<List<String>?> nodeTaints;
  /// Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  ///
  /// &gt; **Note:** This version must be supported by the Kubernetes Cluster - as such the version of Kubernetes used on the Cluster/Control Plane may need to be upgraded first.
  late final pulumi.Output<String> orchestratorVersion;
  /// The Agent Operating System disk size in GB. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<int> osDiskSizeGb;
  /// The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<String?> osDiskType;
  /// Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; any other change forces a new resource to be created.
  ///
  /// &gt; **Note:** `Windows2019` is deprecated and not supported for Kubernetes version ≥1.33.
  late final pulumi.Output<String> osSku;
  /// The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`.
  late final pulumi.Output<String?> osType;
  /// The ID of the Subnet where the pods in the Node Pool should exist. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<String?> podSubnetId;
  /// The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> priority;
  /// The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When setting `priority` to Spot - you must configure an `eviction_policy`, `spot_max_price` and add the applicable `node_labels` and `node_taints` [as per the Azure Documentation](https://docs.microsoft.com/azure/aks/spot-node-pool).
  late final pulumi.Output<String?> proximityPlacementGroupId;
  /// Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  late final pulumi.Output<String?> scaleDownMode;
  /// The ID of the Snapshot which should be used to create this Node Pool. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<String?> snapshotId;
  /// The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This field can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<double?> spotMaxPrice;
  /// A mapping of tags to assign to the resource.
  ///
  /// &gt; At this time there's a bug in the AKS API where Tags for a Node Pool are not stored in the correct case - you may wish to use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) functionality to ignore changes to the casing until this is fixed in the AKS API.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the name of the temporary node pool used to cycle the node pool when one of the relevant properties are updated.
  late final pulumi.Output<String?> temporaryNameForRotation;
  /// Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<bool?> ultraSsdEnabled;
  /// A `upgrade_settings` block as documented below.
  late final pulumi.Output<KubernetesClusterNodePoolUpgradeSettings?> upgradeSettings;
  /// The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<String> vmSize;
  /// The ID of the Subnet where this Node Pool should exist. Changing this property requires specifying `temporary_name_for_rotation`.
  ///
  /// &gt; **NOTE:** A route table must be configured on this Subnet.
  late final pulumi.Output<String?> vnetSubnetId;
  /// A `windows_profile` block as documented below. Changing this forces a new resource to be created.
  late final pulumi.Output<KubernetesClusterNodePoolWindowsProfile?> windowsProfile;
  /// Used to specify the workload runtime. Allowed values are `OCIContainer` and `WasmWasi`.
  ///
  /// &gt; **Note:** WebAssembly System Interface node pools are in Public Preview - more information and details on how to opt into the preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-wasi-node-pools)
  late final pulumi.Output<String?> workloadRuntime;
  /// Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this property requires specifying `temporary_name_for_rotation`.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [KubernetesClusterNodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesClusterNodePool]. {@macro pulumi_containerservice_kubernetes_cluster_node_pool_kubernetes_cluster_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesClusterNodePool(
    String name, {
    KubernetesClusterNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/kubernetesClusterNodePool:KubernetesClusterNodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoScalingEnabled = registerOutput<bool?>('autoScalingEnabled');
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    fipsEnabled = registerOutput<bool?>('fipsEnabled');
    gpuDriver = registerOutput<String?>('gpuDriver');
    gpuInstance = registerOutput<String?>('gpuInstance');
    hostEncryptionEnabled = registerOutput<bool?>('hostEncryptionEnabled');
    hostGroupId = registerOutput<String?>('hostGroupId');
    kubeletConfig = registerOutput<KubernetesClusterNodePoolKubeletConfig?>('kubeletConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolKubeletConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeletDiskType = registerOutput<String>('kubeletDiskType');
    kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    linuxOsConfig = registerOutput<KubernetesClusterNodePoolLinuxOsConfig?>('linuxOsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolLinuxOsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxCount = registerOutput<int?>('maxCount');
    maxPods = registerOutput<int>('maxPods');
    minCount = registerOutput<int?>('minCount');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    nodeLabels = registerOutput<Map<String, String>>('nodeLabels');
    nodeNetworkProfile = registerOutput<KubernetesClusterNodePoolNodeNetworkProfile?>('nodeNetworkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolNodeNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePublicIpEnabled = registerOutput<bool?>('nodePublicIpEnabled');
    nodePublicIpPrefixId = registerOutput<String?>('nodePublicIpPrefixId');
    nodeTaints = registerOutput<List<String>?>('nodeTaints');
    orchestratorVersion = registerOutput<String>('orchestratorVersion');
    osDiskSizeGb = registerOutput<int>('osDiskSizeGb');
    osDiskType = registerOutput<String?>('osDiskType');
    osSku = registerOutput<String>('osSku');
    osType = registerOutput<String?>('osType');
    podSubnetId = registerOutput<String?>('podSubnetId');
    priority = registerOutput<String?>('priority');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    scaleDownMode = registerOutput<String?>('scaleDownMode');
    snapshotId = registerOutput<String?>('snapshotId');
    spotMaxPrice = registerOutput<double?>('spotMaxPrice');
    tags = registerOutput<Map<String, String>?>('tags');
    temporaryNameForRotation = registerOutput<String?>('temporaryNameForRotation');
    ultraSsdEnabled = registerOutput<bool?>('ultraSsdEnabled');
    upgradeSettings = registerOutput<KubernetesClusterNodePoolUpgradeSettings?>('upgradeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vmSize = registerOutput<String>('vmSize');
    vnetSubnetId = registerOutput<String?>('vnetSubnetId');
    windowsProfile = registerOutput<KubernetesClusterNodePoolWindowsProfile?>('windowsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolWindowsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadRuntime = registerOutput<String?>('workloadRuntime');
    zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [KubernetesClusterNodePool] resource's state with the given [name] and [id].
  static KubernetesClusterNodePool get(
    String name,
    pulumi.Input<String> id, {
    KubernetesClusterNodePoolState? state,
  }) {
    return KubernetesClusterNodePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KubernetesClusterNodePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/kubernetesClusterNodePool:KubernetesClusterNodePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoScalingEnabled = registerOutput<bool?>('autoScalingEnabled');
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    fipsEnabled = registerOutput<bool?>('fipsEnabled');
    gpuDriver = registerOutput<String?>('gpuDriver');
    gpuInstance = registerOutput<String?>('gpuInstance');
    hostEncryptionEnabled = registerOutput<bool?>('hostEncryptionEnabled');
    hostGroupId = registerOutput<String?>('hostGroupId');
    kubeletConfig = registerOutput<KubernetesClusterNodePoolKubeletConfig?>('kubeletConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolKubeletConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeletDiskType = registerOutput<String>('kubeletDiskType');
    kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    linuxOsConfig = registerOutput<KubernetesClusterNodePoolLinuxOsConfig?>('linuxOsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolLinuxOsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxCount = registerOutput<int?>('maxCount');
    maxPods = registerOutput<int>('maxPods');
    minCount = registerOutput<int?>('minCount');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    nodeLabels = registerOutput<Map<String, String>>('nodeLabels');
    nodeNetworkProfile = registerOutput<KubernetesClusterNodePoolNodeNetworkProfile?>('nodeNetworkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolNodeNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePublicIpEnabled = registerOutput<bool?>('nodePublicIpEnabled');
    nodePublicIpPrefixId = registerOutput<String?>('nodePublicIpPrefixId');
    nodeTaints = registerOutput<List<String>?>('nodeTaints');
    orchestratorVersion = registerOutput<String>('orchestratorVersion');
    osDiskSizeGb = registerOutput<int>('osDiskSizeGb');
    osDiskType = registerOutput<String?>('osDiskType');
    osSku = registerOutput<String>('osSku');
    osType = registerOutput<String?>('osType');
    podSubnetId = registerOutput<String?>('podSubnetId');
    priority = registerOutput<String?>('priority');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    scaleDownMode = registerOutput<String?>('scaleDownMode');
    snapshotId = registerOutput<String?>('snapshotId');
    spotMaxPrice = registerOutput<double?>('spotMaxPrice');
    tags = registerOutput<Map<String, String>?>('tags');
    temporaryNameForRotation = registerOutput<String?>('temporaryNameForRotation');
    ultraSsdEnabled = registerOutput<bool?>('ultraSsdEnabled');
    upgradeSettings = registerOutput<KubernetesClusterNodePoolUpgradeSettings?>('upgradeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vmSize = registerOutput<String>('vmSize');
    vnetSubnetId = registerOutput<String?>('vnetSubnetId');
    windowsProfile = registerOutput<KubernetesClusterNodePoolWindowsProfile?>('windowsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePoolWindowsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadRuntime = registerOutput<String?>('workloadRuntime');
    zones = registerOutput<List<String>?>('zones');
  }
}

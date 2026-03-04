import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_extension_args.dart';
import 'kubernetes_cluster_extension_plan.dart';
import 'kubernetes_cluster_extension_state.dart';

/// Manages a Kubernetes Cluster Extension.
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
/// const exampleKubernetesCluster = new azure.containerservice.KubernetesCluster("example", {
///     name: "example-aks",
///     location: "West Europe",
///     resourceGroupName: example.name,
///     dnsPrefix: "example-aks",
///     defaultNodePool: {
///         name: "default",
///         nodeCount: 1,
///         vmSize: "Standard_DS2_v2",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleKubernetesClusterExtension = new azure.containerservice.KubernetesClusterExtension("example", {
///     name: "example-ext",
///     clusterId: exampleKubernetesCluster.id,
///     extensionType: "microsoft.flux",
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
///     name="example-aks",
///     location="West Europe",
///     resource_group_name=example.name,
///     dns_prefix="example-aks",
///     default_node_pool={
///         "name": "default",
///         "node_count": 1,
///         "vm_size": "Standard_DS2_v2",
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_kubernetes_cluster_extension = azure.containerservice.KubernetesClusterExtension("example",
///     name="example-ext",
///     cluster_id=example_kubernetes_cluster.id,
///     extension_type="microsoft.flux")
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
///         Name = "example-aks",
///         Location = "West Europe",
///         ResourceGroupName = example.Name,
///         DnsPrefix = "example-aks",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "default",
///             NodeCount = 1,
///             VmSize = "Standard_DS2_v2",
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleKubernetesClusterExtension = new Azure.ContainerService.KubernetesClusterExtension("example", new()
///     {
///         Name = "example-ext",
///         ClusterId = exampleKubernetesCluster.Id,
///         ExtensionType = "microsoft.flux",
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
/// 			Name:              pulumi.String("example-aks"),
/// 			Location:          pulumi.String("West Europe"),
/// 			ResourceGroupName: example.Name,
/// 			DnsPrefix:         pulumi.String("example-aks"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				NodeCount: pulumi.Int(1),
/// 				VmSize:    pulumi.String("Standard_DS2_v2"),
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewKubernetesClusterExtension(ctx, "example", &containerservice.KubernetesClusterExtensionArgs{
/// 			Name:          pulumi.String("example-ext"),
/// 			ClusterId:     exampleKubernetesCluster.ID(),
/// 			ExtensionType: pulumi.String("microsoft.flux"),
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
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.containerservice.KubernetesClusterExtension;
/// import com.pulumi.azure.containerservice.KubernetesClusterExtensionArgs;
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
///             .name("example-aks")
///             .location("West Europe")
///             .resourceGroupName(example.name())
///             .dnsPrefix("example-aks")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("default")
///                 .nodeCount(1)
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleKubernetesClusterExtension = new KubernetesClusterExtension("exampleKubernetesClusterExtension", KubernetesClusterExtensionArgs.builder()
///             .name("example-ext")
///             .clusterId(exampleKubernetesCluster.id())
///             .extensionType("microsoft.flux")
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
///       name: example-aks
///       location: West Europe
///       resourceGroupName: ${example.name}
///       dnsPrefix: example-aks
///       defaultNodePool:
///         name: default
///         nodeCount: 1
///         vmSize: Standard_DS2_v2
///       identity:
///         type: SystemAssigned
///   exampleKubernetesClusterExtension:
///     type: azure:containerservice:KubernetesClusterExtension
///     name: example
///     properties:
///       name: example-ext
///       clusterId: ${exampleKubernetesCluster.id}
///       extensionType: microsoft.flux
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.KubernetesConfiguration` - 2024-11-01
///
/// ## Import
///
/// Kubernetes Cluster Extension can be imported using the `resource id` for different `cluster_resource_name`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/kubernetesClusterExtension:KubernetesClusterExtension example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1/providers/Microsoft.KubernetesConfiguration/extensions/extension1
/// ```
class KubernetesClusterExtension extends pulumi.CustomResource {
  /// An `aks_assigned_identity` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> aksAssignedIdentities;

  /// Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> clusterId;

  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  late final pulumi.Output<Map<String, String>?> configurationProtectedSettings;

  /// Configuration settings, as name-value pairs for configuring this extension.
  late final pulumi.Output<Map<String, String>?> configurationSettings;

  /// The current version of the extension.
  late final pulumi.Output<String> currentVersion;

  /// Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for AKS](https://learn.microsoft.com/en-us/azure/aks/cluster-extensions?tabs=azure-cli#currently-available-extensions). Changing this forces a new Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> extensionType;

  /// Specifies the name which should be used for this Kubernetes Cluster Extension. Changing this forces a new Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> name;

  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<KubernetesClusterExtensionPlan?> plan;

  /// Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> releaseNamespace;

  /// The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> releaseTrain;

  /// Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> targetNamespace;

  /// User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String?> version;

  /// Creates a new [KubernetesClusterExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesClusterExtension]. {@macro pulumi_containerservice_kubernetes_cluster_extension_kubernetes_cluster_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesClusterExtension(
    String name, {
    KubernetesClusterExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerservice/kubernetesClusterExtension:KubernetesClusterExtension',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aksAssignedIdentities = registerOutput<List<Map<String, dynamic>>>(
      'aksAssignedIdentities',
    );
    clusterId = registerOutput<String>('clusterId');
    configurationProtectedSettings = registerOutput<Map<String, String>?>(
      'configurationProtectedSettings',
    );
    configurationSettings = registerOutput<Map<String, String>?>(
      'configurationSettings',
    );
    currentVersion = registerOutput<String>('currentVersion');
    extensionType = registerOutput<String>('extensionType');
    this.name = registerOutput<String>('name');
    plan = registerOutput<KubernetesClusterExtensionPlan?>('plan');
    releaseNamespace = registerOutput<String>('releaseNamespace');
    releaseTrain = registerOutput<String>('releaseTrain');
    targetNamespace = registerOutput<String>('targetNamespace');
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [KubernetesClusterExtension] resource's state with the given [name] and [id].
  static KubernetesClusterExtension get(
    String name,
    pulumi.Input<String> id, {
    KubernetesClusterExtensionState? state,
  }) {
    return KubernetesClusterExtension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KubernetesClusterExtension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerservice/kubernetesClusterExtension:KubernetesClusterExtension',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aksAssignedIdentities = registerOutput<List<Map<String, dynamic>>>(
      'aksAssignedIdentities',
    );
    clusterId = registerOutput<String>('clusterId');
    configurationProtectedSettings = registerOutput<Map<String, String>?>(
      'configurationProtectedSettings',
    );
    configurationSettings = registerOutput<Map<String, String>?>(
      'configurationSettings',
    );
    currentVersion = registerOutput<String>('currentVersion');
    extensionType = registerOutput<String>('extensionType');
    this.name = registerOutput<String>('name');
    plan = registerOutput<KubernetesClusterExtensionPlan?>('plan');
    releaseNamespace = registerOutput<String>('releaseNamespace');
    releaseTrain = registerOutput<String>('releaseTrain');
    targetNamespace = registerOutput<String>('targetNamespace');
    version = registerOutput<String?>('version');
  }
}

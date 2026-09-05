import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_deployment_safeguard_args.dart';
import 'cluster_deployment_safeguard_state.dart';

/// Manages a Deployment Safeguard for a Kubernetes Cluster.
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
///     location: example.location,
///     resourceGroupName: example.name,
///     dnsPrefix: "exampleaks",
///     defaultNodePool: {
///         name: "default",
///         nodeCount: 1,
///         vmSize: "Standard_DS2_v2",
///         upgradeSettings: {
///             maxSurge: "10%",
///         },
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
///     azurePolicyEnabled: true,
/// });
/// const exampleClusterDeploymentSafeguard = new azure.containerservice.ClusterDeploymentSafeguard("example", {
///     kubernetesClusterId: exampleKubernetesCluster.id,
///     level: "Enforce",
///     excludedNamespaces: [
///         "my-app-namespace",
///         "legacy-app",
///     ],
///     podSecurityStandardsLevel: "Restricted",
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
///     location=example.location,
///     resource_group_name=example.name,
///     dns_prefix="exampleaks",
///     default_node_pool={
///         "name": "default",
///         "node_count": 1,
///         "vm_size": "Standard_DS2_v2",
///         "upgrade_settings": {
///             "max_surge": "10%",
///         },
///     },
///     identity={
///         "type": "SystemAssigned",
///     },
///     azure_policy_enabled=True)
/// example_cluster_deployment_safeguard = azure.containerservice.ClusterDeploymentSafeguard("example",
///     kubernetes_cluster_id=example_kubernetes_cluster.id,
///     level="Enforce",
///     excluded_namespaces=[
///         "my-app-namespace",
///         "legacy-app",
///     ],
///     pod_security_standards_level="Restricted")
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
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         DnsPrefix = "exampleaks",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "default",
///             NodeCount = 1,
///             VmSize = "Standard_DS2_v2",
///             UpgradeSettings = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs
///             {
///                 MaxSurge = "10%",
///             },
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         AzurePolicyEnabled = true,
///     });
///
///     var exampleClusterDeploymentSafeguard = new Azure.ContainerService.ClusterDeploymentSafeguard("example", new()
///     {
///         KubernetesClusterId = exampleKubernetesCluster.Id,
///         Level = "Enforce",
///         ExcludedNamespaces = new[]
///         {
///             "my-app-namespace",
///             "legacy-app",
///         },
///         PodSecurityStandardsLevel = "Restricted",
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
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			DnsPrefix:         pulumi.String("exampleaks"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				NodeCount: pulumi.Int(1),
/// 				VmSize:    pulumi.String("Standard_DS2_v2"),
/// 				UpgradeSettings: &containerservice.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs{
/// 					MaxSurge: pulumi.String("10%"),
/// 				},
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			AzurePolicyEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewClusterDeploymentSafeguard(ctx, "example", &containerservice.ClusterDeploymentSafeguardArgs{
/// 			KubernetesClusterId: exampleKubernetesCluster.ID().ToIDOutput().ToStringOutput(),
/// 			Level:               pulumi.String("Enforce"),
/// 			ExcludedNamespaces: pulumi.StringArray{
/// 				pulumi.String("my-app-namespace"),
/// 				pulumi.String("legacy-app"),
/// 			},
/// 			PodSecurityStandardsLevel: pulumi.String("Restricted"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_containerservice_kubernetescluster" "example" {
///   name                = "example-aks"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   dns_prefix          = "exampleaks"
///   default_node_pool = {
///     name       = "default"
///     node_count = 1
///     vm_size    = "Standard_DS2_v2"
///     upgrade_settings = {
///       max_surge = "10%"
///     }
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
///   azure_policy_enabled = true
/// }
/// resource "azure_containerservice_clusterdeploymentsafeguard" "example" {
///   kubernetes_cluster_id        = azure_containerservice_kubernetescluster.example.id
///   level                        = "Enforce"
///   excluded_namespaces          = ["my-app-namespace", "legacy-app"]
///   pod_security_standards_level = "Restricted"
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
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.containerservice.ClusterDeploymentSafeguard;
/// import com.pulumi.azure.containerservice.ClusterDeploymentSafeguardArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .dnsPrefix("exampleaks")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("default")
///                 .nodeCount(1)
///                 .vmSize("Standard_DS2_v2")
///                 .upgradeSettings(KubernetesClusterDefaultNodePoolUpgradeSettingsArgs.builder()
///                     .maxSurge("10%")
///                     .build())
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .azurePolicyEnabled(true)
///             .build());
///
///         var exampleClusterDeploymentSafeguard = new ClusterDeploymentSafeguard("exampleClusterDeploymentSafeguard", ClusterDeploymentSafeguardArgs.builder()
///             .kubernetesClusterId(exampleKubernetesCluster.id())
///             .level("Enforce")
///             .excludedNamespaces(
///                 "my-app-namespace",
///                 "legacy-app")
///             .podSecurityStandardsLevel("Restricted")
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
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       dnsPrefix: exampleaks
///       defaultNodePool:
///         name: default
///         nodeCount: 1
///         vmSize: Standard_DS2_v2
///         upgradeSettings:
///           maxSurge: 10%
///       identity:
///         type: SystemAssigned
///       azurePolicyEnabled: true
///   exampleClusterDeploymentSafeguard:
///     type: azure:containerservice:ClusterDeploymentSafeguard
///     name: example
///     properties:
///       kubernetesClusterId: ${exampleKubernetesCluster.id}
///       level: Enforce
///       excludedNamespaces:
///         - my-app-namespace
///         - legacy-app
///       podSecurityStandardsLevel: Restricted
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
/// Deployment Safeguards can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/clusterDeploymentSafeguard:ClusterDeploymentSafeguard example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ContainerService/managedClusters/cluster1
/// ```
class ClusterDeploymentSafeguard extends pulumi.CustomResource {
  /// A list of Kubernetes namespace names that should be excluded from Deployment Safeguards enforcement. This allows certain namespaces to bypass the configured policies.
  late final pulumi.Output<List<String>?> excludedNamespaces;
  /// Specifies the Kubernetes Cluster ID for which Deployment Safeguards should be configured. Changing this forces a new resource to be created.
  late final pulumi.Output<String> kubernetesClusterId;
  /// The level of Deployment Safeguards enforcement. Possible values are `Warn` and `Enforce`.
  late final pulumi.Output<String> level;
  /// The Pod Security Standards level to enforce. Possible values are `Baseline`, `Privileged`, and `Restricted`. Defaults to `Privileged`.
  late final pulumi.Output<String?> podSecurityStandardsLevel;

  /// Creates a new [ClusterDeploymentSafeguard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterDeploymentSafeguard]. {@macro pulumi_containerservice_cluster_deployment_safeguard_cluster_deployment_safeguard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterDeploymentSafeguard(
    String name, {
    ClusterDeploymentSafeguardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/clusterDeploymentSafeguard:ClusterDeploymentSafeguard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    excludedNamespaces = registerOutput<List<String>?>('excludedNamespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    level = registerOutput<String>('level');
    podSecurityStandardsLevel = registerOutput<String?>('podSecurityStandardsLevel');
  }

  /// Gets an existing [ClusterDeploymentSafeguard] resource's state with the given [name] and [id].
  static ClusterDeploymentSafeguard get(
    String name,
    pulumi.Input<String> id, {
    ClusterDeploymentSafeguardState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ClusterDeploymentSafeguard._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ClusterDeploymentSafeguard._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/clusterDeploymentSafeguard:ClusterDeploymentSafeguard',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    excludedNamespaces = registerOutput<List<String>?>('excludedNamespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    level = registerOutput<String>('level');
    podSecurityStandardsLevel = registerOutput<String?>('podSecurityStandardsLevel');
  }

  /// Creates a typed reference to an existing [ClusterDeploymentSafeguard] resource.
  ClusterDeploymentSafeguard.reference(String urn)
    : super(
        'azure:containerservice/clusterDeploymentSafeguard:ClusterDeploymentSafeguard',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    excludedNamespaces = registerOutput<List<String>?>('excludedNamespaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    level = registerOutput<String>('level');
    podSecurityStandardsLevel = registerOutput<String?>('podSecurityStandardsLevel');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flux_configuration_args.dart';
import 'flux_configuration_blob_storage.dart';
import 'flux_configuration_bucket.dart';
import 'flux_configuration_git_repository.dart';
import 'flux_configuration_state.dart';

/// Manages a Kubernetes Flux Configuration.
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
///     clusterId: test.id,
///     extensionType: "microsoft.flux",
/// });
/// const exampleFluxConfiguration = new azure.containerservice.FluxConfiguration("example", {
///     name: "example-fc",
///     clusterId: test.id,
///     namespace: "flux",
///     gitRepository: {
///         url: "https://github.com/Azure/arc-k8s-demo",
///         referenceType: "branch",
///         referenceValue: "main",
///     },
///     kustomizations: [{
///         name: "kustomization-1",
///         postBuild: {
///             substitute: {
///                 example_var: "substitute_with_this",
///             },
///             substituteFroms: [{
///                 kind: "ConfigMap",
///                 name: "example-configmap",
///             }],
///         },
///     }],
/// }, {
///     dependsOn: [exampleKubernetesClusterExtension],
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
///     cluster_id=test["id"],
///     extension_type="microsoft.flux")
/// example_flux_configuration = azure.containerservice.FluxConfiguration("example",
///     name="example-fc",
///     cluster_id=test["id"],
///     namespace="flux",
///     git_repository={
///         "url": "https://github.com/Azure/arc-k8s-demo",
///         "reference_type": "branch",
///         "reference_value": "main",
///     },
///     kustomizations=[{
///         "name": "kustomization-1",
///         "post_build": {
///             "substitute": {
///                 "example_var": "substitute_with_this",
///             },
///             "substitute_froms": [{
///                 "kind": "ConfigMap",
///                 "name": "example-configmap",
///             }],
///         },
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[example_kubernetes_cluster_extension]))
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
///         ClusterId = test.Id,
///         ExtensionType = "microsoft.flux",
///     });
///
///     var exampleFluxConfiguration = new Azure.ContainerService.FluxConfiguration("example", new()
///     {
///         Name = "example-fc",
///         ClusterId = test.Id,
///         Namespace = "flux",
///         GitRepository = new Azure.ContainerService.Inputs.FluxConfigurationGitRepositoryArgs
///         {
///             Url = "https://github.com/Azure/arc-k8s-demo",
///             ReferenceType = "branch",
///             ReferenceValue = "main",
///         },
///         Kustomizations = new[]
///         {
///             new Azure.ContainerService.Inputs.FluxConfigurationKustomizationArgs
///             {
///                 Name = "kustomization-1",
///                 PostBuild = new Azure.ContainerService.Inputs.FluxConfigurationKustomizationPostBuildArgs
///                 {
///                     Substitute =
///                     {
///                         { "example_var", "substitute_with_this" },
///                     },
///                     SubstituteFroms = new[]
///                     {
///                         new Azure.ContainerService.Inputs.FluxConfigurationKustomizationPostBuildSubstituteFromArgs
///                         {
///                             Kind = "ConfigMap",
///                             Name = "example-configmap",
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleKubernetesClusterExtension,
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
/// 		_, err = containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
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
/// 		exampleKubernetesClusterExtension, err := containerservice.NewKubernetesClusterExtension(ctx, "example", &containerservice.KubernetesClusterExtensionArgs{
/// 			Name:          pulumi.String("example-ext"),
/// 			ClusterId:     pulumi.Any(test.Id),
/// 			ExtensionType: pulumi.String("microsoft.flux"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewFluxConfiguration(ctx, "example", &containerservice.FluxConfigurationArgs{
/// 			Name:      pulumi.String("example-fc"),
/// 			ClusterId: pulumi.Any(test.Id),
/// 			Namespace: pulumi.String("flux"),
/// 			GitRepository: &containerservice.FluxConfigurationGitRepositoryArgs{
/// 				Url:            pulumi.String("https://github.com/Azure/arc-k8s-demo"),
/// 				ReferenceType:  pulumi.String("branch"),
/// 				ReferenceValue: pulumi.String("main"),
/// 			},
/// 			Kustomizations: containerservice.FluxConfigurationKustomizationArray{
/// 				&containerservice.FluxConfigurationKustomizationArgs{
/// 					Name: pulumi.String("kustomization-1"),
/// 					PostBuild: &containerservice.FluxConfigurationKustomizationPostBuildArgs{
/// 						Substitute: pulumi.StringMap{
/// 							"example_var": pulumi.String("substitute_with_this"),
/// 						},
/// 						SubstituteFroms: containerservice.FluxConfigurationKustomizationPostBuildSubstituteFromArray{
/// 							&containerservice.FluxConfigurationKustomizationPostBuildSubstituteFromArgs{
/// 								Kind: pulumi.String("ConfigMap"),
/// 								Name: pulumi.String("example-configmap"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleKubernetesClusterExtension,
/// 		}))
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
/// import com.pulumi.azure.containerservice.FluxConfiguration;
/// import com.pulumi.azure.containerservice.FluxConfigurationArgs;
/// import com.pulumi.azure.containerservice.inputs.FluxConfigurationGitRepositoryArgs;
/// import com.pulumi.azure.containerservice.inputs.FluxConfigurationKustomizationArgs;
/// import com.pulumi.azure.containerservice.inputs.FluxConfigurationKustomizationPostBuildArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .clusterId(test.id())
///             .extensionType("microsoft.flux")
///             .build());
///
///         var exampleFluxConfiguration = new FluxConfiguration("exampleFluxConfiguration", FluxConfigurationArgs.builder()
///             .name("example-fc")
///             .clusterId(test.id())
///             .namespace("flux")
///             .gitRepository(FluxConfigurationGitRepositoryArgs.builder()
///                 .url("https://github.com/Azure/arc-k8s-demo")
///                 .referenceType("branch")
///                 .referenceValue("main")
///                 .build())
///             .kustomizations(FluxConfigurationKustomizationArgs.builder()
///                 .name("kustomization-1")
///                 .postBuild(FluxConfigurationKustomizationPostBuildArgs.builder()
///                     .substitute(Map.of("example_var", "substitute_with_this"))
///                     .substituteFroms(FluxConfigurationKustomizationPostBuildSubstituteFromArgs.builder()
///                         .kind("ConfigMap")
///                         .name("example-configmap")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleKubernetesClusterExtension)
///                 .build());
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
///       clusterId: ${test.id}
///       extensionType: microsoft.flux
///   exampleFluxConfiguration:
///     type: azure:containerservice:FluxConfiguration
///     name: example
///     properties:
///       name: example-fc
///       clusterId: ${test.id}
///       namespace: flux
///       gitRepository:
///         url: https://github.com/Azure/arc-k8s-demo
///         referenceType: branch
///         referenceValue: main
///       kustomizations:
///         - name: kustomization-1
///           postBuild:
///             substitute:
///               example_var: substitute_with_this
///             substituteFroms:
///               - kind: ConfigMap
///                 name: example-configmap
///     options:
///       dependsOn:
///         - ${exampleKubernetesClusterExtension}
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
/// Kubernetes Flux Configuration can be imported using the `resource id` for different `cluster_resource_name`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/fluxConfiguration:FluxConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.ContainerService/managedClusters/cluster1/providers/Microsoft.KubernetesConfiguration/fluxConfigurations/fluxConfiguration1
/// ```
class FluxConfiguration extends pulumi.CustomResource {
  /// An `blob_storage` block as defined below.
  late final pulumi.Output<FluxConfigurationBlobStorage?> blobStorage;

  /// A `bucket` block as defined below.
  late final pulumi.Output<FluxConfigurationBucket?> bucket;

  /// Specifies the Cluster ID. Changing this forces a new Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> clusterId;

  /// Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`.
  late final pulumi.Output<bool?> continuousReconciliationEnabled;

  /// A `git_repository` block as defined below.
  late final pulumi.Output<FluxConfigurationGitRepository?> gitRepository;

  /// A `kustomizations` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> kustomizations;

  /// Specifies the name which should be used for this Kubernetes Flux Configuration. Changing this forces a new Kubernetes Flux Configuration to be created.
  late final pulumi.Output<String> name;

  /// Specifies the namespace to which this configuration is installed to. Changing this forces a new Kubernetes Flux Configuration to be created.
  late final pulumi.Output<String> namespace;

  /// Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Kubernetes Flux Configuration to be created.
  late final pulumi.Output<String?> scope;

  /// Creates a new [FluxConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FluxConfiguration]. {@macro pulumi_containerservice_flux_configuration_flux_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FluxConfiguration(
    String name, {
    FluxConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerservice/fluxConfiguration:FluxConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blobStorage = registerOutput<FluxConfigurationBlobStorage?>(
      'blobStorage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FluxConfigurationBlobStorage.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bucket = registerOutput<FluxConfigurationBucket?>(
      'bucket',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FluxConfigurationBucket.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clusterId = registerOutput<String>('clusterId');
    continuousReconciliationEnabled = registerOutput<bool?>(
      'continuousReconciliationEnabled',
    );
    gitRepository = registerOutput<FluxConfigurationGitRepository?>(
      'gitRepository',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FluxConfigurationGitRepository.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kustomizations = registerOutput<List<Map<String, dynamic>>>(
      'kustomizations',
    );
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    scope = registerOutput<String?>('scope');
  }

  /// Gets an existing [FluxConfiguration] resource's state with the given [name] and [id].
  static FluxConfiguration get(
    String name,
    pulumi.Input<String> id, {
    FluxConfigurationState? state,
  }) {
    return FluxConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FluxConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerservice/fluxConfiguration:FluxConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blobStorage = registerOutput<FluxConfigurationBlobStorage?>(
      'blobStorage',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FluxConfigurationBlobStorage.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bucket = registerOutput<FluxConfigurationBucket?>(
      'bucket',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FluxConfigurationBucket.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clusterId = registerOutput<String>('clusterId');
    continuousReconciliationEnabled = registerOutput<bool?>(
      'continuousReconciliationEnabled',
    );
    gitRepository = registerOutput<FluxConfigurationGitRepository?>(
      'gitRepository',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FluxConfigurationGitRepository.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kustomizations = registerOutput<List<Map<String, dynamic>>>(
      'kustomizations',
    );
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    scope = registerOutput<String?>('scope');
  }
}

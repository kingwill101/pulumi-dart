import 'package:pulumi/pulumi.dart' as pulumi;
import 'flux_configuration_args.dart';
import 'flux_configuration_blob_storage.dart';
import 'flux_configuration_bucket.dart';
import 'flux_configuration_git_repository.dart';
import 'flux_configuration_state.dart';

/// Manages an Arc Kubernetes Flux Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.arckubernetes.Cluster("example", {
///     name: "example-akcc",
///     resourceGroupName: example.name,
///     location: "West Europe",
///     agentPublicKeyCertificate: std.filebase64({
///         input: "testdata/public.cer",
///     }).then(invoke => invoke.result),
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         ENV: "Test",
///     },
/// });
/// const exampleClusterExtension = new azure.arckubernetes.ClusterExtension("example", {
///     name: "example-ext",
///     clusterId: test.id,
///     extensionType: "microsoft.flux",
/// });
/// const exampleFluxConfiguration = new azure.arckubernetes.FluxConfiguration("example", {
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
///     }],
/// }, {
///     dependsOn: [exampleClusterExtension],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_cluster = azure.arckubernetes.Cluster("example",
///     name="example-akcc",
///     resource_group_name=example.name,
///     location="West Europe",
///     agent_public_key_certificate=std.filebase64(input="testdata/public.cer").result,
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "ENV": "Test",
///     })
/// example_cluster_extension = azure.arckubernetes.ClusterExtension("example",
///     name="example-ext",
///     cluster_id=test["id"],
///     extension_type="microsoft.flux")
/// example_flux_configuration = azure.arckubernetes.FluxConfiguration("example",
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
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[example_cluster_extension]))
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.ArcKubernetes.Cluster("example", new()
///     {
///         Name = "example-akcc",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///         AgentPublicKeyCertificate = Std.Filebase64.Invoke(new()
///         {
///             Input = "testdata/public.cer",
///         }).Apply(invoke => invoke.Result),
///         Identity = new Azure.ArcKubernetes.Inputs.ClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "ENV", "Test" },
///         },
///     });
///
///     var exampleClusterExtension = new Azure.ArcKubernetes.ClusterExtension("example", new()
///     {
///         Name = "example-ext",
///         ClusterId = test.Id,
///         ExtensionType = "microsoft.flux",
///     });
///
///     var exampleFluxConfiguration = new Azure.ArcKubernetes.FluxConfiguration("example", new()
///     {
///         Name = "example-fc",
///         ClusterId = test.Id,
///         Namespace = "flux",
///         GitRepository = new Azure.ArcKubernetes.Inputs.FluxConfigurationGitRepositoryArgs
///         {
///             Url = "https://github.com/Azure/arc-k8s-demo",
///             ReferenceType = "branch",
///             ReferenceValue = "main",
///         },
///         Kustomizations = new[]
///         {
///             new Azure.ArcKubernetes.Inputs.FluxConfigurationKustomizationArgs
///             {
///                 Name = "kustomization-1",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleClusterExtension,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arckubernetes"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "testdata/public.cer",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arckubernetes.NewCluster(ctx, "example", &arckubernetes.ClusterArgs{
/// 			Name:                      pulumi.String("example-akcc"),
/// 			ResourceGroupName:         example.Name,
/// 			Location:                  pulumi.String("West Europe"),
/// 			AgentPublicKeyCertificate: pulumi.String(invokeFilebase64.Result),
/// 			Identity: &arckubernetes.ClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ENV": pulumi.String("Test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleClusterExtension, err := arckubernetes.NewClusterExtension(ctx, "example", &arckubernetes.ClusterExtensionArgs{
/// 			Name:          pulumi.String("example-ext"),
/// 			ClusterId:     pulumi.Any(test.Id),
/// 			ExtensionType: pulumi.String("microsoft.flux"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arckubernetes.NewFluxConfiguration(ctx, "example", &arckubernetes.FluxConfigurationArgs{
/// 			Name:      pulumi.String("example-fc"),
/// 			ClusterId: pulumi.Any(test.Id),
/// 			Namespace: pulumi.String("flux"),
/// 			GitRepository: &arckubernetes.FluxConfigurationGitRepositoryArgs{
/// 				Url:            pulumi.String("https://github.com/Azure/arc-k8s-demo"),
/// 				ReferenceType:  pulumi.String("branch"),
/// 				ReferenceValue: pulumi.String("main"),
/// 			},
/// 			Kustomizations: arckubernetes.FluxConfigurationKustomizationArray{
/// 				&arckubernetes.FluxConfigurationKustomizationArgs{
/// 					Name: pulumi.String("kustomization-1"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleClusterExtension,
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
/// import com.pulumi.azure.arckubernetes.Cluster;
/// import com.pulumi.azure.arckubernetes.ClusterArgs;
/// import com.pulumi.azure.arckubernetes.inputs.ClusterIdentityArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import com.pulumi.azure.arckubernetes.ClusterExtension;
/// import com.pulumi.azure.arckubernetes.ClusterExtensionArgs;
/// import com.pulumi.azure.arckubernetes.FluxConfiguration;
/// import com.pulumi.azure.arckubernetes.FluxConfigurationArgs;
/// import com.pulumi.azure.arckubernetes.inputs.FluxConfigurationGitRepositoryArgs;
/// import com.pulumi.azure.arckubernetes.inputs.FluxConfigurationKustomizationArgs;
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
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example-akcc")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .agentPublicKeyCertificate(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("testdata/public.cer")
///                 .build()).result())
///             .identity(ClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("ENV", "Test"))
///             .build());
///
///         var exampleClusterExtension = new ClusterExtension("exampleClusterExtension", ClusterExtensionArgs.builder()
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
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleClusterExtension)
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
///   exampleCluster:
///     type: azure:arckubernetes:Cluster
///     name: example
///     properties:
///       name: example-akcc
///       resourceGroupName: ${example.name}
///       location: West Europe
///       agentPublicKeyCertificate:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: testdata/public.cer
///           return: result
///       identity:
///         type: SystemAssigned
///       tags:
///         ENV: Test
///   exampleClusterExtension:
///     type: azure:arckubernetes:ClusterExtension
///     name: example
///     properties:
///       name: example-ext
///       clusterId: ${test.id}
///       extensionType: microsoft.flux
///   exampleFluxConfiguration:
///     type: azure:arckubernetes:FluxConfiguration
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
///     options:
///       dependsOn:
///         - ${exampleClusterExtension}
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
/// Arc Kubernetes Flux Configuration can be imported using the `resource id` for different `cluster_resource_name`, e.g.
///
/// ```sh
/// $ pulumi import azure:arckubernetes/fluxConfiguration:FluxConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Kubernetes/connectedClusters/cluster1/providers/Microsoft.KubernetesConfiguration/fluxConfigurations/fluxConfiguration1
/// ```
class FluxConfiguration extends pulumi.CustomResource {
  /// An `blob_storage` block as defined below.
  late final pulumi.Output<FluxConfigurationBlobStorage?> blobStorage;

  /// A `bucket` block as defined below.
  late final pulumi.Output<FluxConfigurationBucket?> bucket;

  /// Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  late final pulumi.Output<String> clusterId;

  /// Whether the configuration will keep its reconciliation of its kustomizations and sources with the repository. Defaults to `true`.
  late final pulumi.Output<bool?> continuousReconciliationEnabled;

  /// A `git_repository` block as defined below.
  late final pulumi.Output<FluxConfigurationGitRepository?> gitRepository;

  /// A `kustomizations` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> kustomizations;

  /// Specifies the name which should be used for this Arc Kubernetes Flux Configuration. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  late final pulumi.Output<String> name;

  /// Specifies the namespace to which this configuration is installed to. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  late final pulumi.Output<String> namespace;

  /// Specifies the scope at which the operator will be installed. Possible values are `cluster` and `namespace`. Defaults to `namespace`. Changing this forces a new Arc Kubernetes Flux Configuration to be created.
  late final pulumi.Output<String?> scope;

  /// Creates a new [FluxConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FluxConfiguration]. {@macro pulumi_arckubernetes_flux_configuration_flux_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FluxConfiguration(
    String name, {
    FluxConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:arckubernetes/fluxConfiguration:FluxConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blobStorage = registerOutput<FluxConfigurationBlobStorage?>('blobStorage');
    bucket = registerOutput<FluxConfigurationBucket?>('bucket');
    clusterId = registerOutput<String>('clusterId');
    continuousReconciliationEnabled = registerOutput<bool?>(
      'continuousReconciliationEnabled',
    );
    gitRepository = registerOutput<FluxConfigurationGitRepository?>(
      'gitRepository',
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
         'azure:arckubernetes/fluxConfiguration:FluxConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blobStorage = registerOutput<FluxConfigurationBlobStorage?>('blobStorage');
    bucket = registerOutput<FluxConfigurationBucket?>('bucket');
    clusterId = registerOutput<String>('clusterId');
    continuousReconciliationEnabled = registerOutput<bool?>(
      'continuousReconciliationEnabled',
    );
    gitRepository = registerOutput<FluxConfigurationGitRepository?>(
      'gitRepository',
    );
    kustomizations = registerOutput<List<Map<String, dynamic>>>(
      'kustomizations',
    );
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    scope = registerOutput<String?>('scope');
  }
}

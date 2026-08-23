import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_identity.dart';
import 'cluster_state.dart';

/// Manages an Arc Kubernetes Cluster.
///
/// &gt; **Note:** Installing and configuring the Azure Arc Agent on your Kubernetes Cluster to establish connectivity is outside the scope of this document. For more details refer to [Deploy agents to your cluster](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/conceptual-agent-overview#deploy-agents-to-your-cluster) and [Connect an existing Kubernetes Cluster](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/quickstart-connect-cluster?tabs=azure-cli#connect-an-existing-kubernetes-cluster). If you encounter issues connecting your Kubernetes Cluster to Azure Arc, we'd recommend opening a ticket with Microsoft Support.
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_arckubernetes_cluster" "example" {
///   name                         = "example-akcc"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   location                     = "West Europe"
///   agent_public_key_certificate = filebase64("testdata/public.cer")
///   identity = {
///     type = "SystemAssigned"
///   }
///   tags = {
///     "ENV" = "Test"
///   }
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
/// ```
///
///
/// &gt; **Note:** An extensive example on connecting the `azure.arckubernetes.Cluster` to an external kubernetes cluster can be found in the `./examples/arckubernetes` directory within the GitHub Repository.
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kubernetes` - 2024-01-01
///
/// ## Import
///
/// Arc Kubernetes Cluster can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:arckubernetes/cluster:Cluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Kubernetes/connectedClusters/cluster1
/// ```
class Cluster extends pulumi.CustomResource {
  /// Specifies the base64-encoded public certificate used by the agent to do the initial handshake to the backend services in Azure. Changing this forces a new Arc Kubernetes Cluster to be created.
  late final pulumi.Output<String> agentPublicKeyCertificate;
  /// Version of the agent running on the cluster resource.
  late final pulumi.Output<String> agentVersion;
  /// The distribution running on this Arc Kubernetes Cluster.
  late final pulumi.Output<String> distribution;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster to be created.
  late final pulumi.Output<ClusterIdentity> identity;
  /// The infrastructure on which the Arc Kubernetes Cluster is running on.
  late final pulumi.Output<String> infrastructure;
  /// The Kubernetes version of the cluster resource.
  late final pulumi.Output<String> kubernetesVersion;
  /// Specifies the Azure Region where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Arc Kubernetes Cluster. Changing this forces a new Arc Kubernetes Cluster to be created.
  late final pulumi.Output<String> name;
  /// The cluster offering.
  late final pulumi.Output<String> offering;
  /// Specifies the name of the Resource Group where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Kubernetes Cluster.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Number of CPU cores present in the cluster resource.
  late final pulumi.Output<int> totalCoreCount;
  /// Number of nodes present in the cluster resource.
  late final pulumi.Output<int> totalNodeCount;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_arckubernetes_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arckubernetes/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentPublicKeyCertificate = registerOutput<String>('agentPublicKeyCertificate');
    agentVersion = registerOutput<String>('agentVersion');
    distribution = registerOutput<String>('distribution');
    identity = registerOutput<ClusterIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructure = registerOutput<String>('infrastructure');
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    offering = registerOutput<String>('offering');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    totalCoreCount = registerOutput<int>('totalCoreCount');
    totalNodeCount = registerOutput<int>('totalNodeCount');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arckubernetes/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentPublicKeyCertificate = registerOutput<String>('agentPublicKeyCertificate');
    agentVersion = registerOutput<String>('agentVersion');
    distribution = registerOutput<String>('distribution');
    identity = registerOutput<ClusterIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructure = registerOutput<String>('infrastructure');
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    offering = registerOutput<String>('offering');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    totalCoreCount = registerOutput<int>('totalCoreCount');
    totalNodeCount = registerOutput<int>('totalNodeCount');
  }
}

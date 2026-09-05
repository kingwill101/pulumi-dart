import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_args.dart';
import 'target_state.dart';

/// &lt;!-- Note: This documentation is generated. Any manual changes will be overwritten --&gt;
///
/// Manages a Chaos Studio Target.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = new azure.containerservice.KubernetesCluster("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     dnsPrefix: "acctestaksexample",
///     defaultNodePool: {
///         name: "example-value",
///         nodeCount: Number("example-value"),
///         vmSize: "example-value",
///         upgradeSettings: {
///             maxSurge: "example-value",
///         },
///     },
///     identity: {
///         type: "example-value",
///     },
/// });
/// const exampleTarget = new azure.chaosstudio.Target("example", {
///     location: exampleResourceGroup.location,
///     targetResourceId: example.id,
///     targetType: "example-value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.containerservice.KubernetesCluster("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     dns_prefix="acctestaksexample",
///     default_node_pool={
///         "name": "example-value",
///         "node_count": int("example-value"),
///         "vm_size": "example-value",
///         "upgrade_settings": {
///             "max_surge": "example-value",
///         },
///     },
///     identity={
///         "type": "example-value",
///     })
/// example_target = azure.chaosstudio.Target("example",
///     location=example_resource_group.location,
///     target_resource_id=example.id,
///     target_type="example-value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         DnsPrefix = "acctestaksexample",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "example-value",
///             NodeCount = "example-value",
///             VmSize = "example-value",
///             UpgradeSettings = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs
///             {
///                 MaxSurge = "example-value",
///             },
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "example-value",
///         },
///     });
///
///     var exampleTarget = new Azure.ChaosStudio.Target("example", new()
///     {
///         Location = exampleResourceGroup.Location,
///         TargetResourceId = example.Id,
///         TargetType = "example-value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/chaosstudio"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			DnsPrefix:         pulumi.String("acctestaksexample"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("example-value"),
/// 				NodeCount: pulumi.Int("example-value"),
/// 				VmSize:    pulumi.String("example-value"),
/// 				UpgradeSettings: &containerservice.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs{
/// 					MaxSurge: pulumi.String("example-value"),
/// 				},
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("example-value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chaosstudio.NewTarget(ctx, "example", &chaosstudio.TargetArgs{
/// 			Location:         exampleResourceGroup.Location,
/// 			TargetResourceId: example.ID().ToIDOutput().ToStringOutput(),
/// 			TargetType:       pulumi.String("example-value"),
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
/// resource "azure_containerservice_kubernetescluster" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   dns_prefix          = "acctestaksexample"
///   default_node_pool = {
///     name       = "example-value"
///     node_count = "example-value"
///     vm_size    = "example-value"
///     upgrade_settings = {
///       max_surge = "example-value"
///     }
///   }
///   identity = {
///     type = "example-value"
///   }
/// }
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_chaosstudio_target" "example" {
///   location           = azure_core_resourcegroup.example.location
///   target_resource_id = azure_containerservice_kubernetescluster.example.id
///   target_type        = "example-value"
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
/// import com.pulumi.azure.chaosstudio.Target;
/// import com.pulumi.azure.chaosstudio.TargetArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var example = new KubernetesCluster("example", KubernetesClusterArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .dnsPrefix("acctestaksexample")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("example-value")
///                 .nodeCount("example-value")
///                 .vmSize("example-value")
///                 .upgradeSettings(KubernetesClusterDefaultNodePoolUpgradeSettingsArgs.builder()
///                     .maxSurge("example-value")
///                     .build())
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("example-value")
///                 .build())
///             .build());
///
///         var exampleTarget = new Target("exampleTarget", TargetArgs.builder()
///             .location(exampleResourceGroup.location())
///             .targetResourceId(example.id())
///             .targetType("example-value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:containerservice:KubernetesCluster
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       dnsPrefix: acctestaksexample
///       defaultNodePool:
///         name: example-value
///         nodeCount: example-value
///         vmSize: example-value
///         upgradeSettings:
///           maxSurge: example-value
///       identity:
///         type: example-value
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleTarget:
///     type: azure:chaosstudio:Target
///     name: example
///     properties:
///       location: ${exampleResourceGroup.location}
///       targetResourceId: ${example.id}
///       targetType: example-value
/// ```
///
///
/// ## Import
///
/// An existing Chaos Studio Target can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:chaosstudio/target:Target example /{scope}/providers/Microsoft.Chaos/targets/{targetName}
/// ```
///
/// * Where `{scope}` is the ID of the Azure Resource under which the Chaos Studio Target exists. For example `/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/some-resource-group`.
/// * Where `{targetName}` is the name of the Target. For example `targetValue`.
class Target extends pulumi.CustomResource {
  /// The Azure Region where the Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  late final pulumi.Output<String> location;
  /// Specifies the Target Resource Id within which this Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  late final pulumi.Output<String> targetResourceId;
  /// The name of the Chaos Studio Target. This has the format of [publisher]-[targetType] e.g. `Microsoft-StorageAccount`. For supported values please see this Target Type column in [this table](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-providers). Changing this forces a new Chaos Studio Target to be created.
  late final pulumi.Output<String> targetType;

  /// Creates a new [Target].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Target]. {@macro pulumi_chaosstudio_target_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Target(
    String name, {
    TargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:chaosstudio/target:Target',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    location = registerOutput<String>('location');
    targetResourceId = registerOutput<String>('targetResourceId');
    targetType = registerOutput<String>('targetType');
  }

  /// Gets an existing [Target] resource's state with the given [name] and [id].
  static Target get(
    String name,
    pulumi.Input<String> id, {
    TargetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Target._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Target._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:chaosstudio/target:Target',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    targetResourceId = registerOutput<String>('targetResourceId');
    targetType = registerOutput<String>('targetType');
  }

  /// Creates a typed reference to an existing [Target] resource.
  Target.reference(String urn)
    : super(
        'azure:chaosstudio/target:Target',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    location = registerOutput<String>('location');
    targetResourceId = registerOutput<String>('targetResourceId');
    targetType = registerOutput<String>('targetType');
  }
}

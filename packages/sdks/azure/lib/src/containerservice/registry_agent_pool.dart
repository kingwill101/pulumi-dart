import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_agent_pool_args.dart';
import 'registry_agent_pool_state.dart';

/// Manages an Azure Container Registry Agent Pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europ",
/// });
/// const exampleRegistry = new azure.containerservice.Registry("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Premium",
/// });
/// const exampleRegistryAgentPool = new azure.containerservice.RegistryAgentPool("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     containerRegistryName: exampleRegistry.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europ")
/// example_registry = azure.containerservice.Registry("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Premium")
/// example_registry_agent_pool = azure.containerservice.RegistryAgentPool("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     container_registry_name=example_registry.name)
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
///         Name = "example",
///         Location = "West Europ",
///     });
///
///     var exampleRegistry = new Azure.ContainerService.Registry("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Premium",
///     });
///
///     var exampleRegistryAgentPool = new Azure.ContainerService.RegistryAgentPool("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ContainerRegistryName = exampleRegistry.Name,
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
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europ"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistry, err := containerservice.NewRegistry(ctx, "example", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Premium"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewRegistryAgentPool(ctx, "example", &containerservice.RegistryAgentPoolArgs{
/// 			Name:                  pulumi.String("example"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			ContainerRegistryName: exampleRegistry.Name,
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
///   name     = "example"
///   location = "West Europ"
/// }
/// resource "azure_containerservice_registry" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "Premium"
/// }
/// resource "azure_containerservice_registryagentpool" "example" {
///   name                    = "example"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   location                = azure_core_resourcegroup.example.location
///   container_registry_name = azure_containerservice_registry.example.name
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
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.RegistryAgentPool;
/// import com.pulumi.azure.containerservice.RegistryAgentPoolArgs;
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
///             .name("example")
///             .location("West Europ")
///             .build());
///
///         var exampleRegistry = new Registry("exampleRegistry", RegistryArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Premium")
///             .build());
///
///         var exampleRegistryAgentPool = new RegistryAgentPool("exampleRegistryAgentPool", RegistryAgentPoolArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .containerRegistryName(exampleRegistry.name())
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
///       name: example
///       location: West Europ
///   exampleRegistry:
///     type: azure:containerservice:Registry
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Premium
///   exampleRegistryAgentPool:
///     type: azure:containerservice:RegistryAgentPool
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       containerRegistryName: ${exampleRegistry.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2019-06-01-preview
///
/// ## Import
///
/// Azure Container Registry Agent Pool can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/registryAgentPool:RegistryAgentPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.ContainerRegistry/registries/registry1/agentPools/agentpool1
/// ```
class RegistryAgentPool extends pulumi.CustomResource {
  /// Name of Azure Container Registry to create an Agent Pool for. Changing this forces a new Azure Container Registry Agent Pool to be created.
  late final pulumi.Output<String> containerRegistryName;
  /// VMSS instance count. Defaults to `1`.
  late final pulumi.Output<int?> instanceCount;
  /// The Azure Region where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Azure Container Registry Agent Pool. Changing this forces a new Azure Container Registry Agent Pool to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Azure Container Registry Agent Pool should exist. Changing this forces a new Azure Container Registry Agent Pool to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Container Registry Agent Pool.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Sets the VM your agent pool will run on. Valid values are: `S1` (2 vCPUs, 3 GiB RAM), `S2` (4 vCPUs, 8 GiB RAM), `S3` (8 vCPUs, 16 GiB RAM) or `I6` (64 vCPUs, 216 GiB RAM, Isolated). Defaults to `S1`. Changing this forces a new Azure Container Registry Agent Pool to be created.
  late final pulumi.Output<String?> tier;
  /// The ID of the Virtual Network Subnet Resource where the agent machines will be running. Changing this forces a new Azure Container Registry Agent Pool to be created.
  late final pulumi.Output<String?> virtualNetworkSubnetId;

  /// Creates a new [RegistryAgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryAgentPool]. {@macro pulumi_containerservice_registry_agent_pool_registry_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryAgentPool(
    String name, {
    RegistryAgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryAgentPool:RegistryAgentPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    containerRegistryName = registerOutput<String>('containerRegistryName');
    instanceCount = registerOutput<int?>('instanceCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tier = registerOutput<String?>('tier');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
  }

  /// Gets an existing [RegistryAgentPool] resource's state with the given [name] and [id].
  static RegistryAgentPool get(
    String name,
    pulumi.Input<String> id, {
    RegistryAgentPoolState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegistryAgentPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegistryAgentPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryAgentPool:RegistryAgentPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerRegistryName = registerOutput<String>('containerRegistryName');
    instanceCount = registerOutput<int?>('instanceCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tier = registerOutput<String?>('tier');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
  }

  /// Creates a typed reference to an existing [RegistryAgentPool] resource.
  RegistryAgentPool.reference(String urn)
    : super(
        'azure:containerservice/registryAgentPool:RegistryAgentPool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    containerRegistryName = registerOutput<String>('containerRegistryName');
    instanceCount = registerOutput<int?>('instanceCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tier = registerOutput<String?>('tier');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
  }
}

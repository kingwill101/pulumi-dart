import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_access_policy_args.dart';
import 'cache_access_policy_state.dart';

/// Manages a HPC Cache Access Policy.
///
/// &gt; **Note:** The `azure.hpc.CacheAccessPolicy` resource has been deprecated because the service is retiring on 2025-09-30. This resource will be removed in v5.0 of the AzureRM Provider. See https://aka.ms/hpccacheretirement for more information.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "examplevn",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "examplesubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const exampleCache = new azure.hpc.Cache("example", {
///     name: "examplehpccache",
///     resourceGroupName: example.name,
///     location: example.location,
///     cacheSizeInGb: 3072,
///     subnetId: exampleSubnet.id,
///     skuName: "Standard_2G",
/// });
/// const exampleCacheAccessPolicy = new azure.hpc.CacheAccessPolicy("example", {
///     name: "example",
///     hpcCacheId: exampleCache.id,
///     accessRules: [{
///         scope: "default",
///         access: "rw",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="examplevn",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="examplesubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// example_cache = azure.hpc.Cache("example",
///     name="examplehpccache",
///     resource_group_name=example.name,
///     location=example.location,
///     cache_size_in_gb=3072,
///     subnet_id=example_subnet.id,
///     sku_name="Standard_2G")
/// example_cache_access_policy = azure.hpc.CacheAccessPolicy("example",
///     name="example",
///     hpc_cache_id=example_cache.id,
///     access_rules=[{
///         "scope": "default",
///         "access": "rw",
///     }])
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "examplevn",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "examplesubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var exampleCache = new Azure.Hpc.Cache("example", new()
///     {
///         Name = "examplehpccache",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CacheSizeInGb = 3072,
///         SubnetId = exampleSubnet.Id,
///         SkuName = "Standard_2G",
///     });
///
///     var exampleCacheAccessPolicy = new Azure.Hpc.CacheAccessPolicy("example", new()
///     {
///         Name = "example",
///         HpcCacheId = exampleCache.Id,
///         AccessRules = new[]
///         {
///             new Azure.Hpc.Inputs.CacheAccessPolicyAccessRuleArgs
///             {
///                 Scope = "default",
///                 Access = "rw",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/hpc"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("examplevn"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("examplesubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCache, err := hpc.NewCache(ctx, "example", &hpc.CacheArgs{
/// 			Name:              pulumi.String("examplehpccache"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CacheSizeInGb:     pulumi.Int(3072),
/// 			SubnetId:          exampleSubnet.ID(),
/// 			SkuName:           pulumi.String("Standard_2G"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hpc.NewCacheAccessPolicy(ctx, "example", &hpc.CacheAccessPolicyArgs{
/// 			Name:       pulumi.String("example"),
/// 			HpcCacheId: exampleCache.ID(),
/// 			AccessRules: hpc.CacheAccessPolicyAccessRuleArray{
/// 				&hpc.CacheAccessPolicyAccessRuleArgs{
/// 					Scope:  pulumi.String("default"),
/// 					Access: pulumi.String("rw"),
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
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "examplevn"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "examplesubnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.1.0/24"]
/// }
/// resource "azure_hpc_cache" "example" {
///   name                = "examplehpccache"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   cache_size_in_gb    = 3072
///   subnet_id           = azure_network_subnet.example.id
///   sku_name            = "Standard_2G"
/// }
/// resource "azure_hpc_cacheaccesspolicy" "example" {
///   name         = "example"
///   hpc_cache_id = azure_hpc_cache.example.id
///   access_rules {
///     scope  = "default"
///     access = "rw"
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.hpc.Cache;
/// import com.pulumi.azure.hpc.CacheArgs;
/// import com.pulumi.azure.hpc.CacheAccessPolicy;
/// import com.pulumi.azure.hpc.CacheAccessPolicyArgs;
/// import com.pulumi.azure.hpc.inputs.CacheAccessPolicyAccessRuleArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("examplevn")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("examplesubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name("examplehpccache")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .cacheSizeInGb(3072)
///             .subnetId(exampleSubnet.id())
///             .skuName("Standard_2G")
///             .build());
///
///         var exampleCacheAccessPolicy = new CacheAccessPolicy("exampleCacheAccessPolicy", CacheAccessPolicyArgs.builder()
///             .name("example")
///             .hpcCacheId(exampleCache.id())
///             .accessRules(CacheAccessPolicyAccessRuleArgs.builder()
///                 .scope("default")
///                 .access("rw")
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: examplevn
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: examplesubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   exampleCache:
///     type: azure:hpc:Cache
///     name: example
///     properties:
///       name: examplehpccache
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       cacheSizeInGb: 3072
///       subnetId: ${exampleSubnet.id}
///       skuName: Standard_2G
///   exampleCacheAccessPolicy:
///     type: azure:hpc:CacheAccessPolicy
///     name: example
///     properties:
///       name: example
///       hpcCacheId: ${exampleCache.id}
///       accessRules:
///         - scope: default
///           access: rw
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageCache` - 2023-05-01
///
/// ## Import
///
/// HPC Cache Access Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hpc/cacheAccessPolicy:CacheAccessPolicy example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.StorageCache/caches/cache1/cacheAccessPolicies/policy1
/// ```
class CacheAccessPolicy extends pulumi.CustomResource {
  /// One or more `accessRule` blocks (up to three) as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> accessRules;
  /// The ID of the HPC Cache that this HPC Cache Access Policy resides in. Changing this forces a new HPC Cache Access Policy to be created.
  late final pulumi.Output<String> hpcCacheId;
  /// The name which should be used for this HPC Cache Access Policy. Changing this forces a new HPC Cache Access Policy to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [CacheAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheAccessPolicy]. {@macro pulumi_hpc_cache_access_policy_cache_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheAccessPolicy(
    String name, {
    CacheAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hpc/cacheAccessPolicy:CacheAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessRules = registerOutput<List<Map<String, dynamic>>>('accessRules');
    hpcCacheId = registerOutput<String>('hpcCacheId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [CacheAccessPolicy] resource's state with the given [name] and [id].
  static CacheAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    CacheAccessPolicyState? state,
  }) {
    return CacheAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CacheAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hpc/cacheAccessPolicy:CacheAccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessRules = registerOutput<List<Map<String, dynamic>>>('accessRules');
    hpcCacheId = registerOutput<String>('hpcCacheId');
    this.name = registerOutput<String>('name');
  }
}

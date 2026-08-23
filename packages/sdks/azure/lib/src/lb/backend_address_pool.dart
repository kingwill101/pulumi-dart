import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_args.dart';
import 'backend_address_pool_state.dart';

/// Manages a Load Balancer Backend Address Pool.
///
/// &gt; **Note:** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "LoadBalancerRG",
///     location: "West Europe",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "PublicIPForLB",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "TestLoadBalancer",
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: "PublicIPAddress",
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleBackendAddressPool = new azure.lb.BackendAddressPool("example", {
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "BackEndAddressPool",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="LoadBalancerRG",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="PublicIPForLB",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="TestLoadBalancer",
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": "PublicIPAddress",
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_backend_address_pool = azure.lb.BackendAddressPool("example",
///     loadbalancer_id=example_load_balancer.id,
///     name="BackEndAddressPool")
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
///         Name = "LoadBalancerRG",
///         Location = "West Europe",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "PublicIPForLB",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "TestLoadBalancer",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.LoadBalancerFrontendIpConfigurationArgs
///             {
///                 Name = "PublicIPAddress",
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var exampleBackendAddressPool = new Azure.Lb.BackendAddressPool("example", new()
///     {
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "BackEndAddressPool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("LoadBalancerRG"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("PublicIPForLB"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("TestLoadBalancer"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              pulumi.String("PublicIPAddress"),
/// 					PublicIpAddressId: examplePublicIp.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewBackendAddressPool(ctx, "example", &lb.BackendAddressPoolArgs{
/// 			LoadbalancerId: exampleLoadBalancer.ID(),
/// 			Name:           pulumi.String("BackEndAddressPool"),
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
///   name     = "LoadBalancerRG"
///   location = "West Europe"
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "PublicIPForLB"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
/// }
/// resource "azure_lb_loadbalancer" "example" {
///   name                = "TestLoadBalancer"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   frontend_ip_configurations {
///     name                 = "PublicIPAddress"
///     public_ip_address_id = azure_network_publicip.example.id
///   }
/// }
/// resource "azure_lb_backendaddresspool" "example" {
///   loadbalancer_id = azure_lb_loadbalancer.example.id
///   name            = "BackEndAddressPool"
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.lb.BackendAddressPool;
/// import com.pulumi.azure.lb.BackendAddressPoolArgs;
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
///             .name("LoadBalancerRG")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("PublicIPForLB")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("TestLoadBalancer")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name("PublicIPAddress")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleBackendAddressPool = new BackendAddressPool("exampleBackendAddressPool", BackendAddressPoolArgs.builder()
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("BackEndAddressPool")
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
///       name: LoadBalancerRG
///       location: West Europe
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: PublicIPForLB
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: TestLoadBalancer
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: PublicIPAddress
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleBackendAddressPool:
///     type: azure:lb:BackendAddressPool
///     name: example
///     properties:
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: BackEndAddressPool
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2023-09-01
///
/// ## Import
///
/// Load Balancer Backend Address Pools can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lb/backendAddressPool:BackendAddressPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/lb1/backendAddressPools/pool1
/// ```
class BackendAddressPool extends pulumi.CustomResource {
  /// The Backend IP Configurations associated with this Backend Address Pool.
  late final pulumi.Output<List<String>> backendIpConfigurations;
  /// An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  late final pulumi.Output<List<String>> inboundNatRules;
  /// The Load Balancing Rules associated with this Backend Address Pool.
  late final pulumi.Output<List<String>> loadBalancingRules;
  /// The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> loadbalancerId;
  /// Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// An array of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  late final pulumi.Output<List<String>> outboundRules;
  /// The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtualNetworkId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `synchronousMode` can set only for Load Balancer with `Standard` SKU.
  late final pulumi.Output<String?> synchronousMode;
  /// One or more `tunnelInterface` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> tunnelInterfaces;
  /// The ID of the Virtual Network within which the Backend Address Pool should exist.
  late final pulumi.Output<String?> virtualNetworkId;

  /// Creates a new [BackendAddressPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendAddressPool]. {@macro pulumi_lb_backend_address_pool_backend_address_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendAddressPool(
    String name, {
    BackendAddressPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/backendAddressPool:BackendAddressPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendIpConfigurations = registerOutput<List<String>>('backendIpConfigurations');
    inboundNatRules = registerOutput<List<String>>('inboundNatRules');
    loadBalancingRules = registerOutput<List<String>>('loadBalancingRules');
    loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    outboundRules = registerOutput<List<String>>('outboundRules');
    synchronousMode = registerOutput<String?>('synchronousMode');
    tunnelInterfaces = registerOutput<List<Map<String, dynamic>>?>('tunnelInterfaces');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }

  /// Gets an existing [BackendAddressPool] resource's state with the given [name] and [id].
  static BackendAddressPool get(
    String name,
    pulumi.Input<String> id, {
    BackendAddressPoolState? state,
  }) {
    return BackendAddressPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackendAddressPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/backendAddressPool:BackendAddressPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendIpConfigurations = registerOutput<List<String>>('backendIpConfigurations');
    inboundNatRules = registerOutput<List<String>>('inboundNatRules');
    loadBalancingRules = registerOutput<List<String>>('loadBalancingRules');
    loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    outboundRules = registerOutput<List<String>>('outboundRules');
    synchronousMode = registerOutput<String?>('synchronousMode');
    tunnelInterfaces = registerOutput<List<Map<String, dynamic>>?>('tunnelInterfaces');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }
}

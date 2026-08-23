import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_address_args.dart';
import 'backend_address_pool_address_state.dart';

/// Manages a Backend Address within a Backend Address Pool.
///
/// &gt; **Note:** Backend Addresses can only be added to a `Standard` SKU Load Balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualNetwork({
///     name: "example-network",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetLB = azure.lb.getLB({
///     name: "example-lb",
///     resourceGroupName: "example-resources",
/// });
/// const exampleGetBackendAddressPool = exampleGetLB.then(exampleGetLB => azure.lb.getBackendAddressPool({
///     name: "first",
///     loadbalancerId: exampleGetLB.id,
/// }));
/// const exampleBackendAddressPoolAddress = new azure.lb.BackendAddressPoolAddress("example", {
///     name: "example",
///     backendAddressPoolId: exampleGetBackendAddressPool.then(exampleGetBackendAddressPool => exampleGetBackendAddressPool.id),
///     virtualNetworkId: example.then(example => example.id),
///     ipAddress: "10.0.0.1",
/// });
/// const backend_pool_cr = exampleGetLB.then(exampleGetLB => azure.lb.getBackendAddressPool({
///     name: "globalLBBackendPool",
///     loadbalancerId: exampleGetLB.id,
/// }));
/// const example_1 = new azure.lb.BackendAddressPoolAddress("example-1", {
///     name: "address1",
///     backendAddressPoolId: backend_pool_cr.then(backend_pool_cr => backend_pool_cr.id),
///     backendAddressIpConfigurationId: backend_lb_R1.frontendIpConfiguration[0].id,
/// });
/// const example_2 = new azure.lb.BackendAddressPoolAddress("example-2", {
///     name: "address2",
///     backendAddressPoolId: backend_pool_cr.then(backend_pool_cr => backend_pool_cr.id),
///     backendAddressIpConfigurationId: backend_lb_R2.frontendIpConfiguration[0].id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_network(name="example-network",
///     resource_group_name="example-resources")
/// example_get_lb = azure.lb.get_lb(name="example-lb",
///     resource_group_name="example-resources")
/// example_get_backend_address_pool = azure.lb.get_backend_address_pool(name="first",
///     loadbalancer_id=example_get_lb.id)
/// example_backend_address_pool_address = azure.lb.BackendAddressPoolAddress("example",
///     name="example",
///     backend_address_pool_id=example_get_backend_address_pool.id,
///     virtual_network_id=example.id,
///     ip_address="10.0.0.1")
/// backend_pool_cr = azure.lb.get_backend_address_pool(name="globalLBBackendPool",
///     loadbalancer_id=example_get_lb.id)
/// example_1 = azure.lb.BackendAddressPoolAddress("example-1",
///     name="address1",
///     backend_address_pool_id=backend_pool_cr.id,
///     backend_address_ip_configuration_id=backend_lb__r1["frontendIpConfiguration"][0]["id"])
/// example_2 = azure.lb.BackendAddressPoolAddress("example-2",
///     name="address2",
///     backend_address_pool_id=backend_pool_cr.id,
///     backend_address_ip_configuration_id=backend_lb__r2["frontendIpConfiguration"][0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVirtualNetwork.Invoke(new()
///     {
///         Name = "example-network",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetLB = Azure.Lb.GetLB.Invoke(new()
///     {
///         Name = "example-lb",
///         ResourceGroupName = "example-resources",
///     });
///
///     var exampleGetBackendAddressPool = Azure.Lb.GetBackendAddressPool.Invoke(new()
///     {
///         Name = "first",
///         LoadbalancerId = exampleGetLB.Apply(getLBResult => getLBResult.Id),
///     });
///
///     var exampleBackendAddressPoolAddress = new Azure.Lb.BackendAddressPoolAddress("example", new()
///     {
///         Name = "example",
///         BackendAddressPoolId = exampleGetBackendAddressPool.Apply(getBackendAddressPoolResult => getBackendAddressPoolResult.Id),
///         VirtualNetworkId = example.Apply(getVirtualNetworkResult => getVirtualNetworkResult.Id),
///         IpAddress = "10.0.0.1",
///     });
///
///     var backend_pool_cr = Azure.Lb.GetBackendAddressPool.Invoke(new()
///     {
///         Name = "globalLBBackendPool",
///         LoadbalancerId = exampleGetLB.Apply(getLBResult => getLBResult.Id),
///     });
///
///     var example_1 = new Azure.Lb.BackendAddressPoolAddress("example-1", new()
///     {
///         Name = "address1",
///         BackendAddressPoolId = backend_pool_cr.Apply(backend_pool_cr => backend_pool_cr.Apply(getBackendAddressPoolResult => getBackendAddressPoolResult.Id)),
///         BackendAddressIpConfigurationId = backend_lb_R1.FrontendIpConfiguration[0].Id,
///     });
///
///     var example_2 = new Azure.Lb.BackendAddressPoolAddress("example-2", new()
///     {
///         Name = "address2",
///         BackendAddressPoolId = backend_pool_cr.Apply(backend_pool_cr => backend_pool_cr.Apply(getBackendAddressPoolResult => getBackendAddressPoolResult.Id)),
///         BackendAddressIpConfigurationId = backend_lb_R2.FrontendIpConfiguration[0].Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualNetwork(ctx, &network.LookupVirtualNetworkArgs{
/// 			Name:              "example-network",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetLB, err := lb.GetLB(ctx, &lb.GetLBArgs{
/// 			Name:              "example-lb",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetBackendAddressPool, err := lb.LookupBackendAddressPool(ctx, &lb.LookupBackendAddressPoolArgs{
/// 			Name:           "first",
/// 			LoadbalancerId: exampleGetLB.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewBackendAddressPoolAddress(ctx, "example", &lb.BackendAddressPoolAddressArgs{
/// 			Name:                 pulumi.String("example"),
/// 			BackendAddressPoolId: pulumi.String(exampleGetBackendAddressPool.Id),
/// 			VirtualNetworkId:     pulumi.String(example.Id),
/// 			IpAddress:            pulumi.String("10.0.0.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backend_pool_cr, err := lb.LookupBackendAddressPool(ctx, &lb.LookupBackendAddressPoolArgs{
/// 			Name:           "globalLBBackendPool",
/// 			LoadbalancerId: exampleGetLB.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewBackendAddressPoolAddress(ctx, "example-1", &lb.BackendAddressPoolAddressArgs{
/// 			Name:                            pulumi.String("address1"),
/// 			BackendAddressPoolId:            pulumi.String(backend_pool_cr.Id),
/// 			BackendAddressIpConfigurationId: pulumi.Any(backend_lb_R1.FrontendIpConfiguration[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewBackendAddressPoolAddress(ctx, "example-2", &lb.BackendAddressPoolAddressArgs{
/// 			Name:                            pulumi.String("address2"),
/// 			BackendAddressPoolId:            pulumi.String(backend_pool_cr.Id),
/// 			BackendAddressIpConfigurationId: pulumi.Any(backend_lb_R2.FrontendIpConfiguration[0].Id),
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
/// data "azure_network_getvirtualnetwork" "example" {
///   name                = "example-network"
///   resource_group_name = "example-resources"
/// }
/// data "azure_lb_getlb" "exampleGetLB" {
///   name                = "example-lb"
///   resource_group_name = "example-resources"
/// }
/// data "azure_lb_getbackendaddresspool" "exampleGetBackendAddressPool" {
///   name            = "first"
///   loadbalancer_id = data.azure_lb_getlb.exampleGetLB.id
/// }
/// data "azure_lb_getbackendaddresspool" "backend-pool-cr" {
///   name            = "globalLBBackendPool"
///   loadbalancer_id = data.azure_lb_getlb.exampleGetLB.id
/// }
///
/// resource "azure_lb_backendaddresspooladdress" "example" {
///   name                    = "example"
///   backend_address_pool_id = data.azure_lb_getbackendaddresspool.exampleGetBackendAddressPool.id
///   virtual_network_id      = data.azure_network_getvirtualnetwork.example.id
///   ip_address              = "10.0.0.1"
/// }
/// resource "azure_lb_backendaddresspooladdress" "example-1" {
///   name                                = "address1"
///   backend_address_pool_id             = data.azure_lb_getbackendaddresspool.backend-pool-cr.id
///   backend_address_ip_configuration_id = backend-lb-R1.frontendIpConfiguration[0].id
/// }
/// resource "azure_lb_backendaddresspooladdress" "example-2" {
///   name                                = "address2"
///   backend_address_pool_id             = data.azure_lb_getbackendaddresspool.backend-pool-cr.id
///   backend_address_ip_configuration_id = backend-lb-R2.frontendIpConfiguration[0].id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualNetworkArgs;
/// import com.pulumi.azure.lb.LbFunctions;
/// import com.pulumi.azure.lb.inputs.GetLBArgs;
/// import com.pulumi.azure.lb.inputs.GetBackendAddressPoolArgs;
/// import com.pulumi.azure.lb.BackendAddressPoolAddress;
/// import com.pulumi.azure.lb.BackendAddressPoolAddressArgs;
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
///         final var example = NetworkFunctions.getVirtualNetwork(GetVirtualNetworkArgs.builder()
///             .name("example-network")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetLB = LbFunctions.getLB(GetLBArgs.builder()
///             .name("example-lb")
///             .resourceGroupName("example-resources")
///             .build());
///
///         final var exampleGetBackendAddressPool = LbFunctions.getBackendAddressPool(GetBackendAddressPoolArgs.builder()
///             .name("first")
///             .loadbalancerId(exampleGetLB.id())
///             .build());
///
///         var exampleBackendAddressPoolAddress = new BackendAddressPoolAddress("exampleBackendAddressPoolAddress", BackendAddressPoolAddressArgs.builder()
///             .name("example")
///             .backendAddressPoolId(exampleGetBackendAddressPool.id())
///             .virtualNetworkId(example.id())
///             .ipAddress("10.0.0.1")
///             .build());
///
///         final var backend-pool-cr = LbFunctions.getBackendAddressPool(GetBackendAddressPoolArgs.builder()
///             .name("globalLBBackendPool")
///             .loadbalancerId(exampleGetLB.id())
///             .build());
///
///         var example_1 = new BackendAddressPoolAddress("example-1", BackendAddressPoolAddressArgs.builder()
///             .name("address1")
///             .backendAddressPoolId(backend_pool_cr.id())
///             .backendAddressIpConfigurationId(backend_lb_R1.frontendIpConfiguration()[0].id())
///             .build());
///
///         var example_2 = new BackendAddressPoolAddress("example-2", BackendAddressPoolAddressArgs.builder()
///             .name("address2")
///             .backendAddressPoolId(backend_pool_cr.id())
///             .backendAddressIpConfigurationId(backend_lb_R2.frontendIpConfiguration()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleBackendAddressPoolAddress:
///     type: azure:lb:BackendAddressPoolAddress
///     name: example
///     properties:
///       name: example
///       backendAddressPoolId: ${exampleGetBackendAddressPool.id}
///       virtualNetworkId: ${example.id}
///       ipAddress: 10.0.0.1
///   example-1:
///     type: azure:lb:BackendAddressPoolAddress
///     properties:
///       name: address1
///       backendAddressPoolId: ${["backend-pool-cr"].id}
///       backendAddressIpConfigurationId: ${["backend-lb-R1"].frontendIpConfiguration[0].id}
///   example-2:
///     type: azure:lb:BackendAddressPoolAddress
///     properties:
///       name: address2
///       backendAddressPoolId: ${["backend-pool-cr"].id}
///       backendAddressIpConfigurationId: ${["backend-lb-R2"].frontendIpConfiguration[0].id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualNetwork
///       arguments:
///         name: example-network
///         resourceGroupName: example-resources
///   exampleGetLB:
///     fn::invoke:
///       function: azure:lb:getLB
///       arguments:
///         name: example-lb
///         resourceGroupName: example-resources
///   exampleGetBackendAddressPool:
///     fn::invoke:
///       function: azure:lb:getBackendAddressPool
///       arguments:
///         name: first
///         loadbalancerId: ${exampleGetLB.id}
///   backend-pool-cr:
///     fn::invoke:
///       function: azure:lb:getBackendAddressPool
///       arguments:
///         name: globalLBBackendPool
///         loadbalancerId: ${exampleGetLB.id}
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
/// Backend Address Pool Addresses can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lb/backendAddressPoolAddress:BackendAddressPoolAddress example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/loadBalancer1/backendAddressPools/backendAddressPool1/addresses/address1
/// ```
class BackendAddressPoolAddress extends pulumi.CustomResource {
  /// The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
  ///
  /// &gt; **Note:** For cross-region load balancer, please append the name of the load balancers, virtual machines, and other resources in each region with a -R1 and -R2.
  late final pulumi.Output<String?> backendAddressIpConfigurationId;
  /// The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created.
  late final pulumi.Output<String> backendAddressPoolId;
  /// A list of `inboundNatRulePortMapping` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> inboundNatRulePortMappings;
  /// The Static IP Address which should be allocated to this Backend Address Pool.
  late final pulumi.Output<String?> ipAddress;
  /// The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Virtual Network within which the Backend Address Pool should exist.
  late final pulumi.Output<String?> virtualNetworkId;

  /// Creates a new [BackendAddressPoolAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendAddressPoolAddress]. {@macro pulumi_lb_backend_address_pool_address_backend_address_pool_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendAddressPoolAddress(
    String name, {
    BackendAddressPoolAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/backendAddressPoolAddress:BackendAddressPoolAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendAddressIpConfigurationId = registerOutput<String?>('backendAddressIpConfigurationId');
    backendAddressPoolId = registerOutput<String>('backendAddressPoolId');
    inboundNatRulePortMappings = registerOutput<List<Map<String, dynamic>>>('inboundNatRulePortMappings');
    ipAddress = registerOutput<String?>('ipAddress');
    this.name = registerOutput<String>('name');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }

  /// Gets an existing [BackendAddressPoolAddress] resource's state with the given [name] and [id].
  static BackendAddressPoolAddress get(
    String name,
    pulumi.Input<String> id, {
    BackendAddressPoolAddressState? state,
  }) {
    return BackendAddressPoolAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackendAddressPoolAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/backendAddressPoolAddress:BackendAddressPoolAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendAddressIpConfigurationId = registerOutput<String?>('backendAddressIpConfigurationId');
    backendAddressPoolId = registerOutput<String>('backendAddressPoolId');
    inboundNatRulePortMappings = registerOutput<List<Map<String, dynamic>>>('inboundNatRulePortMappings');
    ipAddress = registerOutput<String?>('ipAddress');
    this.name = registerOutput<String>('name');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_pool_args.dart';
import 'nat_pool_state.dart';

/// Manages a Load Balancer NAT pool.
///
/// > **Note:** This resource cannot be used with with virtual machines, instead use the `azure.lb.NatRule` resource.
///
/// > **Note:** When using this resource, the Load Balancer needs to have a FrontEnd IP Configuration Attached
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
/// const exampleNatPool = new azure.lb.NatPool("example", {
///     resourceGroupName: example.name,
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "SampleApplicationPool",
///     protocol: "Tcp",
///     frontendPortStart: 80,
///     frontendPortEnd: 81,
///     backendPort: 8080,
///     frontendIpConfigurationName: "PublicIPAddress",
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
/// example_nat_pool = azure.lb.NatPool("example",
///     resource_group_name=example.name,
///     loadbalancer_id=example_load_balancer.id,
///     name="SampleApplicationPool",
///     protocol="Tcp",
///     frontend_port_start=80,
///     frontend_port_end=81,
///     backend_port=8080,
///     frontend_ip_configuration_name="PublicIPAddress")
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
///     var exampleNatPool = new Azure.Lb.NatPool("example", new()
///     {
///         ResourceGroupName = example.Name,
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "SampleApplicationPool",
///         Protocol = "Tcp",
///         FrontendPortStart = 80,
///         FrontendPortEnd = 81,
///         BackendPort = 8080,
///         FrontendIpConfigurationName = "PublicIPAddress",
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
/// 		_, err = lb.NewNatPool(ctx, "example", &lb.NatPoolArgs{
/// 			ResourceGroupName:           example.Name,
/// 			LoadbalancerId:              exampleLoadBalancer.ID(),
/// 			Name:                        pulumi.String("SampleApplicationPool"),
/// 			Protocol:                    pulumi.String("Tcp"),
/// 			FrontendPortStart:           pulumi.Int(80),
/// 			FrontendPortEnd:             pulumi.Int(81),
/// 			BackendPort:                 pulumi.Int(8080),
/// 			FrontendIpConfigurationName: pulumi.String("PublicIPAddress"),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.lb.NatPool;
/// import com.pulumi.azure.lb.NatPoolArgs;
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
///         var exampleNatPool = new NatPool("exampleNatPool", NatPoolArgs.builder()
///             .resourceGroupName(example.name())
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("SampleApplicationPool")
///             .protocol("Tcp")
///             .frontendPortStart(80)
///             .frontendPortEnd(81)
///             .backendPort(8080)
///             .frontendIpConfigurationName("PublicIPAddress")
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
///   exampleNatPool:
///     type: azure:lb:NatPool
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: SampleApplicationPool
///       protocol: Tcp
///       frontendPortStart: 80
///       frontendPortEnd: 81
///       backendPort: 8080
///       frontendIpConfigurationName: PublicIPAddress
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2023-09-01
///
/// ## Import
///
/// Load Balancer NAT Pools can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lb/natPool:NatPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/lb1/inboundNatPools/pool1
/// ```
class NatPool extends pulumi.CustomResource {
  /// The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive.
  late final pulumi.Output<int> backendPort;
  /// Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group.
  late final pulumi.Output<bool?> floatingIpEnabled;
  late final pulumi.Output<String> frontendIpConfigurationId;
  /// The name of the frontend IP configuration exposing this rule.
  late final pulumi.Output<String> frontendIpConfigurationName;
  /// The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  late final pulumi.Output<int> frontendPortEnd;
  /// The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive.
  late final pulumi.Output<int> frontendPortStart;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30`. Defaults to `4`.
  late final pulumi.Output<int?> idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> loadbalancerId;
  /// Specifies the name of the NAT pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The transport protocol for the external endpoint. Possible values are `All`, `Tcp` and `Udp`.
  late final pulumi.Output<String> protocol;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  late final pulumi.Output<bool?> tcpResetEnabled;

  /// Creates a new [NatPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatPool]. {@macro pulumi_lb_nat_pool_nat_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatPool(
    String name, {
    NatPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/natPool:NatPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendPort = registerOutput<int>('backendPort');
    this.floatingIpEnabled = registerOutput<bool?>('floatingIpEnabled');
    this.frontendIpConfigurationId = registerOutput<String>('frontendIpConfigurationId');
    this.frontendIpConfigurationName = registerOutput<String>('frontendIpConfigurationName');
    this.frontendPortEnd = registerOutput<int>('frontendPortEnd');
    this.frontendPortStart = registerOutput<int>('frontendPortStart');
    this.idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    this.loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    this.protocol = registerOutput<String>('protocol');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tcpResetEnabled = registerOutput<bool?>('tcpResetEnabled');
  }

  /// Gets an existing [NatPool] resource's state with the given [name] and [id].
  static NatPool get(
    String name,
    pulumi.Input<String> id, {
    NatPoolState? state,
  }) {
    return NatPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/natPool:NatPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendPort = registerOutput<int>('backendPort');
    this.floatingIpEnabled = registerOutput<bool?>('floatingIpEnabled');
    this.frontendIpConfigurationId = registerOutput<String>('frontendIpConfigurationId');
    this.frontendIpConfigurationName = registerOutput<String>('frontendIpConfigurationName');
    this.frontendPortEnd = registerOutput<int>('frontendPortEnd');
    this.frontendPortStart = registerOutput<int>('frontendPortStart');
    this.idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    this.loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    this.protocol = registerOutput<String>('protocol');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tcpResetEnabled = registerOutput<bool?>('tcpResetEnabled');
  }
}

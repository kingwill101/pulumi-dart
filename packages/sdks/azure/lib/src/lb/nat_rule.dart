import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_rule_args.dart';
import 'nat_rule_state.dart';

/// Manages a Load Balancer NAT Rule.
///
/// &gt; **Note:** This resource cannot be used with with virtual machine scale sets, instead use the `azure.lb.NatPool` resource.
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
///     location: "West US",
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "TestLoadBalancer",
///     location: "West US",
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: "PublicIPAddress",
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleBackendAddressPool = new azure.lb.BackendAddressPool("example", {
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "be",
/// });
/// const exampleNatRule = new azure.lb.NatRule("example", {
///     resourceGroupName: example.name,
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "RDPAccess",
///     protocol: "Tcp",
///     frontendPort: 3389,
///     backendPort: 3389,
///     frontendIpConfigurationName: "PublicIPAddress",
/// });
/// const example1 = new azure.lb.NatRule("example1", {
///     resourceGroupName: example.name,
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "RDPAccess",
///     protocol: "Tcp",
///     frontendPortStart: 3000,
///     frontendPortEnd: 3389,
///     backendPort: 3389,
///     backendAddressPoolId: exampleBackendAddressPool.id,
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
///     location="West US",
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="TestLoadBalancer",
///     location="West US",
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": "PublicIPAddress",
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_backend_address_pool = azure.lb.BackendAddressPool("example",
///     loadbalancer_id=example_load_balancer.id,
///     name="be")
/// example_nat_rule = azure.lb.NatRule("example",
///     resource_group_name=example.name,
///     loadbalancer_id=example_load_balancer.id,
///     name="RDPAccess",
///     protocol="Tcp",
///     frontend_port=3389,
///     backend_port=3389,
///     frontend_ip_configuration_name="PublicIPAddress")
/// example1 = azure.lb.NatRule("example1",
///     resource_group_name=example.name,
///     loadbalancer_id=example_load_balancer.id,
///     name="RDPAccess",
///     protocol="Tcp",
///     frontend_port_start=3000,
///     frontend_port_end=3389,
///     backend_port=3389,
///     backend_address_pool_id=example_backend_address_pool.id,
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
///         Location = "West US",
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "TestLoadBalancer",
///         Location = "West US",
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
///         Name = "be",
///     });
///
///     var exampleNatRule = new Azure.Lb.NatRule("example", new()
///     {
///         ResourceGroupName = example.Name,
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "RDPAccess",
///         Protocol = "Tcp",
///         FrontendPort = 3389,
///         BackendPort = 3389,
///         FrontendIpConfigurationName = "PublicIPAddress",
///     });
///
///     var example1 = new Azure.Lb.NatRule("example1", new()
///     {
///         ResourceGroupName = example.Name,
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "RDPAccess",
///         Protocol = "Tcp",
///         FrontendPortStart = 3000,
///         FrontendPortEnd = 3389,
///         BackendPort = 3389,
///         BackendAddressPoolId = exampleBackendAddressPool.Id,
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
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("TestLoadBalancer"),
/// 			Location:          pulumi.String("West US"),
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
/// 		exampleBackendAddressPool, err := lb.NewBackendAddressPool(ctx, "example", &lb.BackendAddressPoolArgs{
/// 			LoadbalancerId: exampleLoadBalancer.ID(),
/// 			Name:           pulumi.String("be"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewNatRule(ctx, "example", &lb.NatRuleArgs{
/// 			ResourceGroupName:           example.Name,
/// 			LoadbalancerId:              exampleLoadBalancer.ID(),
/// 			Name:                        pulumi.String("RDPAccess"),
/// 			Protocol:                    pulumi.String("Tcp"),
/// 			FrontendPort:                pulumi.Int(3389),
/// 			BackendPort:                 pulumi.Int(3389),
/// 			FrontendIpConfigurationName: pulumi.String("PublicIPAddress"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewNatRule(ctx, "example1", &lb.NatRuleArgs{
/// 			ResourceGroupName:           example.Name,
/// 			LoadbalancerId:              exampleLoadBalancer.ID(),
/// 			Name:                        pulumi.String("RDPAccess"),
/// 			Protocol:                    pulumi.String("Tcp"),
/// 			FrontendPortStart:           pulumi.Int(3000),
/// 			FrontendPortEnd:             pulumi.Int(3389),
/// 			BackendPort:                 pulumi.Int(3389),
/// 			BackendAddressPoolId:        exampleBackendAddressPool.ID(),
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
/// import com.pulumi.azure.lb.BackendAddressPool;
/// import com.pulumi.azure.lb.BackendAddressPoolArgs;
/// import com.pulumi.azure.lb.NatRule;
/// import com.pulumi.azure.lb.NatRuleArgs;
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
///             .location("West US")
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("TestLoadBalancer")
///             .location("West US")
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name("PublicIPAddress")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleBackendAddressPool = new BackendAddressPool("exampleBackendAddressPool", BackendAddressPoolArgs.builder()
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("be")
///             .build());
///
///         var exampleNatRule = new NatRule("exampleNatRule", NatRuleArgs.builder()
///             .resourceGroupName(example.name())
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("RDPAccess")
///             .protocol("Tcp")
///             .frontendPort(3389)
///             .backendPort(3389)
///             .frontendIpConfigurationName("PublicIPAddress")
///             .build());
///
///         var example1 = new NatRule("example1", NatRuleArgs.builder()
///             .resourceGroupName(example.name())
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("RDPAccess")
///             .protocol("Tcp")
///             .frontendPortStart(3000)
///             .frontendPortEnd(3389)
///             .backendPort(3389)
///             .backendAddressPoolId(exampleBackendAddressPool.id())
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
///       location: West US
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: TestLoadBalancer
///       location: West US
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: PublicIPAddress
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleBackendAddressPool:
///     type: azure:lb:BackendAddressPool
///     name: example
///     properties:
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: be
///   exampleNatRule:
///     type: azure:lb:NatRule
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: RDPAccess
///       protocol: Tcp
///       frontendPort: 3389
///       backendPort: 3389
///       frontendIpConfigurationName: PublicIPAddress
///   example1:
///     type: azure:lb:NatRule
///     properties:
///       resourceGroupName: ${example.name}
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: RDPAccess
///       protocol: Tcp
///       frontendPortStart: 3000
///       frontendPortEnd: 3389
///       backendPort: 3389
///       backendAddressPoolId: ${exampleBackendAddressPool.id}
///       frontendIpConfigurationName: PublicIPAddress
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
/// Load Balancer NAT Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lb/natRule:NatRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/lb1/inboundNatRules/rule1
/// ```
class NatRule extends pulumi.CustomResource {
  /// Specifies a reference to backendAddressPool resource.
  late final pulumi.Output<String?> backendAddressPoolId;
  late final pulumi.Output<String> backendIpConfigurationId;
  /// The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive.
  late final pulumi.Output<int> backendPort;
  late final pulumi.Output<bool> enableFloatingIp;
  late final pulumi.Output<bool> enableTcpReset;
  /// Are the Floating IPs enabled for this Load Balancer Rule? A "floating" IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to `false`.
  late final pulumi.Output<bool> floatingIpEnabled;
  late final pulumi.Output<String> frontendIpConfigurationId;
  /// The name of the frontend IP configuration exposing this rule.
  late final pulumi.Output<String> frontendIpConfigurationName;
  /// The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive.
  late final pulumi.Output<int?> frontendPort;
  /// The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive.
  late final pulumi.Output<int?> frontendPortEnd;
  /// The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive.
  late final pulumi.Output<int?> frontendPortStart;
  /// Specifies the idle timeout in minutes for TCP connections. Valid values are between `4` and `30` minutes. Defaults to `4` minutes.
  late final pulumi.Output<int?> idleTimeoutInMinutes;
  /// The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> loadbalancerId;
  /// Specifies the name of the NAT Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The transport protocol for the external endpoint. Possible values are `Udp`, `Tcp` or `All`.
  late final pulumi.Output<String> protocol;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Is TCP Reset enabled for this Load Balancer Rule?
  late final pulumi.Output<bool> tcpResetEnabled;

  /// Creates a new [NatRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatRule]. {@macro pulumi_lb_nat_rule_nat_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatRule(
    String name, {
    NatRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/natRule:NatRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendAddressPoolId = registerOutput<String?>('backendAddressPoolId');
    backendIpConfigurationId = registerOutput<String>('backendIpConfigurationId');
    backendPort = registerOutput<int>('backendPort');
    enableFloatingIp = registerOutput<bool>('enableFloatingIp');
    enableTcpReset = registerOutput<bool>('enableTcpReset');
    floatingIpEnabled = registerOutput<bool>('floatingIpEnabled');
    frontendIpConfigurationId = registerOutput<String>('frontendIpConfigurationId');
    frontendIpConfigurationName = registerOutput<String>('frontendIpConfigurationName');
    frontendPort = registerOutput<int?>('frontendPort');
    frontendPortEnd = registerOutput<int?>('frontendPortEnd');
    frontendPortStart = registerOutput<int?>('frontendPortStart');
    idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    protocol = registerOutput<String>('protocol');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tcpResetEnabled = registerOutput<bool>('tcpResetEnabled');
  }

  /// Gets an existing [NatRule] resource's state with the given [name] and [id].
  static NatRule get(
    String name,
    pulumi.Input<String> id, {
    NatRuleState? state,
  }) {
    return NatRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lb/natRule:NatRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendAddressPoolId = registerOutput<String?>('backendAddressPoolId');
    backendIpConfigurationId = registerOutput<String>('backendIpConfigurationId');
    backendPort = registerOutput<int>('backendPort');
    enableFloatingIp = registerOutput<bool>('enableFloatingIp');
    enableTcpReset = registerOutput<bool>('enableTcpReset');
    floatingIpEnabled = registerOutput<bool>('floatingIpEnabled');
    frontendIpConfigurationId = registerOutput<String>('frontendIpConfigurationId');
    frontendIpConfigurationName = registerOutput<String>('frontendIpConfigurationName');
    frontendPort = registerOutput<int?>('frontendPort');
    frontendPortEnd = registerOutput<int?>('frontendPortEnd');
    frontendPortStart = registerOutput<int?>('frontendPortStart');
    idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    loadbalancerId = registerOutput<String>('loadbalancerId');
    this.name = registerOutput<String>('name');
    protocol = registerOutput<String>('protocol');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tcpResetEnabled = registerOutput<bool>('tcpResetEnabled');
  }
}

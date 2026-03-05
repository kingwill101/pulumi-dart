import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_args.dart';
import 'get_application_gateway_result.dart';
import 'get_application_security_group_args.dart';
import 'get_application_security_group_result.dart';
import 'get_express_route_circuit_args.dart';
import 'get_express_route_circuit_result.dart';
import 'get_firewall_args.dart';
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_result.dart';
import 'get_firewall_result.dart';
import 'get_gateway_connection_args.dart';
import 'get_gateway_connection_result.dart';
import 'get_ip_group_args.dart';
import 'get_ip_group_result.dart';
import 'get_ip_groups_args.dart';
import 'get_ip_groups_result.dart';
import 'get_local_network_gateway_args.dart';
import 'get_local_network_gateway_result.dart';
import 'get_nat_gateway_args.dart';
import 'get_nat_gateway_result.dart';
import 'get_network_ddos_protection_plan_args.dart';
import 'get_network_ddos_protection_plan_result.dart';
import 'get_network_interface_args.dart';
import 'get_network_interface_result.dart';
import 'get_network_manager_args.dart';
import 'get_network_manager_connectivity_configuration_args.dart';
import 'get_network_manager_connectivity_configuration_result.dart';
import 'get_network_manager_ipam_pool_args.dart';
import 'get_network_manager_ipam_pool_result.dart';
import 'get_network_manager_network_group_args.dart';
import 'get_network_manager_network_group_result.dart';
import 'get_network_manager_result.dart';
import 'get_network_security_group_args.dart';
import 'get_network_security_group_result.dart';
import 'get_network_security_perimeter_args.dart';
import 'get_network_security_perimeter_profile_args.dart';
import 'get_network_security_perimeter_profile_result.dart';
import 'get_network_security_perimeter_result.dart';
import 'get_network_watcher_args.dart';
import 'get_network_watcher_result.dart';
import 'get_public_ip_prefix_args.dart';
import 'get_public_ip_prefix_result.dart';
import 'get_public_ipargs.dart';
import 'get_public_ipresult.dart';
import 'get_public_ips_args.dart';
import 'get_public_ips_result.dart';
import 'get_route_filter_args.dart';
import 'get_route_filter_result.dart';
import 'get_route_table_args.dart';
import 'get_route_table_result.dart';
import 'get_service_tags_args.dart';
import 'get_service_tags_result.dart';
import 'get_subnet_args.dart';
import 'get_subnet_result.dart';
import 'get_traffic_manager_args.dart';
import 'get_traffic_manager_profile_args.dart';
import 'get_traffic_manager_profile_result.dart';
import 'get_traffic_manager_result.dart';
import 'get_virtual_hub_args.dart';
import 'get_virtual_hub_connection_args.dart';
import 'get_virtual_hub_connection_result.dart';
import 'get_virtual_hub_result.dart';
import 'get_virtual_hub_route_table_args.dart';
import 'get_virtual_hub_route_table_result.dart';
import 'get_virtual_network_args.dart';
import 'get_virtual_network_gateway_args.dart';
import 'get_virtual_network_gateway_result.dart';
import 'get_virtual_network_peering_args.dart';
import 'get_virtual_network_peering_result.dart';
import 'get_virtual_network_result.dart';
import 'get_virtual_wan_args.dart';
import 'get_virtual_wan_result.dart';
import 'get_vpn_gateway_args.dart';
import 'get_vpn_gateway_result.dart';
import 'get_vpn_server_configuration_args.dart';
import 'get_vpn_server_configuration_result.dart';

/// Use this data source to access information about an existing Application Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getApplicationGateway({
///     name: "existing-app-gateway",
///     resourceGroupName: "existing-resources",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_application_gateway(name="existing-app-gateway",
///     resource_group_name="existing-resources")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetApplicationGateway.Invoke(new()
///     {
///         Name = "existing-app-gateway",
///         ResourceGroupName = "existing-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getApplicationGatewayResult => getApplicationGatewayResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupApplicationGateway(ctx, &network.LookupApplicationGatewayArgs{
/// 			Name:              "existing-app-gateway",
/// 			ResourceGroupName: "existing-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetApplicationGatewayArgs;
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
///         final var example = NetworkFunctions.getApplicationGateway(GetApplicationGatewayArgs.builder()
///             .name("existing-app-gateway")
///             .resourceGroupName("existing-resources")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getApplicationGateway
///       arguments:
///         name: existing-app-gateway
///         resourceGroupName: existing-resources
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_application_gateway_get_application_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationGatewayResult> getApplicationGateway(
  GetApplicationGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getApplicationGateway:getApplicationGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationGatewayResult.fromMap(result);
}

/// Use this data source to access information about an existing Application Security Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getApplicationSecurityGroup({
///     name: "tf-appsecuritygroup",
///     resourceGroupName: "my-resource-group",
/// });
/// export const applicationSecurityGroupId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_application_security_group(name="tf-appsecuritygroup",
///     resource_group_name="my-resource-group")
/// pulumi.export("applicationSecurityGroupId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetApplicationSecurityGroup.Invoke(new()
///     {
///         Name = "tf-appsecuritygroup",
///         ResourceGroupName = "my-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["applicationSecurityGroupId"] = example.Apply(getApplicationSecurityGroupResult => getApplicationSecurityGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupApplicationSecurityGroup(ctx, &network.LookupApplicationSecurityGroupArgs{
/// 			Name:              "tf-appsecuritygroup",
/// 			ResourceGroupName: "my-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("applicationSecurityGroupId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetApplicationSecurityGroupArgs;
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
///         final var example = NetworkFunctions.getApplicationSecurityGroup(GetApplicationSecurityGroupArgs.builder()
///             .name("tf-appsecuritygroup")
///             .resourceGroupName("my-resource-group")
///             .build());
///
///         ctx.export("applicationSecurityGroupId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getApplicationSecurityGroup
///       arguments:
///         name: tf-appsecuritygroup
///         resourceGroupName: my-resource-group
/// outputs:
///   applicationSecurityGroupId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_application_security_group_get_application_security_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationSecurityGroupResult> getApplicationSecurityGroup(
  GetApplicationSecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getApplicationSecurityGroup:getApplicationSecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationSecurityGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing ExpressRoute circuit.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getExpressRouteCircuit({
///     resourceGroupName: exampleAzurermResourceGroup.name,
///     name: exampleAzurermExpressRouteCircuit.name,
/// });
/// export const expressRouteCircuitId = example.then(example => example.id);
/// export const serviceKey = example.then(example => example.serviceKey);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_express_route_circuit(resource_group_name=example_azurerm_resource_group["name"],
///     name=example_azurerm_express_route_circuit["name"])
/// pulumi.export("expressRouteCircuitId", example.id)
/// pulumi.export("serviceKey", example.service_key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetExpressRouteCircuit.Invoke(new()
///     {
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///         Name = exampleAzurermExpressRouteCircuit.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["expressRouteCircuitId"] = example.Apply(getExpressRouteCircuitResult => getExpressRouteCircuitResult.Id),
///         ["serviceKey"] = example.Apply(getExpressRouteCircuitResult => getExpressRouteCircuitResult.ServiceKey),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupExpressRouteCircuit(ctx, &network.LookupExpressRouteCircuitArgs{
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 			Name:              exampleAzurermExpressRouteCircuit.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressRouteCircuitId", example.Id)
/// 		ctx.Export("serviceKey", example.ServiceKey)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetExpressRouteCircuitArgs;
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
///         final var example = NetworkFunctions.getExpressRouteCircuit(GetExpressRouteCircuitArgs.builder()
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .name(exampleAzurermExpressRouteCircuit.name())
///             .build());
///
///         ctx.export("expressRouteCircuitId", example.id());
///         ctx.export("serviceKey", example.serviceKey());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getExpressRouteCircuit
///       arguments:
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
///         name: ${exampleAzurermExpressRouteCircuit.name}
/// outputs:
///   expressRouteCircuitId: ${example.id}
///   serviceKey: ${example.serviceKey}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_circuit_get_express_route_circuit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteCircuitResult> getExpressRouteCircuit(
  GetExpressRouteCircuitArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getExpressRouteCircuit:getExpressRouteCircuit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteCircuitResult.fromMap(result);
}

/// Use this data source to access information about an existing Azure Firewall.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getFirewall({
///     name: "firewall1",
///     resourceGroupName: "firewall-RG",
/// });
/// export const firewallPrivateIp = example.then(example => example.ipConfigurations?.[0]?.privateIpAddress);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_firewall(name="firewall1",
///     resource_group_name="firewall-RG")
/// pulumi.export("firewallPrivateIp", example.ip_configurations[0].private_ip_address)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetFirewall.Invoke(new()
///     {
///         Name = "firewall1",
///         ResourceGroupName = "firewall-RG",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firewallPrivateIp"] = example.Apply(getFirewallResult => getFirewallResult.IpConfigurations[0]?.PrivateIpAddress),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupFirewall(ctx, &network.LookupFirewallArgs{
/// 			Name:              "firewall1",
/// 			ResourceGroupName: "firewall-RG",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firewallPrivateIp", example.IpConfigurations[0].PrivateIpAddress)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetFirewallArgs;
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
///         final var example = NetworkFunctions.getFirewall(GetFirewallArgs.builder()
///             .name("firewall1")
///             .resourceGroupName("firewall-RG")
///             .build());
///
///         ctx.export("firewallPrivateIp", example.ipConfigurations()[0].privateIpAddress());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getFirewall
///       arguments:
///         name: firewall1
///         resourceGroupName: firewall-RG
/// outputs:
///   firewallPrivateIp: ${example.ipConfigurations[0].privateIpAddress}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_firewall_get_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getFirewall:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}

/// Use this data source to access information about an existing Firewall Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getFirewallPolicy({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_firewall_policy(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetFirewallPolicy.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getFirewallPolicyResult => getFirewallPolicyResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupFirewallPolicy(ctx, &network.LookupFirewallPolicyArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetFirewallPolicyArgs;
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
///         final var example = NetworkFunctions.getFirewallPolicy(GetFirewallPolicyArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getFirewallPolicy
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_firewall_policy_get_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getFirewallPolicy:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}

/// Use this data source to access information about an existing Virtual Network Gateway Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getGatewayConnection({
///     name: "production",
///     resourceGroupName: "networking",
/// });
/// export const virtualNetworkGatewayConnectionId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_gateway_connection(name="production",
///     resource_group_name="networking")
/// pulumi.export("virtualNetworkGatewayConnectionId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetGatewayConnection.Invoke(new()
///     {
///         Name = "production",
///         ResourceGroupName = "networking",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["virtualNetworkGatewayConnectionId"] = example.Apply(getGatewayConnectionResult => getGatewayConnectionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.GetGatewayConnection(ctx, &network.GetGatewayConnectionArgs{
/// 			Name:              "production",
/// 			ResourceGroupName: "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("virtualNetworkGatewayConnectionId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetGatewayConnectionArgs;
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
///         final var example = NetworkFunctions.getGatewayConnection(GetGatewayConnectionArgs.builder()
///             .name("production")
///             .resourceGroupName("networking")
///             .build());
///
///         ctx.export("virtualNetworkGatewayConnectionId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getGatewayConnection
///       arguments:
///         name: production
///         resourceGroupName: networking
/// outputs:
///   virtualNetworkGatewayConnectionId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_gateway_connection_get_gateway_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayConnectionResult> getGatewayConnection(
  GetGatewayConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getGatewayConnection:getGatewayConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayConnectionResult.fromMap(result);
}

/// Use this data source to access information about an existing IP Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getIpGroup({
///     name: "example1-ipgroup",
///     resourceGroupName: "example-rg",
/// });
/// export const cidrs = example.then(example => example.cidrs);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_ip_group(name="example1-ipgroup",
///     resource_group_name="example-rg")
/// pulumi.export("cidrs", example.cidrs)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetIpGroup.Invoke(new()
///     {
///         Name = "example1-ipgroup",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cidrs"] = example.Apply(getIpGroupResult => getIpGroupResult.Cidrs),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.GetIpGroup(ctx, &network.GetIpGroupArgs{
/// 			Name:              "example1-ipgroup",
/// 			ResourceGroupName: "example-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cidrs", example.Cidrs)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetIpGroupArgs;
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
///         final var example = NetworkFunctions.getIpGroup(GetIpGroupArgs.builder()
///             .name("example1-ipgroup")
///             .resourceGroupName("example-rg")
///             .build());
///
///         ctx.export("cidrs", example.cidrs());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getIpGroup
///       arguments:
///         name: example1-ipgroup
///         resourceGroupName: example-rg
/// outputs:
///   cidrs: ${example.cidrs}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_ip_group_get_ip_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpGroupResult> getIpGroup(
  GetIpGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getIpGroup:getIpGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpGroupResult.fromMap(result);
}

/// Use this data source to access information about existing IP Groups.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getIpGroups({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const ids = example.then(example => example.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_ip_groups(name="existing",
///     resource_group_name="existing")
/// pulumi.export("ids", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetIpGroups.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ids"] = example.Apply(getIpGroupsResult => getIpGroupsResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.GetIpGroups(ctx, &network.GetIpGroupsArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ids", example.Ids)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetIpGroupsArgs;
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
///         final var example = NetworkFunctions.getIpGroups(GetIpGroupsArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("ids", example.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getIpGroups
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   ids: ${example.ids}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_ip_groups_get_ip_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpGroupsResult> getIpGroups(
  GetIpGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getIpGroups:getIpGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpGroupsResult.fromMap(result);
}

/// Use this data source to access information about an existing Local Network Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getLocalNetworkGateway({
///     name: "existing-local-network-gateway",
///     resourceGroupName: "existing-resources",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_local_network_gateway(name="existing-local-network-gateway",
///     resource_group_name="existing-resources")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetLocalNetworkGateway.Invoke(new()
///     {
///         Name = "existing-local-network-gateway",
///         ResourceGroupName = "existing-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getLocalNetworkGatewayResult => getLocalNetworkGatewayResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupLocalNetworkGateway(ctx, &network.LookupLocalNetworkGatewayArgs{
/// 			Name:              "existing-local-network-gateway",
/// 			ResourceGroupName: "existing-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetLocalNetworkGatewayArgs;
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
///         final var example = NetworkFunctions.getLocalNetworkGateway(GetLocalNetworkGatewayArgs.builder()
///             .name("existing-local-network-gateway")
///             .resourceGroupName("existing-resources")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getLocalNetworkGateway
///       arguments:
///         name: existing-local-network-gateway
///         resourceGroupName: existing-resources
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_local_network_gateway_get_local_network_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalNetworkGatewayResult> getLocalNetworkGateway(
  GetLocalNetworkGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getLocalNetworkGateway:getLocalNetworkGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalNetworkGatewayResult.fromMap(result);
}

/// Use this data source to access information about an existing NAT Gateway.
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_nat_gateway_get_nat_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatGatewayResult> getNatGateway(
  GetNatGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNatGateway:getNatGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatGatewayResult.fromMap(result);
}

/// Use this data source to access information about an existing Azure Network DDoS Protection Plan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getNetworkDdosProtectionPlan({
///     name: exampleAzurermNetworkDdosProtectionPlan.name,
///     resourceGroupName: exampleAzurermNetworkDdosProtectionPlan.resourceGroupName,
/// });
/// export const ddosProtectionPlanId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_network_ddos_protection_plan(name=example_azurerm_network_ddos_protection_plan["name"],
///     resource_group_name=example_azurerm_network_ddos_protection_plan["resourceGroupName"])
/// pulumi.export("ddosProtectionPlanId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetNetworkDdosProtectionPlan.Invoke(new()
///     {
///         Name = exampleAzurermNetworkDdosProtectionPlan.Name,
///         ResourceGroupName = exampleAzurermNetworkDdosProtectionPlan.ResourceGroupName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ddosProtectionPlanId"] = example.Apply(getNetworkDdosProtectionPlanResult => getNetworkDdosProtectionPlanResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.GetNetworkDdosProtectionPlan(ctx, &network.GetNetworkDdosProtectionPlanArgs{
/// 			Name:              exampleAzurermNetworkDdosProtectionPlan.Name,
/// 			ResourceGroupName: exampleAzurermNetworkDdosProtectionPlan.ResourceGroupName,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ddosProtectionPlanId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkDdosProtectionPlanArgs;
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
///         final var example = NetworkFunctions.getNetworkDdosProtectionPlan(GetNetworkDdosProtectionPlanArgs.builder()
///             .name(exampleAzurermNetworkDdosProtectionPlan.name())
///             .resourceGroupName(exampleAzurermNetworkDdosProtectionPlan.resourceGroupName())
///             .build());
///
///         ctx.export("ddosProtectionPlanId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkDdosProtectionPlan
///       arguments:
///         name: ${exampleAzurermNetworkDdosProtectionPlan.name}
///         resourceGroupName: ${exampleAzurermNetworkDdosProtectionPlan.resourceGroupName}
/// outputs:
///   ddosProtectionPlanId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_ddos_protection_plan_get_network_ddos_protection_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkDdosProtectionPlanResult> getNetworkDdosProtectionPlan(
  GetNetworkDdosProtectionPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkDdosProtectionPlan:getNetworkDdosProtectionPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkDdosProtectionPlanResult.fromMap(result);
}

/// Use this data source to access information about an existing Network Interface.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getNetworkInterface({
///     name: "acctest-nic",
///     resourceGroupName: "networking",
/// });
/// export const networkInterfaceId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_network_interface(name="acctest-nic",
///     resource_group_name="networking")
/// pulumi.export("networkInterfaceId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetNetworkInterface.Invoke(new()
///     {
///         Name = "acctest-nic",
///         ResourceGroupName = "networking",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["networkInterfaceId"] = example.Apply(getNetworkInterfaceResult => getNetworkInterfaceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupNetworkInterface(ctx, &network.LookupNetworkInterfaceArgs{
/// 			Name:              "acctest-nic",
/// 			ResourceGroupName: "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("networkInterfaceId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkInterfaceArgs;
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
///         final var example = NetworkFunctions.getNetworkInterface(GetNetworkInterfaceArgs.builder()
///             .name("acctest-nic")
///             .resourceGroupName("networking")
///             .build());
///
///         ctx.export("networkInterfaceId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkInterface
///       arguments:
///         name: acctest-nic
///         resourceGroupName: networking
/// outputs:
///   networkInterfaceId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_interface_get_network_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfaceResult> getNetworkInterface(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkInterface:getNetworkInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfaceResult.fromMap(result);
}

/// Use this data source to access information about a Network Manager.
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
/// const current = azure.core.getSubscription({});
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-network-manager",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: [
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description: "example network manager",
/// });
/// const example = azure.network.getNetworkManagerOutput({
///     name: exampleNetworkManager.name,
///     resourceGroupName: exampleNetworkManager.resourceGroupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_subscription()
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-network-manager",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=[
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description="example network manager")
/// example = azure.network.get_network_manager_output(name=example_network_manager.name,
///     resource_group_name=example_network_manager.resource_group_name)
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
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleNetworkManager = new Azure.Network.NetworkManager("example", new()
///     {
///         Name = "example-network-manager",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///         ScopeAccesses = new[]
///         {
///             "Connectivity",
///             "SecurityAdmin",
///         },
///         Description = "example network manager",
///     });
///
///     var example = Azure.Network.GetNetworkManager.Invoke(new()
///     {
///         Name = exampleNetworkManager.Name,
///         ResourceGroupName = exampleNetworkManager.ResourceGroupName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// 			Name:              pulumi.String("example-network-manager"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("Connectivity"),
/// 				pulumi.String("SecurityAdmin"),
/// 			},
/// 			Description: pulumi.String("example network manager"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = network.LookupNetworkManagerOutput(ctx, network.GetNetworkManagerOutputArgs{
/// 			Name:              exampleNetworkManager.Name,
/// 			ResourceGroupName: exampleNetworkManager.ResourceGroupName,
/// 		}, nil)
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkManagerArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-network-manager")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses(
///                 "Connectivity",
///                 "SecurityAdmin")
///             .description("example network manager")
///             .build());
///
///         final var example = NetworkFunctions.getNetworkManager(GetNetworkManagerArgs.builder()
///             .name(exampleNetworkManager.name())
///             .resourceGroupName(exampleNetworkManager.resourceGroupName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleNetworkManager:
///     type: azure:network:NetworkManager
///     name: example
///     properties:
///       name: example-network-manager
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - Connectivity
///         - SecurityAdmin
///       description: example network manager
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkManager
///       arguments:
///         name: ${exampleNetworkManager.name}
///         resourceGroupName: ${exampleNetworkManager.resourceGroupName}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_manager_get_network_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkManagerResult> getNetworkManager(
  GetNetworkManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkManager:getNetworkManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkManagerResult.fromMap(result);
}

/// Use this data source to access information about an existing Network Manager Connectivity Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getNetworkManagerConnectivityConfiguration({
///     name: "existing",
///     networkManagerId: "TODO",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_network_manager_connectivity_configuration(name="existing",
///     network_manager_id="TODO")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetNetworkManagerConnectivityConfiguration.Invoke(new()
///     {
///         Name = "existing",
///         NetworkManagerId = "TODO",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getNetworkManagerConnectivityConfigurationResult => getNetworkManagerConnectivityConfigurationResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupNetworkManagerConnectivityConfiguration(ctx, &network.LookupNetworkManagerConnectivityConfigurationArgs{
/// 			Name:             "existing",
/// 			NetworkManagerId: "TODO",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkManagerConnectivityConfigurationArgs;
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
///         final var example = NetworkFunctions.getNetworkManagerConnectivityConfiguration(GetNetworkManagerConnectivityConfigurationArgs.builder()
///             .name("existing")
///             .networkManagerId("TODO")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkManagerConnectivityConfiguration
///       arguments:
///         name: existing
///         networkManagerId: TODO
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_manager_connectivity_configuration_get_network_manager_connectivity_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkManagerConnectivityConfigurationResult> getNetworkManagerConnectivityConfiguration(
  GetNetworkManagerConnectivityConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkManagerConnectivityConfiguration:getNetworkManagerConnectivityConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkManagerConnectivityConfigurationResult.fromMap(result);
}

/// Use this data source to access information about an existing Network Manager IPAM Pool.
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
/// const current = azure.core.getSubscription({});
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-network-manager",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
/// });
/// const exampleNetworkManagerIpamPool = new azure.network.NetworkManagerIpamPool("example", {
///     name: "example-ipam-pool",
///     location: "West Europe",
///     networkManagerId: exampleNetworkManager.id,
///     displayName: "example-pool",
///     addressPrefixes: ["10.0.0.0/24"],
/// });
/// const example = azure.network.getNetworkManagerIpamPoolOutput({
///     name: exampleNetworkManagerIpamPool.name,
///     networkManagerId: exampleNetworkManager.id,
/// });
/// export const id = example.apply(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_subscription()
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-network-manager",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     scope={
///         "subscription_ids": [current.id],
///     })
/// example_network_manager_ipam_pool = azure.network.NetworkManagerIpamPool("example",
///     name="example-ipam-pool",
///     location="West Europe",
///     network_manager_id=example_network_manager.id,
///     display_name="example-pool",
///     address_prefixes=["10.0.0.0/24"])
/// example = azure.network.get_network_manager_ipam_pool_output(name=example_network_manager_ipam_pool.name,
///     network_manager_id=example_network_manager.id)
/// pulumi.export("id", example.id)
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
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleNetworkManager = new Azure.Network.NetworkManager("example", new()
///     {
///         Name = "example-network-manager",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///     });
///
///     var exampleNetworkManagerIpamPool = new Azure.Network.NetworkManagerIpamPool("example", new()
///     {
///         Name = "example-ipam-pool",
///         Location = "West Europe",
///         NetworkManagerId = exampleNetworkManager.Id,
///         DisplayName = "example-pool",
///         AddressPrefixes = new[]
///         {
///             "10.0.0.0/24",
///         },
///     });
///
///     var example = Azure.Network.GetNetworkManagerIpamPool.Invoke(new()
///     {
///         Name = exampleNetworkManagerIpamPool.Name,
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getNetworkManagerIpamPoolResult => getNetworkManagerIpamPoolResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// 			Name:              pulumi.String("example-network-manager"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerIpamPool, err := network.NewNetworkManagerIpamPool(ctx, "example", &network.NetworkManagerIpamPoolArgs{
/// 			Name:             pulumi.String("example-ipam-pool"),
/// 			Location:         pulumi.String("West Europe"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			DisplayName:      pulumi.String("example-pool"),
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := network.LookupNetworkManagerIpamPoolOutput(ctx, network.GetNetworkManagerIpamPoolOutputArgs{
/// 			Name:             exampleNetworkManagerIpamPool.Name,
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		}, nil)
/// 		ctx.Export("id", example.ApplyT(func(example network.GetNetworkManagerIpamPoolResult) (*string, error) {
/// 			return &example.Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkManagerIpamPool;
/// import com.pulumi.azure.network.NetworkManagerIpamPoolArgs;
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkManagerIpamPoolArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-network-manager")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .build());
///
///         var exampleNetworkManagerIpamPool = new NetworkManagerIpamPool("exampleNetworkManagerIpamPool", NetworkManagerIpamPoolArgs.builder()
///             .name("example-ipam-pool")
///             .location("West Europe")
///             .networkManagerId(exampleNetworkManager.id())
///             .displayName("example-pool")
///             .addressPrefixes("10.0.0.0/24")
///             .build());
///
///         final var example = NetworkFunctions.getNetworkManagerIpamPool(GetNetworkManagerIpamPoolArgs.builder()
///             .name(exampleNetworkManagerIpamPool.name())
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         ctx.export("id", example.applyValue(_example -> _example.id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleNetworkManager:
///     type: azure:network:NetworkManager
///     name: example
///     properties:
///       name: example-network-manager
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///   exampleNetworkManagerIpamPool:
///     type: azure:network:NetworkManagerIpamPool
///     name: example
///     properties:
///       name: example-ipam-pool
///       location: West Europe
///       networkManagerId: ${exampleNetworkManager.id}
///       displayName: example-pool
///       addressPrefixes:
///         - 10.0.0.0/24
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkManagerIpamPool
///       arguments:
///         name: ${exampleNetworkManagerIpamPool.name}
///         networkManagerId: ${exampleNetworkManager.id}
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_manager_ipam_pool_get_network_manager_ipam_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkManagerIpamPoolResult> getNetworkManagerIpamPool(
  GetNetworkManagerIpamPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkManagerIpamPool:getNetworkManagerIpamPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkManagerIpamPoolResult.fromMap(result);
}

/// Use this data source to access information about a Network Manager Network Group.
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
/// const current = azure.core.getSubscription({});
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-network-manager",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: [
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description: "example network manager",
/// });
/// const exampleNetworkManagerNetworkGroup = new azure.network.NetworkManagerNetworkGroup("example", {
///     name: "example-group",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const example = azure.network.getNetworkManagerNetworkGroupOutput({
///     name: exampleNetworkManagerNetworkGroup.name,
///     networkManagerId: exampleNetworkManager.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_subscription()
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-network-manager",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=[
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description="example network manager")
/// example_network_manager_network_group = azure.network.NetworkManagerNetworkGroup("example",
///     name="example-group",
///     network_manager_id=example_network_manager.id)
/// example = azure.network.get_network_manager_network_group_output(name=example_network_manager_network_group.name,
///     network_manager_id=example_network_manager.id)
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
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleNetworkManager = new Azure.Network.NetworkManager("example", new()
///     {
///         Name = "example-network-manager",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///         ScopeAccesses = new[]
///         {
///             "Connectivity",
///             "SecurityAdmin",
///         },
///         Description = "example network manager",
///     });
///
///     var exampleNetworkManagerNetworkGroup = new Azure.Network.NetworkManagerNetworkGroup("example", new()
///     {
///         Name = "example-group",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var example = Azure.Network.GetNetworkManagerNetworkGroup.Invoke(new()
///     {
///         Name = exampleNetworkManagerNetworkGroup.Name,
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// 			Name:              pulumi.String("example-network-manager"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("Connectivity"),
/// 				pulumi.String("SecurityAdmin"),
/// 			},
/// 			Description: pulumi.String("example network manager"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerNetworkGroup, err := network.NewNetworkManagerNetworkGroup(ctx, "example", &network.NetworkManagerNetworkGroupArgs{
/// 			Name:             pulumi.String("example-group"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = network.LookupNetworkManagerNetworkGroupOutput(ctx, network.GetNetworkManagerNetworkGroupOutputArgs{
/// 			Name:             exampleNetworkManagerNetworkGroup.Name,
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		}, nil)
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroup;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroupArgs;
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkManagerNetworkGroupArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-network-manager")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses(
///                 "Connectivity",
///                 "SecurityAdmin")
///             .description("example network manager")
///             .build());
///
///         var exampleNetworkManagerNetworkGroup = new NetworkManagerNetworkGroup("exampleNetworkManagerNetworkGroup", NetworkManagerNetworkGroupArgs.builder()
///             .name("example-group")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         final var example = NetworkFunctions.getNetworkManagerNetworkGroup(GetNetworkManagerNetworkGroupArgs.builder()
///             .name(exampleNetworkManagerNetworkGroup.name())
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleNetworkManager:
///     type: azure:network:NetworkManager
///     name: example
///     properties:
///       name: example-network-manager
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - Connectivity
///         - SecurityAdmin
///       description: example network manager
///   exampleNetworkManagerNetworkGroup:
///     type: azure:network:NetworkManagerNetworkGroup
///     name: example
///     properties:
///       name: example-group
///       networkManagerId: ${exampleNetworkManager.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkManagerNetworkGroup
///       arguments:
///         name: ${exampleNetworkManagerNetworkGroup.name}
///         networkManagerId: ${exampleNetworkManager.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_manager_network_group_get_network_manager_network_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkManagerNetworkGroupResult> getNetworkManagerNetworkGroup(
  GetNetworkManagerNetworkGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkManagerNetworkGroup:getNetworkManagerNetworkGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkManagerNetworkGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Network Security Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getNetworkSecurityGroup({
///     name: "example",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// export const location = example.then(example => example.location);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_network_security_group(name="example",
///     resource_group_name=example_azurerm_resource_group["name"])
/// pulumi.export("location", example.location)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetNetworkSecurityGroup.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["location"] = example.Apply(getNetworkSecurityGroupResult => getNetworkSecurityGroupResult.Location),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupNetworkSecurityGroup(ctx, &network.LookupNetworkSecurityGroupArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("location", example.Location)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkSecurityGroupArgs;
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
///         final var example = NetworkFunctions.getNetworkSecurityGroup(GetNetworkSecurityGroupArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///         ctx.export("location", example.location());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkSecurityGroup
///       arguments:
///         name: example
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// outputs:
///   location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_group_get_network_security_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityGroupResult> getNetworkSecurityGroup(
  GetNetworkSecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkSecurityGroup:getNetworkSecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Network Security Perimeter.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getNetworkSecurityPerimeter({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_network_security_perimeter(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetNetworkSecurityPerimeter.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getNetworkSecurityPerimeterResult => getNetworkSecurityPerimeterResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupNetworkSecurityPerimeter(ctx, &network.LookupNetworkSecurityPerimeterArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkSecurityPerimeterArgs;
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
///         final var example = NetworkFunctions.getNetworkSecurityPerimeter(GetNetworkSecurityPerimeterArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkSecurityPerimeter
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_perimeter_get_network_security_perimeter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityPerimeterResult> getNetworkSecurityPerimeter(
  GetNetworkSecurityPerimeterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkSecurityPerimeter:getNetworkSecurityPerimeter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityPerimeterResult.fromMap(result);
}

/// Use this data source to access information about an existing Network Security Perimeter Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getNetworkSecurityPerimeter({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// const exampleGetNetworkSecurityPerimeterProfile = example.then(example => azure.network.getNetworkSecurityPerimeterProfile({
///     name: "existing",
///     networkSecurityPerimeterId: example.id,
/// }));
/// export const id = exampleGetNetworkSecurityPerimeterProfile.then(exampleGetNetworkSecurityPerimeterProfile => exampleGetNetworkSecurityPerimeterProfile.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_network_security_perimeter(name="existing",
///     resource_group_name="existing")
/// example_get_network_security_perimeter_profile = azure.network.get_network_security_perimeter_profile(name="existing",
///     network_security_perimeter_id=example.id)
/// pulumi.export("id", example_get_network_security_perimeter_profile.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetNetworkSecurityPerimeter.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     var exampleGetNetworkSecurityPerimeterProfile = Azure.Network.GetNetworkSecurityPerimeterProfile.Invoke(new()
///     {
///         Name = "existing",
///         NetworkSecurityPerimeterId = example.Apply(getNetworkSecurityPerimeterResult => getNetworkSecurityPerimeterResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleGetNetworkSecurityPerimeterProfile.Apply(getNetworkSecurityPerimeterProfileResult => getNetworkSecurityPerimeterProfileResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupNetworkSecurityPerimeter(ctx, &network.LookupNetworkSecurityPerimeterArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetNetworkSecurityPerimeterProfile, err := network.LookupNetworkSecurityPerimeterProfile(ctx, &network.LookupNetworkSecurityPerimeterProfileArgs{
/// 			Name:                       "existing",
/// 			NetworkSecurityPerimeterId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleGetNetworkSecurityPerimeterProfile.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkSecurityPerimeterArgs;
/// import com.pulumi.azure.network.inputs.GetNetworkSecurityPerimeterProfileArgs;
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
///         final var example = NetworkFunctions.getNetworkSecurityPerimeter(GetNetworkSecurityPerimeterArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         final var exampleGetNetworkSecurityPerimeterProfile = NetworkFunctions.getNetworkSecurityPerimeterProfile(GetNetworkSecurityPerimeterProfileArgs.builder()
///             .name("existing")
///             .networkSecurityPerimeterId(example.id())
///             .build());
///
///         ctx.export("id", exampleGetNetworkSecurityPerimeterProfile.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkSecurityPerimeter
///       arguments:
///         name: existing
///         resourceGroupName: existing
///   exampleGetNetworkSecurityPerimeterProfile:
///     fn::invoke:
///       function: azure:network:getNetworkSecurityPerimeterProfile
///       arguments:
///         name: existing
///         networkSecurityPerimeterId: ${example.id}
/// outputs:
///   id: ${exampleGetNetworkSecurityPerimeterProfile.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_perimeter_profile_get_network_security_perimeter_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityPerimeterProfileResult> getNetworkSecurityPerimeterProfile(
  GetNetworkSecurityPerimeterProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkSecurityPerimeterProfile:getNetworkSecurityPerimeterProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityPerimeterProfileResult.fromMap(result);
}

/// Use this data source to access information about an existing Network Watcher.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getNetworkWatcher({
///     name: exampleAzurermNetworkWatcher.name,
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// export const networkWatcherId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_network_watcher(name=example_azurerm_network_watcher["name"],
///     resource_group_name=example_azurerm_resource_group["name"])
/// pulumi.export("networkWatcherId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetNetworkWatcher.Invoke(new()
///     {
///         Name = exampleAzurermNetworkWatcher.Name,
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["networkWatcherId"] = example.Apply(getNetworkWatcherResult => getNetworkWatcherResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupNetworkWatcher(ctx, &network.LookupNetworkWatcherArgs{
/// 			Name:              exampleAzurermNetworkWatcher.Name,
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("networkWatcherId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetNetworkWatcherArgs;
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
///         final var example = NetworkFunctions.getNetworkWatcher(GetNetworkWatcherArgs.builder()
///             .name(exampleAzurermNetworkWatcher.name())
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///         ctx.export("networkWatcherId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getNetworkWatcher
///       arguments:
///         name: ${exampleAzurermNetworkWatcher.name}
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// outputs:
///   networkWatcherId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_watcher_get_network_watcher_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkWatcherResult> getNetworkWatcher(
  GetNetworkWatcherArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getNetworkWatcher:getNetworkWatcher',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkWatcherResult.fromMap(result);
}

/// Use this data source to access information about an existing Public IP Address.
///
/// ## Example Usage
///
/// ### Reference An Existing)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getPublicIP({
///     name: "name_of_public_ip",
///     resourceGroupName: "name_of_resource_group",
/// });
/// export const domainNameLabel = example.then(example => example.domainNameLabel);
/// export const publicIpAddress = example.then(example => example.ipAddress);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_public_ip(name="name_of_public_ip",
///     resource_group_name="name_of_resource_group")
/// pulumi.export("domainNameLabel", example.domain_name_label)
/// pulumi.export("publicIpAddress", example.ip_address)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetPublicIP.Invoke(new()
///     {
///         Name = "name_of_public_ip",
///         ResourceGroupName = "name_of_resource_group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["domainNameLabel"] = example.Apply(getPublicIPResult => getPublicIPResult.DomainNameLabel),
///         ["publicIpAddress"] = example.Apply(getPublicIPResult => getPublicIPResult.IpAddress),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.GetPublicIP(ctx, &network.GetPublicIPArgs{
/// 			Name:              "name_of_public_ip",
/// 			ResourceGroupName: "name_of_resource_group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("domainNameLabel", example.DomainNameLabel)
/// 		ctx.Export("publicIpAddress", example.IpAddress)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetPublicIPArgs;
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
///         final var example = NetworkFunctions.getPublicIP(GetPublicIPArgs.builder()
///             .name("name_of_public_ip")
///             .resourceGroupName("name_of_resource_group")
///             .build());
///
///         ctx.export("domainNameLabel", example.domainNameLabel());
///         ctx.export("publicIpAddress", example.ipAddress());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getPublicIP
///       arguments:
///         name: name_of_public_ip
///         resourceGroupName: name_of_resource_group
/// outputs:
///   domainNameLabel: ${example.domainNameLabel}
///   publicIpAddress: ${example.ipAddress}
/// ```
///
///
///
/// ### Retrieve The Dynamic Public IP Of A New VM)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "test-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "test-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "acctsub",
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "test-pip",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     allocationMethod: "Dynamic",
///     idleTimeoutInMinutes: 30,
///     tags: {
///         environment: "test",
///     },
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "test-nic",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     ipConfigurations: [{
///         name: "testconfiguration1",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Static",
///         privateIpAddress: "10.0.2.5",
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleVirtualMachine = new azure.compute.VirtualMachine("example", {
///     name: "test-vm",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     networkInterfaceIds: [exampleNetworkInterface.id],
/// });
/// const example = azure.network.getPublicIPOutput({
///     name: examplePublicIp.name,
///     resourceGroupName: exampleVirtualMachine.resourceGroupName,
/// });
/// export const publicIpAddress = example.apply(example => example.ipAddress);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="test-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="test-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_subnet = azure.network.Subnet("example",
///     name="acctsub",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="test-pip",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     allocation_method="Dynamic",
///     idle_timeout_in_minutes=30,
///     tags={
///         "environment": "test",
///     })
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="test-nic",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     ip_configurations=[{
///         "name": "testconfiguration1",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Static",
///         "private_ip_address": "10.0.2.5",
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_virtual_machine = azure.compute.VirtualMachine("example",
///     name="test-vm",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     network_interface_ids=[example_network_interface.id])
/// example = azure.network.get_public_ip_output(name=example_public_ip.name,
///     resource_group_name=example_virtual_machine.resource_group_name)
/// pulumi.export("publicIpAddress", example.ip_address)
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
///         Name = "test-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "test-network",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "acctsub",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "test-pip",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AllocationMethod = "Dynamic",
///         IdleTimeoutInMinutes = 30,
///         Tags =
///         {
///             { "environment", "test" },
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "test-nic",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "testconfiguration1",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Static",
///                 PrivateIpAddress = "10.0.2.5",
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var exampleVirtualMachine = new Azure.Compute.VirtualMachine("example", new()
///     {
///         Name = "test-vm",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///     });
///
///     var example = Azure.Network.GetPublicIP.Invoke(new()
///     {
///         Name = examplePublicIp.Name,
///         ResourceGroupName = exampleVirtualMachine.ResourceGroupName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["publicIpAddress"] = example.Apply(getPublicIPResult => getPublicIPResult.IpAddress),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("test-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("test-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("acctsub"),
/// 			ResourceGroupName:  exampleResourceGroup.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:                 pulumi.String("test-pip"),
/// 			Location:             exampleResourceGroup.Location,
/// 			ResourceGroupName:    exampleResourceGroup.Name,
/// 			AllocationMethod:     pulumi.String("Dynamic"),
/// 			IdleTimeoutInMinutes: pulumi.Int(30),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("test-nic"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("testconfiguration1"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Static"),
/// 					PrivateIpAddress:           pulumi.String("10.0.2.5"),
/// 					PublicIpAddressId:          examplePublicIp.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualMachine, err := compute.NewVirtualMachine(ctx, "example", &compute.VirtualMachineArgs{
/// 			Name:              pulumi.String("test-vm"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := network.GetPublicIPOutput(ctx, network.GetPublicIPOutputArgs{
/// 			Name:              examplePublicIp.Name,
/// 			ResourceGroupName: exampleVirtualMachine.ResourceGroupName,
/// 		}, nil)
/// 		ctx.Export("publicIpAddress", example.ApplyT(func(example network.GetPublicIPResult) (*string, error) {
/// 			return &example.IpAddress, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.VirtualMachine;
/// import com.pulumi.azure.compute.VirtualMachineArgs;
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetPublicIPArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("test-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("test-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("acctsub")
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("test-pip")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .allocationMethod("Dynamic")
///             .idleTimeoutInMinutes(30)
///             .tags(Map.of("environment", "test"))
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("test-nic")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("testconfiguration1")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Static")
///                 .privateIpAddress("10.0.2.5")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleVirtualMachine = new VirtualMachine("exampleVirtualMachine", VirtualMachineArgs.builder()
///             .name("test-vm")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .build());
///
///         final var example = NetworkFunctions.getPublicIP(GetPublicIPArgs.builder()
///             .name(examplePublicIp.name())
///             .resourceGroupName(exampleVirtualMachine.resourceGroupName())
///             .build());
///
///         ctx.export("publicIpAddress", example.applyValue(_example -> _example.ipAddress()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: test-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: test-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: acctsub
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: test-pip
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       allocationMethod: Dynamic
///       idleTimeoutInMinutes: 30
///       tags:
///         environment: test
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: test-nic
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       ipConfigurations:
///         - name: testconfiguration1
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Static
///           privateIpAddress: 10.0.2.5
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleVirtualMachine:
///     type: azure:compute:VirtualMachine
///     name: example
///     properties:
///       name: test-vm
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       networkInterfaceIds: # ...
///         - ${exampleNetworkInterface.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getPublicIP
///       arguments:
///         name: ${examplePublicIp.name}
///         resourceGroupName: ${exampleVirtualMachine.resourceGroupName}
/// outputs:
///   publicIpAddress: ${example.ipAddress}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_public_ip_get_public_ipargs_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIPResult> getPublicIP(
  GetPublicIPArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getPublicIP:getPublicIP',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIPResult.fromMap(result);
}

/// Use this data source to access information about a set of existing Public IP Addresses.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getPublicIPs({
///     resourceGroupName: "pip-test",
///     attachmentStatus: "Attached",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_public_i_ps(resource_group_name="pip-test",
///     attachment_status="Attached")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetPublicIPs.Invoke(new()
///     {
///         ResourceGroupName = "pip-test",
///         AttachmentStatus = "Attached",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.GetPublicIPs(ctx, &network.GetPublicIPsArgs{
/// 			ResourceGroupName: "pip-test",
/// 			AttachmentStatus:  pulumi.StringRef("Attached"),
/// 		}, nil)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetPublicIPsArgs;
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
///         final var example = NetworkFunctions.getPublicIPs(GetPublicIPsArgs.builder()
///             .resourceGroupName("pip-test")
///             .attachmentStatus("Attached")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getPublicIPs
///       arguments:
///         resourceGroupName: pip-test
///         attachmentStatus: Attached
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_public_ips_get_public_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIPsResult> getPublicIPs(
  GetPublicIPsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getPublicIPs:getPublicIPs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIPsResult.fromMap(result);
}

/// Use this data source to access information about an existing Public IP Prefix.
///
/// ## Example Usage
///
/// ### Reference An Existing)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getPublicIpPrefix({
///     name: "name_of_public_ip",
///     resourceGroupName: "name_of_resource_group",
/// });
/// export const publicIpPrefix = example.then(example => example.ipPrefix);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_public_ip_prefix(name="name_of_public_ip",
///     resource_group_name="name_of_resource_group")
/// pulumi.export("publicIpPrefix", example.ip_prefix)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetPublicIpPrefix.Invoke(new()
///     {
///         Name = "name_of_public_ip",
///         ResourceGroupName = "name_of_resource_group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["publicIpPrefix"] = example.Apply(getPublicIpPrefixResult => getPublicIpPrefixResult.IpPrefix),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupPublicIpPrefix(ctx, &network.LookupPublicIpPrefixArgs{
/// 			Name:              "name_of_public_ip",
/// 			ResourceGroupName: "name_of_resource_group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("publicIpPrefix", example.IpPrefix)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetPublicIpPrefixArgs;
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
///         final var example = NetworkFunctions.getPublicIpPrefix(GetPublicIpPrefixArgs.builder()
///             .name("name_of_public_ip")
///             .resourceGroupName("name_of_resource_group")
///             .build());
///
///         ctx.export("publicIpPrefix", example.ipPrefix());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getPublicIpPrefix
///       arguments:
///         name: name_of_public_ip
///         resourceGroupName: name_of_resource_group
/// outputs:
///   publicIpPrefix: ${example.ipPrefix}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_public_ip_prefix_get_public_ip_prefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIpPrefixResult> getPublicIpPrefix(
  GetPublicIpPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getPublicIpPrefix:getPublicIpPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIpPrefixResult.fromMap(result);
}

/// Use this data source to access information about an existing Route Filter.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getRouteFilter({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_route_filter(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetRouteFilter.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getRouteFilterResult => getRouteFilterResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupRouteFilter(ctx, &network.LookupRouteFilterArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetRouteFilterArgs;
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
///         final var example = NetworkFunctions.getRouteFilter(GetRouteFilterArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getRouteFilter
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_route_filter_get_route_filter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteFilterResult> getRouteFilter(
  GetRouteFilterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getRouteFilter:getRouteFilter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteFilterResult.fromMap(result);
}

/// Use this data source to access information about an existing Route Table.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getRouteTable({
///     name: "myroutetable",
///     resourceGroupName: "some-resource-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_route_table(name="myroutetable",
///     resource_group_name="some-resource-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetRouteTable.Invoke(new()
///     {
///         Name = "myroutetable",
///         ResourceGroupName = "some-resource-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.LookupRouteTable(ctx, &network.LookupRouteTableArgs{
/// 			Name:              "myroutetable",
/// 			ResourceGroupName: "some-resource-group",
/// 		}, nil)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetRouteTableArgs;
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
///         final var example = NetworkFunctions.getRouteTable(GetRouteTableArgs.builder()
///             .name("myroutetable")
///             .resourceGroupName("some-resource-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getRouteTable
///       arguments:
///         name: myroutetable
///         resourceGroupName: some-resource-group
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_route_table_get_route_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTableResult> getRouteTable(
  GetRouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getRouteTable:getRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableResult.fromMap(result);
}

/// Use this data source to access information about Service Tags.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getServiceTags({
///     location: "westcentralus",
///     service: "AzureKeyVault",
///     locationFilter: "northeurope",
/// });
/// export const addressPrefixes = example.then(example => example.addressPrefixes);
/// export const ipv4Cidrs = example.then(example => example.ipv4Cidrs);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_service_tags(location="westcentralus",
///     service="AzureKeyVault",
///     location_filter="northeurope")
/// pulumi.export("addressPrefixes", example.address_prefixes)
/// pulumi.export("ipv4Cidrs", example.ipv4_cidrs)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetServiceTags.Invoke(new()
///     {
///         Location = "westcentralus",
///         Service = "AzureKeyVault",
///         LocationFilter = "northeurope",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["addressPrefixes"] = example.Apply(getServiceTagsResult => getServiceTagsResult.AddressPrefixes),
///         ["ipv4Cidrs"] = example.Apply(getServiceTagsResult => getServiceTagsResult.Ipv4Cidrs),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.GetServiceTags(ctx, &network.GetServiceTagsArgs{
/// 			Location:       "westcentralus",
/// 			Service:        "AzureKeyVault",
/// 			LocationFilter: pulumi.StringRef("northeurope"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("addressPrefixes", example.AddressPrefixes)
/// 		ctx.Export("ipv4Cidrs", example.Ipv4Cidrs)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetServiceTagsArgs;
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
///         final var example = NetworkFunctions.getServiceTags(GetServiceTagsArgs.builder()
///             .location("westcentralus")
///             .service("AzureKeyVault")
///             .locationFilter("northeurope")
///             .build());
///
///         ctx.export("addressPrefixes", example.addressPrefixes());
///         ctx.export("ipv4Cidrs", example.ipv4Cidrs());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getServiceTags
///       arguments:
///         location: westcentralus
///         service: AzureKeyVault
///         locationFilter: northeurope
/// outputs:
///   addressPrefixes: ${example.addressPrefixes}
///   ipv4Cidrs: ${example.ipv4Cidrs}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_service_tags_get_service_tags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceTagsResult> getServiceTags(
  GetServiceTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getServiceTags:getServiceTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceTagsResult.fromMap(result);
}

/// Use this data source to access information about an existing Subnet within a Virtual Network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getSubnet({
///     name: "backend",
///     virtualNetworkName: "production",
///     resourceGroupName: "networking",
/// });
/// export const subnetId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_subnet(name="backend",
///     virtual_network_name="production",
///     resource_group_name="networking")
/// pulumi.export("subnetId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetSubnet.Invoke(new()
///     {
///         Name = "backend",
///         VirtualNetworkName = "production",
///         ResourceGroupName = "networking",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["subnetId"] = example.Apply(getSubnetResult => getSubnetResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupSubnet(ctx, &network.LookupSubnetArgs{
/// 			Name:               "backend",
/// 			VirtualNetworkName: "production",
/// 			ResourceGroupName:  "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("subnetId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetSubnetArgs;
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
///         final var example = NetworkFunctions.getSubnet(GetSubnetArgs.builder()
///             .name("backend")
///             .virtualNetworkName("production")
///             .resourceGroupName("networking")
///             .build());
///
///         ctx.export("subnetId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getSubnet
///       arguments:
///         name: backend
///         virtualNetworkName: production
///         resourceGroupName: networking
/// outputs:
///   subnetId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_subnet_get_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetResult> getSubnet(
  GetSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getSubnet:getSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetResult.fromMap(result);
}

/// Use this data source to access the ID of a specified Traffic Manager Geographical Location within the Geographical Hierarchy.
///
/// ## Example Usage
///
/// ### World)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getTrafficManager({
///     name: "World",
/// });
/// export const locationCode = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_traffic_manager(name="World")
/// pulumi.export("locationCode", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetTrafficManager.Invoke(new()
///     {
///         Name = "World",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["locationCode"] = example.Apply(getTrafficManagerResult => getTrafficManagerResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.GetTrafficManager(ctx, &network.GetTrafficManagerArgs{
/// 			Name: "World",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("locationCode", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetTrafficManagerArgs;
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
///         final var example = NetworkFunctions.getTrafficManager(GetTrafficManagerArgs.builder()
///             .name("World")
///             .build());
///
///         ctx.export("locationCode", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getTrafficManager
///       arguments:
///         name: World
/// outputs:
///   locationCode: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_traffic_manager_get_traffic_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficManagerResult> getTrafficManager(
  GetTrafficManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getTrafficManager:getTrafficManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficManagerResult.fromMap(result);
}

/// Use this data source to access information about an existing Traffic Manager Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getTrafficManagerProfile({
///     name: "test",
///     resourceGroupName: "test",
/// });
/// export const trafficRoutingMethod = example.then(example => example.trafficRoutingMethod);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_traffic_manager_profile(name="test",
///     resource_group_name="test")
/// pulumi.export("trafficRoutingMethod", example.traffic_routing_method)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetTrafficManagerProfile.Invoke(new()
///     {
///         Name = "test",
///         ResourceGroupName = "test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["trafficRoutingMethod"] = example.Apply(getTrafficManagerProfileResult => getTrafficManagerProfileResult.TrafficRoutingMethod),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupTrafficManagerProfile(ctx, &network.LookupTrafficManagerProfileArgs{
/// 			Name:              "test",
/// 			ResourceGroupName: "test",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("trafficRoutingMethod", example.TrafficRoutingMethod)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetTrafficManagerProfileArgs;
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
///         final var example = NetworkFunctions.getTrafficManagerProfile(GetTrafficManagerProfileArgs.builder()
///             .name("test")
///             .resourceGroupName("test")
///             .build());
///
///         ctx.export("trafficRoutingMethod", example.trafficRoutingMethod());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getTrafficManagerProfile
///       arguments:
///         name: test
///         resourceGroupName: test
/// outputs:
///   trafficRoutingMethod: ${example.trafficRoutingMethod}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_traffic_manager_profile_get_traffic_manager_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficManagerProfileResult> getTrafficManagerProfile(
  GetTrafficManagerProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getTrafficManagerProfile:getTrafficManagerProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficManagerProfileResult.fromMap(result);
}

/// Uses this data source to access information about an existing Virtual Hub.
///
/// ## Virtual Hub Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualHub({
///     name: "example-hub",
///     resourceGroupName: "example-resources",
/// });
/// export const virtualHubId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_hub(name="example-hub",
///     resource_group_name="example-resources")
/// pulumi.export("virtualHubId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVirtualHub.Invoke(new()
///     {
///         Name = "example-hub",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["virtualHubId"] = example.Apply(getVirtualHubResult => getVirtualHubResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualHub(ctx, &network.LookupVirtualHubArgs{
/// 			Name:              "example-hub",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("virtualHubId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualHubArgs;
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
///         final var example = NetworkFunctions.getVirtualHub(GetVirtualHubArgs.builder()
///             .name("example-hub")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("virtualHubId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualHub
///       arguments:
///         name: example-hub
///         resourceGroupName: example-resources
/// outputs:
///   virtualHubId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_hub_get_virtual_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHubResult> getVirtualHub(
  GetVirtualHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVirtualHub:getVirtualHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHubResult.fromMap(result);
}

/// Uses this data source to access information about an existing Virtual Hub Connection.
///
/// ## Virtual Hub Connection Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualHubConnection({
///     name: "example-connection",
///     resourceGroupName: "example-resources",
///     virtualHubName: "example-hub-name",
/// });
/// export const virtualHubConnectionId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_hub_connection(name="example-connection",
///     resource_group_name="example-resources",
///     virtual_hub_name="example-hub-name")
/// pulumi.export("virtualHubConnectionId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVirtualHubConnection.Invoke(new()
///     {
///         Name = "example-connection",
///         ResourceGroupName = "example-resources",
///         VirtualHubName = "example-hub-name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["virtualHubConnectionId"] = example.Apply(getVirtualHubConnectionResult => getVirtualHubConnectionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualHubConnection(ctx, &network.LookupVirtualHubConnectionArgs{
/// 			Name:              "example-connection",
/// 			ResourceGroupName: "example-resources",
/// 			VirtualHubName:    "example-hub-name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("virtualHubConnectionId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualHubConnectionArgs;
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
///         final var example = NetworkFunctions.getVirtualHubConnection(GetVirtualHubConnectionArgs.builder()
///             .name("example-connection")
///             .resourceGroupName("example-resources")
///             .virtualHubName("example-hub-name")
///             .build());
///
///         ctx.export("virtualHubConnectionId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualHubConnection
///       arguments:
///         name: example-connection
///         resourceGroupName: example-resources
///         virtualHubName: example-hub-name
/// outputs:
///   virtualHubConnectionId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_hub_connection_get_virtual_hub_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHubConnectionResult> getVirtualHubConnection(
  GetVirtualHubConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVirtualHubConnection:getVirtualHubConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHubConnectionResult.fromMap(result);
}

/// Uses this data source to access information about an existing Virtual Hub Route Table.
///
/// ## Virtual Hub Route Table Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualHubRouteTable({
///     name: "example-hub-route-table",
///     resourceGroupName: "example-resources",
///     virtualHubName: "example-hub-name",
/// });
/// export const virtualHubRouteTableId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_hub_route_table(name="example-hub-route-table",
///     resource_group_name="example-resources",
///     virtual_hub_name="example-hub-name")
/// pulumi.export("virtualHubRouteTableId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVirtualHubRouteTable.Invoke(new()
///     {
///         Name = "example-hub-route-table",
///         ResourceGroupName = "example-resources",
///         VirtualHubName = "example-hub-name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["virtualHubRouteTableId"] = example.Apply(getVirtualHubRouteTableResult => getVirtualHubRouteTableResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualHubRouteTable(ctx, &network.LookupVirtualHubRouteTableArgs{
/// 			Name:              "example-hub-route-table",
/// 			ResourceGroupName: "example-resources",
/// 			VirtualHubName:    "example-hub-name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("virtualHubRouteTableId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualHubRouteTableArgs;
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
///         final var example = NetworkFunctions.getVirtualHubRouteTable(GetVirtualHubRouteTableArgs.builder()
///             .name("example-hub-route-table")
///             .resourceGroupName("example-resources")
///             .virtualHubName("example-hub-name")
///             .build());
///
///         ctx.export("virtualHubRouteTableId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualHubRouteTable
///       arguments:
///         name: example-hub-route-table
///         resourceGroupName: example-resources
///         virtualHubName: example-hub-name
/// outputs:
///   virtualHubRouteTableId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_hub_route_table_get_virtual_hub_route_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHubRouteTableResult> getVirtualHubRouteTable(
  GetVirtualHubRouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVirtualHubRouteTable:getVirtualHubRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHubRouteTableResult.fromMap(result);
}

/// Use this data source to access information about an existing Virtual Network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualNetwork({
///     name: "production",
///     resourceGroupName: "networking",
/// });
/// export const virtualNetworkId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_network(name="production",
///     resource_group_name="networking")
/// pulumi.export("virtualNetworkId", example.id)
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
///         Name = "production",
///         ResourceGroupName = "networking",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["virtualNetworkId"] = example.Apply(getVirtualNetworkResult => getVirtualNetworkResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualNetwork(ctx, &network.LookupVirtualNetworkArgs{
/// 			Name:              "production",
/// 			ResourceGroupName: "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("virtualNetworkId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualNetworkArgs;
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
///         final var example = NetworkFunctions.getVirtualNetwork(GetVirtualNetworkArgs.builder()
///             .name("production")
///             .resourceGroupName("networking")
///             .build());
///
///         ctx.export("virtualNetworkId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualNetwork
///       arguments:
///         name: production
///         resourceGroupName: networking
/// outputs:
///   virtualNetworkId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_get_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkResult> getVirtualNetwork(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVirtualNetwork:getVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkResult.fromMap(result);
}

/// Use this data source to access information about an existing Virtual Network Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualNetworkGateway({
///     name: "production",
///     resourceGroupName: "networking",
/// });
/// export const virtualNetworkGatewayId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_network_gateway(name="production",
///     resource_group_name="networking")
/// pulumi.export("virtualNetworkGatewayId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVirtualNetworkGateway.Invoke(new()
///     {
///         Name = "production",
///         ResourceGroupName = "networking",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["virtualNetworkGatewayId"] = example.Apply(getVirtualNetworkGatewayResult => getVirtualNetworkGatewayResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualNetworkGateway(ctx, &network.LookupVirtualNetworkGatewayArgs{
/// 			Name:              "production",
/// 			ResourceGroupName: "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("virtualNetworkGatewayId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualNetworkGatewayArgs;
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
///         final var example = NetworkFunctions.getVirtualNetworkGateway(GetVirtualNetworkGatewayArgs.builder()
///             .name("production")
///             .resourceGroupName("networking")
///             .build());
///
///         ctx.export("virtualNetworkGatewayId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualNetworkGateway
///       arguments:
///         name: production
///         resourceGroupName: networking
/// outputs:
///   virtualNetworkGatewayId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_get_virtual_network_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayResult> getVirtualNetworkGateway(
  GetVirtualNetworkGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVirtualNetworkGateway:getVirtualNetworkGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayResult.fromMap(result);
}

/// Use this data source to access information about an existing virtual network peering.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualNetwork({
///     name: "vnet01",
///     resourceGroupName: "networking",
/// });
/// const exampleGetVirtualNetworkPeering = example.then(example => azure.network.getVirtualNetworkPeering({
///     name: "peer-vnet01-to-vnet02",
///     virtualNetworkId: example.id,
/// }));
/// export const id = exampleGetVirtualNetworkPeering.then(exampleGetVirtualNetworkPeering => exampleGetVirtualNetworkPeering.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_network(name="vnet01",
///     resource_group_name="networking")
/// example_get_virtual_network_peering = azure.network.get_virtual_network_peering(name="peer-vnet01-to-vnet02",
///     virtual_network_id=example.id)
/// pulumi.export("id", example_get_virtual_network_peering.id)
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
///         Name = "vnet01",
///         ResourceGroupName = "networking",
///     });
///
///     var exampleGetVirtualNetworkPeering = Azure.Network.GetVirtualNetworkPeering.Invoke(new()
///     {
///         Name = "peer-vnet01-to-vnet02",
///         VirtualNetworkId = example.Apply(getVirtualNetworkResult => getVirtualNetworkResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleGetVirtualNetworkPeering.Apply(getVirtualNetworkPeeringResult => getVirtualNetworkPeeringResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualNetwork(ctx, &network.LookupVirtualNetworkArgs{
/// 			Name:              "vnet01",
/// 			ResourceGroupName: "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetVirtualNetworkPeering, err := network.LookupVirtualNetworkPeering(ctx, &network.LookupVirtualNetworkPeeringArgs{
/// 			Name:             "peer-vnet01-to-vnet02",
/// 			VirtualNetworkId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleGetVirtualNetworkPeering.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualNetworkArgs;
/// import com.pulumi.azure.network.inputs.GetVirtualNetworkPeeringArgs;
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
///         final var example = NetworkFunctions.getVirtualNetwork(GetVirtualNetworkArgs.builder()
///             .name("vnet01")
///             .resourceGroupName("networking")
///             .build());
///
///         final var exampleGetVirtualNetworkPeering = NetworkFunctions.getVirtualNetworkPeering(GetVirtualNetworkPeeringArgs.builder()
///             .name("peer-vnet01-to-vnet02")
///             .virtualNetworkId(example.id())
///             .build());
///
///         ctx.export("id", exampleGetVirtualNetworkPeering.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualNetwork
///       arguments:
///         name: vnet01
///         resourceGroupName: networking
///   exampleGetVirtualNetworkPeering:
///     fn::invoke:
///       function: azure:network:getVirtualNetworkPeering
///       arguments:
///         name: peer-vnet01-to-vnet02
///         virtualNetworkId: ${example.id}
/// outputs:
///   id: ${exampleGetVirtualNetworkPeering.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_peering_get_virtual_network_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkPeeringResult> getVirtualNetworkPeering(
  GetVirtualNetworkPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVirtualNetworkPeering:getVirtualNetworkPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkPeeringResult.fromMap(result);
}

/// Use this data source to access information about an existing Virtual Wan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVirtualWan({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// export const allowBranchToBranchTraffic = example.then(example => example.allowBranchToBranchTraffic);
/// export const disableVpnEncryption = example.then(example => example.disableVpnEncryption);
/// export const location = example.then(example => example.location);
/// export const office365LocalBreakoutCategory = example.then(example => example.office365LocalBreakoutCategory);
/// export const sku = example.then(example => example.sku);
/// export const tags = example.then(example => example.tags);
/// export const virtualHubs = example.then(example => example.virtualHubs);
/// export const vpnSites = example.then(example => example.vpnSites);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_virtual_wan(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// pulumi.export("allowBranchToBranchTraffic", example.allow_branch_to_branch_traffic)
/// pulumi.export("disableVpnEncryption", example.disable_vpn_encryption)
/// pulumi.export("location", example.location)
/// pulumi.export("office365LocalBreakoutCategory", example.office365_local_breakout_category)
/// pulumi.export("sku", example.sku)
/// pulumi.export("tags", example.tags)
/// pulumi.export("virtualHubs", example.virtual_hubs)
/// pulumi.export("vpnSites", example.vpn_sites)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVirtualWan.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getVirtualWanResult => getVirtualWanResult.Id),
///         ["allowBranchToBranchTraffic"] = example.Apply(getVirtualWanResult => getVirtualWanResult.AllowBranchToBranchTraffic),
///         ["disableVpnEncryption"] = example.Apply(getVirtualWanResult => getVirtualWanResult.DisableVpnEncryption),
///         ["location"] = example.Apply(getVirtualWanResult => getVirtualWanResult.Location),
///         ["office365LocalBreakoutCategory"] = example.Apply(getVirtualWanResult => getVirtualWanResult.Office365LocalBreakoutCategory),
///         ["sku"] = example.Apply(getVirtualWanResult => getVirtualWanResult.Sku),
///         ["tags"] = example.Apply(getVirtualWanResult => getVirtualWanResult.Tags),
///         ["virtualHubs"] = example.Apply(getVirtualWanResult => getVirtualWanResult.VirtualHubs),
///         ["vpnSites"] = example.Apply(getVirtualWanResult => getVirtualWanResult.VpnSites),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVirtualWan(ctx, &network.LookupVirtualWanArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("allowBranchToBranchTraffic", example.AllowBranchToBranchTraffic)
/// 		ctx.Export("disableVpnEncryption", example.DisableVpnEncryption)
/// 		ctx.Export("location", example.Location)
/// 		ctx.Export("office365LocalBreakoutCategory", example.Office365LocalBreakoutCategory)
/// 		ctx.Export("sku", example.Sku)
/// 		ctx.Export("tags", example.Tags)
/// 		ctx.Export("virtualHubs", example.VirtualHubs)
/// 		ctx.Export("vpnSites", example.VpnSites)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualWanArgs;
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
///         final var example = NetworkFunctions.getVirtualWan(GetVirtualWanArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("allowBranchToBranchTraffic", example.allowBranchToBranchTraffic());
///         ctx.export("disableVpnEncryption", example.disableVpnEncryption());
///         ctx.export("location", example.location());
///         ctx.export("office365LocalBreakoutCategory", example.office365LocalBreakoutCategory());
///         ctx.export("sku", example.sku());
///         ctx.export("tags", example.tags());
///         ctx.export("virtualHubs", example.virtualHubs());
///         ctx.export("vpnSites", example.vpnSites());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVirtualWan
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
///   allowBranchToBranchTraffic: ${example.allowBranchToBranchTraffic}
///   disableVpnEncryption: ${example.disableVpnEncryption}
///   location: ${example.location}
///   office365LocalBreakoutCategory: ${example.office365LocalBreakoutCategory}
///   sku: ${example.sku}
///   tags: ${example.tags}
///   virtualHubs: ${example.virtualHubs}
///   vpnSites: ${example.vpnSites}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_wan_get_virtual_wan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualWanResult> getVirtualWan(
  GetVirtualWanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVirtualWan:getVirtualWan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualWanResult.fromMap(result);
}

/// Use this data source to access information about an existing VPN Gateway within a Virtual Hub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVpnGateway({
///     name: "existing-local-vpn_gateway",
///     resourceGroupName: "existing-vpn_gateway",
/// });
/// export const azurermVpnGatewayId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_vpn_gateway(name="existing-local-vpn_gateway",
///     resource_group_name="existing-vpn_gateway")
/// pulumi.export("azurermVpnGatewayId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVpnGateway.Invoke(new()
///     {
///         Name = "existing-local-vpn_gateway",
///         ResourceGroupName = "existing-vpn_gateway",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["azurermVpnGatewayId"] = example.Apply(getVpnGatewayResult => getVpnGatewayResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVpnGateway(ctx, &network.LookupVpnGatewayArgs{
/// 			Name:              "existing-local-vpn_gateway",
/// 			ResourceGroupName: "existing-vpn_gateway",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("azurermVpnGatewayId", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVpnGatewayArgs;
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
///         final var example = NetworkFunctions.getVpnGateway(GetVpnGatewayArgs.builder()
///             .name("existing-local-vpn_gateway")
///             .resourceGroupName("existing-vpn_gateway")
///             .build());
///
///         ctx.export("azurermVpnGatewayId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVpnGateway
///       arguments:
///         name: existing-local-vpn_gateway
///         resourceGroupName: existing-vpn_gateway
/// outputs:
///   azurermVpnGatewayId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_vpn_gateway_get_vpn_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnGatewayResult> getVpnGateway(
  GetVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVpnGateway:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayResult.fromMap(result);
}

/// Use this data source to access information about an existing VPN Server Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getVpnServerConfiguration({
///     name: "existing-local-vpn-server-configuration",
///     resourceGroupName: "existing-resource-group",
/// });
/// export const azurermVpnServerConfiguration = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_vpn_server_configuration(name="existing-local-vpn-server-configuration",
///     resource_group_name="existing-resource-group")
/// pulumi.export("azurermVpnServerConfiguration", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetVpnServerConfiguration.Invoke(new()
///     {
///         Name = "existing-local-vpn-server-configuration",
///         ResourceGroupName = "existing-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["azurermVpnServerConfiguration"] = example.Apply(getVpnServerConfigurationResult => getVpnServerConfigurationResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.LookupVpnServerConfiguration(ctx, &network.LookupVpnServerConfigurationArgs{
/// 			Name:              "existing-local-vpn-server-configuration",
/// 			ResourceGroupName: "existing-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("azurermVpnServerConfiguration", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVpnServerConfigurationArgs;
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
///         final var example = NetworkFunctions.getVpnServerConfiguration(GetVpnServerConfigurationArgs.builder()
///             .name("existing-local-vpn-server-configuration")
///             .resourceGroupName("existing-resource-group")
///             .build());
///
///         ctx.export("azurermVpnServerConfiguration", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getVpnServerConfiguration
///       arguments:
///         name: existing-local-vpn-server-configuration
///         resourceGroupName: existing-resource-group
/// outputs:
///   azurermVpnServerConfiguration: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_vpn_server_configuration_get_vpn_server_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnServerConfigurationResult> getVpnServerConfiguration(
  GetVpnServerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:network/getVpnServerConfiguration:getVpnServerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnServerConfigurationResult.fromMap(result);
}

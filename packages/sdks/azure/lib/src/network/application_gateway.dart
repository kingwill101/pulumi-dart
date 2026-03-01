import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_args.dart';
import 'application_gateway_authentication_certificate.dart';
import 'application_gateway_autoscale_configuration.dart';
import 'application_gateway_backend_address_pool.dart';
import 'application_gateway_backend_http_setting.dart';
import 'application_gateway_custom_error_configuration.dart';
import 'application_gateway_frontend_ip_configuration.dart';
import 'application_gateway_frontend_port.dart';
import 'application_gateway_gateway_ip_configuration.dart';
import 'application_gateway_global.dart';
import 'application_gateway_http_listener.dart';
import 'application_gateway_identity.dart';
import 'application_gateway_private_endpoint_connection.dart';
import 'application_gateway_private_link_configuration.dart';
import 'application_gateway_probe.dart';
import 'application_gateway_redirect_configuration.dart';
import 'application_gateway_request_routing_rule.dart';
import 'application_gateway_rewrite_rule_set.dart';
import 'application_gateway_sku.dart';
import 'application_gateway_ssl_certificate.dart';
import 'application_gateway_ssl_policy.dart';
import 'application_gateway_ssl_profile.dart';
import 'application_gateway_state.dart';
import 'application_gateway_trusted_client_certificate.dart';
import 'application_gateway_trusted_root_certificate.dart';
import 'application_gateway_url_path_map.dart';
import 'application_gateway_waf_configuration.dart';

/// Manages an Application Gateway.
///
/// > **Note:** The `backend_address_pool`, `backend_http_settings`, `http_listener`, `private_link_configuration`, `request_routing_rule`, `redirect_configuration`, `probe`, `ssl_certificate`,
/// and `frontend_port` properties are Sets as the service API returns these lists of objects in a different order from how the provider sends them. As Sets are stored using a hash, if one
/// value is added or removed from the Set, Terraform considers the entire list of objects changed and the plan shows that it is removing every value in the list and re-adding it with the
/// new information. Though Terraform is showing all the values being removed and re-added, we are not actually removing anything unless the user specifies a removal in the configfile.
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
///     name: "example-network",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.254.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.254.0.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationMethod: "Static",
/// });
/// const backendAddressPoolName = pulumi.interpolate`${exampleVirtualNetwork.name}-beap`;
/// const frontendPortName = pulumi.interpolate`${exampleVirtualNetwork.name}-feport`;
/// const frontendIpConfigurationName = pulumi.interpolate`${exampleVirtualNetwork.name}-feip`;
/// const httpSettingName = pulumi.interpolate`${exampleVirtualNetwork.name}-be-htst`;
/// const listenerName = pulumi.interpolate`${exampleVirtualNetwork.name}-httplstn`;
/// const requestRoutingRuleName = pulumi.interpolate`${exampleVirtualNetwork.name}-rqrt`;
/// const redirectConfigurationName = pulumi.interpolate`${exampleVirtualNetwork.name}-rdrcfg`;
/// const network = new azure.network.ApplicationGateway("network", {
///     name: "example-appgateway",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "Standard_v2",
///         tier: "Standard_v2",
///         capacity: 2,
///     },
///     gatewayIpConfigurations: [{
///         name: "my-gateway-ip-configuration",
///         subnetId: exampleSubnet.id,
///     }],
///     frontendPorts: [{
///         name: frontendPortName,
///         port: 80,
///     }],
///     frontendIpConfigurations: [{
///         name: frontendIpConfigurationName,
///         publicIpAddressId: examplePublicIp.id,
///     }],
///     backendAddressPools: [{
///         name: backendAddressPoolName,
///     }],
///     backendHttpSettings: [{
///         name: httpSettingName,
///         cookieBasedAffinity: "Disabled",
///         path: "/path1/",
///         port: 80,
///         protocol: "Http",
///         requestTimeout: 60,
///     }],
///     httpListeners: [{
///         name: listenerName,
///         frontendIpConfigurationName: frontendIpConfigurationName,
///         frontendPortName: frontendPortName,
///         protocol: "Http",
///     }],
///     requestRoutingRules: [{
///         name: requestRoutingRuleName,
///         priority: 9,
///         ruleType: "Basic",
///         httpListenerName: listenerName,
///         backendAddressPoolName: backendAddressPoolName,
///         backendHttpSettingsName: httpSettingName,
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
///     name="example-network",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.254.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.254.0.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-pip",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_method="Static")
/// backend_address_pool_name = example_virtual_network.name.apply(lambda name: f"{name}-beap")
/// frontend_port_name = example_virtual_network.name.apply(lambda name: f"{name}-feport")
/// frontend_ip_configuration_name = example_virtual_network.name.apply(lambda name: f"{name}-feip")
/// http_setting_name = example_virtual_network.name.apply(lambda name: f"{name}-be-htst")
/// listener_name = example_virtual_network.name.apply(lambda name: f"{name}-httplstn")
/// request_routing_rule_name = example_virtual_network.name.apply(lambda name: f"{name}-rqrt")
/// redirect_configuration_name = example_virtual_network.name.apply(lambda name: f"{name}-rdrcfg")
/// network = azure.network.ApplicationGateway("network",
///     name="example-appgateway",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "Standard_v2",
///         "tier": "Standard_v2",
///         "capacity": 2,
///     },
///     gateway_ip_configurations=[{
///         "name": "my-gateway-ip-configuration",
///         "subnet_id": example_subnet.id,
///     }],
///     frontend_ports=[{
///         "name": frontend_port_name,
///         "port": 80,
///     }],
///     frontend_ip_configurations=[{
///         "name": frontend_ip_configuration_name,
///         "public_ip_address_id": example_public_ip.id,
///     }],
///     backend_address_pools=[{
///         "name": backend_address_pool_name,
///     }],
///     backend_http_settings=[{
///         "name": http_setting_name,
///         "cookie_based_affinity": "Disabled",
///         "path": "/path1/",
///         "port": 80,
///         "protocol": "Http",
///         "request_timeout": 60,
///     }],
///     http_listeners=[{
///         "name": listener_name,
///         "frontend_ip_configuration_name": frontend_ip_configuration_name,
///         "frontend_port_name": frontend_port_name,
///         "protocol": "Http",
///     }],
///     request_routing_rules=[{
///         "name": request_routing_rule_name,
///         "priority": 9,
///         "rule_type": "Basic",
///         "http_listener_name": listener_name,
///         "backend_address_pool_name": backend_address_pool_name,
///         "backend_http_settings_name": http_setting_name,
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
///         Name = "example-network",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.254.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.254.0.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-pip",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationMethod = "Static",
///     });
///
///     var backendAddressPoolName = exampleVirtualNetwork.Name.Apply(name => $"{name}-beap");
///
///     var frontendPortName = exampleVirtualNetwork.Name.Apply(name => $"{name}-feport");
///
///     var frontendIpConfigurationName = exampleVirtualNetwork.Name.Apply(name => $"{name}-feip");
///
///     var httpSettingName = exampleVirtualNetwork.Name.Apply(name => $"{name}-be-htst");
///
///     var listenerName = exampleVirtualNetwork.Name.Apply(name => $"{name}-httplstn");
///
///     var requestRoutingRuleName = exampleVirtualNetwork.Name.Apply(name => $"{name}-rqrt");
///
///     var redirectConfigurationName = exampleVirtualNetwork.Name.Apply(name => $"{name}-rdrcfg");
///
///     var network = new Azure.Network.ApplicationGateway("network", new()
///     {
///         Name = "example-appgateway",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Network.Inputs.ApplicationGatewaySkuArgs
///         {
///             Name = "Standard_v2",
///             Tier = "Standard_v2",
///             Capacity = 2,
///         },
///         GatewayIpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.ApplicationGatewayGatewayIpConfigurationArgs
///             {
///                 Name = "my-gateway-ip-configuration",
///                 SubnetId = exampleSubnet.Id,
///             },
///         },
///         FrontendPorts = new[]
///         {
///             new Azure.Network.Inputs.ApplicationGatewayFrontendPortArgs
///             {
///                 Name = frontendPortName,
///                 Port = 80,
///             },
///         },
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.ApplicationGatewayFrontendIpConfigurationArgs
///             {
///                 Name = frontendIpConfigurationName,
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///         BackendAddressPools = new[]
///         {
///             new Azure.Network.Inputs.ApplicationGatewayBackendAddressPoolArgs
///             {
///                 Name = backendAddressPoolName,
///             },
///         },
///         BackendHttpSettings = new[]
///         {
///             new Azure.Network.Inputs.ApplicationGatewayBackendHttpSettingArgs
///             {
///                 Name = httpSettingName,
///                 CookieBasedAffinity = "Disabled",
///                 Path = "/path1/",
///                 Port = 80,
///                 Protocol = "Http",
///                 RequestTimeout = 60,
///             },
///         },
///         HttpListeners = new[]
///         {
///             new Azure.Network.Inputs.ApplicationGatewayHttpListenerArgs
///             {
///                 Name = listenerName,
///                 FrontendIpConfigurationName = frontendIpConfigurationName,
///                 FrontendPortName = frontendPortName,
///                 Protocol = "Http",
///             },
///         },
///         RequestRoutingRules = new[]
///         {
///             new Azure.Network.Inputs.ApplicationGatewayRequestRoutingRuleArgs
///             {
///                 Name = requestRoutingRuleName,
///                 Priority = 9,
///                 RuleType = "Basic",
///                 HttpListenerName = listenerName,
///                 BackendAddressPoolName = backendAddressPoolName,
///                 BackendHttpSettingsName = httpSettingName,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 			Name:              pulumi.String("example-network"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.254.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.254.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-pip"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backendAddressPoolName := exampleVirtualNetwork.Name.ApplyT(func(name string) (string, error) {
/// 			return fmt.Sprintf("%v-beap", name), nil
/// 		}).(pulumi.StringOutput)
/// 		frontendPortName := exampleVirtualNetwork.Name.ApplyT(func(name string) (string, error) {
/// 			return fmt.Sprintf("%v-feport", name), nil
/// 		}).(pulumi.StringOutput)
/// 		frontendIpConfigurationName := exampleVirtualNetwork.Name.ApplyT(func(name string) (string, error) {
/// 			return fmt.Sprintf("%v-feip", name), nil
/// 		}).(pulumi.StringOutput)
/// 		httpSettingName := exampleVirtualNetwork.Name.ApplyT(func(name string) (string, error) {
/// 			return fmt.Sprintf("%v-be-htst", name), nil
/// 		}).(pulumi.StringOutput)
/// 		listenerName := exampleVirtualNetwork.Name.ApplyT(func(name string) (string, error) {
/// 			return fmt.Sprintf("%v-httplstn", name), nil
/// 		}).(pulumi.StringOutput)
/// 		requestRoutingRuleName := exampleVirtualNetwork.Name.ApplyT(func(name string) (string, error) {
/// 			return fmt.Sprintf("%v-rqrt", name), nil
/// 		}).(pulumi.StringOutput)
/// 		_ = exampleVirtualNetwork.Name.ApplyT(func(name string) (string, error) {
/// 			return fmt.Sprintf("%v-rdrcfg", name), nil
/// 		}).(pulumi.StringOutput)
/// 		_, err = network.NewApplicationGateway(ctx, "network", &network.ApplicationGatewayArgs{
/// 			Name:              pulumi.String("example-appgateway"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &network.ApplicationGatewaySkuArgs{
/// 				Name:     pulumi.String("Standard_v2"),
/// 				Tier:     pulumi.String("Standard_v2"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 			GatewayIpConfigurations: network.ApplicationGatewayGatewayIpConfigurationArray{
/// 				&network.ApplicationGatewayGatewayIpConfigurationArgs{
/// 					Name:     pulumi.String("my-gateway-ip-configuration"),
/// 					SubnetId: exampleSubnet.ID(),
/// 				},
/// 			},
/// 			FrontendPorts: network.ApplicationGatewayFrontendPortArray{
/// 				&network.ApplicationGatewayFrontendPortArgs{
/// 					Name: pulumi.String(frontendPortName),
/// 					Port: pulumi.Int(80),
/// 				},
/// 			},
/// 			FrontendIpConfigurations: network.ApplicationGatewayFrontendIpConfigurationArray{
/// 				&network.ApplicationGatewayFrontendIpConfigurationArgs{
/// 					Name:              pulumi.String(frontendIpConfigurationName),
/// 					PublicIpAddressId: examplePublicIp.ID(),
/// 				},
/// 			},
/// 			BackendAddressPools: network.ApplicationGatewayBackendAddressPoolArray{
/// 				&network.ApplicationGatewayBackendAddressPoolArgs{
/// 					Name: pulumi.String(backendAddressPoolName),
/// 				},
/// 			},
/// 			BackendHttpSettings: network.ApplicationGatewayBackendHttpSettingArray{
/// 				&network.ApplicationGatewayBackendHttpSettingArgs{
/// 					Name:                pulumi.String(httpSettingName),
/// 					CookieBasedAffinity: pulumi.String("Disabled"),
/// 					Path:                pulumi.String("/path1/"),
/// 					Port:                pulumi.Int(80),
/// 					Protocol:            pulumi.String("Http"),
/// 					RequestTimeout:      pulumi.Int(60),
/// 				},
/// 			},
/// 			HttpListeners: network.ApplicationGatewayHttpListenerArray{
/// 				&network.ApplicationGatewayHttpListenerArgs{
/// 					Name:                        pulumi.String(listenerName),
/// 					FrontendIpConfigurationName: pulumi.String(frontendIpConfigurationName),
/// 					FrontendPortName:            pulumi.String(frontendPortName),
/// 					Protocol:                    pulumi.String("Http"),
/// 				},
/// 			},
/// 			RequestRoutingRules: network.ApplicationGatewayRequestRoutingRuleArray{
/// 				&network.ApplicationGatewayRequestRoutingRuleArgs{
/// 					Name:                    pulumi.String(requestRoutingRuleName),
/// 					Priority:                pulumi.Int(9),
/// 					RuleType:                pulumi.String("Basic"),
/// 					HttpListenerName:        pulumi.String(listenerName),
/// 					BackendAddressPoolName:  pulumi.String(backendAddressPoolName),
/// 					BackendHttpSettingsName: pulumi.String(httpSettingName),
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
/// import com.pulumi.azure.network.ApplicationGateway;
/// import com.pulumi.azure.network.ApplicationGatewayArgs;
/// import com.pulumi.azure.network.inputs.ApplicationGatewaySkuArgs;
/// import com.pulumi.azure.network.inputs.ApplicationGatewayGatewayIpConfigurationArgs;
/// import com.pulumi.azure.network.inputs.ApplicationGatewayFrontendPortArgs;
/// import com.pulumi.azure.network.inputs.ApplicationGatewayFrontendIpConfigurationArgs;
/// import com.pulumi.azure.network.inputs.ApplicationGatewayBackendAddressPoolArgs;
/// import com.pulumi.azure.network.inputs.ApplicationGatewayBackendHttpSettingArgs;
/// import com.pulumi.azure.network.inputs.ApplicationGatewayHttpListenerArgs;
/// import com.pulumi.azure.network.inputs.ApplicationGatewayRequestRoutingRuleArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.254.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.254.0.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationMethod("Static")
///             .build());
///
///         final var backendAddressPoolName = exampleVirtualNetwork.name().applyValue(_name -> String.format("%s-beap", _name));
///
///         final var frontendPortName = exampleVirtualNetwork.name().applyValue(_name -> String.format("%s-feport", _name));
///
///         final var frontendIpConfigurationName = exampleVirtualNetwork.name().applyValue(_name -> String.format("%s-feip", _name));
///
///         final var httpSettingName = exampleVirtualNetwork.name().applyValue(_name -> String.format("%s-be-htst", _name));
///
///         final var listenerName = exampleVirtualNetwork.name().applyValue(_name -> String.format("%s-httplstn", _name));
///
///         final var requestRoutingRuleName = exampleVirtualNetwork.name().applyValue(_name -> String.format("%s-rqrt", _name));
///
///         final var redirectConfigurationName = exampleVirtualNetwork.name().applyValue(_name -> String.format("%s-rdrcfg", _name));
///
///         var network = new ApplicationGateway("network", ApplicationGatewayArgs.builder()
///             .name("example-appgateway")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(ApplicationGatewaySkuArgs.builder()
///                 .name("Standard_v2")
///                 .tier("Standard_v2")
///                 .capacity(2)
///                 .build())
///             .gatewayIpConfigurations(ApplicationGatewayGatewayIpConfigurationArgs.builder()
///                 .name("my-gateway-ip-configuration")
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .frontendPorts(ApplicationGatewayFrontendPortArgs.builder()
///                 .name(frontendPortName)
///                 .port(80)
///                 .build())
///             .frontendIpConfigurations(ApplicationGatewayFrontendIpConfigurationArgs.builder()
///                 .name(frontendIpConfigurationName)
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .backendAddressPools(ApplicationGatewayBackendAddressPoolArgs.builder()
///                 .name(backendAddressPoolName)
///                 .build())
///             .backendHttpSettings(ApplicationGatewayBackendHttpSettingArgs.builder()
///                 .name(httpSettingName)
///                 .cookieBasedAffinity("Disabled")
///                 .path("/path1/")
///                 .port(80)
///                 .protocol("Http")
///                 .requestTimeout(60)
///                 .build())
///             .httpListeners(ApplicationGatewayHttpListenerArgs.builder()
///                 .name(listenerName)
///                 .frontendIpConfigurationName(frontendIpConfigurationName)
///                 .frontendPortName(frontendPortName)
///                 .protocol("Http")
///                 .build())
///             .requestRoutingRules(ApplicationGatewayRequestRoutingRuleArgs.builder()
///                 .name(requestRoutingRuleName)
///                 .priority(9)
///                 .ruleType("Basic")
///                 .httpListenerName(listenerName)
///                 .backendAddressPoolName(backendAddressPoolName)
///                 .backendHttpSettingsName(httpSettingName)
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
///       name: example-network
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.254.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.254.0.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-pip
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationMethod: Static
///   network:
///     type: azure:network:ApplicationGateway
///     properties:
///       name: example-appgateway
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: Standard_v2
///         tier: Standard_v2
///         capacity: 2
///       gatewayIpConfigurations:
///         - name: my-gateway-ip-configuration
///           subnetId: ${exampleSubnet.id}
///       frontendPorts:
///         - name: ${frontendPortName}
///           port: 80
///       frontendIpConfigurations:
///         - name: ${frontendIpConfigurationName}
///           publicIpAddressId: ${examplePublicIp.id}
///       backendAddressPools:
///         - name: ${backendAddressPoolName}
///       backendHttpSettings:
///         - name: ${httpSettingName}
///           cookieBasedAffinity: Disabled
///           path: /path1/
///           port: 80
///           protocol: Http
///           requestTimeout: 60
///       httpListeners:
///         - name: ${listenerName}
///           frontendIpConfigurationName: ${frontendIpConfigurationName}
///           frontendPortName: ${frontendPortName}
///           protocol: Http
///       requestRoutingRules:
///         - name: ${requestRoutingRuleName}
///           priority: 9
///           ruleType: Basic
///           httpListenerName: ${listenerName}
///           backendAddressPoolName: ${backendAddressPoolName}
///           backendHttpSettingsName: ${httpSettingName}
/// variables:
///   backendAddressPoolName: ${exampleVirtualNetwork.name}-beap
///   frontendPortName: ${exampleVirtualNetwork.name}-feport
///   frontendIpConfigurationName: ${exampleVirtualNetwork.name}-feip
///   httpSettingName: ${exampleVirtualNetwork.name}-be-htst
///   listenerName: ${exampleVirtualNetwork.name}-httplstn
///   requestRoutingRuleName: ${exampleVirtualNetwork.name}-rqrt
///   redirectConfigurationName: ${exampleVirtualNetwork.name}-rdrcfg
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Application Gateway's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/applicationGateway:ApplicationGateway example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/applicationGateways/myGateway1
/// ```
class ApplicationGateway extends pulumi.CustomResource {
  /// One or more `authentication_certificate` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayAuthenticationCertificate>?> authenticationCertificates;
  /// An `autoscale_configuration` block as defined below.
  late final pulumi.Output<ApplicationGatewayAutoscaleConfiguration?> autoscaleConfiguration;
  /// One or more `backend_address_pool` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayBackendAddressPool>> backendAddressPools;
  /// One or more `backend_http_settings` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayBackendHttpSetting>> backendHttpSettings;
  /// One or more `custom_error_configuration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayCustomErrorConfiguration>?> customErrorConfigurations;
  /// Is HTTP2 enabled on the application gateway resource? Defaults to `false`.
  late final pulumi.Output<bool?> enableHttp2;
  /// Is FIPS enabled on the Application Gateway?
  late final pulumi.Output<bool?> fipsEnabled;
  /// The ID of the Web Application Firewall Policy.
  late final pulumi.Output<String?> firewallPolicyId;
  /// Is the Firewall Policy associated with the Application Gateway?
  late final pulumi.Output<bool?> forceFirewallPolicyAssociation;
  /// One or more `frontend_ip_configuration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayFrontendIpConfiguration>> frontendIpConfigurations;
  /// One or more `frontend_port` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayFrontendPort>> frontendPorts;
  /// One or more `gateway_ip_configuration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayGatewayIpConfiguration>> gatewayIpConfigurations;
  /// A `global` block as defined below.
  late final pulumi.Output<ApplicationGatewayGlobal?> global;
  /// One or more `http_listener` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayHttpListener>> httpListeners;
  /// An `identity` block as defined below.
  late final pulumi.Output<ApplicationGatewayIdentity?> identity;
  /// The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Application Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of `private_endpoint_connection` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayPrivateEndpointConnection>> privateEndpointConnections;
  /// One or more `private_link_configuration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayPrivateLinkConfiguration>?> privateLinkConfigurations;
  /// One or more `probe` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayProbe>?> probes;
  /// One or more `redirect_configuration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayRedirectConfiguration>?> redirectConfigurations;
  /// One or more `request_routing_rule` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayRequestRoutingRule>> requestRoutingRules;
  /// The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `rewrite_rule_set` blocks as defined below. Only valid for v2 WAF and Standard SKUs.
  late final pulumi.Output<List<ApplicationGatewayRewriteRuleSet>?> rewriteRuleSets;
  /// A `sku` block as defined below.
  late final pulumi.Output<ApplicationGatewaySku> sku;
  /// One or more `ssl_certificate` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewaySslCertificate>?> sslCertificates;
  /// a `ssl_policy` block as defined below.
  late final pulumi.Output<ApplicationGatewaySslPolicy> sslPolicy;
  /// One or more `ssl_profile` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewaySslProfile>?> sslProfiles;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// One or more `trusted_client_certificate` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayTrustedClientCertificate>?> trustedClientCertificates;
  /// One or more `trusted_root_certificate` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayTrustedRootCertificate>?> trustedRootCertificates;
  /// One or more `url_path_map` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayUrlPathMap>?> urlPathMaps;
  /// A `waf_configuration` block as defined below.
  late final pulumi.Output<ApplicationGatewayWafConfiguration?> wafConfiguration;
  /// Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created.
  ///
  /// > **Note:** Availability Zones are not supported in all regions at this time, please check the [official documentation](https://docs.microsoft.com/azure/availability-zones/az-overview) for more information. They are also only supported for [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/application-gateway-autoscaling-zone-redundant)
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ApplicationGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationGateway]. {@macro pulumi_network_application_gateway_application_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationGateway(
    String name, {
    ApplicationGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/applicationGateway:ApplicationGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationCertificates = registerOutput<List<ApplicationGatewayAuthenticationCertificate>?>('authenticationCertificates');
    this.autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfiguration?>('autoscaleConfiguration');
    this.backendAddressPools = registerOutput<List<ApplicationGatewayBackendAddressPool>>('backendAddressPools');
    this.backendHttpSettings = registerOutput<List<ApplicationGatewayBackendHttpSetting>>('backendHttpSettings');
    this.customErrorConfigurations = registerOutput<List<ApplicationGatewayCustomErrorConfiguration>?>('customErrorConfigurations');
    this.enableHttp2 = registerOutput<bool?>('enableHttp2');
    this.fipsEnabled = registerOutput<bool?>('fipsEnabled');
    this.firewallPolicyId = registerOutput<String?>('firewallPolicyId');
    this.forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    this.frontendIpConfigurations = registerOutput<List<ApplicationGatewayFrontendIpConfiguration>>('frontendIpConfigurations');
    this.frontendPorts = registerOutput<List<ApplicationGatewayFrontendPort>>('frontendPorts');
    this.gatewayIpConfigurations = registerOutput<List<ApplicationGatewayGatewayIpConfiguration>>('gatewayIpConfigurations');
    this.global = registerOutput<ApplicationGatewayGlobal?>('global');
    this.httpListeners = registerOutput<List<ApplicationGatewayHttpListener>>('httpListeners');
    this.identity = registerOutput<ApplicationGatewayIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<ApplicationGatewayPrivateEndpointConnection>>('privateEndpointConnections');
    this.privateLinkConfigurations = registerOutput<List<ApplicationGatewayPrivateLinkConfiguration>?>('privateLinkConfigurations');
    this.probes = registerOutput<List<ApplicationGatewayProbe>?>('probes');
    this.redirectConfigurations = registerOutput<List<ApplicationGatewayRedirectConfiguration>?>('redirectConfigurations');
    this.requestRoutingRules = registerOutput<List<ApplicationGatewayRequestRoutingRule>>('requestRoutingRules');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.rewriteRuleSets = registerOutput<List<ApplicationGatewayRewriteRuleSet>?>('rewriteRuleSets');
    this.sku = registerOutput<ApplicationGatewaySku>('sku');
    this.sslCertificates = registerOutput<List<ApplicationGatewaySslCertificate>?>('sslCertificates');
    this.sslPolicy = registerOutput<ApplicationGatewaySslPolicy>('sslPolicy');
    this.sslProfiles = registerOutput<List<ApplicationGatewaySslProfile>?>('sslProfiles');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trustedClientCertificates = registerOutput<List<ApplicationGatewayTrustedClientCertificate>?>('trustedClientCertificates');
    this.trustedRootCertificates = registerOutput<List<ApplicationGatewayTrustedRootCertificate>?>('trustedRootCertificates');
    this.urlPathMaps = registerOutput<List<ApplicationGatewayUrlPathMap>?>('urlPathMaps');
    this.wafConfiguration = registerOutput<ApplicationGatewayWafConfiguration?>('wafConfiguration');
    this.zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [ApplicationGateway] resource's state with the given [name] and [id].
  static ApplicationGateway get(
    String name,
    pulumi.Input<String> id, {
    ApplicationGatewayState? state,
  }) {
    return ApplicationGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/applicationGateway:ApplicationGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationCertificates = registerOutput<List<ApplicationGatewayAuthenticationCertificate>?>('authenticationCertificates');
    this.autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfiguration?>('autoscaleConfiguration');
    this.backendAddressPools = registerOutput<List<ApplicationGatewayBackendAddressPool>>('backendAddressPools');
    this.backendHttpSettings = registerOutput<List<ApplicationGatewayBackendHttpSetting>>('backendHttpSettings');
    this.customErrorConfigurations = registerOutput<List<ApplicationGatewayCustomErrorConfiguration>?>('customErrorConfigurations');
    this.enableHttp2 = registerOutput<bool?>('enableHttp2');
    this.fipsEnabled = registerOutput<bool?>('fipsEnabled');
    this.firewallPolicyId = registerOutput<String?>('firewallPolicyId');
    this.forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    this.frontendIpConfigurations = registerOutput<List<ApplicationGatewayFrontendIpConfiguration>>('frontendIpConfigurations');
    this.frontendPorts = registerOutput<List<ApplicationGatewayFrontendPort>>('frontendPorts');
    this.gatewayIpConfigurations = registerOutput<List<ApplicationGatewayGatewayIpConfiguration>>('gatewayIpConfigurations');
    this.global = registerOutput<ApplicationGatewayGlobal?>('global');
    this.httpListeners = registerOutput<List<ApplicationGatewayHttpListener>>('httpListeners');
    this.identity = registerOutput<ApplicationGatewayIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<ApplicationGatewayPrivateEndpointConnection>>('privateEndpointConnections');
    this.privateLinkConfigurations = registerOutput<List<ApplicationGatewayPrivateLinkConfiguration>?>('privateLinkConfigurations');
    this.probes = registerOutput<List<ApplicationGatewayProbe>?>('probes');
    this.redirectConfigurations = registerOutput<List<ApplicationGatewayRedirectConfiguration>?>('redirectConfigurations');
    this.requestRoutingRules = registerOutput<List<ApplicationGatewayRequestRoutingRule>>('requestRoutingRules');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.rewriteRuleSets = registerOutput<List<ApplicationGatewayRewriteRuleSet>?>('rewriteRuleSets');
    this.sku = registerOutput<ApplicationGatewaySku>('sku');
    this.sslCertificates = registerOutput<List<ApplicationGatewaySslCertificate>?>('sslCertificates');
    this.sslPolicy = registerOutput<ApplicationGatewaySslPolicy>('sslPolicy');
    this.sslProfiles = registerOutput<List<ApplicationGatewaySslProfile>?>('sslProfiles');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trustedClientCertificates = registerOutput<List<ApplicationGatewayTrustedClientCertificate>?>('trustedClientCertificates');
    this.trustedRootCertificates = registerOutput<List<ApplicationGatewayTrustedRootCertificate>?>('trustedRootCertificates');
    this.urlPathMaps = registerOutput<List<ApplicationGatewayUrlPathMap>?>('urlPathMaps');
    this.wafConfiguration = registerOutput<ApplicationGatewayWafConfiguration?>('wafConfiguration');
    this.zones = registerOutput<List<String>?>('zones');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_args.dart';
import 'application_gateway_authentication_certificate.dart';
import 'application_gateway_autoscale_configuration.dart';
import 'application_gateway_backend.dart';
import 'application_gateway_backend_address_pool.dart';
import 'application_gateway_backend_http_setting.dart';
import 'application_gateway_custom_error_configuration.dart';
import 'application_gateway_frontend_ip_configuration.dart';
import 'application_gateway_frontend_port.dart';
import 'application_gateway_gateway_ip_configuration.dart';
import 'application_gateway_global.dart';
import 'application_gateway_http_listener.dart';
import 'application_gateway_identity.dart';
import 'application_gateway_listener.dart';
import 'application_gateway_private_endpoint_connection.dart';
import 'application_gateway_private_link_configuration.dart';
import 'application_gateway_probe.dart';
import 'application_gateway_redirect_configuration.dart';
import 'application_gateway_request_routing_rule.dart';
import 'application_gateway_rewrite_rule_set.dart';
import 'application_gateway_routing_rule.dart';
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
/// &gt; **Note:** The `backendAddressPool`, `backendHttpSettings`, `httpListener`, `privateLinkConfiguration`, `requestRoutingRule`, `redirectConfiguration`, `probe`, `sslCertificate`,
/// and `frontendPort` properties are Sets as the service API returns these lists of objects in a different order from how the provider sends them. As Sets are stored using a hash, if one
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
/// 					SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
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
/// 					PublicIpAddressId: examplePublicIp.ID().ToIDOutput().ToStringOutput(),
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
///   name                = "example-network"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   address_spaces      = ["10.254.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.254.0.0/24"]
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "example-pip"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   allocation_method   = "Static"
/// }
/// resource "azure_network_applicationgateway" "network" {
///   name                = "example-appgateway"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku = {
///     name     = "Standard_v2"
///     tier     = "Standard_v2"
///     capacity = 2
///   }
///   gateway_ip_configurations {
///     name      = "my-gateway-ip-configuration"
///     subnet_id = azure_network_subnet.example.id
///   }
///   frontend_ports {
///     name = local.frontendPortName
///     port = 80
///   }
///   frontend_ip_configurations {
///     name                 = local.frontendIpConfigurationName
///     public_ip_address_id = azure_network_publicip.example.id
///   }
///   backend_address_pools {
///     name = local.backendAddressPoolName
///   }
///   backend_http_settings {
///     name                  = local.httpSettingName
///     cookie_based_affinity = "Disabled"
///     path                  = "/path1/"
///     port                  = 80
///     protocol              = "Http"
///     request_timeout       = 60
///   }
///   http_listeners {
///     name                           = local.listenerName
///     frontend_ip_configuration_name = local.frontendIpConfigurationName
///     frontend_port_name             = local.frontendPortName
///     protocol                       = "Http"
///   }
///   request_routing_rules {
///     name                       = local.requestRoutingRuleName
///     priority                   = 9
///     rule_type                  = "Basic"
///     http_listener_name         = local.listenerName
///     backend_address_pool_name  = local.backendAddressPoolName
///     backend_http_settings_name = local.httpSettingName
///   }
/// }
/// locals {
///   backendAddressPoolName ="${azure_network_virtualnetwork.example.name}-beap"
/// }
/// locals {
///   frontendPortName ="${azure_network_virtualnetwork.example.name}-feport"
/// }
/// locals {
///   frontendIpConfigurationName ="${azure_network_virtualnetwork.example.name}-feip"
/// }
/// locals {
///   httpSettingName ="${azure_network_virtualnetwork.example.name}-be-htst"
/// }
/// locals {
///   listenerName ="${azure_network_virtualnetwork.example.name}-httplstn"
/// }
/// locals {
///   requestRoutingRuleName ="${azure_network_virtualnetwork.example.name}-rqrt"
/// }
/// locals {
///   redirectConfigurationName ="${azure_network_virtualnetwork.example.name}-rdrcfg"
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// An Application Gateway can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/applicationGateway:ApplicationGateway example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/applicationGateways/myGateway1
/// ```
class ApplicationGateway extends pulumi.CustomResource {
  /// One or more `authenticationCertificate` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayAuthenticationCertificate>?> authenticationCertificates;
  /// An `autoscaleConfiguration` block as defined below.
  late final pulumi.Output<ApplicationGatewayAutoscaleConfiguration?> autoscaleConfiguration;
  /// One or more `backendAddressPool` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayBackendAddressPool>> backendAddressPools;
  /// One or more `backendHttpSettings` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `backendHttpSettings` or `backend` must be specified.
  late final pulumi.Output<List<ApplicationGatewayBackendHttpSetting>?> backendHttpSettings;
  /// One or more `backend` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `backendHttpSettings` or `backend` must be specified.
  late final pulumi.Output<List<ApplicationGatewayBackend>?> backends;
  /// One or more `customErrorConfiguration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayCustomErrorConfiguration>?> customErrorConfigurations;
  late final pulumi.Output<bool> enableHttp2;
  /// Is FIPS enabled on the Application Gateway?
  late final pulumi.Output<bool?> fipsEnabled;
  /// The ID of the Web Application Firewall Policy.
  late final pulumi.Output<String?> firewallPolicyId;
  /// Is the Firewall Policy associated with the Application Gateway?
  late final pulumi.Output<bool?> forceFirewallPolicyAssociation;
  /// One or more `frontendIpConfiguration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayFrontendIpConfiguration>> frontendIpConfigurations;
  /// One or more `frontendPort` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayFrontendPort>> frontendPorts;
  /// One or more `gatewayIpConfiguration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayGatewayIpConfiguration>> gatewayIpConfigurations;
  /// A `global` block as defined below.
  late final pulumi.Output<ApplicationGatewayGlobal?> global;
  /// Is HTTP2 enabled on the application gateway resource? Defaults to `false`.
  late final pulumi.Output<bool> http2Enabled;
  /// One or more `httpListener` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `httpListener` or `listener` must be specified.
  late final pulumi.Output<List<ApplicationGatewayHttpListener>?> httpListeners;
  /// An `identity` block as defined below.
  late final pulumi.Output<ApplicationGatewayIdentity?> identity;
  /// One or more `listener` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `httpListener` or `listener` must be specified.
  late final pulumi.Output<List<ApplicationGatewayListener>?> listeners;
  /// The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Application Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of `privateEndpointConnection` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayPrivateEndpointConnection>> privateEndpointConnections;
  /// One or more `privateLinkConfiguration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayPrivateLinkConfiguration>?> privateLinkConfigurations;
  /// One or more `probe` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayProbe>?> probes;
  /// One or more `redirectConfiguration` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayRedirectConfiguration>?> redirectConfigurations;
  /// One or more `requestRoutingRule` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `requestRoutingRule` or `routingRule` must be specified.
  late final pulumi.Output<List<ApplicationGatewayRequestRoutingRule>?> requestRoutingRules;
  /// The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `rewriteRuleSet` blocks as defined below. Only valid for v2 WAF and Standard SKUs.
  late final pulumi.Output<List<ApplicationGatewayRewriteRuleSet>?> rewriteRuleSets;
  /// One or more `routingRule` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `requestRoutingRule` or `routingRule` must be specified.
  late final pulumi.Output<List<ApplicationGatewayRoutingRule>?> routingRules;
  /// A `sku` block as defined below.
  late final pulumi.Output<ApplicationGatewaySku> sku;
  /// One or more `sslCertificate` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewaySslCertificate>?> sslCertificates;
  /// a `sslPolicy` block as defined below.
  late final pulumi.Output<ApplicationGatewaySslPolicy> sslPolicy;
  /// One or more `sslProfile` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewaySslProfile>?> sslProfiles;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// One or more `trustedClientCertificate` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayTrustedClientCertificate>?> trustedClientCertificates;
  /// One or more `trustedRootCertificate` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayTrustedRootCertificate>?> trustedRootCertificates;
  /// One or more `urlPathMap` blocks as defined below.
  late final pulumi.Output<List<ApplicationGatewayUrlPathMap>?> urlPathMaps;
  /// A `wafConfiguration` block as defined below.
  late final pulumi.Output<ApplicationGatewayWafConfiguration?> wafConfiguration;
  /// Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created.
  ///
  /// &gt; **Note:** Availability Zones are not supported in all regions at this time, please check the [official documentation](https://docs.microsoft.com/azure/availability-zones/az-overview) for more information. They are also only supported for [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/application-gateway-autoscaling-zone-redundant)
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
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    authenticationCertificates = registerOutput<List<ApplicationGatewayAuthenticationCertificate>?>('authenticationCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificate>(guardedValue, (value) => ApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfiguration?>('autoscaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayAutoscaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backendAddressPools = registerOutput<List<ApplicationGatewayBackendAddressPool>>('backendAddressPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(guardedValue, (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>())); });
    backendHttpSettings = registerOutput<List<ApplicationGatewayBackendHttpSetting>?>('backendHttpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendHttpSetting>(guardedValue, (value) => ApplicationGatewayBackendHttpSetting.fromMap((value as Map).cast<String, dynamic>())); });
    backends = registerOutput<List<ApplicationGatewayBackend>?>('backends', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackend>(guardedValue, (value) => ApplicationGatewayBackend.fromMap((value as Map).cast<String, dynamic>())); });
    customErrorConfigurations = registerOutput<List<ApplicationGatewayCustomErrorConfiguration>?>('customErrorConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayCustomErrorConfiguration>(guardedValue, (value) => ApplicationGatewayCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    enableHttp2 = registerOutput<bool>('enableHttp2');
    fipsEnabled = registerOutput<bool?>('fipsEnabled');
    firewallPolicyId = registerOutput<String?>('firewallPolicyId');
    forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    frontendIpConfigurations = registerOutput<List<ApplicationGatewayFrontendIpConfiguration>>('frontendIpConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendIpConfiguration>(guardedValue, (value) => ApplicationGatewayFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    frontendPorts = registerOutput<List<ApplicationGatewayFrontendPort>>('frontendPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendPort>(guardedValue, (value) => ApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayIpConfigurations = registerOutput<List<ApplicationGatewayGatewayIpConfiguration>>('gatewayIpConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayGatewayIpConfiguration>(guardedValue, (value) => ApplicationGatewayGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    global = registerOutput<ApplicationGatewayGlobal?>('global', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayGlobal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    http2Enabled = registerOutput<bool>('http2Enabled');
    httpListeners = registerOutput<List<ApplicationGatewayHttpListener>?>('httpListeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayHttpListener>(guardedValue, (value) => ApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<ApplicationGatewayIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listeners = registerOutput<List<ApplicationGatewayListener>?>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayListener>(guardedValue, (value) => ApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<ApplicationGatewayPrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateEndpointConnection>(guardedValue, (value) => ApplicationGatewayPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    privateLinkConfigurations = registerOutput<List<ApplicationGatewayPrivateLinkConfiguration>?>('privateLinkConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfiguration>(guardedValue, (value) => ApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    probes = registerOutput<List<ApplicationGatewayProbe>?>('probes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayProbe>(guardedValue, (value) => ApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>())); });
    redirectConfigurations = registerOutput<List<ApplicationGatewayRedirectConfiguration>?>('redirectConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRedirectConfiguration>(guardedValue, (value) => ApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    requestRoutingRules = registerOutput<List<ApplicationGatewayRequestRoutingRule>?>('requestRoutingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRule>(guardedValue, (value) => ApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rewriteRuleSets = registerOutput<List<ApplicationGatewayRewriteRuleSet>?>('rewriteRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSet>(guardedValue, (value) => ApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>())); });
    routingRules = registerOutput<List<ApplicationGatewayRoutingRule>?>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRoutingRule>(guardedValue, (value) => ApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<ApplicationGatewaySku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslCertificates = registerOutput<List<ApplicationGatewaySslCertificate>?>('sslCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslCertificate>(guardedValue, (value) => ApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    sslPolicy = registerOutput<ApplicationGatewaySslPolicy>('sslPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySslPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslProfiles = registerOutput<List<ApplicationGatewaySslProfile>?>('sslProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslProfile>(guardedValue, (value) => ApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedClientCertificates = registerOutput<List<ApplicationGatewayTrustedClientCertificate>?>('trustedClientCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificate>(guardedValue, (value) => ApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    trustedRootCertificates = registerOutput<List<ApplicationGatewayTrustedRootCertificate>?>('trustedRootCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificate>(guardedValue, (value) => ApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    urlPathMaps = registerOutput<List<ApplicationGatewayUrlPathMap>?>('urlPathMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayUrlPathMap>(guardedValue, (value) => ApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>())); });
    wafConfiguration = registerOutput<ApplicationGatewayWafConfiguration?>('wafConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayWafConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [ApplicationGateway] resource's state with the given [name] and [id].
  static ApplicationGateway get(
    String name,
    pulumi.Input<String> id, {
    ApplicationGatewayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApplicationGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    authenticationCertificates = registerOutput<List<ApplicationGatewayAuthenticationCertificate>?>('authenticationCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificate>(guardedValue, (value) => ApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfiguration?>('autoscaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayAutoscaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backendAddressPools = registerOutput<List<ApplicationGatewayBackendAddressPool>>('backendAddressPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(guardedValue, (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>())); });
    backendHttpSettings = registerOutput<List<ApplicationGatewayBackendHttpSetting>?>('backendHttpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendHttpSetting>(guardedValue, (value) => ApplicationGatewayBackendHttpSetting.fromMap((value as Map).cast<String, dynamic>())); });
    backends = registerOutput<List<ApplicationGatewayBackend>?>('backends', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackend>(guardedValue, (value) => ApplicationGatewayBackend.fromMap((value as Map).cast<String, dynamic>())); });
    customErrorConfigurations = registerOutput<List<ApplicationGatewayCustomErrorConfiguration>?>('customErrorConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayCustomErrorConfiguration>(guardedValue, (value) => ApplicationGatewayCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    enableHttp2 = registerOutput<bool>('enableHttp2');
    fipsEnabled = registerOutput<bool?>('fipsEnabled');
    firewallPolicyId = registerOutput<String?>('firewallPolicyId');
    forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    frontendIpConfigurations = registerOutput<List<ApplicationGatewayFrontendIpConfiguration>>('frontendIpConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendIpConfiguration>(guardedValue, (value) => ApplicationGatewayFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    frontendPorts = registerOutput<List<ApplicationGatewayFrontendPort>>('frontendPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendPort>(guardedValue, (value) => ApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayIpConfigurations = registerOutput<List<ApplicationGatewayGatewayIpConfiguration>>('gatewayIpConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayGatewayIpConfiguration>(guardedValue, (value) => ApplicationGatewayGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    global = registerOutput<ApplicationGatewayGlobal?>('global', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayGlobal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    http2Enabled = registerOutput<bool>('http2Enabled');
    httpListeners = registerOutput<List<ApplicationGatewayHttpListener>?>('httpListeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayHttpListener>(guardedValue, (value) => ApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<ApplicationGatewayIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listeners = registerOutput<List<ApplicationGatewayListener>?>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayListener>(guardedValue, (value) => ApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<ApplicationGatewayPrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateEndpointConnection>(guardedValue, (value) => ApplicationGatewayPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    privateLinkConfigurations = registerOutput<List<ApplicationGatewayPrivateLinkConfiguration>?>('privateLinkConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfiguration>(guardedValue, (value) => ApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    probes = registerOutput<List<ApplicationGatewayProbe>?>('probes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayProbe>(guardedValue, (value) => ApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>())); });
    redirectConfigurations = registerOutput<List<ApplicationGatewayRedirectConfiguration>?>('redirectConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRedirectConfiguration>(guardedValue, (value) => ApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    requestRoutingRules = registerOutput<List<ApplicationGatewayRequestRoutingRule>?>('requestRoutingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRule>(guardedValue, (value) => ApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rewriteRuleSets = registerOutput<List<ApplicationGatewayRewriteRuleSet>?>('rewriteRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSet>(guardedValue, (value) => ApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>())); });
    routingRules = registerOutput<List<ApplicationGatewayRoutingRule>?>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRoutingRule>(guardedValue, (value) => ApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<ApplicationGatewaySku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslCertificates = registerOutput<List<ApplicationGatewaySslCertificate>?>('sslCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslCertificate>(guardedValue, (value) => ApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    sslPolicy = registerOutput<ApplicationGatewaySslPolicy>('sslPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySslPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslProfiles = registerOutput<List<ApplicationGatewaySslProfile>?>('sslProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslProfile>(guardedValue, (value) => ApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedClientCertificates = registerOutput<List<ApplicationGatewayTrustedClientCertificate>?>('trustedClientCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificate>(guardedValue, (value) => ApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    trustedRootCertificates = registerOutput<List<ApplicationGatewayTrustedRootCertificate>?>('trustedRootCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificate>(guardedValue, (value) => ApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    urlPathMaps = registerOutput<List<ApplicationGatewayUrlPathMap>?>('urlPathMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayUrlPathMap>(guardedValue, (value) => ApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>())); });
    wafConfiguration = registerOutput<ApplicationGatewayWafConfiguration?>('wafConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayWafConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ApplicationGateway] resource.
  ApplicationGateway.reference(String urn)
    : super(
        'azure:network/applicationGateway:ApplicationGateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authenticationCertificates = registerOutput<List<ApplicationGatewayAuthenticationCertificate>?>('authenticationCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificate>(guardedValue, (value) => ApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfiguration?>('autoscaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayAutoscaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    backendAddressPools = registerOutput<List<ApplicationGatewayBackendAddressPool>>('backendAddressPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(guardedValue, (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>())); });
    backendHttpSettings = registerOutput<List<ApplicationGatewayBackendHttpSetting>?>('backendHttpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendHttpSetting>(guardedValue, (value) => ApplicationGatewayBackendHttpSetting.fromMap((value as Map).cast<String, dynamic>())); });
    backends = registerOutput<List<ApplicationGatewayBackend>?>('backends', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackend>(guardedValue, (value) => ApplicationGatewayBackend.fromMap((value as Map).cast<String, dynamic>())); });
    customErrorConfigurations = registerOutput<List<ApplicationGatewayCustomErrorConfiguration>?>('customErrorConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayCustomErrorConfiguration>(guardedValue, (value) => ApplicationGatewayCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    enableHttp2 = registerOutput<bool>('enableHttp2');
    fipsEnabled = registerOutput<bool?>('fipsEnabled');
    firewallPolicyId = registerOutput<String?>('firewallPolicyId');
    forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    frontendIpConfigurations = registerOutput<List<ApplicationGatewayFrontendIpConfiguration>>('frontendIpConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendIpConfiguration>(guardedValue, (value) => ApplicationGatewayFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    frontendPorts = registerOutput<List<ApplicationGatewayFrontendPort>>('frontendPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendPort>(guardedValue, (value) => ApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayIpConfigurations = registerOutput<List<ApplicationGatewayGatewayIpConfiguration>>('gatewayIpConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayGatewayIpConfiguration>(guardedValue, (value) => ApplicationGatewayGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    global = registerOutput<ApplicationGatewayGlobal?>('global', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayGlobal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    http2Enabled = registerOutput<bool>('http2Enabled');
    httpListeners = registerOutput<List<ApplicationGatewayHttpListener>?>('httpListeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayHttpListener>(guardedValue, (value) => ApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<ApplicationGatewayIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listeners = registerOutput<List<ApplicationGatewayListener>?>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayListener>(guardedValue, (value) => ApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<ApplicationGatewayPrivateEndpointConnection>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateEndpointConnection>(guardedValue, (value) => ApplicationGatewayPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())); });
    privateLinkConfigurations = registerOutput<List<ApplicationGatewayPrivateLinkConfiguration>?>('privateLinkConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfiguration>(guardedValue, (value) => ApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    probes = registerOutput<List<ApplicationGatewayProbe>?>('probes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayProbe>(guardedValue, (value) => ApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>())); });
    redirectConfigurations = registerOutput<List<ApplicationGatewayRedirectConfiguration>?>('redirectConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRedirectConfiguration>(guardedValue, (value) => ApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    requestRoutingRules = registerOutput<List<ApplicationGatewayRequestRoutingRule>?>('requestRoutingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRule>(guardedValue, (value) => ApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rewriteRuleSets = registerOutput<List<ApplicationGatewayRewriteRuleSet>?>('rewriteRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSet>(guardedValue, (value) => ApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>())); });
    routingRules = registerOutput<List<ApplicationGatewayRoutingRule>?>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRoutingRule>(guardedValue, (value) => ApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<ApplicationGatewaySku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslCertificates = registerOutput<List<ApplicationGatewaySslCertificate>?>('sslCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslCertificate>(guardedValue, (value) => ApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    sslPolicy = registerOutput<ApplicationGatewaySslPolicy>('sslPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySslPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslProfiles = registerOutput<List<ApplicationGatewaySslProfile>?>('sslProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslProfile>(guardedValue, (value) => ApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedClientCertificates = registerOutput<List<ApplicationGatewayTrustedClientCertificate>?>('trustedClientCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificate>(guardedValue, (value) => ApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    trustedRootCertificates = registerOutput<List<ApplicationGatewayTrustedRootCertificate>?>('trustedRootCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificate>(guardedValue, (value) => ApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    urlPathMaps = registerOutput<List<ApplicationGatewayUrlPathMap>?>('urlPathMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayUrlPathMap>(guardedValue, (value) => ApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>())); });
    wafConfiguration = registerOutput<ApplicationGatewayWafConfiguration?>('wafConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayWafConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}

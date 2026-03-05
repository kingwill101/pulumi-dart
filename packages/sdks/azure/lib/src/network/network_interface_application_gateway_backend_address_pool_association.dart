import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_application_gateway_backend_address_pool_association_args.dart';
import 'network_interface_application_gateway_backend_address_pool_association_state.dart';

/// Manages the association between a Network Interface and a Application Gateway's Backend Address Pool.
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
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const frontend = new azure.network.Subnet("frontend", {
///     name: "frontend",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const backend = new azure.network.Subnet("backend", {
///     name: "backend",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const backendAddressPoolName = pulumi.interpolate`${exampleVirtualNetwork.name}-beap`;
/// const frontendPortName = pulumi.interpolate`${exampleVirtualNetwork.name}-feport`;
/// const frontendIpConfigurationName = pulumi.interpolate`${exampleVirtualNetwork.name}-feip`;
/// const httpSettingName = pulumi.interpolate`${exampleVirtualNetwork.name}-be-htst`;
/// const listenerName = pulumi.interpolate`${exampleVirtualNetwork.name}-httplstn`;
/// const requestRoutingRuleName = pulumi.interpolate`${exampleVirtualNetwork.name}-rqrt`;
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
///         subnetId: backend.id,
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
///         port: 80,
///         protocol: "Http",
///         requestTimeout: 1,
///     }],
///     httpListeners: [{
///         name: listenerName,
///         frontendIpConfigurationName: frontendIpConfigurationName,
///         frontendPortName: frontendPortName,
///         protocol: "Http",
///     }],
///     requestRoutingRules: [{
///         name: requestRoutingRuleName,
///         ruleType: "Basic",
///         priority: 25,
///         httpListenerName: listenerName,
///         backendAddressPoolName: backendAddressPoolName,
///         backendHttpSettingsName: httpSettingName,
///     }],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "testconfiguration1",
///         subnetId: frontend.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleNetworkInterfaceApplicationGatewayBackendAddressPoolAssociation = new azure.network.NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation("example", {
///     networkInterfaceId: exampleNetworkInterface.id,
///     ipConfigurationName: "testconfiguration1",
///     backendAddressPoolId: network.backendAddressPools.apply(backendAddressPools => backendAddressPools[0].id),
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
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// frontend = azure.network.Subnet("frontend",
///     name="frontend",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// backend = azure.network.Subnet("backend",
///     name="backend",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-pip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// backend_address_pool_name = example_virtual_network.name.apply(lambda name: f"{name}-beap")
/// frontend_port_name = example_virtual_network.name.apply(lambda name: f"{name}-feport")
/// frontend_ip_configuration_name = example_virtual_network.name.apply(lambda name: f"{name}-feip")
/// http_setting_name = example_virtual_network.name.apply(lambda name: f"{name}-be-htst")
/// listener_name = example_virtual_network.name.apply(lambda name: f"{name}-httplstn")
/// request_routing_rule_name = example_virtual_network.name.apply(lambda name: f"{name}-rqrt")
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
///         "subnet_id": backend.id,
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
///         "port": 80,
///         "protocol": "Http",
///         "request_timeout": 1,
///     }],
///     http_listeners=[{
///         "name": listener_name,
///         "frontend_ip_configuration_name": frontend_ip_configuration_name,
///         "frontend_port_name": frontend_port_name,
///         "protocol": "Http",
///     }],
///     request_routing_rules=[{
///         "name": request_routing_rule_name,
///         "rule_type": "Basic",
///         "priority": 25,
///         "http_listener_name": listener_name,
///         "backend_address_pool_name": backend_address_pool_name,
///         "backend_http_settings_name": http_setting_name,
///     }])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "testconfiguration1",
///         "subnet_id": frontend.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_network_interface_application_gateway_backend_address_pool_association = azure.network.NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation("example",
///     network_interface_id=example_network_interface.id,
///     ip_configuration_name="testconfiguration1",
///     backend_address_pool_id=network.backend_address_pools[0].id)
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
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var frontend = new Azure.Network.Subnet("frontend", new()
///     {
///         Name = "frontend",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var backend = new Azure.Network.Subnet("backend", new()
///     {
///         Name = "backend",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-pip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///                 SubnetId = backend.Id,
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
///                 Port = 80,
///                 Protocol = "Http",
///                 RequestTimeout = 1,
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
///                 RuleType = "Basic",
///                 Priority = 25,
///                 HttpListenerName = listenerName,
///                 BackendAddressPoolName = backendAddressPoolName,
///                 BackendHttpSettingsName = httpSettingName,
///             },
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "example-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "testconfiguration1",
///                 SubnetId = frontend.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleNetworkInterfaceApplicationGatewayBackendAddressPoolAssociation = new Azure.Network.NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation("example", new()
///     {
///         NetworkInterfaceId = exampleNetworkInterface.Id,
///         IpConfigurationName = "testconfiguration1",
///         BackendAddressPoolId = network.BackendAddressPools.Apply(backendAddressPools => backendAddressPools[0].Id),
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
/// 			Name: pulumi.String("example-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontend, err := network.NewSubnet(ctx, "frontend", &network.SubnetArgs{
/// 			Name:               pulumi.String("frontend"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backend, err := network.NewSubnet(ctx, "backend", &network.SubnetArgs{
/// 			Name:               pulumi.String("backend"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-pip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// 		network, err := network.NewApplicationGateway(ctx, "network", &network.ApplicationGatewayArgs{
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
/// 					SubnetId: backend.ID(),
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
/// 					Port:                pulumi.Int(80),
/// 					Protocol:            pulumi.String("Http"),
/// 					RequestTimeout:      pulumi.Int(1),
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
/// 					RuleType:                pulumi.String("Basic"),
/// 					Priority:                pulumi.Int(25),
/// 					HttpListenerName:        pulumi.String(listenerName),
/// 					BackendAddressPoolName:  pulumi.String(backendAddressPoolName),
/// 					BackendHttpSettingsName: pulumi.String(httpSettingName),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("example-nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("testconfiguration1"),
/// 					SubnetId:                   frontend.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkInterfaceApplicationGatewayBackendAddressPoolAssociation(ctx, "example", &network.NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs{
/// 			NetworkInterfaceId:  exampleNetworkInterface.ID(),
/// 			IpConfigurationName: pulumi.String("testconfiguration1"),
/// 			BackendAddressPoolId: pulumi.String(network.BackendAddressPools.ApplyT(func(backendAddressPools []network.ApplicationGatewayBackendAddressPool) (*string, error) {
/// 				return &backendAddressPools[0].Id, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.network.NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation;
/// import com.pulumi.azure.network.NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs;
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
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var frontend = new Subnet("frontend", SubnetArgs.builder()
///             .name("frontend")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var backend = new Subnet("backend", SubnetArgs.builder()
///             .name("backend")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip")
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///                 .subnetId(backend.id())
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
///                 .port(80)
///                 .protocol("Http")
///                 .requestTimeout(1)
///                 .build())
///             .httpListeners(ApplicationGatewayHttpListenerArgs.builder()
///                 .name(listenerName)
///                 .frontendIpConfigurationName(frontendIpConfigurationName)
///                 .frontendPortName(frontendPortName)
///                 .protocol("Http")
///                 .build())
///             .requestRoutingRules(ApplicationGatewayRequestRoutingRuleArgs.builder()
///                 .name(requestRoutingRuleName)
///                 .ruleType("Basic")
///                 .priority(25)
///                 .httpListenerName(listenerName)
///                 .backendAddressPoolName(backendAddressPoolName)
///                 .backendHttpSettingsName(httpSettingName)
///                 .build())
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("example-nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("testconfiguration1")
///                 .subnetId(frontend.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleNetworkInterfaceApplicationGatewayBackendAddressPoolAssociation = new NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation("exampleNetworkInterfaceApplicationGatewayBackendAddressPoolAssociation", NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs.builder()
///             .networkInterfaceId(exampleNetworkInterface.id())
///             .ipConfigurationName("testconfiguration1")
///             .backendAddressPoolId(network.backendAddressPools().applyValue(_backendAddressPools -> _backendAddressPools[0].id()))
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
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   frontend:
///     type: azure:network:Subnet
///     properties:
///       name: frontend
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   backend:
///     type: azure:network:Subnet
///     properties:
///       name: backend
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-pip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
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
///           subnetId: ${backend.id}
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
///           port: 80
///           protocol: Http
///           requestTimeout: 1
///       httpListeners:
///         - name: ${listenerName}
///           frontendIpConfigurationName: ${frontendIpConfigurationName}
///           frontendPortName: ${frontendPortName}
///           protocol: Http
///       requestRoutingRules:
///         - name: ${requestRoutingRuleName}
///           ruleType: Basic
///           priority: 25
///           httpListenerName: ${listenerName}
///           backendAddressPoolName: ${backendAddressPoolName}
///           backendHttpSettingsName: ${httpSettingName}
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: example-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: testconfiguration1
///           subnetId: ${frontend.id}
///           privateIpAddressAllocation: Dynamic
///   exampleNetworkInterfaceApplicationGatewayBackendAddressPoolAssociation:
///     type: azure:network:NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation
///     name: example
///     properties:
///       networkInterfaceId: ${exampleNetworkInterface.id}
///       ipConfigurationName: testconfiguration1
///       backendAddressPoolId: ${network.backendAddressPools[0].id}
/// variables:
///   backendAddressPoolName: ${exampleVirtualNetwork.name}-beap
///   frontendPortName: ${exampleVirtualNetwork.name}-feport
///   frontendIpConfigurationName: ${exampleVirtualNetwork.name}-feip
///   httpSettingName: ${exampleVirtualNetwork.name}-be-htst
///   listenerName: ${exampleVirtualNetwork.name}-httplstn
///   requestRoutingRuleName: ${exampleVirtualNetwork.name}-rqrt
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
/// Associations between Network Interfaces and Application Gateway Backend Address Pools can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkInterfaceApplicationGatewayBackendAddressPoolAssociation:NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation association1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkInterfaces/nic1/ipConfigurations/example|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/applicationGateways/gateway1/backendAddressPools/pool1
/// ```
///
/// &gt; **Note:** This ID is specific to this provider - and is of the format `{networkInterfaceId}/ipConfigurations/{ipConfigurationName}|{backendAddressPoolId}`.
class NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation extends pulumi.CustomResource {
  /// The ID of the Application Gateway's Backend Address Pool which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> backendAddressPoolId;
  /// The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> ipConfigurationName;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkInterfaceId;

  /// Creates a new [NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation]. {@macro pulumi_network_network_interface_application_gateway_backend_address_pool_association_network_interface_application_gateway_backend_address_pool_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation(
    String name, {
    NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterfaceApplicationGatewayBackendAddressPoolAssociation:NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendAddressPoolId = registerOutput<String>('backendAddressPoolId');
    ipConfigurationName = registerOutput<String>('ipConfigurationName');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }

  /// Gets an existing [NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation] resource's state with the given [name] and [id].
  static NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation get(
    String name,
    pulumi.Input<String> id, {
    NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationState? state,
  }) {
    return NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterfaceApplicationGatewayBackendAddressPoolAssociation:NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendAddressPoolId = registerOutput<String>('backendAddressPoolId');
    ipConfigurationName = registerOutput<String>('ipConfigurationName');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }
}

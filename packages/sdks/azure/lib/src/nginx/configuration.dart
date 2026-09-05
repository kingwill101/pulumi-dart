import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';
import 'configuration_config_file.dart';
import 'configuration_protected_file.dart';
import 'configuration_state.dart';

/// Manages the configuration for a Nginx Deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationMethod: "Static",
///     sku: "Standard",
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             name: "NGINX.NGINXPLUS/nginxDeployments",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const exampleDeployment = new azure.nginx.Deployment("example", {
///     name: "example-nginx",
///     resourceGroupName: example.name,
///     sku: "publicpreview_Monthly_gmz7xq9ge3py",
///     location: example.location,
///     frontendPublic: {
///         ipAddresses: [examplePublicIp.id],
///     },
///     networkInterfaces: [{
///         subnetId: exampleSubnet.id,
///     }],
/// });
/// const exampleConfiguration = new azure.nginx.Configuration("example", {
///     nginxDeploymentId: exampleDeployment.id,
///     rootFile: "/etc/nginx/nginx.conf",
///     configFiles: [
///         {
///             content: std.base64encode({
///                 input: `http {
///     server {
///         listen 80;
///         location / {
///             default_type text/html;
///             return 200 '<!doctype html><html lang=\\"en\\"><head></head><body>
///                 <div>this one will be updated</div>
///                 <div>at 10:38 am</div>
///             </body></html>';
///         }
///         include site/*.conf;
///     }
/// }
/// `,
///             }).then(invoke => invoke.result),
///             virtualPath: "/etc/nginx/nginx.conf",
///         },
///         {
///             content: std.base64encode({
///                 input: `location /bbb {
///  default_type text/html;
///  return 200 '<!doctype html><html lang=\\"en\\"><head></head><body>
///   <div>this one will be updated</div>
///   <div>at 10:38 am</div>
///  </body></html>';
/// }
/// `,
///             }).then(invoke => invoke.result),
///             virtualPath: "/etc/nginx/site/b.conf",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_method="Static",
///     sku="Standard",
///     tags={
///         "environment": "Production",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "name": "NGINX.NGINXPLUS/nginxDeployments",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// example_deployment = azure.nginx.Deployment("example",
///     name="example-nginx",
///     resource_group_name=example.name,
///     sku="publicpreview_Monthly_gmz7xq9ge3py",
///     location=example.location,
///     frontend_public={
///         "ip_addresses": [example_public_ip.id],
///     },
///     network_interfaces=[{
///         "subnet_id": example_subnet.id,
///     }])
/// example_configuration = azure.nginx.Configuration("example",
///     nginx_deployment_id=example_deployment.id,
///     root_file="/etc/nginx/nginx.conf",
///     config_files=[
///         {
///             "content": std.base64encode(input="""http {
///     server {
///         listen 80;
///         location / {
///             default_type text/html;
///             return 200 '<!doctype html><html lang=\"en\"><head></head><body>
///                 <div>this one will be updated</div>
///                 <div>at 10:38 am</div>
///             </body></html>';
///         }
///         include site/*.conf;
///     }
/// }
/// """).result,
///             "virtual_path": "/etc/nginx/nginx.conf",
///         },
///         {
///             "content": std.base64encode(input="""location /bbb {
///  default_type text/html;
///  return 200 '<!doctype html><html lang=\"en\"><head></head><body>
///   <div>this one will be updated</div>
///   <div>at 10:38 am</div>
///  </body></html>';
/// }
/// """).result,
///             "virtual_path": "/etc/nginx/site/b.conf",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
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
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "NGINX.NGINXPLUS/nginxDeployments",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleDeployment = new Azure.Nginx.Deployment("example", new()
///     {
///         Name = "example-nginx",
///         ResourceGroupName = example.Name,
///         Sku = "publicpreview_Monthly_gmz7xq9ge3py",
///         Location = example.Location,
///         FrontendPublic = new Azure.Nginx.Inputs.DeploymentFrontendPublicArgs
///         {
///             IpAddresses = new[]
///             {
///                 examplePublicIp.Id,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Nginx.Inputs.DeploymentNetworkInterfaceArgs
///             {
///                 SubnetId = exampleSubnet.Id,
///             },
///         },
///     });
///
///     var exampleConfiguration = new Azure.Nginx.Configuration("example", new()
///     {
///         NginxDeploymentId = exampleDeployment.Id,
///         RootFile = "/etc/nginx/nginx.conf",
///         ConfigFiles = new[]
///         {
///             new Azure.Nginx.Inputs.ConfigurationConfigFileArgs
///             {
///                 Content = Std.Base64encode.Invoke(new()
///                 {
///                     Input = @"http {
///     server {
///         listen 80;
///         location / {
///             default_type text/html;
///             return 200 '<!doctype html><html lang=\""en\""><head></head><body>
///                 <div>this one will be updated</div>
///                 <div>at 10:38 am</div>
///             </body></html>';
///         }
///         include site/*.conf;
///     }
/// }
/// ",
///                 }).Apply(invoke => invoke.Result),
///                 VirtualPath = "/etc/nginx/nginx.conf",
///             },
///             new Azure.Nginx.Inputs.ConfigurationConfigFileArgs
///             {
///                 Content = Std.Base64encode.Invoke(new()
///                 {
///                     Input = @"location /bbb {
///  default_type text/html;
///  return 200 '<!doctype html><html lang=\""en\""><head></head><body>
///   <div>this one will be updated</div>
///   <div>at 10:38 am</div>
///  </body></html>';
/// }
/// ",
///                 }).Apply(invoke => invoke.Result),
///                 VirtualPath = "/etc/nginx/site/b.conf",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/nginx"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
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
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("NGINX.NGINXPLUS/nginxDeployments"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDeployment, err := nginx.NewDeployment(ctx, "example", &nginx.DeploymentArgs{
/// 			Name:              pulumi.String("example-nginx"),
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("publicpreview_Monthly_gmz7xq9ge3py"),
/// 			Location:          example.Location,
/// 			FrontendPublic: &nginx.DeploymentFrontendPublicArgs{
/// 				IpAddresses: pulumi.StringArray{
/// 					examplePublicIp.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			NetworkInterfaces: nginx.DeploymentNetworkInterfaceArray{
/// 				&nginx.DeploymentNetworkInterfaceArgs{
/// 					SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: `http {
///     server {
///         listen 80;
///         location / {
///             default_type text/html;
///             return 200 '<!doctype html><html lang=\"en\"><head></head><body>
///                 <div>this one will be updated</div>
///                 <div>at 10:38 am</div>
///             </body></html>';
///         }
///         include site/*.conf;
///     }
/// }
/// `,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: `location /bbb {
///  default_type text/html;
///  return 200 '<!doctype html><html lang=\"en\"><head></head><body>
///   <div>this one will be updated</div>
///   <div>at 10:38 am</div>
///  </body></html>';
/// }
/// `,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nginx.NewConfiguration(ctx, "example", &nginx.ConfigurationArgs{
/// 			NginxDeploymentId: exampleDeployment.ID().ToIDOutput().ToStringOutput(),
/// 			RootFile:          pulumi.String("/etc/nginx/nginx.conf"),
/// 			ConfigFiles: nginx.ConfigurationConfigFileArray{
/// 				&nginx.ConfigurationConfigFileArgs{
/// 					Content:     pulumi.String(invokeBase64encode.Result),
/// 					VirtualPath: pulumi.String("/etc/nginx/nginx.conf"),
/// 				},
/// 				&nginx.ConfigurationConfigFileArgs{
/// 					Content:     pulumi.String(invokeBase64encode1.Result),
/// 					VirtualPath: pulumi.String("/etc/nginx/site/b.conf"),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-rg"
///   location = "West Europe"
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   allocation_method   = "Static"
///   sku                 = "Standard"
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   delegations {
///     name = "delegation"
///     service_delegation = {
///       name    = "NGINX.NGINXPLUS/nginxDeployments"
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_nginx_deployment" "example" {
///   name                = "example-nginx"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "publicpreview_Monthly_gmz7xq9ge3py"
///   location            = azure_core_resourcegroup.example.location
///   frontend_public = {
///     ip_addresses = [azure_network_publicip.example.id]
///   }
///   network_interfaces {
///     subnet_id = azure_network_subnet.example.id
///   }
/// }
/// resource "azure_nginx_configuration" "example" {
///   nginx_deployment_id = azure_nginx_deployment.example.id
///   root_file           = "/etc/nginx/nginx.conf"
///   config_files {
///     content      = base64encode("http {\n    server {\n        listen 80;\n        location / {\n            default_type text/html;\n            return 200 '<!doctype html><html lang=\\\"en\\\"><head></head><body>\n                <div>this one will be updated</div>\n                <div>at 10:38 am</div>\n            </body></html>';\n        }\n        include site/*.conf;\n    }\n}\n")
///     virtual_path = "/etc/nginx/nginx.conf"
///   }
///   config_files {
///     content      = base64encode("location /bbb {\n default_type text/html;\n return 200 '<!doctype html><html lang=\\\"en\\\"><head></head><body>\n  <div>this one will be updated</div>\n  <div>at 10:38 am</div>\n </body></html>';\n}\n")
///     virtual_path = "/etc/nginx/site/b.conf"
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.nginx.Deployment;
/// import com.pulumi.azure.nginx.DeploymentArgs;
/// import com.pulumi.azure.nginx.inputs.DeploymentFrontendPublicArgs;
/// import com.pulumi.azure.nginx.inputs.DeploymentNetworkInterfaceArgs;
/// import com.pulumi.azure.nginx.Configuration;
/// import com.pulumi.azure.nginx.ConfigurationArgs;
/// import com.pulumi.azure.nginx.inputs.ConfigurationConfigFileArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("NGINX.NGINXPLUS/nginxDeployments")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleDeployment = new Deployment("exampleDeployment", DeploymentArgs.builder()
///             .name("example-nginx")
///             .resourceGroupName(example.name())
///             .sku("publicpreview_Monthly_gmz7xq9ge3py")
///             .location(example.location())
///             .frontendPublic(DeploymentFrontendPublicArgs.builder()
///                 .ipAddresses(examplePublicIp.id())
///                 .build())
///             .networkInterfaces(DeploymentNetworkInterfaceArgs.builder()
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .build());
///
///         var exampleConfiguration = new Configuration("exampleConfiguration", ConfigurationArgs.builder()
///             .nginxDeploymentId(exampleDeployment.id())
///             .rootFile("/etc/nginx/nginx.conf")
///             .configFiles(
///                 ConfigurationConfigFileArgs.builder()
///                     .content(StdFunctions.base64encode(Base64encodeArgs.builder()
///                         .input("""
/// http {
///     server {
///         listen 80;
///         location / {
///             default_type text/html;
///             return 200 '<!doctype html><html lang=\"en\"><head></head><body>
///                 <div>this one will be updated</div>
///                 <div>at 10:38 am</div>
///             </body></html>';
///         }
///         include site/*.conf;
///     }
/// }
///                         """)
///                         .build()).result())
///                     .virtualPath("/etc/nginx/nginx.conf")
///                     .build(),
///                 ConfigurationConfigFileArgs.builder()
///                     .content(StdFunctions.base64encode(Base64encodeArgs.builder()
///                         .input("""
/// location /bbb {
///  default_type text/html;
///  return 200 '<!doctype html><html lang=\"en\"><head></head><body>
///   <div>this one will be updated</div>
///   <div>at 10:38 am</div>
///  </body></html>';
/// }
///                         """)
///                         .build()).result())
///                     .virtualPath("/etc/nginx/site/b.conf")
///                     .build())
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
///       name: example-rg
///       location: West Europe
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationMethod: Static
///       sku: Standard
///       tags:
///         environment: Production
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: delegation
///           serviceDelegation:
///             name: NGINX.NGINXPLUS/nginxDeployments
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleDeployment:
///     type: azure:nginx:Deployment
///     name: example
///     properties:
///       name: example-nginx
///       resourceGroupName: ${example.name}
///       sku: publicpreview_Monthly_gmz7xq9ge3py
///       location: ${example.location}
///       frontendPublic:
///         ipAddresses:
///           - ${examplePublicIp.id}
///       networkInterfaces:
///         - subnetId: ${exampleSubnet.id}
///   exampleConfiguration:
///     type: azure:nginx:Configuration
///     name: example
///     properties:
///       nginxDeploymentId: ${exampleDeployment.id}
///       rootFile: /etc/nginx/nginx.conf
///       configFiles:
///         - content:
///             fn::invoke:
///               function: std:base64encode
///               arguments:
///                 input: |
///                   http {
///                       server {
///                           listen 80;
///                           location / {
///                               default_type text/html;
///                               return 200 '<!doctype html><html lang=\"en\"><head></head><body>
///                                   <div>this one will be updated</div>
///                                   <div>at 10:38 am</div>
///                               </body></html>';
///                           }
///                           include site/*.conf;
///                       }
///                   }
///               return: result
///           virtualPath: /etc/nginx/nginx.conf
///         - content:
///             fn::invoke:
///               function: std:base64encode
///               arguments:
///                 input: |
///                   location /bbb {
///                    default_type text/html;
///                    return 200 '<!doctype html><html lang=\"en\"><head></head><body>
///                     <div>this one will be updated</div>
///                     <div>at 10:38 am</div>
///                    </body></html>';
///                   }
///               return: result
///           virtualPath: /etc/nginx/site/b.conf
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Nginx.NginxPlus` - 2024-11-01-preview
///
/// ## Import
///
/// An Nginx Configuration can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:nginx/configuration:Configuration example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Nginx.NginxPlus/nginxDeployments/dep1/configurations/default
/// ```
class Configuration extends pulumi.CustomResource {
  /// One or more `configFile` blocks as defined below.
  late final pulumi.Output<List<ConfigurationConfigFile>?> configFiles;
  /// The ID of the Nginx Deployment. Changing this forces a new Nginx Configuration to be created.
  late final pulumi.Output<String> nginxDeploymentId;
  /// Specifies the package data for this configuration.
  late final pulumi.Output<String?> packageData;
  /// One or more `protectedFile` blocks with sensitive information as defined below. If specified `configFile` must also be specified.
  late final pulumi.Output<List<ConfigurationProtectedFile>?> protectedFiles;
  /// Specifies the root file path of this Nginx Configuration.
  late final pulumi.Output<String> rootFile;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_nginx_configuration_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:nginx/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    configFiles = registerOutput<List<ConfigurationConfigFile>?>('configFiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationConfigFile>(guardedValue, (value) => ConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>())); });
    nginxDeploymentId = registerOutput<String>('nginxDeploymentId');
    packageData = registerOutput<String?>('packageData');
    protectedFiles = registerOutput<List<ConfigurationProtectedFile>?>('protectedFiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationProtectedFile>(guardedValue, (value) => ConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>())); });
    rootFile = registerOutput<String>('rootFile');
  }

  /// Gets an existing [Configuration] resource's state with the given [name] and [id].
  static Configuration get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Configuration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Configuration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:nginx/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configFiles = registerOutput<List<ConfigurationConfigFile>?>('configFiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationConfigFile>(guardedValue, (value) => ConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>())); });
    nginxDeploymentId = registerOutput<String>('nginxDeploymentId');
    packageData = registerOutput<String?>('packageData');
    protectedFiles = registerOutput<List<ConfigurationProtectedFile>?>('protectedFiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationProtectedFile>(guardedValue, (value) => ConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>())); });
    rootFile = registerOutput<String>('rootFile');
  }

  /// Creates a typed reference to an existing [Configuration] resource.
  Configuration.reference(String urn)
    : super(
        'azure:nginx/configuration:Configuration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configFiles = registerOutput<List<ConfigurationConfigFile>?>('configFiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationConfigFile>(guardedValue, (value) => ConfigurationConfigFile.fromMap((value as Map).cast<String, dynamic>())); });
    nginxDeploymentId = registerOutput<String>('nginxDeploymentId');
    packageData = registerOutput<String?>('packageData');
    protectedFiles = registerOutput<List<ConfigurationProtectedFile>?>('protectedFiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConfigurationProtectedFile>(guardedValue, (value) => ConfigurationProtectedFile.fromMap((value as Map).cast<String, dynamic>())); });
    rootFile = registerOutput<String>('rootFile');
  }
}

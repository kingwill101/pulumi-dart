import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cluster_api_server_access.dart';
import 'automatic_cluster_args.dart';
import 'automatic_cluster_hosted_system.dart';
import 'automatic_cluster_identity.dart';
import 'automatic_cluster_kube_config.dart';
import 'automatic_cluster_private_cluster.dart';
import 'automatic_cluster_service_mesh.dart';
import 'automatic_cluster_state.dart';
import 'automatic_cluster_web_app_routing_ingress.dart';

/// Manages a Managed Kubernetes Automatic Cluster (a special SKU of AKS / Azure Kubernetes Service)
///
/// &gt; **Note:** Due to the fast-moving nature of AKS, we recommend using the latest version of the Azure Provider when using AKS - you can find the latest version of the Azure Provider here.
///
/// &gt; **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
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
/// const exampleAutomaticCluster = new azure.containerservice.AutomaticCluster("example", {
///     name: "example-aks1",
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Environment: "Production",
///     },
/// });
/// export const clientCertificate = exampleAutomaticCluster.kubeConfigs[0].clientCertificate;
/// export const kubeConfig = exampleAutomaticCluster.kubeConfigRaw;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_automatic_cluster = azure.containerservice.AutomaticCluster("example",
///     name="example-aks1",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Environment": "Production",
///     })
/// pulumi.export("clientCertificate", example_automatic_cluster.kube_configs[0].client_certificate)
/// pulumi.export("kubeConfig", example_automatic_cluster.kube_config_raw)
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
///     var exampleAutomaticCluster = new Azure.ContainerService.AutomaticCluster("example", new()
///     {
///         Name = "example-aks1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.ContainerService.Inputs.AutomaticClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["clientCertificate"] = exampleAutomaticCluster.KubeConfigs.Apply(kubeConfigs => kubeConfigs[0].ClientCertificate),
///         ["kubeConfig"] = exampleAutomaticCluster.KubeConfigRaw,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		exampleAutomaticCluster, err := containerservice.NewAutomaticCluster(ctx, "example", &containerservice.AutomaticClusterArgs{
/// 			Name:              pulumi.String("example-aks1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &containerservice.AutomaticClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("clientCertificate", exampleAutomaticCluster.KubeConfigs.ApplyT(func(kubeConfigs []containerservice.AutomaticClusterKubeConfig) (*string, error) {
/// 			return kubeConfigs[0].ClientCertificate, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		ctx.Export("kubeConfig", exampleAutomaticCluster.KubeConfigRaw)
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
/// resource "azure_containerservice_automaticcluster" "example" {
///   name                = "example-aks1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   identity = {
///     type = "SystemAssigned"
///   }
///   tags = {
///     "Environment" = "Production"
///   }
/// }
/// output "clientCertificate" {
///   value = azure_containerservice_automaticcluster.example.kube_configs[0].client_certificate
/// }
/// output "kubeConfig" {
///   value = azure_containerservice_automaticcluster.example.kube_config_raw
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
/// import com.pulumi.azure.containerservice.AutomaticCluster;
/// import com.pulumi.azure.containerservice.AutomaticClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.AutomaticClusterIdentityArgs;
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
///         var exampleAutomaticCluster = new AutomaticCluster("exampleAutomaticCluster", AutomaticClusterArgs.builder()
///             .name("example-aks1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(AutomaticClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Environment", "Production"))
///             .build());
///
///         ctx.export("clientCertificate", exampleAutomaticCluster.kubeConfigs().applyValue(_kubeConfigs -> _kubeConfigs[0].clientCertificate()));
///         ctx.export("kubeConfig", exampleAutomaticCluster.kubeConfigRaw());
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
///   exampleAutomaticCluster:
///     type: azure:containerservice:AutomaticCluster
///     name: example
///     properties:
///       name: example-aks1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///       tags:
///         Environment: Production
/// outputs:
///   clientCertificate: ${exampleAutomaticCluster.kubeConfigs[0].clientCertificate}
///   kubeConfig: ${exampleAutomaticCluster.kubeConfigRaw}
/// ```
///
///
/// ## Bring your own networking example
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
///     name: "example-vnet",
///     addressSpaces: ["10.1.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const node = new azure.network.Subnet("node", {
///     name: "example-node-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.1.0.0/24"],
/// });
/// const api = new azure.network.Subnet("api", {
///     name: "example-api-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.1.1.0/24"],
///     delegations: [{
///         name: "aks-delegation",
///         serviceDelegation: {
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///             name: "Microsoft.ContainerService/managedClusters",
///         },
///     }],
/// });
/// const systemnode = new azure.network.Subnet("systemnode", {
///     name: "example-systemnode-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.1.2.0/24"],
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     resourceGroupName: example.name,
///     location: example.location,
///     name: "example_identity",
/// });
/// const network = new azure.authorization.Assignment("network", {
///     scope: exampleVirtualNetwork.id,
///     roleDefinitionName: "Network Contributor",
///     principalId: exampleUserAssignedIdentity.principalId,
/// });
/// const exampleAutomaticCluster = new azure.containerservice.AutomaticCluster("example", {
///     name: "example-aks",
///     location: example.location,
///     resourceGroupName: example.name,
///     hostedSystem: {
///         nodeSubnetId: node.id,
///         systemNodeSubnetId: systemnode.id,
///     },
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
///     apiServerAccess: {
///         subnetId: api.id,
///     },
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
///     name="example-vnet",
///     address_spaces=["10.1.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// node = azure.network.Subnet("node",
///     name="example-node-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.1.0.0/24"])
/// api = azure.network.Subnet("api",
///     name="example-api-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.1.1.0/24"],
///     delegations=[{
///         "name": "aks-delegation",
///         "service_delegation": {
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///             "name": "Microsoft.ContainerService/managedClusters",
///         },
///     }])
/// systemnode = azure.network.Subnet("systemnode",
///     name="example-systemnode-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.1.2.0/24"])
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     resource_group_name=example.name,
///     location=example.location,
///     name="example_identity")
/// network = azure.authorization.Assignment("network",
///     scope=example_virtual_network.id,
///     role_definition_name="Network Contributor",
///     principal_id=example_user_assigned_identity.principal_id)
/// example_automatic_cluster = azure.containerservice.AutomaticCluster("example",
///     name="example-aks",
///     location=example.location,
///     resource_group_name=example.name,
///     hosted_system={
///         "node_subnet_id": node.id,
///         "system_node_subnet_id": systemnode.id,
///     },
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     },
///     api_server_access={
///         "subnet_id": api.id,
///     })
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
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.1.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var node = new Azure.Network.Subnet("node", new()
///     {
///         Name = "example-node-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.1.0.0/24",
///         },
///     });
///
///     var api = new Azure.Network.Subnet("api", new()
///     {
///         Name = "example-api-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.1.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "aks-delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                     Name = "Microsoft.ContainerService/managedClusters",
///                 },
///             },
///         },
///     });
///
///     var systemnode = new Azure.Network.Subnet("systemnode", new()
///     {
///         Name = "example-systemnode-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.1.2.0/24",
///         },
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Name = "example_identity",
///     });
///
///     var network = new Azure.Authorization.Assignment("network", new()
///     {
///         Scope = exampleVirtualNetwork.Id,
///         RoleDefinitionName = "Network Contributor",
///         PrincipalId = exampleUserAssignedIdentity.PrincipalId,
///     });
///
///     var exampleAutomaticCluster = new Azure.ContainerService.AutomaticCluster("example", new()
///     {
///         Name = "example-aks",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         HostedSystem = new Azure.ContainerService.Inputs.AutomaticClusterHostedSystemArgs
///         {
///             NodeSubnetId = node.Id,
///             SystemNodeSubnetId = systemnode.Id,
///         },
///         Identity = new Azure.ContainerService.Inputs.AutomaticClusterIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///         ApiServerAccess = new Azure.ContainerService.Inputs.AutomaticClusterApiServerAccessArgs
///         {
///             SubnetId = api.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
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
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		node, err := network.NewSubnet(ctx, "node", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-node-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		api, err := network.NewSubnet(ctx, "api", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-api-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.1.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("aks-delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 						Name: pulumi.String("Microsoft.ContainerService/managedClusters"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		systemnode, err := network.NewSubnet(ctx, "systemnode", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-systemnode-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.1.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example_identity"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "network", &authorization.AssignmentArgs{
/// 			Scope:              exampleVirtualNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Network Contributor"),
/// 			PrincipalId:        exampleUserAssignedIdentity.PrincipalId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewAutomaticCluster(ctx, "example", &containerservice.AutomaticClusterArgs{
/// 			Name:              pulumi.String("example-aks"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			HostedSystem: &containerservice.AutomaticClusterHostedSystemArgs{
/// 				NodeSubnetId:       node.ID().ToIDOutput().ToStringOutput(),
/// 				SystemNodeSubnetId: systemnode.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Identity: &containerservice.AutomaticClusterIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			ApiServerAccess: &containerservice.AutomaticClusterApiServerAccessArgs{
/// 				SubnetId: api.ID().ToIDOutput().ToStringOutput(),
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
///   name                = "example-vnet"
///   address_spaces      = ["10.1.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "node" {
///   name                 = "example-node-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.1.0.0/24"]
/// }
/// resource "azure_network_subnet" "api" {
///   name                 = "example-api-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.1.1.0/24"]
///   delegations {
///     name = "aks-delegation"
///     service_delegation = {
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
///       name    = "Microsoft.ContainerService/managedClusters"
///     }
///   }
/// }
/// resource "azure_network_subnet" "systemnode" {
///   name                 = "example-systemnode-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.1.2.0/24"]
/// }
/// resource "azure_authorization_userassignedidentity" "example" {
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   name                = "example_identity"
/// }
/// resource "azure_authorization_assignment" "network" {
///   scope                = azure_network_virtualnetwork.example.id
///   role_definition_name = "Network Contributor"
///   principal_id         = azure_authorization_userassignedidentity.example.principal_id
/// }
/// resource "azure_containerservice_automaticcluster" "example" {
///   name                = "example-aks"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   hosted_system = {
///     node_subnet_id        = azure_network_subnet.node.id
///     system_node_subnet_id = azure_network_subnet.systemnode.id
///   }
///   identity = {
///     type         = "UserAssigned"
///     identity_ids = [azure_authorization_userassignedidentity.example.id]
///   }
///   api_server_access = {
///     subnet_id = azure_network_subnet.api.id
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
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.containerservice.AutomaticCluster;
/// import com.pulumi.azure.containerservice.AutomaticClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.AutomaticClusterHostedSystemArgs;
/// import com.pulumi.azure.containerservice.inputs.AutomaticClusterIdentityArgs;
/// import com.pulumi.azure.containerservice.inputs.AutomaticClusterApiServerAccessArgs;
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
///             .name("example-vnet")
///             .addressSpaces("10.1.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var node = new Subnet("node", SubnetArgs.builder()
///             .name("example-node-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.1.0.0/24")
///             .build());
///
///         var api = new Subnet("api", SubnetArgs.builder()
///             .name("example-api-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.1.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("aks-delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .name("Microsoft.ContainerService/managedClusters")
///                     .build())
///                 .build())
///             .build());
///
///         var systemnode = new Subnet("systemnode", SubnetArgs.builder()
///             .name("example-systemnode-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.1.2.0/24")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .name("example_identity")
///             .build());
///
///         var network = new Assignment("network", AssignmentArgs.builder()
///             .scope(exampleVirtualNetwork.id())
///             .roleDefinitionName("Network Contributor")
///             .principalId(exampleUserAssignedIdentity.principalId())
///             .build());
///
///         var exampleAutomaticCluster = new AutomaticCluster("exampleAutomaticCluster", AutomaticClusterArgs.builder()
///             .name("example-aks")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .hostedSystem(AutomaticClusterHostedSystemArgs.builder()
///                 .nodeSubnetId(node.id())
///                 .systemNodeSubnetId(systemnode.id())
///                 .build())
///             .identity(AutomaticClusterIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .apiServerAccess(AutomaticClusterApiServerAccessArgs.builder()
///                 .subnetId(api.id())
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
///       name: example-vnet
///       addressSpaces:
///         - 10.1.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   node:
///     type: azure:network:Subnet
///     properties:
///       name: example-node-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.1.0.0/24
///   api:
///     type: azure:network:Subnet
///     properties:
///       name: example-api-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.1.1.0/24
///       delegations:
///         - name: aks-delegation
///           serviceDelegation:
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///             name: Microsoft.ContainerService/managedClusters
///   systemnode:
///     type: azure:network:Subnet
///     properties:
///       name: example-systemnode-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.1.2.0/24
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       name: example_identity
///   network:
///     type: azure:authorization:Assignment
///     properties:
///       scope: ${exampleVirtualNetwork.id}
///       roleDefinitionName: Network Contributor
///       principalId: ${exampleUserAssignedIdentity.principalId}
///   exampleAutomaticCluster:
///     type: azure:containerservice:AutomaticCluster
///     name: example
///     properties:
///       name: example-aks
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       hostedSystem:
///         nodeSubnetId: ${node.id}
///         systemNodeSubnetId: ${systemnode.id}
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///       apiServerAccess:
///         subnetId: ${api.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerService` - 2026-04-01
///
/// ## Import
///
/// Managed Kubernetes Automatic Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/automaticCluster:AutomaticCluster cluster1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ContainerService/managedClusters/cluster1
/// ```
class AutomaticCluster extends pulumi.CustomResource {
  /// An `apiServerAccess` block as defined below.
  late final pulumi.Output<AutomaticClusterApiServerAccess?> apiServerAccess;
  /// The current version running on the Azure Kubernetes Managed Cluster.
  late final pulumi.Output<String> currentKubernetesVersion;
  /// The FQDN of the Azure Kubernetes Managed Cluster.
  late final pulumi.Output<String> fullyQualifiedDomainName;
  /// A `hostedSystem` block as defined below.
  late final pulumi.Output<AutomaticClusterHostedSystem> hostedSystem;
  /// An `identity` block as defined below.
  late final pulumi.Output<AutomaticClusterIdentity> identity;
  /// Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools.
  late final pulumi.Output<String> kubeConfigRaw;
  /// A `kubeConfig` block as defined below.
  late final pulumi.Output<List<AutomaticClusterKubeConfig>> kubeConfigs;
  /// The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster.
  late final pulumi.Output<String> nodeResourceGroupId;
  /// The OIDC issuer URL that is associated with the cluster.
  late final pulumi.Output<String> oidcIssuerUrl;
  /// The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.
  late final pulumi.Output<String> portalFullyQualifiedDomainName;
  /// A `privateCluster` block as defined below.
  late final pulumi.Output<AutomaticClusterPrivateCluster?> privateCluster;
  /// The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.
  late final pulumi.Output<String> privateFullyQualifiedDomainName;
  /// Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `serviceMesh` block as defined below.
  late final pulumi.Output<AutomaticClusterServiceMesh?> serviceMesh;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `webAppRoutingIngress` block as defined below.
  late final pulumi.Output<AutomaticClusterWebAppRoutingIngress> webAppRoutingIngress;

  /// Creates a new [AutomaticCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutomaticCluster]. {@macro pulumi_containerservice_automatic_cluster_automatic_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutomaticCluster(
    String name, {
    AutomaticClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/automaticCluster:AutomaticCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['kubeConfigRaw', 'kubeConfigs'],
        ) {
    apiServerAccess = registerOutput<AutomaticClusterApiServerAccess?>('apiServerAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterApiServerAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentKubernetesVersion = registerOutput<String>('currentKubernetesVersion');
    fullyQualifiedDomainName = registerOutput<String>('fullyQualifiedDomainName');
    hostedSystem = registerOutput<AutomaticClusterHostedSystem>('hostedSystem', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterHostedSystem.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<AutomaticClusterIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeConfigRaw = registerOutput<String>('kubeConfigRaw', isSecret: true);
    kubeConfigs = registerOutput<List<AutomaticClusterKubeConfig>>('kubeConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomaticClusterKubeConfig>(guardedValue, (value) => AutomaticClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodeResourceGroupId = registerOutput<String>('nodeResourceGroupId');
    oidcIssuerUrl = registerOutput<String>('oidcIssuerUrl');
    portalFullyQualifiedDomainName = registerOutput<String>('portalFullyQualifiedDomainName');
    privateCluster = registerOutput<AutomaticClusterPrivateCluster?>('privateCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterPrivateCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateFullyQualifiedDomainName = registerOutput<String>('privateFullyQualifiedDomainName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceMesh = registerOutput<AutomaticClusterServiceMesh?>('serviceMesh', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterServiceMesh.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    webAppRoutingIngress = registerOutput<AutomaticClusterWebAppRoutingIngress>('webAppRoutingIngress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterWebAppRoutingIngress.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AutomaticCluster] resource's state with the given [name] and [id].
  static AutomaticCluster get(
    String name,
    pulumi.Input<String> id, {
    AutomaticClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutomaticCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutomaticCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/automaticCluster:AutomaticCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiServerAccess = registerOutput<AutomaticClusterApiServerAccess?>('apiServerAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterApiServerAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentKubernetesVersion = registerOutput<String>('currentKubernetesVersion');
    fullyQualifiedDomainName = registerOutput<String>('fullyQualifiedDomainName');
    hostedSystem = registerOutput<AutomaticClusterHostedSystem>('hostedSystem', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterHostedSystem.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<AutomaticClusterIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeConfigRaw = registerOutput<String>('kubeConfigRaw', isSecret: true);
    kubeConfigs = registerOutput<List<AutomaticClusterKubeConfig>>('kubeConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomaticClusterKubeConfig>(guardedValue, (value) => AutomaticClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodeResourceGroupId = registerOutput<String>('nodeResourceGroupId');
    oidcIssuerUrl = registerOutput<String>('oidcIssuerUrl');
    portalFullyQualifiedDomainName = registerOutput<String>('portalFullyQualifiedDomainName');
    privateCluster = registerOutput<AutomaticClusterPrivateCluster?>('privateCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterPrivateCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateFullyQualifiedDomainName = registerOutput<String>('privateFullyQualifiedDomainName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceMesh = registerOutput<AutomaticClusterServiceMesh?>('serviceMesh', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterServiceMesh.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    webAppRoutingIngress = registerOutput<AutomaticClusterWebAppRoutingIngress>('webAppRoutingIngress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterWebAppRoutingIngress.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AutomaticCluster] resource.
  AutomaticCluster.reference(String urn)
    : super(
        'azure:containerservice/automaticCluster:AutomaticCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['kubeConfigRaw', 'kubeConfigs'],
        isResourceReference: true,
      ) {
    apiServerAccess = registerOutput<AutomaticClusterApiServerAccess?>('apiServerAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterApiServerAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentKubernetesVersion = registerOutput<String>('currentKubernetesVersion');
    fullyQualifiedDomainName = registerOutput<String>('fullyQualifiedDomainName');
    hostedSystem = registerOutput<AutomaticClusterHostedSystem>('hostedSystem', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterHostedSystem.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<AutomaticClusterIdentity>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kubeConfigRaw = registerOutput<String>('kubeConfigRaw', isSecret: true);
    kubeConfigs = registerOutput<List<AutomaticClusterKubeConfig>>('kubeConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomaticClusterKubeConfig>(guardedValue, (value) => AutomaticClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>())); }, isSecret: true);
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodeResourceGroupId = registerOutput<String>('nodeResourceGroupId');
    oidcIssuerUrl = registerOutput<String>('oidcIssuerUrl');
    portalFullyQualifiedDomainName = registerOutput<String>('portalFullyQualifiedDomainName');
    privateCluster = registerOutput<AutomaticClusterPrivateCluster?>('privateCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterPrivateCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateFullyQualifiedDomainName = registerOutput<String>('privateFullyQualifiedDomainName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceMesh = registerOutput<AutomaticClusterServiceMesh?>('serviceMesh', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterServiceMesh.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    webAppRoutingIngress = registerOutput<AutomaticClusterWebAppRoutingIngress>('webAppRoutingIngress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutomaticClusterWebAppRoutingIngress.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

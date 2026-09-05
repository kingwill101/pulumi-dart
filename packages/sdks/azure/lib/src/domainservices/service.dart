import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_initial_replica_set.dart';
import 'service_notifications.dart';
import 'service_secure_ldap.dart';
import 'service_security.dart';
import 'service_state.dart';

/// Manages an Active Directory Domain Service.
///
/// &gt; **Note:** Before using this resource, there must exist in your tenant a service principal for the Domain Services published application. This service principal cannot be easily managed by Terraform and it's recommended to create this manually, as it does not exist by default. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/powershell-create-instance#create-required-azure-ad-resources) for details.
///
/// &gt; **Note:** At present this resource only supports **User Forest** mode and _not_ **Resource Forest** mode. [Read more](https://docs.microsoft.com/azure/active-directory-domain-services/concepts-resource-forest) about the different operation modes for this service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azuread from "@pulumi/azuread";
///
/// const deploy = new azure.core.ResourceGroup("deploy", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const deployVirtualNetwork = new azure.network.VirtualNetwork("deploy", {
///     name: "deploy-vnet",
///     location: deploy.location,
///     resourceGroupName: deploy.name,
///     addressSpaces: ["10.0.1.0/16"],
/// });
/// const deploySubnet = new azure.network.Subnet("deploy", {
///     name: "deploy-subnet",
///     resourceGroupName: deploy.name,
///     virtualNetworkName: deployVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const deployNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("deploy", {
///     name: "deploy-nsg",
///     location: deploy.location,
///     resourceGroupName: deploy.name,
///     securityRules: [
///         {
///             name: "AllowSyncWithAzureAD",
///             priority: 101,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "443",
///             sourceAddressPrefix: "AzureActiveDirectoryDomainServices",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowRD",
///             priority: 201,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "3389",
///             sourceAddressPrefix: "CorpNetSaw",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowPSRemoting",
///             priority: 301,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "5986",
///             sourceAddressPrefix: "AzureActiveDirectoryDomainServices",
///             destinationAddressPrefix: "*",
///         },
///         {
///             name: "AllowLDAPS",
///             priority: 401,
///             direction: "Inbound",
///             access: "Allow",
///             protocol: "Tcp",
///             sourcePortRange: "*",
///             destinationPortRange: "636",
///             sourceAddressPrefix: "*",
///             destinationAddressPrefix: "*",
///         },
///     ],
/// });
/// const deploySubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("deploy", {
///     subnetId: deploySubnet.id,
///     networkSecurityGroupId: deployNetworkSecurityGroup.id,
/// });
/// const dcAdmins = new azuread.Group("dc_admins", {
///     displayName: "AAD DC Administrators",
///     securityEnabled: true,
/// });
/// const admin = new azuread.User("admin", {
///     userPrincipalName: "dc-admin@hashicorp-example.com",
///     displayName: "DC Administrator",
///     password: "Pa55w0Rd!!1",
/// });
/// const adminGroupMember = new azuread.GroupMember("admin", {
///     groupObjectId: dcAdmins.objectId,
///     memberObjectId: admin.objectId,
/// });
/// const example = new azuread.ServicePrincipal("example", {applicationId: "2565bd9d-da50-47d4-8b85-4c97f669dc36"});
/// const aadds = new azure.core.ResourceGroup("aadds", {
///     name: "aadds-rg",
///     location: "westeurope",
/// });
/// const exampleService = new azure.domainservices.Service("example", {
///     name: "example-aadds",
///     location: aadds.location,
///     resourceGroupName: aadds.name,
///     domainName: "widgetslogin.net",
///     sku: "Enterprise",
///     filteredSyncEnabled: false,
///     initialReplicaSet: {
///         subnetId: deploySubnet.id,
///     },
///     notifications: {
///         additionalRecipients: [
///             "notifyA@example.net",
///             "notifyB@example.org",
///         ],
///         notifyDcAdmins: true,
///         notifyGlobalAdmins: true,
///     },
///     security: {
///         syncKerberosPasswords: true,
///         syncNtlmPasswords: true,
///         syncOnPremPasswords: true,
///     },
///     tags: {
///         Environment: "prod",
///     },
/// }, {
///     dependsOn: [
///         example,
///         deploySubnetNetworkSecurityGroupAssociation,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azuread as azuread
///
/// deploy = azure.core.ResourceGroup("deploy",
///     name="example-resources",
///     location="West Europe")
/// deploy_virtual_network = azure.network.VirtualNetwork("deploy",
///     name="deploy-vnet",
///     location=deploy.location,
///     resource_group_name=deploy.name,
///     address_spaces=["10.0.1.0/16"])
/// deploy_subnet = azure.network.Subnet("deploy",
///     name="deploy-subnet",
///     resource_group_name=deploy.name,
///     virtual_network_name=deploy_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// deploy_network_security_group = azure.network.NetworkSecurityGroup("deploy",
///     name="deploy-nsg",
///     location=deploy.location,
///     resource_group_name=deploy.name,
///     security_rules=[
///         {
///             "name": "AllowSyncWithAzureAD",
///             "priority": 101,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "443",
///             "source_address_prefix": "AzureActiveDirectoryDomainServices",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowRD",
///             "priority": 201,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "3389",
///             "source_address_prefix": "CorpNetSaw",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowPSRemoting",
///             "priority": 301,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "5986",
///             "source_address_prefix": "AzureActiveDirectoryDomainServices",
///             "destination_address_prefix": "*",
///         },
///         {
///             "name": "AllowLDAPS",
///             "priority": 401,
///             "direction": "Inbound",
///             "access": "Allow",
///             "protocol": "Tcp",
///             "source_port_range": "*",
///             "destination_port_range": "636",
///             "source_address_prefix": "*",
///             "destination_address_prefix": "*",
///         },
///     ])
/// deploy_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("deploy",
///     subnet_id=deploy_subnet.id,
///     network_security_group_id=deploy_network_security_group.id)
/// dc_admins = azuread.Group("dc_admins",
///     display_name="AAD DC Administrators",
///     security_enabled=True)
/// admin = azuread.User("admin",
///     user_principal_name="dc-admin@hashicorp-example.com",
///     display_name="DC Administrator",
///     password="Pa55w0Rd!!1")
/// admin_group_member = azuread.GroupMember("admin",
///     group_object_id=dc_admins.object_id,
///     member_object_id=admin.object_id)
/// example = azuread.ServicePrincipal("example", application_id="2565bd9d-da50-47d4-8b85-4c97f669dc36")
/// aadds = azure.core.ResourceGroup("aadds",
///     name="aadds-rg",
///     location="westeurope")
/// example_service = azure.domainservices.Service("example",
///     name="example-aadds",
///     location=aadds.location,
///     resource_group_name=aadds.name,
///     domain_name="widgetslogin.net",
///     sku="Enterprise",
///     filtered_sync_enabled=False,
///     initial_replica_set={
///         "subnet_id": deploy_subnet.id,
///     },
///     notifications={
///         "additional_recipients": [
///             "notifyA@example.net",
///             "notifyB@example.org",
///         ],
///         "notify_dc_admins": True,
///         "notify_global_admins": True,
///     },
///     security={
///         "sync_kerberos_passwords": True,
///         "sync_ntlm_passwords": True,
///         "sync_on_prem_passwords": True,
///     },
///     tags={
///         "Environment": "prod",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             example,
///             deploy_subnet_network_security_group_association,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploy = new Azure.Core.ResourceGroup("deploy", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var deployVirtualNetwork = new Azure.Network.VirtualNetwork("deploy", new()
///     {
///         Name = "deploy-vnet",
///         Location = deploy.Location,
///         ResourceGroupName = deploy.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.1.0/16",
///         },
///     });
///
///     var deploySubnet = new Azure.Network.Subnet("deploy", new()
///     {
///         Name = "deploy-subnet",
///         ResourceGroupName = deploy.Name,
///         VirtualNetworkName = deployVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var deployNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("deploy", new()
///     {
///         Name = "deploy-nsg",
///         Location = deploy.Location,
///         ResourceGroupName = deploy.Name,
///         SecurityRules = new[]
///         {
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowSyncWithAzureAD",
///                 Priority = 101,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "443",
///                 SourceAddressPrefix = "AzureActiveDirectoryDomainServices",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowRD",
///                 Priority = 201,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "3389",
///                 SourceAddressPrefix = "CorpNetSaw",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowPSRemoting",
///                 Priority = 301,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "5986",
///                 SourceAddressPrefix = "AzureActiveDirectoryDomainServices",
///                 DestinationAddressPrefix = "*",
///             },
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "AllowLDAPS",
///                 Priority = 401,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "636",
///                 SourceAddressPrefix = "*",
///                 DestinationAddressPrefix = "*",
///             },
///         },
///     });
///
///     var deploySubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("deploy", new()
///     {
///         SubnetId = deploySubnet.Id,
///         NetworkSecurityGroupId = deployNetworkSecurityGroup.Id,
///     });
///
///     var dcAdmins = new AzureAD.Group("dc_admins", new()
///     {
///         DisplayName = "AAD DC Administrators",
///         SecurityEnabled = true,
///     });
///
///     var admin = new AzureAD.User("admin", new()
///     {
///         UserPrincipalName = "dc-admin@hashicorp-example.com",
///         DisplayName = "DC Administrator",
///         Password = "Pa55w0Rd!!1",
///     });
///
///     var adminGroupMember = new AzureAD.GroupMember("admin", new()
///     {
///         GroupObjectId = dcAdmins.ObjectId,
///         MemberObjectId = admin.ObjectId,
///     });
///
///     var example = new AzureAD.ServicePrincipal("example", new()
///     {
///         ApplicationId = "2565bd9d-da50-47d4-8b85-4c97f669dc36",
///     });
///
///     var aadds = new Azure.Core.ResourceGroup("aadds", new()
///     {
///         Name = "aadds-rg",
///         Location = "westeurope",
///     });
///
///     var exampleService = new Azure.DomainServices.Service("example", new()
///     {
///         Name = "example-aadds",
///         Location = aadds.Location,
///         ResourceGroupName = aadds.Name,
///         DomainName = "widgetslogin.net",
///         Sku = "Enterprise",
///         FilteredSyncEnabled = false,
///         InitialReplicaSet = new Azure.DomainServices.Inputs.ServiceInitialReplicaSetArgs
///         {
///             SubnetId = deploySubnet.Id,
///         },
///         Notifications = new Azure.DomainServices.Inputs.ServiceNotificationsArgs
///         {
///             AdditionalRecipients = new[]
///             {
///                 "notifyA@example.net",
///                 "notifyB@example.org",
///             },
///             NotifyDcAdmins = true,
///             NotifyGlobalAdmins = true,
///         },
///         Security = new Azure.DomainServices.Inputs.ServiceSecurityArgs
///         {
///             SyncKerberosPasswords = true,
///             SyncNtlmPasswords = true,
///             SyncOnPremPasswords = true,
///         },
///         Tags =
///         {
///             { "Environment", "prod" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///             deploySubnetNetworkSecurityGroupAssociation,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/domainservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		deploy, err := core.NewResourceGroup(ctx, "deploy", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deployVirtualNetwork, err := network.NewVirtualNetwork(ctx, "deploy", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("deploy-vnet"),
/// 			Location:          deploy.Location,
/// 			ResourceGroupName: deploy.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deploySubnet, err := network.NewSubnet(ctx, "deploy", &network.SubnetArgs{
/// 			Name:               pulumi.String("deploy-subnet"),
/// 			ResourceGroupName:  deploy.Name,
/// 			VirtualNetworkName: deployVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deployNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "deploy", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String("deploy-nsg"),
/// 			Location:          deploy.Location,
/// 			ResourceGroupName: deploy.Name,
/// 			SecurityRules: network.NetworkSecurityGroupSecurityRuleArray{
/// 				&network.NetworkSecurityGroupSecurityRuleArgs{
/// 					Name:                     pulumi.String("AllowSyncWithAzureAD"),
/// 					Priority:                 pulumi.Int(101),
/// 					Direction:                pulumi.String("Inbound"),
/// 					Access:                   pulumi.String("Allow"),
/// 					Protocol:                 pulumi.String("Tcp"),
/// 					SourcePortRange:          pulumi.String("*"),
/// 					DestinationPortRange:     pulumi.String("443"),
/// 					SourceAddressPrefix:      pulumi.String("AzureActiveDirectoryDomainServices"),
/// 					DestinationAddressPrefix: pulumi.String("*"),
/// 				},
/// 				&network.NetworkSecurityGroupSecurityRuleArgs{
/// 					Name:                     pulumi.String("AllowRD"),
/// 					Priority:                 pulumi.Int(201),
/// 					Direction:                pulumi.String("Inbound"),
/// 					Access:                   pulumi.String("Allow"),
/// 					Protocol:                 pulumi.String("Tcp"),
/// 					SourcePortRange:          pulumi.String("*"),
/// 					DestinationPortRange:     pulumi.String("3389"),
/// 					SourceAddressPrefix:      pulumi.String("CorpNetSaw"),
/// 					DestinationAddressPrefix: pulumi.String("*"),
/// 				},
/// 				&network.NetworkSecurityGroupSecurityRuleArgs{
/// 					Name:                     pulumi.String("AllowPSRemoting"),
/// 					Priority:                 pulumi.Int(301),
/// 					Direction:                pulumi.String("Inbound"),
/// 					Access:                   pulumi.String("Allow"),
/// 					Protocol:                 pulumi.String("Tcp"),
/// 					SourcePortRange:          pulumi.String("*"),
/// 					DestinationPortRange:     pulumi.String("5986"),
/// 					SourceAddressPrefix:      pulumi.String("AzureActiveDirectoryDomainServices"),
/// 					DestinationAddressPrefix: pulumi.String("*"),
/// 				},
/// 				&network.NetworkSecurityGroupSecurityRuleArgs{
/// 					Name:                     pulumi.String("AllowLDAPS"),
/// 					Priority:                 pulumi.Int(401),
/// 					Direction:                pulumi.String("Inbound"),
/// 					Access:                   pulumi.String("Allow"),
/// 					Protocol:                 pulumi.String("Tcp"),
/// 					SourcePortRange:          pulumi.String("*"),
/// 					DestinationPortRange:     pulumi.String("636"),
/// 					SourceAddressPrefix:      pulumi.String("*"),
/// 					DestinationAddressPrefix: pulumi.String("*"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deploySubnetNetworkSecurityGroupAssociation, err := network.NewSubnetNetworkSecurityGroupAssociation(ctx, "deploy", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// 			SubnetId:               deploySubnet.ID().ToIDOutput().ToStringOutput(),
/// 			NetworkSecurityGroupId: deployNetworkSecurityGroup.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dcAdmins, err := azuread.NewGroup(ctx, "dc_admins", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("AAD DC Administrators"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		admin, err := azuread.NewUser(ctx, "admin", &azuread.UserArgs{
/// 			UserPrincipalName: pulumi.String("dc-admin@hashicorp-example.com"),
/// 			DisplayName:       pulumi.String("DC Administrator"),
/// 			Password:          pulumi.String("Pa55w0Rd!!1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewGroupMember(ctx, "admin", &azuread.GroupMemberArgs{
/// 			GroupObjectId:  dcAdmins.ObjectId,
/// 			MemberObjectId: admin.ObjectId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ApplicationId: "2565bd9d-da50-47d4-8b85-4c97f669dc36",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		aadds, err := core.NewResourceGroup(ctx, "aadds", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("aadds-rg"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = domainservices.NewService(ctx, "example", &domainservices.ServiceArgs{
/// 			Name:                pulumi.String("example-aadds"),
/// 			Location:            aadds.Location,
/// 			ResourceGroupName:   aadds.Name,
/// 			DomainName:          pulumi.String("widgetslogin.net"),
/// 			Sku:                 pulumi.String("Enterprise"),
/// 			FilteredSyncEnabled: pulumi.Bool(false),
/// 			InitialReplicaSet: &domainservices.ServiceInitialReplicaSetArgs{
/// 				SubnetId: deploySubnet.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Notifications: &domainservices.ServiceNotificationsArgs{
/// 				AdditionalRecipients: pulumi.StringArray{
/// 					pulumi.String("notifyA@example.net"),
/// 					pulumi.String("notifyB@example.org"),
/// 				},
/// 				NotifyDcAdmins:     pulumi.Bool(true),
/// 				NotifyGlobalAdmins: pulumi.Bool(true),
/// 			},
/// 			Security: &domainservices.ServiceSecurityArgs{
/// 				SyncKerberosPasswords: pulumi.Bool(true),
/// 				SyncNtlmPasswords:     pulumi.Bool(true),
/// 				SyncOnPremPasswords:   pulumi.Bool(true),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("prod"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 			deploySubnetNetworkSecurityGroupAssociation,
/// 		}))
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "deploy" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "deploy" {
///   name                = "deploy-vnet"
///   location            = azure_core_resourcegroup.deploy.location
///   resource_group_name = azure_core_resourcegroup.deploy.name
///   address_spaces      = ["10.0.1.0/16"]
/// }
/// resource "azure_network_subnet" "deploy" {
///   name                 = "deploy-subnet"
///   resource_group_name  = azure_core_resourcegroup.deploy.name
///   virtual_network_name = azure_network_virtualnetwork.deploy.name
///   address_prefixes     = ["10.0.1.0/24"]
/// }
/// resource "azure_network_networksecuritygroup" "deploy" {
///   name                = "deploy-nsg"
///   location            = azure_core_resourcegroup.deploy.location
///   resource_group_name = azure_core_resourcegroup.deploy.name
///   security_rules {
///     name                       = "AllowSyncWithAzureAD"
///     priority                   = 101
///     direction                  = "Inbound"
///     access                     = "Allow"
///     protocol                   = "Tcp"
///     source_port_range          = "*"
///     destination_port_range     = "443"
///     source_address_prefix      = "AzureActiveDirectoryDomainServices"
///     destination_address_prefix = "*"
///   }
///   security_rules {
///     name                       = "AllowRD"
///     priority                   = 201
///     direction                  = "Inbound"
///     access                     = "Allow"
///     protocol                   = "Tcp"
///     source_port_range          = "*"
///     destination_port_range     = "3389"
///     source_address_prefix      = "CorpNetSaw"
///     destination_address_prefix = "*"
///   }
///   security_rules {
///     name                       = "AllowPSRemoting"
///     priority                   = 301
///     direction                  = "Inbound"
///     access                     = "Allow"
///     protocol                   = "Tcp"
///     source_port_range          = "*"
///     destination_port_range     = "5986"
///     source_address_prefix      = "AzureActiveDirectoryDomainServices"
///     destination_address_prefix = "*"
///   }
///   security_rules {
///     name                       = "AllowLDAPS"
///     priority                   = 401
///     direction                  = "Inbound"
///     access                     = "Allow"
///     protocol                   = "Tcp"
///     source_port_range          = "*"
///     destination_port_range     = "636"
///     source_address_prefix      = "*"
///     destination_address_prefix = "*"
///   }
/// }
/// resource "azure_network_subnetnetworksecuritygroupassociation" "deploy" {
///   subnet_id                 = azure_network_subnet.deploy.id
///   network_security_group_id = azure_network_networksecuritygroup.deploy.id
/// }
/// resource "azuread_group" "dc_admins" {
///   display_name     = "AAD DC Administrators"
///   security_enabled = true
/// }
/// resource "azuread_user" "admin" {
///   user_principal_name = "dc-admin@hashicorp-example.com"
///   display_name        = "DC Administrator"
///   password            = "Pa55w0Rd!!1"
/// }
/// resource "azuread_groupmember" "admin" {
///   group_object_id  = azuread_group.dc_admins.object_id
///   member_object_id = azuread_user.admin.object_id
/// }
/// resource "azuread_serviceprincipal" "example" {
///   application_id = "2565bd9d-da50-47d4-8b85-4c97f669dc36"
/// }
/// resource "azure_core_resourcegroup" "aadds" {
///   name     = "aadds-rg"
///   location = "westeurope"
/// }
/// resource "azure_domainservices_service" "example" {
///   depends_on            = [azuread_serviceprincipal.example, azure_network_subnetnetworksecuritygroupassociation.deploy]
///   name                  = "example-aadds"
///   location              = azure_core_resourcegroup.aadds.location
///   resource_group_name   = azure_core_resourcegroup.aadds.name
///   domain_name           = "widgetslogin.net"
///   sku                   = "Enterprise"
///   filtered_sync_enabled = false
///   initial_replica_set = {
///     subnet_id = azure_network_subnet.deploy.id
///   }
///   notifications = {
///     additional_recipients = ["notifyA@example.net", "notifyB@example.org"]
///     notify_dc_admins      = true
///     notify_global_admins  = true
///   }
///   security = {
///     sync_kerberos_passwords = true
///     sync_ntlm_passwords     = true
///     sync_on_prem_passwords  = true
///   }
///   tags = {
///     "Environment" = "prod"
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
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.inputs.NetworkSecurityGroupSecurityRuleArgs;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociation;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociationArgs;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.GroupMember;
/// import com.pulumi.azuread.GroupMemberArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azure.domainservices.Service;
/// import com.pulumi.azure.domainservices.ServiceArgs;
/// import com.pulumi.azure.domainservices.inputs.ServiceInitialReplicaSetArgs;
/// import com.pulumi.azure.domainservices.inputs.ServiceNotificationsArgs;
/// import com.pulumi.azure.domainservices.inputs.ServiceSecurityArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var deploy = new ResourceGroup("deploy", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var deployVirtualNetwork = new VirtualNetwork("deployVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("deploy-vnet")
///             .location(deploy.location())
///             .resourceGroupName(deploy.name())
///             .addressSpaces("10.0.1.0/16")
///             .build());
///
///         var deploySubnet = new Subnet("deploySubnet", SubnetArgs.builder()
///             .name("deploy-subnet")
///             .resourceGroupName(deploy.name())
///             .virtualNetworkName(deployVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var deployNetworkSecurityGroup = new NetworkSecurityGroup("deployNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("deploy-nsg")
///             .location(deploy.location())
///             .resourceGroupName(deploy.name())
///             .securityRules(
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowSyncWithAzureAD")
///                     .priority(101)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("443")
///                     .sourceAddressPrefix("AzureActiveDirectoryDomainServices")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowRD")
///                     .priority(201)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("3389")
///                     .sourceAddressPrefix("CorpNetSaw")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowPSRemoting")
///                     .priority(301)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("5986")
///                     .sourceAddressPrefix("AzureActiveDirectoryDomainServices")
///                     .destinationAddressPrefix("*")
///                     .build(),
///                 NetworkSecurityGroupSecurityRuleArgs.builder()
///                     .name("AllowLDAPS")
///                     .priority(401)
///                     .direction("Inbound")
///                     .access("Allow")
///                     .protocol("Tcp")
///                     .sourcePortRange("*")
///                     .destinationPortRange("636")
///                     .sourceAddressPrefix("*")
///                     .destinationAddressPrefix("*")
///                     .build())
///             .build());
///
///         var deploySubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("deploySubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(deploySubnet.id())
///             .networkSecurityGroupId(deployNetworkSecurityGroup.id())
///             .build());
///
///         var dcAdmins = new Group("dcAdmins", GroupArgs.builder()
///             .displayName("AAD DC Administrators")
///             .securityEnabled(true)
///             .build());
///
///         var admin = new User("admin", UserArgs.builder()
///             .userPrincipalName("dc-admin@hashicorp-example.com")
///             .displayName("DC Administrator")
///             .password("Pa55w0Rd!!1")
///             .build());
///
///         var adminGroupMember = new GroupMember("adminGroupMember", GroupMemberArgs.builder()
///             .groupObjectId(dcAdmins.objectId())
///             .memberObjectId(admin.objectId())
///             .build());
///
///         var example = new ServicePrincipal("example", ServicePrincipalArgs.builder()
///             .applicationId("2565bd9d-da50-47d4-8b85-4c97f669dc36")
///             .build());
///
///         var aadds = new ResourceGroup("aadds", ResourceGroupArgs.builder()
///             .name("aadds-rg")
///             .location("westeurope")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-aadds")
///             .location(aadds.location())
///             .resourceGroupName(aadds.name())
///             .domainName("widgetslogin.net")
///             .sku("Enterprise")
///             .filteredSyncEnabled(false)
///             .initialReplicaSet(ServiceInitialReplicaSetArgs.builder()
///                 .subnetId(deploySubnet.id())
///                 .build())
///             .notifications(ServiceNotificationsArgs.builder()
///                 .additionalRecipients(
///                     "notifyA@example.net",
///                     "notifyB@example.org")
///                 .notifyDcAdmins(true)
///                 .notifyGlobalAdmins(true)
///                 .build())
///             .security(ServiceSecurityArgs.builder()
///                 .syncKerberosPasswords(true)
///                 .syncNtlmPasswords(true)
///                 .syncOnPremPasswords(true)
///                 .build())
///             .tags(Map.of("Environment", "prod"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     example,
///                     deploySubnetNetworkSecurityGroupAssociation)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploy:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   deployVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: deploy
///     properties:
///       name: deploy-vnet
///       location: ${deploy.location}
///       resourceGroupName: ${deploy.name}
///       addressSpaces:
///         - 10.0.1.0/16
///   deploySubnet:
///     type: azure:network:Subnet
///     name: deploy
///     properties:
///       name: deploy-subnet
///       resourceGroupName: ${deploy.name}
///       virtualNetworkName: ${deployVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   deployNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: deploy
///     properties:
///       name: deploy-nsg
///       location: ${deploy.location}
///       resourceGroupName: ${deploy.name}
///       securityRules:
///         - name: AllowSyncWithAzureAD
///           priority: 101
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '443'
///           sourceAddressPrefix: AzureActiveDirectoryDomainServices
///           destinationAddressPrefix: '*'
///         - name: AllowRD
///           priority: 201
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '3389'
///           sourceAddressPrefix: CorpNetSaw
///           destinationAddressPrefix: '*'
///         - name: AllowPSRemoting
///           priority: 301
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '5986'
///           sourceAddressPrefix: AzureActiveDirectoryDomainServices
///           destinationAddressPrefix: '*'
///         - name: AllowLDAPS
///           priority: 401
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '636'
///           sourceAddressPrefix: '*'
///           destinationAddressPrefix: '*'
///   deploySubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: deploy
///     properties:
///       subnetId: ${deploySubnet.id}
///       networkSecurityGroupId: ${deployNetworkSecurityGroup.id}
///   dcAdmins:
///     type: azuread:Group
///     name: dc_admins
///     properties:
///       displayName: AAD DC Administrators
///       securityEnabled: true
///   admin:
///     type: azuread:User
///     properties:
///       userPrincipalName: dc-admin@hashicorp-example.com
///       displayName: DC Administrator
///       password: Pa55w0Rd!!1
///   adminGroupMember:
///     type: azuread:GroupMember
///     name: admin
///     properties:
///       groupObjectId: ${dcAdmins.objectId}
///       memberObjectId: ${admin.objectId}
///   example:
///     type: azuread:ServicePrincipal
///     properties:
///       applicationId: 2565bd9d-da50-47d4-8b85-4c97f669dc36
///   aadds:
///     type: azure:core:ResourceGroup
///     properties:
///       name: aadds-rg
///       location: westeurope
///   exampleService:
///     type: azure:domainservices:Service
///     name: example
///     properties:
///       name: example-aadds
///       location: ${aadds.location}
///       resourceGroupName: ${aadds.name}
///       domainName: widgetslogin.net
///       sku: Enterprise
///       filteredSyncEnabled: false
///       initialReplicaSet:
///         subnetId: ${deploySubnet.id}
///       notifications:
///         additionalRecipients:
///           - notifyA@example.net
///           - notifyB@example.org
///         notifyDcAdmins: true
///         notifyGlobalAdmins: true
///       security:
///         syncKerberosPasswords: true
///         syncNtlmPasswords: true
///         syncOnPremPasswords: true
///       tags:
///         Environment: prod
///     options:
///       dependsOn:
///         - ${example}
///         - ${deploySubnetNetworkSecurityGroupAssociation}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AAD` - 2021-05-01
///
/// ## Import
///
/// Domain Services can be imported using the resource ID, together with the Replica Set ID that you wish to designate as the initial replica set, e.g.
///
/// ```sh
/// $ pulumi import azure:domainservices/service:Service example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.AAD/domainServices/instance1/initialReplicaSetId/00000000-0000-0000-0000-000000000000
/// ```
class Service extends pulumi.CustomResource {
  /// A unique ID for the managed domain deployment.
  late final pulumi.Output<String> deploymentId;
  /// The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> domainConfigurationType;
  /// The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created.
  late final pulumi.Output<String> domainName;
  /// Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`.
  late final pulumi.Output<bool?> filteredSyncEnabled;
  /// An `initialReplicaSet` block as defined below. The initial replica set inherits the same location as the Domain Service resource.
  late final pulumi.Output<ServiceInitialReplicaSet> initialReplicaSet;
  /// The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `notifications` block as defined below.
  late final pulumi.Output<ServiceNotifications> notifications;
  /// The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Azure resource ID for the domain service.
  late final pulumi.Output<String> resourceId;
  /// A `secureLdap` block as defined below.
  late final pulumi.Output<ServiceSecureLdap> secureLdap;
  /// A `security` block as defined below.
  late final pulumi.Output<ServiceSecurity> security;
  /// The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`.
  late final pulumi.Output<String> sku;
  late final pulumi.Output<String> syncOwner;
  /// A mapping of tags assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> tenantId;
  late final pulumi.Output<int> version;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_domainservices_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:domainservices/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    deploymentId = registerOutput<String>('deploymentId');
    domainConfigurationType = registerOutput<String?>('domainConfigurationType');
    domainName = registerOutput<String>('domainName');
    filteredSyncEnabled = registerOutput<bool?>('filteredSyncEnabled');
    initialReplicaSet = registerOutput<ServiceInitialReplicaSet>('initialReplicaSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceInitialReplicaSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<ServiceNotifications>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNotifications.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceId = registerOutput<String>('resourceId');
    secureLdap = registerOutput<ServiceSecureLdap>('secureLdap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSecureLdap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    security = registerOutput<ServiceSecurity>('security', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSecurity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<String>('sku');
    syncOwner = registerOutput<String>('syncOwner');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:domainservices/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deploymentId = registerOutput<String>('deploymentId');
    domainConfigurationType = registerOutput<String?>('domainConfigurationType');
    domainName = registerOutput<String>('domainName');
    filteredSyncEnabled = registerOutput<bool?>('filteredSyncEnabled');
    initialReplicaSet = registerOutput<ServiceInitialReplicaSet>('initialReplicaSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceInitialReplicaSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<ServiceNotifications>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNotifications.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceId = registerOutput<String>('resourceId');
    secureLdap = registerOutput<ServiceSecureLdap>('secureLdap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSecureLdap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    security = registerOutput<ServiceSecurity>('security', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSecurity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<String>('sku');
    syncOwner = registerOutput<String>('syncOwner');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [Service] resource.
  Service.reference(String urn)
    : super(
        'azure:domainservices/service:Service',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deploymentId = registerOutput<String>('deploymentId');
    domainConfigurationType = registerOutput<String?>('domainConfigurationType');
    domainName = registerOutput<String>('domainName');
    filteredSyncEnabled = registerOutput<bool?>('filteredSyncEnabled');
    initialReplicaSet = registerOutput<ServiceInitialReplicaSet>('initialReplicaSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceInitialReplicaSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<ServiceNotifications>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNotifications.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceId = registerOutput<String>('resourceId');
    secureLdap = registerOutput<ServiceSecureLdap>('secureLdap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSecureLdap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    security = registerOutput<ServiceSecurity>('security', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSecurity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<String>('sku');
    syncOwner = registerOutput<String>('syncOwner');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    version = registerOutput<int>('version');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_args.dart';
import 'managed_instance_azure_active_directory_administrator.dart';
import 'managed_instance_identity.dart';
import 'managed_instance_state.dart';

/// Manages a Microsoft SQL Azure Managed Instance.
///
/// &gt; **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
///
/// &gt; **Note:** SQL Managed Instance needs permission to read Azure Active Directory when configuring the AAD administrator. [Read more about provisioning AAD administrators](https://learn.microsoft.com/en-us/azure/azure-sql/database/authentication-aad-configure?view=azuresql#provision-azure-ad-admin-sql-managed-instance).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "database-rg",
///     location: "West Europe",
/// });
/// const exampleNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("example", {
///     name: "mi-security-group",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const allowManagementInbound = new azure.network.NetworkSecurityRule("allow_management_inbound", {
///     name: "allow_management_inbound",
///     priority: 106,
///     direction: "Inbound",
///     access: "Allow",
///     protocol: "Tcp",
///     sourcePortRange: "*",
///     destinationPortRanges: [
///         "9000",
///         "9003",
///         "1438",
///         "1440",
///         "1452",
///     ],
///     sourceAddressPrefix: "*",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
/// });
/// const allowMisubnetInbound = new azure.network.NetworkSecurityRule("allow_misubnet_inbound", {
///     name: "allow_misubnet_inbound",
///     priority: 200,
///     direction: "Inbound",
///     access: "Allow",
///     protocol: "*",
///     sourcePortRange: "*",
///     destinationPortRange: "*",
///     sourceAddressPrefix: "10.0.0.0/24",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
/// });
/// const allowHealthProbeInbound = new azure.network.NetworkSecurityRule("allow_health_probe_inbound", {
///     name: "allow_health_probe_inbound",
///     priority: 300,
///     direction: "Inbound",
///     access: "Allow",
///     protocol: "*",
///     sourcePortRange: "*",
///     destinationPortRange: "*",
///     sourceAddressPrefix: "AzureLoadBalancer",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
/// });
/// const allowTdsInbound = new azure.network.NetworkSecurityRule("allow_tds_inbound", {
///     name: "allow_tds_inbound",
///     priority: 1000,
///     direction: "Inbound",
///     access: "Allow",
///     protocol: "Tcp",
///     sourcePortRange: "*",
///     destinationPortRange: "1433",
///     sourceAddressPrefix: "VirtualNetwork",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
/// });
/// const denyAllInbound = new azure.network.NetworkSecurityRule("deny_all_inbound", {
///     name: "deny_all_inbound",
///     priority: 4096,
///     direction: "Inbound",
///     access: "Deny",
///     protocol: "*",
///     sourcePortRange: "*",
///     destinationPortRange: "*",
///     sourceAddressPrefix: "*",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
/// });
/// const allowManagementOutbound = new azure.network.NetworkSecurityRule("allow_management_outbound", {
///     name: "allow_management_outbound",
///     priority: 102,
///     direction: "Outbound",
///     access: "Allow",
///     protocol: "Tcp",
///     sourcePortRange: "*",
///     destinationPortRanges: [
///         "80",
///         "443",
///         "12000",
///     ],
///     sourceAddressPrefix: "*",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
/// });
/// const allowMisubnetOutbound = new azure.network.NetworkSecurityRule("allow_misubnet_outbound", {
///     name: "allow_misubnet_outbound",
///     priority: 200,
///     direction: "Outbound",
///     access: "Allow",
///     protocol: "*",
///     sourcePortRange: "*",
///     destinationPortRange: "*",
///     sourceAddressPrefix: "10.0.0.0/24",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
/// });
/// const denyAllOutbound = new azure.network.NetworkSecurityRule("deny_all_outbound", {
///     name: "deny_all_outbound",
///     priority: 4096,
///     direction: "Outbound",
///     access: "Deny",
///     protocol: "*",
///     sourcePortRange: "*",
///     destinationPortRange: "*",
///     sourceAddressPrefix: "*",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "vnet-mi",
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "subnet-mi",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.0.0/24"],
///     delegations: [{
///         name: "managedinstancedelegation",
///         serviceDelegation: {
///             name: "Microsoft.Sql/managedInstances",
///             actions: [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///         },
///     }],
/// });
/// const exampleSubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("example", {
///     subnetId: exampleSubnet.id,
///     networkSecurityGroupId: exampleNetworkSecurityGroup.id,
/// });
/// const exampleRouteTable = new azure.network.RouteTable("example", {
///     name: "routetable-mi",
///     location: example.location,
///     resourceGroupName: example.name,
///     bgpRoutePropagationEnabled: true,
/// }, {
///     dependsOn: [exampleSubnet],
/// });
/// const exampleSubnetRouteTableAssociation = new azure.network.SubnetRouteTableAssociation("example", {
///     subnetId: exampleSubnet.id,
///     routeTableId: exampleRouteTable.id,
/// });
/// const exampleManagedInstance = new azure.mssql.ManagedInstance("example", {
///     name: "managedsqlinstance",
///     resourceGroupName: example.name,
///     location: example.location,
///     licenseType: "BasePrice",
///     skuName: "GP_Gen5",
///     storageSizeInGb: 32,
///     subnetId: exampleSubnet.id,
///     vcores: 4,
///     administratorLogin: "mradministrator",
///     administratorLoginPassword: "thisIsDog11",
/// }, {
///     dependsOn: [
///         exampleSubnetNetworkSecurityGroupAssociation,
///         exampleSubnetRouteTableAssociation,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="database-rg",
///     location="West Europe")
/// example_network_security_group = azure.network.NetworkSecurityGroup("example",
///     name="mi-security-group",
///     location=example.location,
///     resource_group_name=example.name)
/// allow_management_inbound = azure.network.NetworkSecurityRule("allow_management_inbound",
///     name="allow_management_inbound",
///     priority=106,
///     direction="Inbound",
///     access="Allow",
///     protocol="Tcp",
///     source_port_range="*",
///     destination_port_ranges=[
///         "9000",
///         "9003",
///         "1438",
///         "1440",
///         "1452",
///     ],
///     source_address_prefix="*",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
/// allow_misubnet_inbound = azure.network.NetworkSecurityRule("allow_misubnet_inbound",
///     name="allow_misubnet_inbound",
///     priority=200,
///     direction="Inbound",
///     access="Allow",
///     protocol="*",
///     source_port_range="*",
///     destination_port_range="*",
///     source_address_prefix="10.0.0.0/24",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
/// allow_health_probe_inbound = azure.network.NetworkSecurityRule("allow_health_probe_inbound",
///     name="allow_health_probe_inbound",
///     priority=300,
///     direction="Inbound",
///     access="Allow",
///     protocol="*",
///     source_port_range="*",
///     destination_port_range="*",
///     source_address_prefix="AzureLoadBalancer",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
/// allow_tds_inbound = azure.network.NetworkSecurityRule("allow_tds_inbound",
///     name="allow_tds_inbound",
///     priority=1000,
///     direction="Inbound",
///     access="Allow",
///     protocol="Tcp",
///     source_port_range="*",
///     destination_port_range="1433",
///     source_address_prefix="VirtualNetwork",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
/// deny_all_inbound = azure.network.NetworkSecurityRule("deny_all_inbound",
///     name="deny_all_inbound",
///     priority=4096,
///     direction="Inbound",
///     access="Deny",
///     protocol="*",
///     source_port_range="*",
///     destination_port_range="*",
///     source_address_prefix="*",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
/// allow_management_outbound = azure.network.NetworkSecurityRule("allow_management_outbound",
///     name="allow_management_outbound",
///     priority=102,
///     direction="Outbound",
///     access="Allow",
///     protocol="Tcp",
///     source_port_range="*",
///     destination_port_ranges=[
///         "80",
///         "443",
///         "12000",
///     ],
///     source_address_prefix="*",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
/// allow_misubnet_outbound = azure.network.NetworkSecurityRule("allow_misubnet_outbound",
///     name="allow_misubnet_outbound",
///     priority=200,
///     direction="Outbound",
///     access="Allow",
///     protocol="*",
///     source_port_range="*",
///     destination_port_range="*",
///     source_address_prefix="10.0.0.0/24",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
/// deny_all_outbound = azure.network.NetworkSecurityRule("deny_all_outbound",
///     name="deny_all_outbound",
///     priority=4096,
///     direction="Outbound",
///     access="Deny",
///     protocol="*",
///     source_port_range="*",
///     destination_port_range="*",
///     source_address_prefix="*",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="vnet-mi",
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"],
///     location=example.location)
/// example_subnet = azure.network.Subnet("example",
///     name="subnet-mi",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.0.0/24"],
///     delegations=[{
///         "name": "managedinstancedelegation",
///         "service_delegation": {
///             "name": "Microsoft.Sql/managedInstances",
///             "actions": [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///         },
///     }])
/// example_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("example",
///     subnet_id=example_subnet.id,
///     network_security_group_id=example_network_security_group.id)
/// example_route_table = azure.network.RouteTable("example",
///     name="routetable-mi",
///     location=example.location,
///     resource_group_name=example.name,
///     bgp_route_propagation_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[example_subnet]))
/// example_subnet_route_table_association = azure.network.SubnetRouteTableAssociation("example",
///     subnet_id=example_subnet.id,
///     route_table_id=example_route_table.id)
/// example_managed_instance = azure.mssql.ManagedInstance("example",
///     name="managedsqlinstance",
///     resource_group_name=example.name,
///     location=example.location,
///     license_type="BasePrice",
///     sku_name="GP_Gen5",
///     storage_size_in_gb=32,
///     subnet_id=example_subnet.id,
///     vcores=4,
///     administrator_login="mradministrator",
///     administrator_login_password="thisIsDog11",
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_subnet_network_security_group_association,
///             example_subnet_route_table_association,
///         ]))
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
///         Name = "database-rg",
///         Location = "West Europe",
///     });
///
///     var exampleNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("example", new()
///     {
///         Name = "mi-security-group",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var allowManagementInbound = new Azure.Network.NetworkSecurityRule("allow_management_inbound", new()
///     {
///         Name = "allow_management_inbound",
///         Priority = 106,
///         Direction = "Inbound",
///         Access = "Allow",
///         Protocol = "Tcp",
///         SourcePortRange = "*",
///         DestinationPortRanges = new[]
///         {
///             "9000",
///             "9003",
///             "1438",
///             "1440",
///             "1452",
///         },
///         SourceAddressPrefix = "*",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
///     });
///
///     var allowMisubnetInbound = new Azure.Network.NetworkSecurityRule("allow_misubnet_inbound", new()
///     {
///         Name = "allow_misubnet_inbound",
///         Priority = 200,
///         Direction = "Inbound",
///         Access = "Allow",
///         Protocol = "*",
///         SourcePortRange = "*",
///         DestinationPortRange = "*",
///         SourceAddressPrefix = "10.0.0.0/24",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
///     });
///
///     var allowHealthProbeInbound = new Azure.Network.NetworkSecurityRule("allow_health_probe_inbound", new()
///     {
///         Name = "allow_health_probe_inbound",
///         Priority = 300,
///         Direction = "Inbound",
///         Access = "Allow",
///         Protocol = "*",
///         SourcePortRange = "*",
///         DestinationPortRange = "*",
///         SourceAddressPrefix = "AzureLoadBalancer",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
///     });
///
///     var allowTdsInbound = new Azure.Network.NetworkSecurityRule("allow_tds_inbound", new()
///     {
///         Name = "allow_tds_inbound",
///         Priority = 1000,
///         Direction = "Inbound",
///         Access = "Allow",
///         Protocol = "Tcp",
///         SourcePortRange = "*",
///         DestinationPortRange = "1433",
///         SourceAddressPrefix = "VirtualNetwork",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
///     });
///
///     var denyAllInbound = new Azure.Network.NetworkSecurityRule("deny_all_inbound", new()
///     {
///         Name = "deny_all_inbound",
///         Priority = 4096,
///         Direction = "Inbound",
///         Access = "Deny",
///         Protocol = "*",
///         SourcePortRange = "*",
///         DestinationPortRange = "*",
///         SourceAddressPrefix = "*",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
///     });
///
///     var allowManagementOutbound = new Azure.Network.NetworkSecurityRule("allow_management_outbound", new()
///     {
///         Name = "allow_management_outbound",
///         Priority = 102,
///         Direction = "Outbound",
///         Access = "Allow",
///         Protocol = "Tcp",
///         SourcePortRange = "*",
///         DestinationPortRanges = new[]
///         {
///             "80",
///             "443",
///             "12000",
///         },
///         SourceAddressPrefix = "*",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
///     });
///
///     var allowMisubnetOutbound = new Azure.Network.NetworkSecurityRule("allow_misubnet_outbound", new()
///     {
///         Name = "allow_misubnet_outbound",
///         Priority = 200,
///         Direction = "Outbound",
///         Access = "Allow",
///         Protocol = "*",
///         SourcePortRange = "*",
///         DestinationPortRange = "*",
///         SourceAddressPrefix = "10.0.0.0/24",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
///     });
///
///     var denyAllOutbound = new Azure.Network.NetworkSecurityRule("deny_all_outbound", new()
///     {
///         Name = "deny_all_outbound",
///         Priority = 4096,
///         Direction = "Outbound",
///         Access = "Deny",
///         Protocol = "*",
///         SourcePortRange = "*",
///         DestinationPortRange = "*",
///         SourceAddressPrefix = "*",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "vnet-mi",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "subnet-mi",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.0.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "managedinstancedelegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Sql/managedInstances",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleSubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("example", new()
///     {
///         SubnetId = exampleSubnet.Id,
///         NetworkSecurityGroupId = exampleNetworkSecurityGroup.Id,
///     });
///
///     var exampleRouteTable = new Azure.Network.RouteTable("example", new()
///     {
///         Name = "routetable-mi",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         BgpRoutePropagationEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSubnet,
///         },
///     });
///
///     var exampleSubnetRouteTableAssociation = new Azure.Network.SubnetRouteTableAssociation("example", new()
///     {
///         SubnetId = exampleSubnet.Id,
///         RouteTableId = exampleRouteTable.Id,
///     });
///
///     var exampleManagedInstance = new Azure.MSSql.ManagedInstance("example", new()
///     {
///         Name = "managedsqlinstance",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         LicenseType = "BasePrice",
///         SkuName = "GP_Gen5",
///         StorageSizeInGb = 32,
///         SubnetId = exampleSubnet.Id,
///         Vcores = 4,
///         AdministratorLogin = "mradministrator",
///         AdministratorLoginPassword = "thisIsDog11",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSubnetNetworkSecurityGroupAssociation,
///             exampleSubnetRouteTableAssociation,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("database-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "example", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String("mi-security-group"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "allow_management_inbound", &network.NetworkSecurityRuleArgs{
/// 			Name:            pulumi.String("allow_management_inbound"),
/// 			Priority:        pulumi.Int(106),
/// 			Direction:       pulumi.String("Inbound"),
/// 			Access:          pulumi.String("Allow"),
/// 			Protocol:        pulumi.String("Tcp"),
/// 			SourcePortRange: pulumi.String("*"),
/// 			DestinationPortRanges: pulumi.StringArray{
/// 				pulumi.String("9000"),
/// 				pulumi.String("9003"),
/// 				pulumi.String("1438"),
/// 				pulumi.String("1440"),
/// 				pulumi.String("1452"),
/// 			},
/// 			SourceAddressPrefix:      pulumi.String("*"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "allow_misubnet_inbound", &network.NetworkSecurityRuleArgs{
/// 			Name:                     pulumi.String("allow_misubnet_inbound"),
/// 			Priority:                 pulumi.Int(200),
/// 			Direction:                pulumi.String("Inbound"),
/// 			Access:                   pulumi.String("Allow"),
/// 			Protocol:                 pulumi.String("*"),
/// 			SourcePortRange:          pulumi.String("*"),
/// 			DestinationPortRange:     pulumi.String("*"),
/// 			SourceAddressPrefix:      pulumi.String("10.0.0.0/24"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "allow_health_probe_inbound", &network.NetworkSecurityRuleArgs{
/// 			Name:                     pulumi.String("allow_health_probe_inbound"),
/// 			Priority:                 pulumi.Int(300),
/// 			Direction:                pulumi.String("Inbound"),
/// 			Access:                   pulumi.String("Allow"),
/// 			Protocol:                 pulumi.String("*"),
/// 			SourcePortRange:          pulumi.String("*"),
/// 			DestinationPortRange:     pulumi.String("*"),
/// 			SourceAddressPrefix:      pulumi.String("AzureLoadBalancer"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "allow_tds_inbound", &network.NetworkSecurityRuleArgs{
/// 			Name:                     pulumi.String("allow_tds_inbound"),
/// 			Priority:                 pulumi.Int(1000),
/// 			Direction:                pulumi.String("Inbound"),
/// 			Access:                   pulumi.String("Allow"),
/// 			Protocol:                 pulumi.String("Tcp"),
/// 			SourcePortRange:          pulumi.String("*"),
/// 			DestinationPortRange:     pulumi.String("1433"),
/// 			SourceAddressPrefix:      pulumi.String("VirtualNetwork"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "deny_all_inbound", &network.NetworkSecurityRuleArgs{
/// 			Name:                     pulumi.String("deny_all_inbound"),
/// 			Priority:                 pulumi.Int(4096),
/// 			Direction:                pulumi.String("Inbound"),
/// 			Access:                   pulumi.String("Deny"),
/// 			Protocol:                 pulumi.String("*"),
/// 			SourcePortRange:          pulumi.String("*"),
/// 			DestinationPortRange:     pulumi.String("*"),
/// 			SourceAddressPrefix:      pulumi.String("*"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "allow_management_outbound", &network.NetworkSecurityRuleArgs{
/// 			Name:            pulumi.String("allow_management_outbound"),
/// 			Priority:        pulumi.Int(102),
/// 			Direction:       pulumi.String("Outbound"),
/// 			Access:          pulumi.String("Allow"),
/// 			Protocol:        pulumi.String("Tcp"),
/// 			SourcePortRange: pulumi.String("*"),
/// 			DestinationPortRanges: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 				pulumi.String("443"),
/// 				pulumi.String("12000"),
/// 			},
/// 			SourceAddressPrefix:      pulumi.String("*"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "allow_misubnet_outbound", &network.NetworkSecurityRuleArgs{
/// 			Name:                     pulumi.String("allow_misubnet_outbound"),
/// 			Priority:                 pulumi.Int(200),
/// 			Direction:                pulumi.String("Outbound"),
/// 			Access:                   pulumi.String("Allow"),
/// 			Protocol:                 pulumi.String("*"),
/// 			SourcePortRange:          pulumi.String("*"),
/// 			DestinationPortRange:     pulumi.String("*"),
/// 			SourceAddressPrefix:      pulumi.String("10.0.0.0/24"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "deny_all_outbound", &network.NetworkSecurityRuleArgs{
/// 			Name:                     pulumi.String("deny_all_outbound"),
/// 			Priority:                 pulumi.Int(4096),
/// 			Direction:                pulumi.String("Outbound"),
/// 			Access:                   pulumi.String("Deny"),
/// 			Protocol:                 pulumi.String("*"),
/// 			SourcePortRange:          pulumi.String("*"),
/// 			DestinationPortRange:     pulumi.String("*"),
/// 			SourceAddressPrefix:      pulumi.String("*"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("vnet-mi"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location: example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("subnet-mi"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("managedinstancedelegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Sql/managedInstances"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnetNetworkSecurityGroupAssociation, err := network.NewSubnetNetworkSecurityGroupAssociation(ctx, "example", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// 			SubnetId:               exampleSubnet.ID(),
/// 			NetworkSecurityGroupId: exampleNetworkSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRouteTable, err := network.NewRouteTable(ctx, "example", &network.RouteTableArgs{
/// 			Name:                       pulumi.String("routetable-mi"),
/// 			Location:                   example.Location,
/// 			ResourceGroupName:          example.Name,
/// 			BgpRoutePropagationEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnetRouteTableAssociation, err := network.NewSubnetRouteTableAssociation(ctx, "example", &network.SubnetRouteTableAssociationArgs{
/// 			SubnetId:     exampleSubnet.ID(),
/// 			RouteTableId: exampleRouteTable.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewManagedInstance(ctx, "example", &mssql.ManagedInstanceArgs{
/// 			Name:                       pulumi.String("managedsqlinstance"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			LicenseType:                pulumi.String("BasePrice"),
/// 			SkuName:                    pulumi.String("GP_Gen5"),
/// 			StorageSizeInGb:            pulumi.Int(32),
/// 			SubnetId:                   exampleSubnet.ID(),
/// 			Vcores:                     pulumi.Int(4),
/// 			AdministratorLogin:         pulumi.String("mradministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsDog11"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSubnetNetworkSecurityGroupAssociation,
/// 			exampleSubnetRouteTableAssociation,
/// 		}))
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
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.NetworkSecurityRule;
/// import com.pulumi.azure.network.NetworkSecurityRuleArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociation;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociationArgs;
/// import com.pulumi.azure.network.RouteTable;
/// import com.pulumi.azure.network.RouteTableArgs;
/// import com.pulumi.azure.network.SubnetRouteTableAssociation;
/// import com.pulumi.azure.network.SubnetRouteTableAssociationArgs;
/// import com.pulumi.azure.mssql.ManagedInstance;
/// import com.pulumi.azure.mssql.ManagedInstanceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .name("database-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleNetworkSecurityGroup = new NetworkSecurityGroup("exampleNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("mi-security-group")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var allowManagementInbound = new NetworkSecurityRule("allowManagementInbound", NetworkSecurityRuleArgs.builder()
///             .name("allow_management_inbound")
///             .priority(106)
///             .direction("Inbound")
///             .access("Allow")
///             .protocol("Tcp")
///             .sourcePortRange("*")
///             .destinationPortRanges(
///                 "9000",
///                 "9003",
///                 "1438",
///                 "1440",
///                 "1452")
///             .sourceAddressPrefix("*")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
///             .build());
///
///         var allowMisubnetInbound = new NetworkSecurityRule("allowMisubnetInbound", NetworkSecurityRuleArgs.builder()
///             .name("allow_misubnet_inbound")
///             .priority(200)
///             .direction("Inbound")
///             .access("Allow")
///             .protocol("*")
///             .sourcePortRange("*")
///             .destinationPortRange("*")
///             .sourceAddressPrefix("10.0.0.0/24")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
///             .build());
///
///         var allowHealthProbeInbound = new NetworkSecurityRule("allowHealthProbeInbound", NetworkSecurityRuleArgs.builder()
///             .name("allow_health_probe_inbound")
///             .priority(300)
///             .direction("Inbound")
///             .access("Allow")
///             .protocol("*")
///             .sourcePortRange("*")
///             .destinationPortRange("*")
///             .sourceAddressPrefix("AzureLoadBalancer")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
///             .build());
///
///         var allowTdsInbound = new NetworkSecurityRule("allowTdsInbound", NetworkSecurityRuleArgs.builder()
///             .name("allow_tds_inbound")
///             .priority(1000)
///             .direction("Inbound")
///             .access("Allow")
///             .protocol("Tcp")
///             .sourcePortRange("*")
///             .destinationPortRange("1433")
///             .sourceAddressPrefix("VirtualNetwork")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
///             .build());
///
///         var denyAllInbound = new NetworkSecurityRule("denyAllInbound", NetworkSecurityRuleArgs.builder()
///             .name("deny_all_inbound")
///             .priority(4096)
///             .direction("Inbound")
///             .access("Deny")
///             .protocol("*")
///             .sourcePortRange("*")
///             .destinationPortRange("*")
///             .sourceAddressPrefix("*")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
///             .build());
///
///         var allowManagementOutbound = new NetworkSecurityRule("allowManagementOutbound", NetworkSecurityRuleArgs.builder()
///             .name("allow_management_outbound")
///             .priority(102)
///             .direction("Outbound")
///             .access("Allow")
///             .protocol("Tcp")
///             .sourcePortRange("*")
///             .destinationPortRanges(
///                 "80",
///                 "443",
///                 "12000")
///             .sourceAddressPrefix("*")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
///             .build());
///
///         var allowMisubnetOutbound = new NetworkSecurityRule("allowMisubnetOutbound", NetworkSecurityRuleArgs.builder()
///             .name("allow_misubnet_outbound")
///             .priority(200)
///             .direction("Outbound")
///             .access("Allow")
///             .protocol("*")
///             .sourcePortRange("*")
///             .destinationPortRange("*")
///             .sourceAddressPrefix("10.0.0.0/24")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
///             .build());
///
///         var denyAllOutbound = new NetworkSecurityRule("denyAllOutbound", NetworkSecurityRuleArgs.builder()
///             .name("deny_all_outbound")
///             .priority(4096)
///             .direction("Outbound")
///             .access("Deny")
///             .protocol("*")
///             .sourcePortRange("*")
///             .destinationPortRange("*")
///             .sourceAddressPrefix("*")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("vnet-mi")
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("subnet-mi")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.0.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("managedinstancedelegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Sql/managedInstances")
///                     .actions(
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleSubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("exampleSubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(exampleSubnet.id())
///             .networkSecurityGroupId(exampleNetworkSecurityGroup.id())
///             .build());
///
///         var exampleRouteTable = new RouteTable("exampleRouteTable", RouteTableArgs.builder()
///             .name("routetable-mi")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .bgpRoutePropagationEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSubnet)
///                 .build());
///
///         var exampleSubnetRouteTableAssociation = new SubnetRouteTableAssociation("exampleSubnetRouteTableAssociation", SubnetRouteTableAssociationArgs.builder()
///             .subnetId(exampleSubnet.id())
///             .routeTableId(exampleRouteTable.id())
///             .build());
///
///         var exampleManagedInstance = new ManagedInstance("exampleManagedInstance", ManagedInstanceArgs.builder()
///             .name("managedsqlinstance")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .licenseType("BasePrice")
///             .skuName("GP_Gen5")
///             .storageSizeInGb(32)
///             .subnetId(exampleSubnet.id())
///             .vcores(4)
///             .administratorLogin("mradministrator")
///             .administratorLoginPassword("thisIsDog11")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleSubnetNetworkSecurityGroupAssociation,
///                     exampleSubnetRouteTableAssociation)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: database-rg
///       location: West Europe
///   exampleNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: example
///     properties:
///       name: mi-security-group
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   allowManagementInbound:
///     type: azure:network:NetworkSecurityRule
///     name: allow_management_inbound
///     properties:
///       name: allow_management_inbound
///       priority: 106
///       direction: Inbound
///       access: Allow
///       protocol: Tcp
///       sourcePortRange: '*'
///       destinationPortRanges:
///         - '9000'
///         - '9003'
///         - '1438'
///         - '1440'
///         - '1452'
///       sourceAddressPrefix: '*'
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
///   allowMisubnetInbound:
///     type: azure:network:NetworkSecurityRule
///     name: allow_misubnet_inbound
///     properties:
///       name: allow_misubnet_inbound
///       priority: 200
///       direction: Inbound
///       access: Allow
///       protocol: '*'
///       sourcePortRange: '*'
///       destinationPortRange: '*'
///       sourceAddressPrefix: 10.0.0.0/24
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
///   allowHealthProbeInbound:
///     type: azure:network:NetworkSecurityRule
///     name: allow_health_probe_inbound
///     properties:
///       name: allow_health_probe_inbound
///       priority: 300
///       direction: Inbound
///       access: Allow
///       protocol: '*'
///       sourcePortRange: '*'
///       destinationPortRange: '*'
///       sourceAddressPrefix: AzureLoadBalancer
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
///   allowTdsInbound:
///     type: azure:network:NetworkSecurityRule
///     name: allow_tds_inbound
///     properties:
///       name: allow_tds_inbound
///       priority: 1000
///       direction: Inbound
///       access: Allow
///       protocol: Tcp
///       sourcePortRange: '*'
///       destinationPortRange: '1433'
///       sourceAddressPrefix: VirtualNetwork
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
///   denyAllInbound:
///     type: azure:network:NetworkSecurityRule
///     name: deny_all_inbound
///     properties:
///       name: deny_all_inbound
///       priority: 4096
///       direction: Inbound
///       access: Deny
///       protocol: '*'
///       sourcePortRange: '*'
///       destinationPortRange: '*'
///       sourceAddressPrefix: '*'
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
///   allowManagementOutbound:
///     type: azure:network:NetworkSecurityRule
///     name: allow_management_outbound
///     properties:
///       name: allow_management_outbound
///       priority: 102
///       direction: Outbound
///       access: Allow
///       protocol: Tcp
///       sourcePortRange: '*'
///       destinationPortRanges:
///         - '80'
///         - '443'
///         - '12000'
///       sourceAddressPrefix: '*'
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
///   allowMisubnetOutbound:
///     type: azure:network:NetworkSecurityRule
///     name: allow_misubnet_outbound
///     properties:
///       name: allow_misubnet_outbound
///       priority: 200
///       direction: Outbound
///       access: Allow
///       protocol: '*'
///       sourcePortRange: '*'
///       destinationPortRange: '*'
///       sourceAddressPrefix: 10.0.0.0/24
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
///   denyAllOutbound:
///     type: azure:network:NetworkSecurityRule
///     name: deny_all_outbound
///     properties:
///       name: deny_all_outbound
///       priority: 4096
///       direction: Outbound
///       access: Deny
///       protocol: '*'
///       sourcePortRange: '*'
///       destinationPortRange: '*'
///       sourceAddressPrefix: '*'
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: vnet-mi
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: subnet-mi
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.0.0/24
///       delegations:
///         - name: managedinstancedelegation
///           serviceDelegation:
///             name: Microsoft.Sql/managedInstances
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///               - Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action
///               - Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action
///   exampleSubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: example
///     properties:
///       subnetId: ${exampleSubnet.id}
///       networkSecurityGroupId: ${exampleNetworkSecurityGroup.id}
///   exampleRouteTable:
///     type: azure:network:RouteTable
///     name: example
///     properties:
///       name: routetable-mi
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       bgpRoutePropagationEnabled: true
///     options:
///       dependsOn:
///         - ${exampleSubnet}
///   exampleSubnetRouteTableAssociation:
///     type: azure:network:SubnetRouteTableAssociation
///     name: example
///     properties:
///       subnetId: ${exampleSubnet.id}
///       routeTableId: ${exampleRouteTable.id}
///   exampleManagedInstance:
///     type: azure:mssql:ManagedInstance
///     name: example
///     properties:
///       name: managedsqlinstance
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       licenseType: BasePrice
///       skuName: GP_Gen5
///       storageSizeInGb: 32
///       subnetId: ${exampleSubnet.id}
///       vcores: 4
///       administratorLogin: mradministrator
///       administratorLoginPassword: thisIsDog11
///     options:
///       dependsOn:
///         - ${exampleSubnetNetworkSecurityGroupAssociation}
///         - ${exampleSubnetRouteTableAssociation}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// Microsoft SQL Managed Instances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/managedInstance:ManagedInstance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Sql/managedInstances/myserver
/// ```
class ManagedInstance extends pulumi.CustomResource {
  /// The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> administratorLogin;

  /// The password associated with the `administrator_login` user. Needs to comply with Azure's [Password Policy](https://msdn.microsoft.com/library/ms161959.aspx)
  ///
  /// &gt; **Note:** Unless `azure_active_directory_administrator.azuread_authentication_only_enabled` is set to `true`, `administrator_login` and `administrator_login_password` are required.
  late final pulumi.Output<String?> administratorLoginPassword;

  /// An `azure_active_directory_administrator` block as defined below.
  late final pulumi.Output<ManagedInstanceAzureActiveDirectoryAdministrator?>
  azureActiveDirectoryAdministrator;

  /// Specifies how the SQL Managed Instance will be collated. Defaults to `SQL_Latin1_General_CP1_CI_AS`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> collation;

  /// Specifies the internal format of the SQL Managed Instance databases specific to the SQL engine version. Possible values are `AlwaysUpToDate` and `SQLServer2022`. Defaults to `SQLServer2022`.
  ///
  /// &gt; **Note:** Changing `database_format` from `AlwaysUpToDate` to `SQLServer2022` forces a new SQL Managed Instance to be created.
  late final pulumi.Output<String?> databaseFormat;

  /// The Dns Zone where the SQL Managed Instance is located.
  late final pulumi.Output<String> dnsZone;

  /// The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an `azurerm_sql_managed_instance_failover_group`. Setting this after creation forces a new resource to be created.
  late final pulumi.Output<String?> dnsZonePartnerId;

  /// The fully qualified domain name of the Azure Managed SQL Instance
  late final pulumi.Output<String> fqdn;

  /// Specifies the hybrid secondary usage for disaster recovery of the SQL Managed Instance. Possible values are `Active` and `Passive`. Defaults to `Active`.
  late final pulumi.Output<String?> hybridSecondaryUsage;

  /// An `identity` block as defined below.
  late final pulumi.Output<ManagedInstanceIdentity?> identity;

  /// What type of license the Managed Instance will use. Possible values are `LicenseIncluded` and `BasePrice`.
  late final pulumi.Output<String> licenseType;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Possible values are `SQL_Default` or an Azure Location in the format `SQL_{Location}_MI_{Size}`(for example `SQL_EastUS_MI_1`). Defaults to `SQL_Default`.
  late final pulumi.Output<String?> maintenanceConfigurationName;

  /// The Minimum TLS Version. Default value is `1.2` Valid values include `1.0`, `1.1`, `1.2`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  late final pulumi.Output<String?> minimumTlsVersion;

  /// The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies how the SQL Managed Instance will be accessed. Defaults to `Default`. Possible values are `Default`, `Proxy`, and `Redirect`.
  late final pulumi.Output<String> proxyOverride;

  /// Is the public data endpoint enabled? Defaults to `false`.
  late final pulumi.Output<bool?> publicDataEndpointEnabled;

  /// The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The service principal type. The only possible value is `SystemAssigned`.
  late final pulumi.Output<String?> servicePrincipalType;

  /// Specifies the SKU Name for the SQL Managed Instance. Possible values are `GP_Gen4`, `GP_Gen5`, `GP_Gen8IM`, `GP_Gen8IH`, `BC_Gen4`, `BC_Gen5`, `BC_Gen8IM` or `BC_Gen8IH`.
  late final pulumi.Output<String> skuName;

  /// Specifies the storage account type used to store backups for this database. Possible values are `GRS`, `GZRS`, `LRS`, and `ZRS`. Defaults to `GRS`.
  late final pulumi.Output<String?> storageAccountType;

  /// Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB).
  ///
  /// &gt; **Note:** The maximum storage size varies depending on the service tier and hardware generation. For General Purpose Next-gen instances, the maximum is 32,768 GB (32 TB), while Business Critical instances support up to 16,384 GB (16 TB). Refer to [Azure SQL Managed Instance resource limits](https://learn.microsoft.com/en-us/azure/azure-sql/managed-instance/resource-limits) for detailed information.
  late final pulumi.Output<int> storageSizeInGb;

  /// The subnet resource id that the SQL Managed Instance will be associated with.
  late final pulumi.Output<String> subnetId;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The TimeZone ID that the SQL Managed Instance will be operating in. Defaults to `UTC`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> timezoneId;

  /// Number of cores that should be assigned to the SQL Managed Instance. Values can be `8`, `16`, or `24` for Gen4 SKUs, or `4`, `6`, `8`, `10`, `12`, `16`, `20`, `24`, `32`, `40`, `48`, `56`, `64`, `80`, `96` or `128` for Gen5 SKUs.
  late final pulumi.Output<int> vcores;

  /// Specifies whether the SQL Managed Instance is zone redundant. Defaults to `false`.
  late final pulumi.Output<bool?> zoneRedundantEnabled;

  /// Creates a new [ManagedInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstance]. {@macro pulumi_mssql_managed_instance_managed_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstance(
    String name, {
    ManagedInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/managedInstance:ManagedInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorLoginPassword = registerOutput<String?>(
      'administratorLoginPassword',
    );
    azureActiveDirectoryAdministrator =
        registerOutput<ManagedInstanceAzureActiveDirectoryAdministrator?>(
          'azureActiveDirectoryAdministrator',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedInstanceAzureActiveDirectoryAdministrator.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    collation = registerOutput<String?>('collation');
    databaseFormat = registerOutput<String?>('databaseFormat');
    dnsZone = registerOutput<String>('dnsZone');
    dnsZonePartnerId = registerOutput<String?>('dnsZonePartnerId');
    fqdn = registerOutput<String>('fqdn');
    hybridSecondaryUsage = registerOutput<String?>('hybridSecondaryUsage');
    identity = registerOutput<ManagedInstanceIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedInstanceIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    maintenanceConfigurationName = registerOutput<String?>(
      'maintenanceConfigurationName',
    );
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    proxyOverride = registerOutput<String>('proxyOverride');
    publicDataEndpointEnabled = registerOutput<bool?>(
      'publicDataEndpointEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    servicePrincipalType = registerOutput<String?>('servicePrincipalType');
    skuName = registerOutput<String>('skuName');
    storageAccountType = registerOutput<String?>('storageAccountType');
    storageSizeInGb = registerOutput<int>('storageSizeInGb');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    timezoneId = registerOutput<String?>('timezoneId');
    vcores = registerOutput<int>('vcores');
    zoneRedundantEnabled = registerOutput<bool?>('zoneRedundantEnabled');
  }

  /// Gets an existing [ManagedInstance] resource's state with the given [name] and [id].
  static ManagedInstance get(
    String name,
    pulumi.Input<String> id, {
    ManagedInstanceState? state,
  }) {
    return ManagedInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:mssql/managedInstance:ManagedInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorLogin = registerOutput<String>('administratorLogin');
    administratorLoginPassword = registerOutput<String?>(
      'administratorLoginPassword',
    );
    azureActiveDirectoryAdministrator =
        registerOutput<ManagedInstanceAzureActiveDirectoryAdministrator?>(
          'azureActiveDirectoryAdministrator',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedInstanceAzureActiveDirectoryAdministrator.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    collation = registerOutput<String?>('collation');
    databaseFormat = registerOutput<String?>('databaseFormat');
    dnsZone = registerOutput<String>('dnsZone');
    dnsZonePartnerId = registerOutput<String?>('dnsZonePartnerId');
    fqdn = registerOutput<String>('fqdn');
    hybridSecondaryUsage = registerOutput<String?>('hybridSecondaryUsage');
    identity = registerOutput<ManagedInstanceIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedInstanceIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    maintenanceConfigurationName = registerOutput<String?>(
      'maintenanceConfigurationName',
    );
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    proxyOverride = registerOutput<String>('proxyOverride');
    publicDataEndpointEnabled = registerOutput<bool?>(
      'publicDataEndpointEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    servicePrincipalType = registerOutput<String?>('servicePrincipalType');
    skuName = registerOutput<String>('skuName');
    storageAccountType = registerOutput<String?>('storageAccountType');
    storageSizeInGb = registerOutput<int>('storageSizeInGb');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    timezoneId = registerOutput<String?>('timezoneId');
    vcores = registerOutput<int>('vcores');
    zoneRedundantEnabled = registerOutput<bool?>('zoneRedundantEnabled');
  }
}

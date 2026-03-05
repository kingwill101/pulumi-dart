import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_start_stop_schedule_args.dart';
import 'managed_instance_start_stop_schedule_state.dart';

/// Manages Start Stop Schedules for an MS SQL Managed Instance.
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
///     disableBgpRoutePropagation: false,
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
/// const exampleManagedInstanceStartStopSchedule = new azure.mssql.ManagedInstanceStartStopSchedule("example", {
///     managedInstanceId: exampleManagedInstance.id,
///     timezoneId: "Central European Standard Time",
///     schedules: [
///         {
///             startDay: "Monday",
///             startTime: "08:00",
///             stopDay: "Monday",
///             stopTime: "11:00",
///         },
///         {
///             startDay: "Tuesday",
///             startTime: "12:00",
///             stopDay: "Tuesday",
///             stopTime: "18:00",
///         },
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
///     disable_bgp_route_propagation=False,
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
/// example_managed_instance_start_stop_schedule = azure.mssql.ManagedInstanceStartStopSchedule("example",
///     managed_instance_id=example_managed_instance.id,
///     timezone_id="Central European Standard Time",
///     schedules=[
///         {
///             "start_day": "Monday",
///             "start_time": "08:00",
///             "stop_day": "Monday",
///             "stop_time": "11:00",
///         },
///         {
///             "start_day": "Tuesday",
///             "start_time": "12:00",
///             "stop_day": "Tuesday",
///             "stop_time": "18:00",
///         },
///     ])
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
///         DisableBgpRoutePropagation = false,
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
///     var exampleManagedInstanceStartStopSchedule = new Azure.MSSql.ManagedInstanceStartStopSchedule("example", new()
///     {
///         ManagedInstanceId = exampleManagedInstance.Id,
///         TimezoneId = "Central European Standard Time",
///         Schedules = new[]
///         {
///             new Azure.MSSql.Inputs.ManagedInstanceStartStopScheduleScheduleArgs
///             {
///                 StartDay = "Monday",
///                 StartTime = "08:00",
///                 StopDay = "Monday",
///                 StopTime = "11:00",
///             },
///             new Azure.MSSql.Inputs.ManagedInstanceStartStopScheduleScheduleArgs
///             {
///                 StartDay = "Tuesday",
///                 StartTime = "12:00",
///                 StopDay = "Tuesday",
///                 StopTime = "18:00",
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
/// 			DisableBgpRoutePropagation: false,
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
/// 		exampleManagedInstance, err := mssql.NewManagedInstance(ctx, "example", &mssql.ManagedInstanceArgs{
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
/// 		_, err = mssql.NewManagedInstanceStartStopSchedule(ctx, "example", &mssql.ManagedInstanceStartStopScheduleArgs{
/// 			ManagedInstanceId: exampleManagedInstance.ID(),
/// 			TimezoneId:        pulumi.String("Central European Standard Time"),
/// 			Schedules: mssql.ManagedInstanceStartStopScheduleScheduleArray{
/// 				&mssql.ManagedInstanceStartStopScheduleScheduleArgs{
/// 					StartDay:  pulumi.String("Monday"),
/// 					StartTime: pulumi.String("08:00"),
/// 					StopDay:   pulumi.String("Monday"),
/// 					StopTime:  pulumi.String("11:00"),
/// 				},
/// 				&mssql.ManagedInstanceStartStopScheduleScheduleArgs{
/// 					StartDay:  pulumi.String("Tuesday"),
/// 					StartTime: pulumi.String("12:00"),
/// 					StopDay:   pulumi.String("Tuesday"),
/// 					StopTime:  pulumi.String("18:00"),
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
/// import com.pulumi.azure.mssql.ManagedInstanceStartStopSchedule;
/// import com.pulumi.azure.mssql.ManagedInstanceStartStopScheduleArgs;
/// import com.pulumi.azure.mssql.inputs.ManagedInstanceStartStopScheduleScheduleArgs;
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
///             .disableBgpRoutePropagation(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(List.of(exampleSubnet))
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
///         var exampleManagedInstanceStartStopSchedule = new ManagedInstanceStartStopSchedule("exampleManagedInstanceStartStopSchedule", ManagedInstanceStartStopScheduleArgs.builder()
///             .managedInstanceId(exampleManagedInstance.id())
///             .timezoneId("Central European Standard Time")
///             .schedules(
///                 ManagedInstanceStartStopScheduleScheduleArgs.builder()
///                     .startDay("Monday")
///                     .startTime("08:00")
///                     .stopDay("Monday")
///                     .stopTime("11:00")
///                     .build(),
///                 ManagedInstanceStartStopScheduleScheduleArgs.builder()
///                     .startDay("Tuesday")
///                     .startTime("12:00")
///                     .stopDay("Tuesday")
///                     .stopTime("18:00")
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
///       disableBgpRoutePropagation: false
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
///   exampleManagedInstanceStartStopSchedule:
///     type: azure:mssql:ManagedInstanceStartStopSchedule
///     name: example
///     properties:
///       managedInstanceId: ${exampleManagedInstance.id}
///       timezoneId: Central European Standard Time
///       schedules:
///         - startDay: Monday
///           startTime: 08:00
///           stopDay: Monday
///           stopTime: 11:00
///         - startDay: Tuesday
///           startTime: 12:00
///           stopDay: Tuesday
///           stopTime: 18:00
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
/// MS SQL Managed Instance Start Stop Schedule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/managedInstanceStartStopSchedule:ManagedInstanceStartStopSchedule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Sql/managedInstances/managedInstance1/startStopSchedules/default
/// ```
class ManagedInstanceStartStopSchedule extends pulumi.CustomResource {
  /// Specifies the description of the schedule.
  late final pulumi.Output<String?> description;
  /// Specifies the ID of the Managed Instance. Changing this forces a new Sql Start Stop Managed Instance Schedule to be created.
  late final pulumi.Output<String> managedInstanceId;
  /// Timestamp when the next action will be executed in the corresponding schedule time zone.
  late final pulumi.Output<String> nextExecutionTime;
  /// Next action to be executed (Start or Stop).
  late final pulumi.Output<String> nextRunAction;
  /// A `schedule` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> schedules;
  /// Specifies the time zone of the schedule. Defaults to `UTC`.
  late final pulumi.Output<String?> timezoneId;

  /// Creates a new [ManagedInstanceStartStopSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstanceStartStopSchedule]. {@macro pulumi_mssql_managed_instance_start_stop_schedule_managed_instance_start_stop_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstanceStartStopSchedule(
    String name, {
    ManagedInstanceStartStopScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedInstanceStartStopSchedule:ManagedInstanceStartStopSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    managedInstanceId = registerOutput<String>('managedInstanceId');
    nextExecutionTime = registerOutput<String>('nextExecutionTime');
    nextRunAction = registerOutput<String>('nextRunAction');
    schedules = registerOutput<List<Map<String, dynamic>>>('schedules');
    timezoneId = registerOutput<String?>('timezoneId');
  }

  /// Gets an existing [ManagedInstanceStartStopSchedule] resource's state with the given [name] and [id].
  static ManagedInstanceStartStopSchedule get(
    String name,
    pulumi.Input<String> id, {
    ManagedInstanceStartStopScheduleState? state,
  }) {
    return ManagedInstanceStartStopSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedInstanceStartStopSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedInstanceStartStopSchedule:ManagedInstanceStartStopSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    managedInstanceId = registerOutput<String>('managedInstanceId');
    nextExecutionTime = registerOutput<String>('nextExecutionTime');
    nextRunAction = registerOutput<String>('nextRunAction');
    schedules = registerOutput<List<Map<String, dynamic>>>('schedules');
    timezoneId = registerOutput<String?>('timezoneId');
  }
}

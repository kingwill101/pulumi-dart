import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_failover_group_args.dart';
import 'managed_instance_failover_group_read_write_endpoint_failover_policy.dart';
import 'managed_instance_failover_group_state.dart';

/// Manages an Azure SQL Managed Instance Failover Group.
///
/// ## Example Usage
///
/// &gt; **Note:** For a more complete example, see the `./examples/sql-azure/managed_instance_failover_group` directory within the GitHub Repository.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const name = "mymssqlmitest";
/// const primaryName = `${name}-primary`;
/// const primaryLocation = "West Europe";
/// const failoverName = `${name}-failover`;
/// const failoverLocation = "North Europe";
/// //# Primary SQL Managed Instance
/// const primary = new azure.core.ResourceGroup("primary", {
///     name: primaryName,
///     location: primaryLocation,
/// });
/// const exampleZone = new azure.privatedns.Zone("example", {
///     name: `${name}.private`,
///     resourceGroupName: primary.name,
/// });
/// const primaryVirtualNetwork = new azure.network.VirtualNetwork("primary", {
///     name: primaryName,
///     location: primary.location,
///     resourceGroupName: primary.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const primaryZoneVirtualNetworkLink = new azure.privatedns.ZoneVirtualNetworkLink("primary", {
///     name: "primary-link",
///     resourceGroupName: primary.name,
///     privateDnsZoneName: exampleZone.name,
///     virtualNetworkId: primaryVirtualNetwork.id,
/// });
/// const primarySubnet = new azure.network.Subnet("primary", {
///     name: primaryName,
///     resourceGroupName: primary.name,
///     virtualNetworkName: primaryVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             actions: [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///             name: "Microsoft.Sql/managedInstances",
///         },
///     }],
/// });
/// const primaryNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("primary", {
///     name: primaryName,
///     location: primary.location,
///     resourceGroupName: primary.name,
/// });
/// const primarySubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("primary", {
///     subnetId: primarySubnet.id,
///     networkSecurityGroupId: primaryNetworkSecurityGroup.id,
/// });
/// const primaryRouteTable = new azure.network.RouteTable("primary", {
///     name: primaryName,
///     location: primary.location,
///     resourceGroupName: primary.name,
/// });
/// const primarySubnetRouteTableAssociation = new azure.network.SubnetRouteTableAssociation("primary", {
///     subnetId: primarySubnet.id,
///     routeTableId: primaryRouteTable.id,
/// });
/// const primaryManagedInstance = new azure.mssql.ManagedInstance("primary", {
///     name: primaryName,
///     resourceGroupName: primary.name,
///     location: primary.location,
///     administratorLogin: "mradministrator",
///     administratorLoginPassword: "thisIsDog11",
///     licenseType: "BasePrice",
///     subnetId: primarySubnet.id,
///     skuName: "GP_Gen5",
///     vcores: 4,
///     storageSizeInGb: 32,
/// }, {
///     dependsOn: [
///         primarySubnetNetworkSecurityGroupAssociation,
///         primarySubnetRouteTableAssociation,
///     ],
/// });
/// //# Secondary (Fail-over) SQL Managed Instance
/// const failover = new azure.core.ResourceGroup("failover", {
///     name: failoverName,
///     location: failoverLocation,
/// });
/// const failoverVirtualNetwork = new azure.network.VirtualNetwork("failover", {
///     name: failoverName,
///     location: failover.location,
///     resourceGroupName: failover.name,
///     addressSpaces: ["10.1.0.0/16"],
/// });
/// const failoverZoneVirtualNetworkLink = new azure.privatedns.ZoneVirtualNetworkLink("failover", {
///     name: "failover-link",
///     resourceGroupName: exampleZone.resourceGroupName,
///     privateDnsZoneName: exampleZone.name,
///     virtualNetworkId: failoverVirtualNetwork.id,
/// });
/// const failoverSubnet = new azure.network.Subnet("failover", {
///     name: "ManagedInstance",
///     resourceGroupName: failover.name,
///     virtualNetworkName: failoverVirtualNetwork.name,
///     addressPrefixes: ["10.1.1.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             actions: [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///             name: "Microsoft.Sql/managedInstances",
///         },
///     }],
/// });
/// const failoverNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("failover", {
///     name: failoverName,
///     location: failover.location,
///     resourceGroupName: failover.name,
/// });
/// const failoverSubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("failover", {
///     subnetId: failoverSubnet.id,
///     networkSecurityGroupId: failoverNetworkSecurityGroup.id,
/// });
/// const failoverRouteTable = new azure.network.RouteTable("failover", {
///     name: failoverName,
///     location: failover.location,
///     resourceGroupName: failover.name,
/// });
/// const failoverSubnetRouteTableAssociation = new azure.network.SubnetRouteTableAssociation("failover", {
///     subnetId: failoverSubnet.id,
///     routeTableId: failoverRouteTable.id,
/// });
/// const failoverManagedInstance = new azure.mssql.ManagedInstance("failover", {
///     name: failoverName,
///     resourceGroupName: failover.name,
///     location: failover.location,
///     administratorLogin: "mradministrator",
///     administratorLoginPassword: "thisIsDog11",
///     licenseType: "BasePrice",
///     subnetId: failoverSubnet.id,
///     skuName: "GP_Gen5",
///     vcores: 4,
///     storageSizeInGb: 32,
///     dnsZonePartnerId: primaryManagedInstance.id,
/// }, {
///     dependsOn: [
///         failoverSubnetNetworkSecurityGroupAssociation,
///         failoverSubnetRouteTableAssociation,
///     ],
/// });
/// const example = new azure.mssql.ManagedInstanceFailoverGroup("example", {
///     name: "example-failover-group",
///     location: primaryManagedInstance.location,
///     managedInstanceId: primaryManagedInstance.id,
///     partnerManagedInstanceId: failoverManagedInstance.id,
///     secondaryType: "Geo",
///     readWriteEndpointFailoverPolicy: {
///         mode: "Automatic",
///         graceMinutes: 60,
///     },
/// }, {
///     dependsOn: [
///         primaryZoneVirtualNetworkLink,
///         failoverZoneVirtualNetworkLink,
///     ],
/// });
/// const primaryToFailover = new azure.network.VirtualNetworkPeering("primary_to_failover", {
///     name: "primary-to-failover",
///     remoteVirtualNetworkId: failoverVirtualNetwork.id,
///     resourceGroupName: primary.name,
///     virtualNetworkName: primaryVirtualNetwork.name,
/// });
/// const _default = new azure.network.Subnet("default", {
///     name: "default",
///     resourceGroupName: failover.name,
///     virtualNetworkName: failoverVirtualNetwork.name,
///     addressPrefixes: ["10.1.0.0/24"],
/// });
/// const failoverToPrimary = new azure.network.VirtualNetworkPeering("failover_to_primary", {
///     name: "failover-to-primary",
///     remoteVirtualNetworkId: primaryVirtualNetwork.id,
///     resourceGroupName: failover.name,
///     virtualNetworkName: failoverVirtualNetwork.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// name = "mymssqlmitest"
/// primary_name = f"{name}-primary"
/// primary_location = "West Europe"
/// failover_name = f"{name}-failover"
/// failover_location = "North Europe"
/// ## Primary SQL Managed Instance
/// primary = azure.core.ResourceGroup("primary",
///     name=primary_name,
///     location=primary_location)
/// example_zone = azure.privatedns.Zone("example",
///     name=f"{name}.private",
///     resource_group_name=primary.name)
/// primary_virtual_network = azure.network.VirtualNetwork("primary",
///     name=primary_name,
///     location=primary.location,
///     resource_group_name=primary.name,
///     address_spaces=["10.0.0.0/16"])
/// primary_zone_virtual_network_link = azure.privatedns.ZoneVirtualNetworkLink("primary",
///     name="primary-link",
///     resource_group_name=primary.name,
///     private_dns_zone_name=example_zone.name,
///     virtual_network_id=primary_virtual_network.id)
/// primary_subnet = azure.network.Subnet("primary",
///     name=primary_name,
///     resource_group_name=primary.name,
///     virtual_network_name=primary_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "actions": [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///             "name": "Microsoft.Sql/managedInstances",
///         },
///     }])
/// primary_network_security_group = azure.network.NetworkSecurityGroup("primary",
///     name=primary_name,
///     location=primary.location,
///     resource_group_name=primary.name)
/// primary_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("primary",
///     subnet_id=primary_subnet.id,
///     network_security_group_id=primary_network_security_group.id)
/// primary_route_table = azure.network.RouteTable("primary",
///     name=primary_name,
///     location=primary.location,
///     resource_group_name=primary.name)
/// primary_subnet_route_table_association = azure.network.SubnetRouteTableAssociation("primary",
///     subnet_id=primary_subnet.id,
///     route_table_id=primary_route_table.id)
/// primary_managed_instance = azure.mssql.ManagedInstance("primary",
///     name=primary_name,
///     resource_group_name=primary.name,
///     location=primary.location,
///     administrator_login="mradministrator",
///     administrator_login_password="thisIsDog11",
///     license_type="BasePrice",
///     subnet_id=primary_subnet.id,
///     sku_name="GP_Gen5",
///     vcores=4,
///     storage_size_in_gb=32,
///     opts = pulumi.ResourceOptions(depends_on=[
///             primary_subnet_network_security_group_association,
///             primary_subnet_route_table_association,
///         ]))
/// ## Secondary (Fail-over) SQL Managed Instance
/// failover = azure.core.ResourceGroup("failover",
///     name=failover_name,
///     location=failover_location)
/// failover_virtual_network = azure.network.VirtualNetwork("failover",
///     name=failover_name,
///     location=failover.location,
///     resource_group_name=failover.name,
///     address_spaces=["10.1.0.0/16"])
/// failover_zone_virtual_network_link = azure.privatedns.ZoneVirtualNetworkLink("failover",
///     name="failover-link",
///     resource_group_name=example_zone.resource_group_name,
///     private_dns_zone_name=example_zone.name,
///     virtual_network_id=failover_virtual_network.id)
/// failover_subnet = azure.network.Subnet("failover",
///     name="ManagedInstance",
///     resource_group_name=failover.name,
///     virtual_network_name=failover_virtual_network.name,
///     address_prefixes=["10.1.1.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "actions": [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                 "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///             ],
///             "name": "Microsoft.Sql/managedInstances",
///         },
///     }])
/// failover_network_security_group = azure.network.NetworkSecurityGroup("failover",
///     name=failover_name,
///     location=failover.location,
///     resource_group_name=failover.name)
/// failover_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("failover",
///     subnet_id=failover_subnet.id,
///     network_security_group_id=failover_network_security_group.id)
/// failover_route_table = azure.network.RouteTable("failover",
///     name=failover_name,
///     location=failover.location,
///     resource_group_name=failover.name)
/// failover_subnet_route_table_association = azure.network.SubnetRouteTableAssociation("failover",
///     subnet_id=failover_subnet.id,
///     route_table_id=failover_route_table.id)
/// failover_managed_instance = azure.mssql.ManagedInstance("failover",
///     name=failover_name,
///     resource_group_name=failover.name,
///     location=failover.location,
///     administrator_login="mradministrator",
///     administrator_login_password="thisIsDog11",
///     license_type="BasePrice",
///     subnet_id=failover_subnet.id,
///     sku_name="GP_Gen5",
///     vcores=4,
///     storage_size_in_gb=32,
///     dns_zone_partner_id=primary_managed_instance.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             failover_subnet_network_security_group_association,
///             failover_subnet_route_table_association,
///         ]))
/// example = azure.mssql.ManagedInstanceFailoverGroup("example",
///     name="example-failover-group",
///     location=primary_managed_instance.location,
///     managed_instance_id=primary_managed_instance.id,
///     partner_managed_instance_id=failover_managed_instance.id,
///     secondary_type="Geo",
///     read_write_endpoint_failover_policy={
///         "mode": "Automatic",
///         "grace_minutes": 60,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             primary_zone_virtual_network_link,
///             failover_zone_virtual_network_link,
///         ]))
/// primary_to_failover = azure.network.VirtualNetworkPeering("primary_to_failover",
///     name="primary-to-failover",
///     remote_virtual_network_id=failover_virtual_network.id,
///     resource_group_name=primary.name,
///     virtual_network_name=primary_virtual_network.name)
/// default = azure.network.Subnet("default",
///     name="default",
///     resource_group_name=failover.name,
///     virtual_network_name=failover_virtual_network.name,
///     address_prefixes=["10.1.0.0/24"])
/// failover_to_primary = azure.network.VirtualNetworkPeering("failover_to_primary",
///     name="failover-to-primary",
///     remote_virtual_network_id=primary_virtual_network.id,
///     resource_group_name=failover.name,
///     virtual_network_name=failover_virtual_network.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var name = "mymssqlmitest";
///
///     var primaryName = $"{name}-primary";
///
///     var primaryLocation = "West Europe";
///
///     var failoverName = $"{name}-failover";
///
///     var failoverLocation = "North Europe";
///
///     //# Primary SQL Managed Instance
///     var primary = new Azure.Core.ResourceGroup("primary", new()
///     {
///         Name = primaryName,
///         Location = primaryLocation,
///     });
///
///     var exampleZone = new Azure.PrivateDns.Zone("example", new()
///     {
///         Name = $"{name}.private",
///         ResourceGroupName = primary.Name,
///     });
///
///     var primaryVirtualNetwork = new Azure.Network.VirtualNetwork("primary", new()
///     {
///         Name = primaryName,
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var primaryZoneVirtualNetworkLink = new Azure.PrivateDns.ZoneVirtualNetworkLink("primary", new()
///     {
///         Name = "primary-link",
///         ResourceGroupName = primary.Name,
///         PrivateDnsZoneName = exampleZone.Name,
///         VirtualNetworkId = primaryVirtualNetwork.Id,
///     });
///
///     var primarySubnet = new Azure.Network.Subnet("primary", new()
///     {
///         Name = primaryName,
///         ResourceGroupName = primary.Name,
///         VirtualNetworkName = primaryVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///                     },
///                     Name = "Microsoft.Sql/managedInstances",
///                 },
///             },
///         },
///     });
///
///     var primaryNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("primary", new()
///     {
///         Name = primaryName,
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///     });
///
///     var primarySubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("primary", new()
///     {
///         SubnetId = primarySubnet.Id,
///         NetworkSecurityGroupId = primaryNetworkSecurityGroup.Id,
///     });
///
///     var primaryRouteTable = new Azure.Network.RouteTable("primary", new()
///     {
///         Name = primaryName,
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///     });
///
///     var primarySubnetRouteTableAssociation = new Azure.Network.SubnetRouteTableAssociation("primary", new()
///     {
///         SubnetId = primarySubnet.Id,
///         RouteTableId = primaryRouteTable.Id,
///     });
///
///     var primaryManagedInstance = new Azure.MSSql.ManagedInstance("primary", new()
///     {
///         Name = primaryName,
///         ResourceGroupName = primary.Name,
///         Location = primary.Location,
///         AdministratorLogin = "mradministrator",
///         AdministratorLoginPassword = "thisIsDog11",
///         LicenseType = "BasePrice",
///         SubnetId = primarySubnet.Id,
///         SkuName = "GP_Gen5",
///         Vcores = 4,
///         StorageSizeInGb = 32,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primarySubnetNetworkSecurityGroupAssociation,
///             primarySubnetRouteTableAssociation,
///         },
///     });
///
///     //# Secondary (Fail-over) SQL Managed Instance
///     var failover = new Azure.Core.ResourceGroup("failover", new()
///     {
///         Name = failoverName,
///         Location = failoverLocation,
///     });
///
///     var failoverVirtualNetwork = new Azure.Network.VirtualNetwork("failover", new()
///     {
///         Name = failoverName,
///         Location = failover.Location,
///         ResourceGroupName = failover.Name,
///         AddressSpaces = new[]
///         {
///             "10.1.0.0/16",
///         },
///     });
///
///     var failoverZoneVirtualNetworkLink = new Azure.PrivateDns.ZoneVirtualNetworkLink("failover", new()
///     {
///         Name = "failover-link",
///         ResourceGroupName = exampleZone.ResourceGroupName,
///         PrivateDnsZoneName = exampleZone.Name,
///         VirtualNetworkId = failoverVirtualNetwork.Id,
///     });
///
///     var failoverSubnet = new Azure.Network.Subnet("failover", new()
///     {
///         Name = "ManagedInstance",
///         ResourceGroupName = failover.Name,
///         VirtualNetworkName = failoverVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.1.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
///                     },
///                     Name = "Microsoft.Sql/managedInstances",
///                 },
///             },
///         },
///     });
///
///     var failoverNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("failover", new()
///     {
///         Name = failoverName,
///         Location = failover.Location,
///         ResourceGroupName = failover.Name,
///     });
///
///     var failoverSubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("failover", new()
///     {
///         SubnetId = failoverSubnet.Id,
///         NetworkSecurityGroupId = failoverNetworkSecurityGroup.Id,
///     });
///
///     var failoverRouteTable = new Azure.Network.RouteTable("failover", new()
///     {
///         Name = failoverName,
///         Location = failover.Location,
///         ResourceGroupName = failover.Name,
///     });
///
///     var failoverSubnetRouteTableAssociation = new Azure.Network.SubnetRouteTableAssociation("failover", new()
///     {
///         SubnetId = failoverSubnet.Id,
///         RouteTableId = failoverRouteTable.Id,
///     });
///
///     var failoverManagedInstance = new Azure.MSSql.ManagedInstance("failover", new()
///     {
///         Name = failoverName,
///         ResourceGroupName = failover.Name,
///         Location = failover.Location,
///         AdministratorLogin = "mradministrator",
///         AdministratorLoginPassword = "thisIsDog11",
///         LicenseType = "BasePrice",
///         SubnetId = failoverSubnet.Id,
///         SkuName = "GP_Gen5",
///         Vcores = 4,
///         StorageSizeInGb = 32,
///         DnsZonePartnerId = primaryManagedInstance.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             failoverSubnetNetworkSecurityGroupAssociation,
///             failoverSubnetRouteTableAssociation,
///         },
///     });
///
///     var example = new Azure.MSSql.ManagedInstanceFailoverGroup("example", new()
///     {
///         Name = "example-failover-group",
///         Location = primaryManagedInstance.Location,
///         ManagedInstanceId = primaryManagedInstance.Id,
///         PartnerManagedInstanceId = failoverManagedInstance.Id,
///         SecondaryType = "Geo",
///         ReadWriteEndpointFailoverPolicy = new Azure.MSSql.Inputs.ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicyArgs
///         {
///             Mode = "Automatic",
///             GraceMinutes = 60,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryZoneVirtualNetworkLink,
///             failoverZoneVirtualNetworkLink,
///         },
///     });
///
///     var primaryToFailover = new Azure.Network.VirtualNetworkPeering("primary_to_failover", new()
///     {
///         Name = "primary-to-failover",
///         RemoteVirtualNetworkId = failoverVirtualNetwork.Id,
///         ResourceGroupName = primary.Name,
///         VirtualNetworkName = primaryVirtualNetwork.Name,
///     });
///
///     var @default = new Azure.Network.Subnet("default", new()
///     {
///         Name = "default",
///         ResourceGroupName = failover.Name,
///         VirtualNetworkName = failoverVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.1.0.0/24",
///         },
///     });
///
///     var failoverToPrimary = new Azure.Network.VirtualNetworkPeering("failover_to_primary", new()
///     {
///         Name = "failover-to-primary",
///         RemoteVirtualNetworkId = primaryVirtualNetwork.Id,
///         ResourceGroupName = failover.Name,
///         VirtualNetworkName = failoverVirtualNetwork.Name,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		name := "mymssqlmitest"
/// 		primaryName := fmt.Sprintf("%v-primary", name)
/// 		primaryLocation := "West Europe"
/// 		failoverName := fmt.Sprintf("%v-failover", name)
/// 		failoverLocation := "North Europe"
/// 		// # Primary SQL Managed Instance
/// 		primary, err := core.NewResourceGroup(ctx, "primary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String(primaryName),
/// 			Location: pulumi.String(primaryLocation),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := privatedns.NewZone(ctx, "example", &privatedns.ZoneArgs{
/// 			Name:              pulumi.Sprintf("%v.private", name),
/// 			ResourceGroupName: primary.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryVirtualNetwork, err := network.NewVirtualNetwork(ctx, "primary", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String(primaryName),
/// 			Location:          primary.Location,
/// 			ResourceGroupName: primary.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryZoneVirtualNetworkLink, err := privatedns.NewZoneVirtualNetworkLink(ctx, "primary", &privatedns.ZoneVirtualNetworkLinkArgs{
/// 			Name:               pulumi.String("primary-link"),
/// 			ResourceGroupName:  primary.Name,
/// 			PrivateDnsZoneName: exampleZone.Name,
/// 			VirtualNetworkId:   primaryVirtualNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primarySubnet, err := network.NewSubnet(ctx, "primary", &network.SubnetArgs{
/// 			Name:               pulumi.String(primaryName),
/// 			ResourceGroupName:  primary.Name,
/// 			VirtualNetworkName: primaryVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"),
/// 						},
/// 						Name: pulumi.String("Microsoft.Sql/managedInstances"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "primary", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String(primaryName),
/// 			Location:          primary.Location,
/// 			ResourceGroupName: primary.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primarySubnetNetworkSecurityGroupAssociation, err := network.NewSubnetNetworkSecurityGroupAssociation(ctx, "primary", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// 			SubnetId:               primarySubnet.ID(),
/// 			NetworkSecurityGroupId: primaryNetworkSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryRouteTable, err := network.NewRouteTable(ctx, "primary", &network.RouteTableArgs{
/// 			Name:              pulumi.String(primaryName),
/// 			Location:          primary.Location,
/// 			ResourceGroupName: primary.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primarySubnetRouteTableAssociation, err := network.NewSubnetRouteTableAssociation(ctx, "primary", &network.SubnetRouteTableAssociationArgs{
/// 			SubnetId:     primarySubnet.ID(),
/// 			RouteTableId: primaryRouteTable.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryManagedInstance, err := mssql.NewManagedInstance(ctx, "primary", &mssql.ManagedInstanceArgs{
/// 			Name:                       pulumi.String(primaryName),
/// 			ResourceGroupName:          primary.Name,
/// 			Location:                   primary.Location,
/// 			AdministratorLogin:         pulumi.String("mradministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsDog11"),
/// 			LicenseType:                pulumi.String("BasePrice"),
/// 			SubnetId:                   primarySubnet.ID(),
/// 			SkuName:                    pulumi.String("GP_Gen5"),
/// 			Vcores:                     pulumi.Int(4),
/// 			StorageSizeInGb:            pulumi.Int(32),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primarySubnetNetworkSecurityGroupAssociation,
/// 			primarySubnetRouteTableAssociation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// # Secondary (Fail-over) SQL Managed Instance
/// 		failover, err := core.NewResourceGroup(ctx, "failover", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String(failoverName),
/// 			Location: pulumi.String(failoverLocation),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		failoverVirtualNetwork, err := network.NewVirtualNetwork(ctx, "failover", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String(failoverName),
/// 			Location:          failover.Location,
/// 			ResourceGroupName: failover.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		failoverZoneVirtualNetworkLink, err := privatedns.NewZoneVirtualNetworkLink(ctx, "failover", &privatedns.ZoneVirtualNetworkLinkArgs{
/// 			Name:               pulumi.String("failover-link"),
/// 			ResourceGroupName:  exampleZone.ResourceGroupName,
/// 			PrivateDnsZoneName: exampleZone.Name,
/// 			VirtualNetworkId:   failoverVirtualNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		failoverSubnet, err := network.NewSubnet(ctx, "failover", &network.SubnetArgs{
/// 			Name:               pulumi.String("ManagedInstance"),
/// 			ResourceGroupName:  failover.Name,
/// 			VirtualNetworkName: failoverVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.1.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"),
/// 						},
/// 						Name: pulumi.String("Microsoft.Sql/managedInstances"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		failoverNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "failover", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String(failoverName),
/// 			Location:          failover.Location,
/// 			ResourceGroupName: failover.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		failoverSubnetNetworkSecurityGroupAssociation, err := network.NewSubnetNetworkSecurityGroupAssociation(ctx, "failover", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// 			SubnetId:               failoverSubnet.ID(),
/// 			NetworkSecurityGroupId: failoverNetworkSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		failoverRouteTable, err := network.NewRouteTable(ctx, "failover", &network.RouteTableArgs{
/// 			Name:              pulumi.String(failoverName),
/// 			Location:          failover.Location,
/// 			ResourceGroupName: failover.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		failoverSubnetRouteTableAssociation, err := network.NewSubnetRouteTableAssociation(ctx, "failover", &network.SubnetRouteTableAssociationArgs{
/// 			SubnetId:     failoverSubnet.ID(),
/// 			RouteTableId: failoverRouteTable.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		failoverManagedInstance, err := mssql.NewManagedInstance(ctx, "failover", &mssql.ManagedInstanceArgs{
/// 			Name:                       pulumi.String(failoverName),
/// 			ResourceGroupName:          failover.Name,
/// 			Location:                   failover.Location,
/// 			AdministratorLogin:         pulumi.String("mradministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsDog11"),
/// 			LicenseType:                pulumi.String("BasePrice"),
/// 			SubnetId:                   failoverSubnet.ID(),
/// 			SkuName:                    pulumi.String("GP_Gen5"),
/// 			Vcores:                     pulumi.Int(4),
/// 			StorageSizeInGb:            pulumi.Int(32),
/// 			DnsZonePartnerId:           primaryManagedInstance.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			failoverSubnetNetworkSecurityGroupAssociation,
/// 			failoverSubnetRouteTableAssociation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewManagedInstanceFailoverGroup(ctx, "example", &mssql.ManagedInstanceFailoverGroupArgs{
/// 			Name:                     pulumi.String("example-failover-group"),
/// 			Location:                 primaryManagedInstance.Location,
/// 			ManagedInstanceId:        primaryManagedInstance.ID(),
/// 			PartnerManagedInstanceId: failoverManagedInstance.ID(),
/// 			SecondaryType:            pulumi.String("Geo"),
/// 			ReadWriteEndpointFailoverPolicy: &mssql.ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicyArgs{
/// 				Mode:         pulumi.String("Automatic"),
/// 				GraceMinutes: pulumi.Int(60),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryZoneVirtualNetworkLink,
/// 			failoverZoneVirtualNetworkLink,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkPeering(ctx, "primary_to_failover", &network.VirtualNetworkPeeringArgs{
/// 			Name:                   pulumi.String("primary-to-failover"),
/// 			RemoteVirtualNetworkId: failoverVirtualNetwork.ID(),
/// 			ResourceGroupName:      primary.Name,
/// 			VirtualNetworkName:     primaryVirtualNetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnet(ctx, "default", &network.SubnetArgs{
/// 			Name:               pulumi.String("default"),
/// 			ResourceGroupName:  failover.Name,
/// 			VirtualNetworkName: failoverVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkPeering(ctx, "failover_to_primary", &network.VirtualNetworkPeeringArgs{
/// 			Name:                   pulumi.String("failover-to-primary"),
/// 			RemoteVirtualNetworkId: primaryVirtualNetwork.ID(),
/// 			ResourceGroupName:      failover.Name,
/// 			VirtualNetworkName:     failoverVirtualNetwork.Name,
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
/// resource "azure_mssql_managedinstancefailovergroup" "example" {
///   depends_on                  = [azure_privatedns_zonevirtualnetworklink.primary, azure_privatedns_zonevirtualnetworklink.failover]
///   name                        = "example-failover-group"
///   location                    = azure_mssql_managedinstance.primary.location
///   managed_instance_id         = azure_mssql_managedinstance.primary.id
///   partner_managed_instance_id = azure_mssql_managedinstance.failover.id
///   secondary_type              = "Geo"
///   read_write_endpoint_failover_policy = {
///     mode          = "Automatic"
///     grace_minutes = 60
///   }
/// }
/// resource "azure_privatedns_zone" "example" {
///   name                ="${local.name}.private"
///   resource_group_name = azure_core_resourcegroup.primary.name
/// }
/// ## Primary SQL Managed Instance
/// resource "azure_core_resourcegroup" "primary" {
///   name     = local.primaryName
///   location = local.primaryLocation
/// }
/// resource "azure_network_virtualnetwork" "primary" {
///   name                = local.primaryName
///   location            = azure_core_resourcegroup.primary.location
///   resource_group_name = azure_core_resourcegroup.primary.name
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_privatedns_zonevirtualnetworklink" "primary" {
///   name                  = "primary-link"
///   resource_group_name   = azure_core_resourcegroup.primary.name
///   private_dns_zone_name = azure_privatedns_zone.example.name
///   virtual_network_id    = azure_network_virtualnetwork.primary.id
/// }
/// resource "azure_network_subnet" "primary" {
///   name                 = local.primaryName
///   resource_group_name  = azure_core_resourcegroup.primary.name
///   virtual_network_name = azure_network_virtualnetwork.primary.name
///   address_prefixes     = ["10.0.1.0/24"]
///   delegations {
///     name = "delegation"
///     service_delegation = {
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
///       name    = "Microsoft.Sql/managedInstances"
///     }
///   }
/// }
/// resource "azure_network_networksecuritygroup" "primary" {
///   name                = local.primaryName
///   location            = azure_core_resourcegroup.primary.location
///   resource_group_name = azure_core_resourcegroup.primary.name
/// }
/// resource "azure_network_subnetnetworksecuritygroupassociation" "primary" {
///   subnet_id                 = azure_network_subnet.primary.id
///   network_security_group_id = azure_network_networksecuritygroup.primary.id
/// }
/// resource "azure_network_routetable" "primary" {
///   name                = local.primaryName
///   location            = azure_core_resourcegroup.primary.location
///   resource_group_name = azure_core_resourcegroup.primary.name
/// }
/// resource "azure_network_subnetroutetableassociation" "primary" {
///   subnet_id      = azure_network_subnet.primary.id
///   route_table_id = azure_network_routetable.primary.id
/// }
/// resource "azure_mssql_managedinstance" "primary" {
///   depends_on                   = [azure_network_subnetnetworksecuritygroupassociation.primary, azure_network_subnetroutetableassociation.primary]
///   name                         = local.primaryName
///   resource_group_name          = azure_core_resourcegroup.primary.name
///   location                     = azure_core_resourcegroup.primary.location
///   administrator_login          = "mradministrator"
///   administrator_login_password = "thisIsDog11"
///   license_type                 = "BasePrice"
///   subnet_id                    = azure_network_subnet.primary.id
///   sku_name                     = "GP_Gen5"
///   vcores                       = 4
///   storage_size_in_gb           = 32
/// }
/// resource "azure_network_virtualnetworkpeering" "primary_to_failover" {
///   name                      = "primary-to-failover"
///   remote_virtual_network_id = azure_network_virtualnetwork.failover.id
///   resource_group_name       = azure_core_resourcegroup.primary.name
///   virtual_network_name      = azure_network_virtualnetwork.primary.name
/// }
/// ## Secondary (Fail-over) SQL Managed Instance
/// resource "azure_core_resourcegroup" "failover" {
///   name     = local.failoverName
///   location = local.failoverLocation
/// }
/// resource "azure_network_virtualnetwork" "failover" {
///   name                = local.failoverName
///   location            = azure_core_resourcegroup.failover.location
///   resource_group_name = azure_core_resourcegroup.failover.name
///   address_spaces      = ["10.1.0.0/16"]
/// }
/// resource "azure_privatedns_zonevirtualnetworklink" "failover" {
///   name                  = "failover-link"
///   resource_group_name   = azure_privatedns_zone.example.resource_group_name
///   private_dns_zone_name = azure_privatedns_zone.example.name
///   virtual_network_id    = azure_network_virtualnetwork.failover.id
/// }
/// resource "azure_network_subnet" "default" {
///   name                 = "default"
///   resource_group_name  = azure_core_resourcegroup.failover.name
///   virtual_network_name = azure_network_virtualnetwork.failover.name
///   address_prefixes     = ["10.1.0.0/24"]
/// }
/// resource "azure_network_subnet" "failover" {
///   name                 = "ManagedInstance"
///   resource_group_name  = azure_core_resourcegroup.failover.name
///   virtual_network_name = azure_network_virtualnetwork.failover.name
///   address_prefixes     = ["10.1.1.0/24"]
///   delegations {
///     name = "delegation"
///     service_delegation = {
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
///       name    = "Microsoft.Sql/managedInstances"
///     }
///   }
/// }
/// resource "azure_network_networksecuritygroup" "failover" {
///   name                = local.failoverName
///   location            = azure_core_resourcegroup.failover.location
///   resource_group_name = azure_core_resourcegroup.failover.name
/// }
/// resource "azure_network_subnetnetworksecuritygroupassociation" "failover" {
///   subnet_id                 = azure_network_subnet.failover.id
///   network_security_group_id = azure_network_networksecuritygroup.failover.id
/// }
/// resource "azure_network_routetable" "failover" {
///   name                = local.failoverName
///   location            = azure_core_resourcegroup.failover.location
///   resource_group_name = azure_core_resourcegroup.failover.name
/// }
/// resource "azure_network_subnetroutetableassociation" "failover" {
///   subnet_id      = azure_network_subnet.failover.id
///   route_table_id = azure_network_routetable.failover.id
/// }
/// resource "azure_mssql_managedinstance" "failover" {
///   depends_on                   = [azure_network_subnetnetworksecuritygroupassociation.failover, azure_network_subnetroutetableassociation.failover]
///   name                         = local.failoverName
///   resource_group_name          = azure_core_resourcegroup.failover.name
///   location                     = azure_core_resourcegroup.failover.location
///   administrator_login          = "mradministrator"
///   administrator_login_password = "thisIsDog11"
///   license_type                 = "BasePrice"
///   subnet_id                    = azure_network_subnet.failover.id
///   sku_name                     = "GP_Gen5"
///   vcores                       = 4
///   storage_size_in_gb           = 32
///   dns_zone_partner_id          = azure_mssql_managedinstance.primary.id
/// }
/// resource "azure_network_virtualnetworkpeering" "failover_to_primary" {
///   name                      = "failover-to-primary"
///   remote_virtual_network_id = azure_network_virtualnetwork.primary.id
///   resource_group_name       = azure_core_resourcegroup.failover.name
///   virtual_network_name      = azure_network_virtualnetwork.failover.name
/// }
/// locals {
///   name = "mymssqlmitest"
/// }
/// locals {
///   primaryName ="${local.name}-primary"
/// }
/// locals {
///   primaryLocation = "West Europe"
/// }
/// locals {
///   failoverName ="${local.name}-failover"
/// }
/// locals {
///   failoverLocation = "North Europe"
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
/// import com.pulumi.azure.privatedns.Zone;
/// import com.pulumi.azure.privatedns.ZoneArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.privatedns.ZoneVirtualNetworkLink;
/// import com.pulumi.azure.privatedns.ZoneVirtualNetworkLinkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociation;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociationArgs;
/// import com.pulumi.azure.network.RouteTable;
/// import com.pulumi.azure.network.RouteTableArgs;
/// import com.pulumi.azure.network.SubnetRouteTableAssociation;
/// import com.pulumi.azure.network.SubnetRouteTableAssociationArgs;
/// import com.pulumi.azure.mssql.ManagedInstance;
/// import com.pulumi.azure.mssql.ManagedInstanceArgs;
/// import com.pulumi.azure.mssql.ManagedInstanceFailoverGroup;
/// import com.pulumi.azure.mssql.ManagedInstanceFailoverGroupArgs;
/// import com.pulumi.azure.mssql.inputs.ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicyArgs;
/// import com.pulumi.azure.network.VirtualNetworkPeering;
/// import com.pulumi.azure.network.VirtualNetworkPeeringArgs;
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
///         final var name = "mymssqlmitest";
///
///         final var primaryName = String.format("%s-primary", name);
///
///         final var primaryLocation = "West Europe";
///
///         final var failoverName = String.format("%s-failover", name);
///
///         final var failoverLocation = "North Europe";
///
///         //# Primary SQL Managed Instance
///         var primary = new ResourceGroup("primary", ResourceGroupArgs.builder()
///             .name(primaryName)
///             .location(primaryLocation)
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name(String.format("%s.private", name))
///             .resourceGroupName(primary.name())
///             .build());
///
///         var primaryVirtualNetwork = new VirtualNetwork("primaryVirtualNetwork", VirtualNetworkArgs.builder()
///             .name(primaryName)
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var primaryZoneVirtualNetworkLink = new ZoneVirtualNetworkLink("primaryZoneVirtualNetworkLink", ZoneVirtualNetworkLinkArgs.builder()
///             .name("primary-link")
///             .resourceGroupName(primary.name())
///             .privateDnsZoneName(exampleZone.name())
///             .virtualNetworkId(primaryVirtualNetwork.id())
///             .build());
///
///         var primarySubnet = new Subnet("primarySubnet", SubnetArgs.builder()
///             .name(primaryName)
///             .resourceGroupName(primary.name())
///             .virtualNetworkName(primaryVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .actions(
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action")
///                     .name("Microsoft.Sql/managedInstances")
///                     .build())
///                 .build())
///             .build());
///
///         var primaryNetworkSecurityGroup = new NetworkSecurityGroup("primaryNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name(primaryName)
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .build());
///
///         var primarySubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("primarySubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(primarySubnet.id())
///             .networkSecurityGroupId(primaryNetworkSecurityGroup.id())
///             .build());
///
///         var primaryRouteTable = new RouteTable("primaryRouteTable", RouteTableArgs.builder()
///             .name(primaryName)
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .build());
///
///         var primarySubnetRouteTableAssociation = new SubnetRouteTableAssociation("primarySubnetRouteTableAssociation", SubnetRouteTableAssociationArgs.builder()
///             .subnetId(primarySubnet.id())
///             .routeTableId(primaryRouteTable.id())
///             .build());
///
///         var primaryManagedInstance = new ManagedInstance("primaryManagedInstance", ManagedInstanceArgs.builder()
///             .name(primaryName)
///             .resourceGroupName(primary.name())
///             .location(primary.location())
///             .administratorLogin("mradministrator")
///             .administratorLoginPassword("thisIsDog11")
///             .licenseType("BasePrice")
///             .subnetId(primarySubnet.id())
///             .skuName("GP_Gen5")
///             .vcores(4)
///             .storageSizeInGb(32)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     primarySubnetNetworkSecurityGroupAssociation,
///                     primarySubnetRouteTableAssociation)
///                 .build());
///
///         //# Secondary (Fail-over) SQL Managed Instance
///         var failover = new ResourceGroup("failover", ResourceGroupArgs.builder()
///             .name(failoverName)
///             .location(failoverLocation)
///             .build());
///
///         var failoverVirtualNetwork = new VirtualNetwork("failoverVirtualNetwork", VirtualNetworkArgs.builder()
///             .name(failoverName)
///             .location(failover.location())
///             .resourceGroupName(failover.name())
///             .addressSpaces("10.1.0.0/16")
///             .build());
///
///         var failoverZoneVirtualNetworkLink = new ZoneVirtualNetworkLink("failoverZoneVirtualNetworkLink", ZoneVirtualNetworkLinkArgs.builder()
///             .name("failover-link")
///             .resourceGroupName(exampleZone.resourceGroupName())
///             .privateDnsZoneName(exampleZone.name())
///             .virtualNetworkId(failoverVirtualNetwork.id())
///             .build());
///
///         var failoverSubnet = new Subnet("failoverSubnet", SubnetArgs.builder()
///             .name("ManagedInstance")
///             .resourceGroupName(failover.name())
///             .virtualNetworkName(failoverVirtualNetwork.name())
///             .addressPrefixes("10.1.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .actions(
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                         "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action")
///                     .name("Microsoft.Sql/managedInstances")
///                     .build())
///                 .build())
///             .build());
///
///         var failoverNetworkSecurityGroup = new NetworkSecurityGroup("failoverNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name(failoverName)
///             .location(failover.location())
///             .resourceGroupName(failover.name())
///             .build());
///
///         var failoverSubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("failoverSubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(failoverSubnet.id())
///             .networkSecurityGroupId(failoverNetworkSecurityGroup.id())
///             .build());
///
///         var failoverRouteTable = new RouteTable("failoverRouteTable", RouteTableArgs.builder()
///             .name(failoverName)
///             .location(failover.location())
///             .resourceGroupName(failover.name())
///             .build());
///
///         var failoverSubnetRouteTableAssociation = new SubnetRouteTableAssociation("failoverSubnetRouteTableAssociation", SubnetRouteTableAssociationArgs.builder()
///             .subnetId(failoverSubnet.id())
///             .routeTableId(failoverRouteTable.id())
///             .build());
///
///         var failoverManagedInstance = new ManagedInstance("failoverManagedInstance", ManagedInstanceArgs.builder()
///             .name(failoverName)
///             .resourceGroupName(failover.name())
///             .location(failover.location())
///             .administratorLogin("mradministrator")
///             .administratorLoginPassword("thisIsDog11")
///             .licenseType("BasePrice")
///             .subnetId(failoverSubnet.id())
///             .skuName("GP_Gen5")
///             .vcores(4)
///             .storageSizeInGb(32)
///             .dnsZonePartnerId(primaryManagedInstance.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     failoverSubnetNetworkSecurityGroupAssociation,
///                     failoverSubnetRouteTableAssociation)
///                 .build());
///
///         var example = new ManagedInstanceFailoverGroup("example", ManagedInstanceFailoverGroupArgs.builder()
///             .name("example-failover-group")
///             .location(primaryManagedInstance.location())
///             .managedInstanceId(primaryManagedInstance.id())
///             .partnerManagedInstanceId(failoverManagedInstance.id())
///             .secondaryType("Geo")
///             .readWriteEndpointFailoverPolicy(ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicyArgs.builder()
///                 .mode("Automatic")
///                 .graceMinutes(60)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     primaryZoneVirtualNetworkLink,
///                     failoverZoneVirtualNetworkLink)
///                 .build());
///
///         var primaryToFailover = new VirtualNetworkPeering("primaryToFailover", VirtualNetworkPeeringArgs.builder()
///             .name("primary-to-failover")
///             .remoteVirtualNetworkId(failoverVirtualNetwork.id())
///             .resourceGroupName(primary.name())
///             .virtualNetworkName(primaryVirtualNetwork.name())
///             .build());
///
///         var default_ = new Subnet("default", SubnetArgs.builder()
///             .name("default")
///             .resourceGroupName(failover.name())
///             .virtualNetworkName(failoverVirtualNetwork.name())
///             .addressPrefixes("10.1.0.0/24")
///             .build());
///
///         var failoverToPrimary = new VirtualNetworkPeering("failoverToPrimary", VirtualNetworkPeeringArgs.builder()
///             .name("failover-to-primary")
///             .remoteVirtualNetworkId(primaryVirtualNetwork.id())
///             .resourceGroupName(failover.name())
///             .virtualNetworkName(failoverVirtualNetwork.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:mssql:ManagedInstanceFailoverGroup
///     properties:
///       name: example-failover-group
///       location: ${primaryManagedInstance.location}
///       managedInstanceId: ${primaryManagedInstance.id}
///       partnerManagedInstanceId: ${failoverManagedInstance.id}
///       secondaryType: Geo
///       readWriteEndpointFailoverPolicy:
///         mode: Automatic
///         graceMinutes: 60
///     options:
///       dependsOn:
///         - ${primaryZoneVirtualNetworkLink}
///         - ${failoverZoneVirtualNetworkLink}
///   exampleZone:
///     type: azure:privatedns:Zone
///     name: example
///     properties:
///       name: ${name}.private
///       resourceGroupName: ${primary.name}
///   ## Primary SQL Managed Instance
///   primary:
///     type: azure:core:ResourceGroup
///     properties:
///       name: ${primaryName}
///       location: ${primaryLocation}
///   primaryVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: primary
///     properties:
///       name: ${primaryName}
///       location: ${primary.location}
///       resourceGroupName: ${primary.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   primaryZoneVirtualNetworkLink:
///     type: azure:privatedns:ZoneVirtualNetworkLink
///     name: primary
///     properties:
///       name: primary-link
///       resourceGroupName: ${primary.name}
///       privateDnsZoneName: ${exampleZone.name}
///       virtualNetworkId: ${primaryVirtualNetwork.id}
///   primarySubnet:
///     type: azure:network:Subnet
///     name: primary
///     properties:
///       name: ${primaryName}
///       resourceGroupName: ${primary.name}
///       virtualNetworkName: ${primaryVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///       delegations:
///         - name: delegation
///           serviceDelegation:
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///               - Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action
///               - Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action
///             name: Microsoft.Sql/managedInstances
///   primaryNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: primary
///     properties:
///       name: ${primaryName}
///       location: ${primary.location}
///       resourceGroupName: ${primary.name}
///   primarySubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: primary
///     properties:
///       subnetId: ${primarySubnet.id}
///       networkSecurityGroupId: ${primaryNetworkSecurityGroup.id}
///   primaryRouteTable:
///     type: azure:network:RouteTable
///     name: primary
///     properties:
///       name: ${primaryName}
///       location: ${primary.location}
///       resourceGroupName: ${primary.name}
///   primarySubnetRouteTableAssociation:
///     type: azure:network:SubnetRouteTableAssociation
///     name: primary
///     properties:
///       subnetId: ${primarySubnet.id}
///       routeTableId: ${primaryRouteTable.id}
///   primaryManagedInstance:
///     type: azure:mssql:ManagedInstance
///     name: primary
///     properties:
///       name: ${primaryName}
///       resourceGroupName: ${primary.name}
///       location: ${primary.location}
///       administratorLogin: mradministrator
///       administratorLoginPassword: thisIsDog11
///       licenseType: BasePrice
///       subnetId: ${primarySubnet.id}
///       skuName: GP_Gen5
///       vcores: 4
///       storageSizeInGb: 32
///     options:
///       dependsOn:
///         - ${primarySubnetNetworkSecurityGroupAssociation}
///         - ${primarySubnetRouteTableAssociation}
///   primaryToFailover:
///     type: azure:network:VirtualNetworkPeering
///     name: primary_to_failover
///     properties:
///       name: primary-to-failover
///       remoteVirtualNetworkId: ${failoverVirtualNetwork.id}
///       resourceGroupName: ${primary.name}
///       virtualNetworkName: ${primaryVirtualNetwork.name}
///   ## Secondary (Fail-over) SQL Managed Instance
///   failover:
///     type: azure:core:ResourceGroup
///     properties:
///       name: ${failoverName}
///       location: ${failoverLocation}
///   failoverVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: failover
///     properties:
///       name: ${failoverName}
///       location: ${failover.location}
///       resourceGroupName: ${failover.name}
///       addressSpaces:
///         - 10.1.0.0/16
///   failoverZoneVirtualNetworkLink:
///     type: azure:privatedns:ZoneVirtualNetworkLink
///     name: failover
///     properties:
///       name: failover-link
///       resourceGroupName: ${exampleZone.resourceGroupName}
///       privateDnsZoneName: ${exampleZone.name}
///       virtualNetworkId: ${failoverVirtualNetwork.id}
///   default:
///     type: azure:network:Subnet
///     properties:
///       name: default
///       resourceGroupName: ${failover.name}
///       virtualNetworkName: ${failoverVirtualNetwork.name}
///       addressPrefixes:
///         - 10.1.0.0/24
///   failoverSubnet:
///     type: azure:network:Subnet
///     name: failover
///     properties:
///       name: ManagedInstance
///       resourceGroupName: ${failover.name}
///       virtualNetworkName: ${failoverVirtualNetwork.name}
///       addressPrefixes:
///         - 10.1.1.0/24
///       delegations:
///         - name: delegation
///           serviceDelegation:
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///               - Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action
///               - Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action
///             name: Microsoft.Sql/managedInstances
///   failoverNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: failover
///     properties:
///       name: ${failoverName}
///       location: ${failover.location}
///       resourceGroupName: ${failover.name}
///   failoverSubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: failover
///     properties:
///       subnetId: ${failoverSubnet.id}
///       networkSecurityGroupId: ${failoverNetworkSecurityGroup.id}
///   failoverRouteTable:
///     type: azure:network:RouteTable
///     name: failover
///     properties:
///       name: ${failoverName}
///       location: ${failover.location}
///       resourceGroupName: ${failover.name}
///   failoverSubnetRouteTableAssociation:
///     type: azure:network:SubnetRouteTableAssociation
///     name: failover
///     properties:
///       subnetId: ${failoverSubnet.id}
///       routeTableId: ${failoverRouteTable.id}
///   failoverManagedInstance:
///     type: azure:mssql:ManagedInstance
///     name: failover
///     properties:
///       name: ${failoverName}
///       resourceGroupName: ${failover.name}
///       location: ${failover.location}
///       administratorLogin: mradministrator
///       administratorLoginPassword: thisIsDog11
///       licenseType: BasePrice
///       subnetId: ${failoverSubnet.id}
///       skuName: GP_Gen5
///       vcores: 4
///       storageSizeInGb: 32
///       dnsZonePartnerId: ${primaryManagedInstance.id}
///     options:
///       dependsOn:
///         - ${failoverSubnetNetworkSecurityGroupAssociation}
///         - ${failoverSubnetRouteTableAssociation}
///   failoverToPrimary:
///     type: azure:network:VirtualNetworkPeering
///     name: failover_to_primary
///     properties:
///       name: failover-to-primary
///       remoteVirtualNetworkId: ${primaryVirtualNetwork.id}
///       resourceGroupName: ${failover.name}
///       virtualNetworkName: ${failoverVirtualNetwork.name}
/// variables:
///   name: mymssqlmitest
///   primaryName: ${name}-primary
///   primaryLocation: West Europe
///   failoverName: ${name}-failover
///   failoverLocation: North Europe
/// ```
///
///
/// &gt; **Note:** There are many prerequisites that must be in place before creating the failover group. To see them all, refer to [Configure a failover group for Azure SQL Managed Instance](https://learn.microsoft.com/en-us/azure/azure-sql/managed-instance/failover-group-configure-sql-mi).
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
/// SQL Instance Failover Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/managedInstanceFailoverGroup:ManagedInstanceFailoverGroup example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Sql/locations/Location/instanceFailoverGroups/failoverGroup1
/// ```
class ManagedInstanceFailoverGroup extends pulumi.CustomResource {
  /// The Azure Region where the Managed Instance Failover Group should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The ID of the Azure SQL Managed Instance which will be replicated using a Managed Instance Failover Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedInstanceId;
  /// The name which should be used for this Managed Instance Failover Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Azure SQL Managed Instance which will be replicated to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> partnerManagedInstanceId;
  /// A `partnerRegion` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> partnerRegions;
  /// A `readWriteEndpointFailoverPolicy` block as defined below.
  late final pulumi.Output<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy> readWriteEndpointFailoverPolicy;
  /// Failover policy for the read-only endpoint. Defaults to `true`.
  late final pulumi.Output<bool?> readonlyEndpointFailoverPolicyEnabled;
  /// The partner replication role of the Managed Instance Failover Group.
  late final pulumi.Output<String> role;
  /// The type of the secondary Managed Instance. Possible values are `Geo`, `Standby`. Defaults to `Geo`.
  late final pulumi.Output<String?> secondaryType;

  /// Creates a new [ManagedInstanceFailoverGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstanceFailoverGroup]. {@macro pulumi_mssql_managed_instance_failover_group_managed_instance_failover_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstanceFailoverGroup(
    String name, {
    ManagedInstanceFailoverGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedInstanceFailoverGroup:ManagedInstanceFailoverGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    managedInstanceId = registerOutput<String>('managedInstanceId');
    this.name = registerOutput<String>('name');
    partnerManagedInstanceId = registerOutput<String>('partnerManagedInstanceId');
    partnerRegions = registerOutput<List<Map<String, dynamic>>>('partnerRegions');
    readWriteEndpointFailoverPolicy = registerOutput<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy>('readWriteEndpointFailoverPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    readonlyEndpointFailoverPolicyEnabled = registerOutput<bool?>('readonlyEndpointFailoverPolicyEnabled');
    role = registerOutput<String>('role');
    secondaryType = registerOutput<String?>('secondaryType');
  }

  /// Gets an existing [ManagedInstanceFailoverGroup] resource's state with the given [name] and [id].
  static ManagedInstanceFailoverGroup get(
    String name,
    pulumi.Input<String> id, {
    ManagedInstanceFailoverGroupState? state,
  }) {
    return ManagedInstanceFailoverGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedInstanceFailoverGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedInstanceFailoverGroup:ManagedInstanceFailoverGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    managedInstanceId = registerOutput<String>('managedInstanceId');
    this.name = registerOutput<String>('name');
    partnerManagedInstanceId = registerOutput<String>('partnerManagedInstanceId');
    partnerRegions = registerOutput<List<Map<String, dynamic>>>('partnerRegions');
    readWriteEndpointFailoverPolicy = registerOutput<ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy>('readWriteEndpointFailoverPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    readonlyEndpointFailoverPolicyEnabled = registerOutput<bool?>('readonlyEndpointFailoverPolicyEnabled');
    role = registerOutput<String>('role');
    secondaryType = registerOutput<String?>('secondaryType');
  }
}

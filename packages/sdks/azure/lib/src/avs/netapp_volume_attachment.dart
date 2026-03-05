import 'package:pulumi/pulumi.dart' as pulumi;
import 'netapp_volume_attachment_args.dart';
import 'netapp_volume_attachment_state.dart';

/// Manages an Azure VMware Solution Private Cloud Netapp File Attachment.
///
/// ## Example Usage
///
/// &gt; **Note:** For Azure VMware Solution Private Cloud, normal `pulumi up` could ignore this note. Please disable correlation request id for continuous operations in one build (like acctest). The continuous operations like `update` or `delete` could not be triggered when it shares the same `correlation-id` with its previous operation.
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
/// const test = new azure.network.PublicIp("test", {
///     name: "example-public-ip",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     allocationMethod: "Static",
///     sku: "Standard",
/// });
/// const testVirtualNetwork = new azure.network.VirtualNetwork("test", {
///     name: "example-VirtualNetwork",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     addressSpaces: ["10.88.0.0/16"],
/// });
/// const netappSubnet = new azure.network.Subnet("netappSubnet", {
///     name: "example-Subnet",
///     resourceGroupName: testAzurermResourceGroup.name,
///     virtualNetworkName: testVirtualNetwork.name,
///     addressPrefixes: ["10.88.2.0/24"],
///     delegations: [{
///         name: "testdelegation",
///         serviceDelegation: {
///             name: "Microsoft.Netapp/volumes",
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }],
/// });
/// const gatewaySubnet = new azure.network.Subnet("gatewaySubnet", {
///     name: "GatewaySubnet",
///     resourceGroupName: testAzurermResourceGroup.name,
///     virtualNetworkName: testVirtualNetwork.name,
///     addressPrefixes: ["10.88.1.0/24"],
/// });
/// const testVirtualNetworkGateway = new azure.network.VirtualNetworkGateway("test", {
///     name: "example-vnet-gateway",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     type: "ExpressRoute",
///     sku: "Standard",
///     ipConfigurations: [{
///         name: "vnetGatewayConfig",
///         publicIpAddressId: test.id,
///         subnetId: gatewaySubnet.id,
///     }],
/// });
/// const testAccount = new azure.netapp.Account("test", {
///     name: "example-NetAppAccount",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
/// });
/// const testPool = new azure.netapp.Pool("test", {
///     name: "example-NetAppPool",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     accountName: testAccount.name,
///     serviceLevel: "Standard",
///     sizeInTb: 4,
/// });
/// const testVolume = new azure.netapp.Volume("test", {
///     name: "example-NetAppVolume",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     accountName: testAccount.name,
///     poolName: testPool.name,
///     volumePath: "my-unique-file-path-%d",
///     serviceLevel: "Standard",
///     subnetId: netappSubnet.id,
///     protocols: ["NFSv3"],
///     storageQuotaInGb: 100,
///     azureVmwareDataStoreEnabled: true,
///     exportPolicyRules: [{
///         ruleIndex: 1,
///         allowedClients: ["0.0.0.0/0"],
///         protocolsEnabled: "NFSv3",
///         unixReadOnly: false,
///         unixReadWrite: true,
///         rootAccessEnabled: true,
///     }],
/// });
/// const testPrivateCloud = new azure.avs.PrivateCloud("test", {
///     name: "example-PC",
///     resourceGroupName: testAzurermResourceGroup.name,
///     location: testAzurermResourceGroup.location,
///     skuName: "av36",
///     managementCluster: {
///         size: 3,
///     },
///     networkSubnetCidr: "192.168.48.0/22",
/// });
/// const testCluster = new azure.avs.Cluster("test", {
///     name: "example-vm-cluster",
///     vmwareCloudId: testPrivateCloud.id,
///     clusterNodeCount: 3,
///     skuName: "av36",
/// });
/// const testExpressRouteAuthorization = new azure.avs.ExpressRouteAuthorization("test", {
///     name: "example-VmwareAuthorization",
///     privateCloudId: testPrivateCloud.id,
/// });
/// const testVirtualNetworkGatewayConnection = new azure.network.VirtualNetworkGatewayConnection("test", {
///     name: "example-vnetgwconn",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     type: "ExpressRoute",
///     virtualNetworkGatewayId: testVirtualNetworkGateway.id,
///     expressRouteCircuitId: testPrivateCloud.circuits.apply(circuits => circuits[0].expressRouteId),
///     authorizationKey: testExpressRouteAuthorization.expressRouteAuthorizationKey,
/// });
/// const testNetappVolumeAttachment = new azure.avs.NetappVolumeAttachment("test", {
///     name: "example-vmwareattachment",
///     netappVolumeId: testVolume.id,
///     vmwareClusterId: testCluster.id,
/// }, {
///     dependsOn: [testVirtualNetworkGatewayConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// test = azure.network.PublicIp("test",
///     name="example-public-ip",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     allocation_method="Static",
///     sku="Standard")
/// test_virtual_network = azure.network.VirtualNetwork("test",
///     name="example-VirtualNetwork",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     address_spaces=["10.88.0.0/16"])
/// netapp_subnet = azure.network.Subnet("netappSubnet",
///     name="example-Subnet",
///     resource_group_name=test_azurerm_resource_group["name"],
///     virtual_network_name=test_virtual_network.name,
///     address_prefixes=["10.88.2.0/24"],
///     delegations=[{
///         "name": "testdelegation",
///         "service_delegation": {
///             "name": "Microsoft.Netapp/volumes",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// gateway_subnet = azure.network.Subnet("gatewaySubnet",
///     name="GatewaySubnet",
///     resource_group_name=test_azurerm_resource_group["name"],
///     virtual_network_name=test_virtual_network.name,
///     address_prefixes=["10.88.1.0/24"])
/// test_virtual_network_gateway = azure.network.VirtualNetworkGateway("test",
///     name="example-vnet-gateway",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     type="ExpressRoute",
///     sku="Standard",
///     ip_configurations=[{
///         "name": "vnetGatewayConfig",
///         "public_ip_address_id": test.id,
///         "subnet_id": gateway_subnet.id,
///     }])
/// test_account = azure.netapp.Account("test",
///     name="example-NetAppAccount",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"])
/// test_pool = azure.netapp.Pool("test",
///     name="example-NetAppPool",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     account_name=test_account.name,
///     service_level="Standard",
///     size_in_tb=4)
/// test_volume = azure.netapp.Volume("test",
///     name="example-NetAppVolume",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     account_name=test_account.name,
///     pool_name=test_pool.name,
///     volume_path="my-unique-file-path-%d",
///     service_level="Standard",
///     subnet_id=netapp_subnet.id,
///     protocols=["NFSv3"],
///     storage_quota_in_gb=100,
///     azure_vmware_data_store_enabled=True,
///     export_policy_rules=[{
///         "rule_index": 1,
///         "allowed_clients": ["0.0.0.0/0"],
///         "protocols_enabled": "NFSv3",
///         "unix_read_only": False,
///         "unix_read_write": True,
///         "root_access_enabled": True,
///     }])
/// test_private_cloud = azure.avs.PrivateCloud("test",
///     name="example-PC",
///     resource_group_name=test_azurerm_resource_group["name"],
///     location=test_azurerm_resource_group["location"],
///     sku_name="av36",
///     management_cluster={
///         "size": 3,
///     },
///     network_subnet_cidr="192.168.48.0/22")
/// test_cluster = azure.avs.Cluster("test",
///     name="example-vm-cluster",
///     vmware_cloud_id=test_private_cloud.id,
///     cluster_node_count=3,
///     sku_name="av36")
/// test_express_route_authorization = azure.avs.ExpressRouteAuthorization("test",
///     name="example-VmwareAuthorization",
///     private_cloud_id=test_private_cloud.id)
/// test_virtual_network_gateway_connection = azure.network.VirtualNetworkGatewayConnection("test",
///     name="example-vnetgwconn",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     type="ExpressRoute",
///     virtual_network_gateway_id=test_virtual_network_gateway.id,
///     express_route_circuit_id=test_private_cloud.circuits[0].express_route_id,
///     authorization_key=test_express_route_authorization.express_route_authorization_key)
/// test_netapp_volume_attachment = azure.avs.NetappVolumeAttachment("test",
///     name="example-vmwareattachment",
///     netapp_volume_id=test_volume.id,
///     vmware_cluster_id=test_cluster.id,
///     opts = pulumi.ResourceOptions(depends_on=[test_virtual_network_gateway_connection]))
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
///     var test = new Azure.Network.PublicIp("test", new()
///     {
///         Name = "example-public-ip",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///     });
///
///     var testVirtualNetwork = new Azure.Network.VirtualNetwork("test", new()
///     {
///         Name = "example-VirtualNetwork",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         AddressSpaces = new[]
///         {
///             "10.88.0.0/16",
///         },
///     });
///
///     var netappSubnet = new Azure.Network.Subnet("netappSubnet", new()
///     {
///         Name = "example-Subnet",
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         VirtualNetworkName = testVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.88.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "testdelegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Netapp/volumes",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var gatewaySubnet = new Azure.Network.Subnet("gatewaySubnet", new()
///     {
///         Name = "GatewaySubnet",
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         VirtualNetworkName = testVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.88.1.0/24",
///         },
///     });
///
///     var testVirtualNetworkGateway = new Azure.Network.VirtualNetworkGateway("test", new()
///     {
///         Name = "example-vnet-gateway",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         Type = "ExpressRoute",
///         Sku = "Standard",
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayIpConfigurationArgs
///             {
///                 Name = "vnetGatewayConfig",
///                 PublicIpAddressId = test.Id,
///                 SubnetId = gatewaySubnet.Id,
///             },
///         },
///     });
///
///     var testAccount = new Azure.NetApp.Account("test", new()
///     {
///         Name = "example-NetAppAccount",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///     });
///
///     var testPool = new Azure.NetApp.Pool("test", new()
///     {
///         Name = "example-NetAppPool",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         AccountName = testAccount.Name,
///         ServiceLevel = "Standard",
///         SizeInTb = 4,
///     });
///
///     var testVolume = new Azure.NetApp.Volume("test", new()
///     {
///         Name = "example-NetAppVolume",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         AccountName = testAccount.Name,
///         PoolName = testPool.Name,
///         VolumePath = "my-unique-file-path-%d",
///         ServiceLevel = "Standard",
///         SubnetId = netappSubnet.Id,
///         Protocols = new[]
///         {
///             "NFSv3",
///         },
///         StorageQuotaInGb = 100,
///         AzureVmwareDataStoreEnabled = true,
///         ExportPolicyRules = new[]
///         {
///             new Azure.NetApp.Inputs.VolumeExportPolicyRuleArgs
///             {
///                 RuleIndex = 1,
///                 AllowedClients = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 ProtocolsEnabled = "NFSv3",
///                 UnixReadOnly = false,
///                 UnixReadWrite = true,
///                 RootAccessEnabled = true,
///             },
///         },
///     });
///
///     var testPrivateCloud = new Azure.Avs.PrivateCloud("test", new()
///     {
///         Name = "example-PC",
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         Location = testAzurermResourceGroup.Location,
///         SkuName = "av36",
///         ManagementCluster = new Azure.Avs.Inputs.PrivateCloudManagementClusterArgs
///         {
///             Size = 3,
///         },
///         NetworkSubnetCidr = "192.168.48.0/22",
///     });
///
///     var testCluster = new Azure.Avs.Cluster("test", new()
///     {
///         Name = "example-vm-cluster",
///         VmwareCloudId = testPrivateCloud.Id,
///         ClusterNodeCount = 3,
///         SkuName = "av36",
///     });
///
///     var testExpressRouteAuthorization = new Azure.Avs.ExpressRouteAuthorization("test", new()
///     {
///         Name = "example-VmwareAuthorization",
///         PrivateCloudId = testPrivateCloud.Id,
///     });
///
///     var testVirtualNetworkGatewayConnection = new Azure.Network.VirtualNetworkGatewayConnection("test", new()
///     {
///         Name = "example-vnetgwconn",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         Type = "ExpressRoute",
///         VirtualNetworkGatewayId = testVirtualNetworkGateway.Id,
///         ExpressRouteCircuitId = testPrivateCloud.Circuits.Apply(circuits => circuits[0].ExpressRouteId),
///         AuthorizationKey = testExpressRouteAuthorization.ExpressRouteAuthorizationKey,
///     });
///
///     var testNetappVolumeAttachment = new Azure.Avs.NetappVolumeAttachment("test", new()
///     {
///         Name = "example-vmwareattachment",
///         NetappVolumeId = testVolume.Id,
///         VmwareClusterId = testCluster.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testVirtualNetworkGatewayConnection,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/avs"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := network.NewPublicIp(ctx, "test", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-public-ip"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVirtualNetwork, err := network.NewVirtualNetwork(ctx, "test", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-VirtualNetwork"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.88.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		netappSubnet, err := network.NewSubnet(ctx, "netappSubnet", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-Subnet"),
/// 			ResourceGroupName:  pulumi.Any(testAzurermResourceGroup.Name),
/// 			VirtualNetworkName: testVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.88.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("testdelegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Netapp/volumes"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/networkinterfaces/*"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gatewaySubnet, err := network.NewSubnet(ctx, "gatewaySubnet", &network.SubnetArgs{
/// 			Name:               pulumi.String("GatewaySubnet"),
/// 			ResourceGroupName:  pulumi.Any(testAzurermResourceGroup.Name),
/// 			VirtualNetworkName: testVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.88.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVirtualNetworkGateway, err := network.NewVirtualNetworkGateway(ctx, "test", &network.VirtualNetworkGatewayArgs{
/// 			Name:              pulumi.String("example-vnet-gateway"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			Type:              pulumi.String("ExpressRoute"),
/// 			Sku:               pulumi.String("Standard"),
/// 			IpConfigurations: network.VirtualNetworkGatewayIpConfigurationArray{
/// 				&network.VirtualNetworkGatewayIpConfigurationArgs{
/// 					Name:              pulumi.String("vnetGatewayConfig"),
/// 					PublicIpAddressId: test.ID(),
/// 					SubnetId:          gatewaySubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testAccount, err := netapp.NewAccount(ctx, "test", &netapp.AccountArgs{
/// 			Name:              pulumi.String("example-NetAppAccount"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testPool, err := netapp.NewPool(ctx, "test", &netapp.PoolArgs{
/// 			Name:              pulumi.String("example-NetAppPool"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			AccountName:       testAccount.Name,
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SizeInTb:          pulumi.Int(4),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVolume, err := netapp.NewVolume(ctx, "test", &netapp.VolumeArgs{
/// 			Name:              pulumi.String("example-NetAppVolume"),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			AccountName:       testAccount.Name,
/// 			PoolName:          testPool.Name,
/// 			VolumePath:        pulumi.String("my-unique-file-path-%d"),
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SubnetId:          netappSubnet.ID(),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSv3"),
/// 			},
/// 			StorageQuotaInGb:            pulumi.Int(100),
/// 			AzureVmwareDataStoreEnabled: pulumi.Bool(true),
/// 			ExportPolicyRules: netapp.VolumeExportPolicyRuleArray{
/// 				&netapp.VolumeExportPolicyRuleArgs{
/// 					RuleIndex: pulumi.Int(1),
/// 					AllowedClients: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 					ProtocolsEnabled:  pulumi.String("NFSv3"),
/// 					UnixReadOnly:      pulumi.Bool(false),
/// 					UnixReadWrite:     pulumi.Bool(true),
/// 					RootAccessEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testPrivateCloud, err := avs.NewPrivateCloud(ctx, "test", &avs.PrivateCloudArgs{
/// 			Name:              pulumi.String("example-PC"),
/// 			ResourceGroupName: pulumi.Any(testAzurermResourceGroup.Name),
/// 			Location:          pulumi.Any(testAzurermResourceGroup.Location),
/// 			SkuName:           pulumi.String("av36"),
/// 			ManagementCluster: &avs.PrivateCloudManagementClusterArgs{
/// 				Size: pulumi.Int(3),
/// 			},
/// 			NetworkSubnetCidr: pulumi.String("192.168.48.0/22"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testCluster, err := avs.NewCluster(ctx, "test", &avs.ClusterArgs{
/// 			Name:             pulumi.String("example-vm-cluster"),
/// 			VmwareCloudId:    testPrivateCloud.ID(),
/// 			ClusterNodeCount: pulumi.Int(3),
/// 			SkuName:          pulumi.String("av36"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testExpressRouteAuthorization, err := avs.NewExpressRouteAuthorization(ctx, "test", &avs.ExpressRouteAuthorizationArgs{
/// 			Name:           pulumi.String("example-VmwareAuthorization"),
/// 			PrivateCloudId: testPrivateCloud.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVirtualNetworkGatewayConnection, err := network.NewVirtualNetworkGatewayConnection(ctx, "test", &network.VirtualNetworkGatewayConnectionArgs{
/// 			Name:                    pulumi.String("example-vnetgwconn"),
/// 			Location:                pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName:       pulumi.Any(testAzurermResourceGroup.Name),
/// 			Type:                    pulumi.String("ExpressRoute"),
/// 			VirtualNetworkGatewayId: testVirtualNetworkGateway.ID(),
/// 			ExpressRouteCircuitId: pulumi.String(testPrivateCloud.Circuits.ApplyT(func(circuits []avs.PrivateCloudCircuit) (*string, error) {
/// 				return &circuits[0].ExpressRouteId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			AuthorizationKey: testExpressRouteAuthorization.ExpressRouteAuthorizationKey,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = avs.NewNetappVolumeAttachment(ctx, "test", &avs.NetappVolumeAttachmentArgs{
/// 			Name:            pulumi.String("example-vmwareattachment"),
/// 			NetappVolumeId:  testVolume.ID(),
/// 			VmwareClusterId: testCluster.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testVirtualNetworkGatewayConnection,
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.network.VirtualNetworkGateway;
/// import com.pulumi.azure.network.VirtualNetworkGatewayArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayIpConfigurationArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
/// import com.pulumi.azure.netapp.Volume;
/// import com.pulumi.azure.netapp.VolumeArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeExportPolicyRuleArgs;
/// import com.pulumi.azure.avs.PrivateCloud;
/// import com.pulumi.azure.avs.PrivateCloudArgs;
/// import com.pulumi.azure.avs.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.azure.avs.Cluster;
/// import com.pulumi.azure.avs.ClusterArgs;
/// import com.pulumi.azure.avs.ExpressRouteAuthorization;
/// import com.pulumi.azure.avs.ExpressRouteAuthorizationArgs;
/// import com.pulumi.azure.network.VirtualNetworkGatewayConnection;
/// import com.pulumi.azure.network.VirtualNetworkGatewayConnectionArgs;
/// import com.pulumi.azure.avs.NetappVolumeAttachment;
/// import com.pulumi.azure.avs.NetappVolumeAttachmentArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var test = new PublicIp("test", PublicIpArgs.builder()
///             .name("example-public-ip")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .build());
///
///         var testVirtualNetwork = new VirtualNetwork("testVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-VirtualNetwork")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .addressSpaces("10.88.0.0/16")
///             .build());
///
///         var netappSubnet = new Subnet("netappSubnet", SubnetArgs.builder()
///             .name("example-Subnet")
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .virtualNetworkName(testVirtualNetwork.name())
///             .addressPrefixes("10.88.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("testdelegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Netapp/volumes")
///                     .actions(
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var gatewaySubnet = new Subnet("gatewaySubnet", SubnetArgs.builder()
///             .name("GatewaySubnet")
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .virtualNetworkName(testVirtualNetwork.name())
///             .addressPrefixes("10.88.1.0/24")
///             .build());
///
///         var testVirtualNetworkGateway = new VirtualNetworkGateway("testVirtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .name("example-vnet-gateway")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .type("ExpressRoute")
///             .sku("Standard")
///             .ipConfigurations(VirtualNetworkGatewayIpConfigurationArgs.builder()
///                 .name("vnetGatewayConfig")
///                 .publicIpAddressId(test.id())
///                 .subnetId(gatewaySubnet.id())
///                 .build())
///             .build());
///
///         var testAccount = new Account("testAccount", AccountArgs.builder()
///             .name("example-NetAppAccount")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .build());
///
///         var testPool = new Pool("testPool", PoolArgs.builder()
///             .name("example-NetAppPool")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .accountName(testAccount.name())
///             .serviceLevel("Standard")
///             .sizeInTb(4)
///             .build());
///
///         var testVolume = new Volume("testVolume", VolumeArgs.builder()
///             .name("example-NetAppVolume")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .accountName(testAccount.name())
///             .poolName(testPool.name())
///             .volumePath("my-unique-file-path-%d")
///             .serviceLevel("Standard")
///             .subnetId(netappSubnet.id())
///             .protocols("NFSv3")
///             .storageQuotaInGb(100)
///             .azureVmwareDataStoreEnabled(true)
///             .exportPolicyRules(VolumeExportPolicyRuleArgs.builder()
///                 .ruleIndex(1)
///                 .allowedClients("0.0.0.0/0")
///                 .protocolsEnabled("NFSv3")
///                 .unixReadOnly(false)
///                 .unixReadWrite(true)
///                 .rootAccessEnabled(true)
///                 .build())
///             .build());
///
///         var testPrivateCloud = new PrivateCloud("testPrivateCloud", PrivateCloudArgs.builder()
///             .name("example-PC")
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .location(testAzurermResourceGroup.location())
///             .skuName("av36")
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .size(3)
///                 .build())
///             .networkSubnetCidr("192.168.48.0/22")
///             .build());
///
///         var testCluster = new Cluster("testCluster", ClusterArgs.builder()
///             .name("example-vm-cluster")
///             .vmwareCloudId(testPrivateCloud.id())
///             .clusterNodeCount(3)
///             .skuName("av36")
///             .build());
///
///         var testExpressRouteAuthorization = new ExpressRouteAuthorization("testExpressRouteAuthorization", ExpressRouteAuthorizationArgs.builder()
///             .name("example-VmwareAuthorization")
///             .privateCloudId(testPrivateCloud.id())
///             .build());
///
///         var testVirtualNetworkGatewayConnection = new VirtualNetworkGatewayConnection("testVirtualNetworkGatewayConnection", VirtualNetworkGatewayConnectionArgs.builder()
///             .name("example-vnetgwconn")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .type("ExpressRoute")
///             .virtualNetworkGatewayId(testVirtualNetworkGateway.id())
///             .expressRouteCircuitId(testPrivateCloud.circuits().applyValue(_circuits -> _circuits[0].expressRouteId()))
///             .authorizationKey(testExpressRouteAuthorization.expressRouteAuthorizationKey())
///             .build());
///
///         var testNetappVolumeAttachment = new NetappVolumeAttachment("testNetappVolumeAttachment", NetappVolumeAttachmentArgs.builder()
///             .name("example-vmwareattachment")
///             .netappVolumeId(testVolume.id())
///             .vmwareClusterId(testCluster.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testVirtualNetworkGatewayConnection)
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
///       name: example-resources
///       location: West Europe
///   test:
///     type: azure:network:PublicIp
///     properties:
///       name: example-public-ip
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       allocationMethod: Static
///       sku: Standard
///   testVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: test
///     properties:
///       name: example-VirtualNetwork
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       addressSpaces:
///         - 10.88.0.0/16
///   netappSubnet:
///     type: azure:network:Subnet
///     properties:
///       name: example-Subnet
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       virtualNetworkName: ${testVirtualNetwork.name}
///       addressPrefixes:
///         - 10.88.2.0/24
///       delegations:
///         - name: testdelegation
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   gatewaySubnet:
///     type: azure:network:Subnet
///     properties:
///       name: GatewaySubnet
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       virtualNetworkName: ${testVirtualNetwork.name}
///       addressPrefixes:
///         - 10.88.1.0/24
///   testVirtualNetworkGateway:
///     type: azure:network:VirtualNetworkGateway
///     name: test
///     properties:
///       name: example-vnet-gateway
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       type: ExpressRoute
///       sku: Standard
///       ipConfigurations:
///         - name: vnetGatewayConfig
///           publicIpAddressId: ${test.id}
///           subnetId: ${gatewaySubnet.id}
///   testAccount:
///     type: azure:netapp:Account
///     name: test
///     properties:
///       name: example-NetAppAccount
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///   testPool:
///     type: azure:netapp:Pool
///     name: test
///     properties:
///       name: example-NetAppPool
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       accountName: ${testAccount.name}
///       serviceLevel: Standard
///       sizeInTb: 4
///   testVolume:
///     type: azure:netapp:Volume
///     name: test
///     properties:
///       name: example-NetAppVolume
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       accountName: ${testAccount.name}
///       poolName: ${testPool.name}
///       volumePath: my-unique-file-path-%d
///       serviceLevel: Standard
///       subnetId: ${netappSubnet.id}
///       protocols:
///         - NFSv3
///       storageQuotaInGb: 100
///       azureVmwareDataStoreEnabled: true
///       exportPolicyRules:
///         - ruleIndex: 1
///           allowedClients:
///             - 0.0.0.0/0
///           protocolsEnabled: NFSv3
///           unixReadOnly: false
///           unixReadWrite: true
///           rootAccessEnabled: true
///   testPrivateCloud:
///     type: azure:avs:PrivateCloud
///     name: test
///     properties:
///       name: example-PC
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       location: ${testAzurermResourceGroup.location}
///       skuName: av36
///       managementCluster:
///         size: 3
///       networkSubnetCidr: 192.168.48.0/22
///   testCluster:
///     type: azure:avs:Cluster
///     name: test
///     properties:
///       name: example-vm-cluster
///       vmwareCloudId: ${testPrivateCloud.id}
///       clusterNodeCount: 3
///       skuName: av36
///   testExpressRouteAuthorization:
///     type: azure:avs:ExpressRouteAuthorization
///     name: test
///     properties:
///       name: example-VmwareAuthorization
///       privateCloudId: ${testPrivateCloud.id}
///   testVirtualNetworkGatewayConnection:
///     type: azure:network:VirtualNetworkGatewayConnection
///     name: test
///     properties:
///       name: example-vnetgwconn
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       type: ExpressRoute
///       virtualNetworkGatewayId: ${testVirtualNetworkGateway.id}
///       expressRouteCircuitId: ${testPrivateCloud.circuits[0].expressRouteId}
///       authorizationKey: ${testExpressRouteAuthorization.expressRouteAuthorizationKey}
///   testNetappVolumeAttachment:
///     type: azure:avs:NetappVolumeAttachment
///     name: test
///     properties:
///       name: example-vmwareattachment
///       netappVolumeId: ${testVolume.id}
///       vmwareClusterId: ${testCluster.id}
///     options:
///       dependsOn:
///         - ${testVirtualNetworkGatewayConnection}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AVS` - 2022-05-01
///
/// ## Import
///
/// Azure VMware Solution Private Cloud Netapp File Volume Attachments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:avs/netappVolumeAttachment:NetappVolumeAttachment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AVS/privateClouds/privateCloud1/clusters/Cluster1/dataStores/datastore1
/// ```
class NetappVolumeAttachment extends pulumi.CustomResource {
  /// The name which should be used for this Azure VMware Solution Private Cloud Netapp File Volume Attachment. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  late final pulumi.Output<String> name;
  /// The netapp file volume for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to connect to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  late final pulumi.Output<String> netappVolumeId;
  /// The vmware cluster for this Azure VMware Solution Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new Azure VMware Solution Private Cloud Netapp File Volume Attachment to be created.
  ///
  /// &gt; **Note:** please follow the prerequisites mentioned in this [article](https://learn.microsoft.com/en-us/azure/azure-vmware/attach-azure-netapp-files-to-azure-vmware-solution-hosts?tabs=azure-portal#prerequisites) before associating the netapp file volume to the Azure VMware Solution hosts.
  late final pulumi.Output<String> vmwareClusterId;

  /// Creates a new [NetappVolumeAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetappVolumeAttachment]. {@macro pulumi_avs_netapp_volume_attachment_netapp_volume_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetappVolumeAttachment(
    String name, {
    NetappVolumeAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:avs/netappVolumeAttachment:NetappVolumeAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    netappVolumeId = registerOutput<String>('netappVolumeId');
    vmwareClusterId = registerOutput<String>('vmwareClusterId');
  }

  /// Gets an existing [NetappVolumeAttachment] resource's state with the given [name] and [id].
  static NetappVolumeAttachment get(
    String name,
    pulumi.Input<String> id, {
    NetappVolumeAttachmentState? state,
  }) {
    return NetappVolumeAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetappVolumeAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:avs/netappVolumeAttachment:NetappVolumeAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    netappVolumeId = registerOutput<String>('netappVolumeId');
    vmwareClusterId = registerOutput<String>('vmwareClusterId');
  }
}

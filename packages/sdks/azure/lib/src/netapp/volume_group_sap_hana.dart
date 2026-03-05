import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_sap_hana_args.dart';
import 'volume_group_sap_hana_state.dart';

/// Manages a Application Volume Group for SAP HANA application.
///
/// &gt; **Note:** This feature is intended to be used for SAP-HANA workloads only, with several requirements, please refer to [Understand Azure NetApp Files application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-introduction) document as the starting point to understand this feature before using it with Terraform.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const example = new random.index.String("example", {
///     length: 12,
///     special: true,
/// });
/// const adminUsername = "exampleadmin";
/// const adminPassword = example.result;
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: `${prefix}-resources`,
///     location: location,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: `${prefix}-vnet`,
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     addressSpaces: ["10.88.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: `${prefix}-delegated-subnet`,
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
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
/// const example1 = new azure.network.Subnet("example1", {
///     name: `${prefix}-hosts-subnet`,
///     resourceGroupName: exampleResourceGroup.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.88.1.0/24"],
/// });
/// const examplePlacementGroup = new azure.proximity.PlacementGroup("example", {
///     name: `${prefix}-ppg`,
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleAvailabilitySet = new azure.compute.AvailabilitySet("example", {
///     name: `${prefix}-avset`,
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     proximityPlacementGroupId: examplePlacementGroup.id,
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: `${prefix}-nic`,
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: example1.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: `${prefix}-vm`,
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     size: "Standard_M8ms",
///     adminUsername: adminUsername,
///     adminPassword: adminPassword,
///     disablePasswordAuthentication: false,
///     proximityPlacementGroupId: examplePlacementGroup.id,
///     availabilitySetId: exampleAvailabilitySet.id,
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     osDisk: {
///         storageAccountType: "Standard_LRS",
///         caching: "ReadWrite",
///     },
/// });
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: `${prefix}-netapp-account`,
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// }, {
///     dependsOn: [
///         exampleSubnet,
///         example1,
///     ],
/// });
/// const examplePool = new azure.netapp.Pool("example", {
///     name: `${prefix}-netapp-pool`,
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     accountName: exampleAccount.name,
///     serviceLevel: "Standard",
///     sizeInTb: 8,
///     qosType: "Manual",
/// });
/// const exampleVolumeGroupSapHana = new azure.netapp.VolumeGroupSapHana("example", {
///     name: `${prefix}-netapp-volumegroup`,
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     accountName: exampleAccount.name,
///     groupDescription: "Test volume group",
///     applicationIdentifier: "TST",
///     volumes: [
///         {
///             name: `${prefix}-netapp-volume-1`,
///             volumePath: "my-unique-file-path-1",
///             serviceLevel: "Standard",
///             capacityPoolId: examplePool.id,
///             subnetId: exampleSubnet.id,
///             proximityPlacementGroupId: examplePlacementGroup.id,
///             volumeSpecName: "data",
///             storageQuotaInGb: 1024,
///             throughputInMibps: 24,
///             protocols: "NFSv4.1",
///             securityStyle: "unix",
///             snapshotDirectoryVisible: false,
///             exportPolicyRules: [{
///                 ruleIndex: 1,
///                 allowedClients: "0.0.0.0/0",
///                 nfsv3Enabled: false,
///                 nfsv41Enabled: true,
///                 unixReadOnly: false,
///                 unixReadWrite: true,
///                 rootAccessEnabled: false,
///             }],
///             tags: {
///                 foo: "bar",
///             },
///         },
///         {
///             name: `${prefix}-netapp-volume-2`,
///             volumePath: "my-unique-file-path-2",
///             serviceLevel: "Standard",
///             capacityPoolId: examplePool.id,
///             subnetId: exampleSubnet.id,
///             proximityPlacementGroupId: examplePlacementGroup.id,
///             volumeSpecName: "log",
///             storageQuotaInGb: 1024,
///             throughputInMibps: 24,
///             protocols: "NFSv4.1",
///             securityStyle: "unix",
///             snapshotDirectoryVisible: false,
///             exportPolicyRules: [{
///                 ruleIndex: 1,
///                 allowedClients: "0.0.0.0/0",
///                 nfsv3Enabled: false,
///                 nfsv41Enabled: true,
///                 unixReadOnly: false,
///                 unixReadWrite: true,
///                 rootAccessEnabled: false,
///             }],
///             tags: {
///                 foo: "bar",
///             },
///         },
///         {
///             name: `${prefix}-netapp-volume-3`,
///             volumePath: "my-unique-file-path-3",
///             serviceLevel: "Standard",
///             capacityPoolId: examplePool.id,
///             subnetId: exampleSubnet.id,
///             proximityPlacementGroupId: examplePlacementGroup.id,
///             volumeSpecName: "shared",
///             storageQuotaInGb: 1024,
///             throughputInMibps: 24,
///             protocols: "NFSv4.1",
///             securityStyle: "unix",
///             snapshotDirectoryVisible: false,
///             exportPolicyRules: [{
///                 ruleIndex: 1,
///                 allowedClients: "0.0.0.0/0",
///                 nfsv3Enabled: false,
///                 nfsv41Enabled: true,
///                 unixReadOnly: false,
///                 unixReadWrite: true,
///                 rootAccessEnabled: false,
///             }],
///         },
///     ],
/// }, {
///     dependsOn: [
///         exampleLinuxVirtualMachine,
///         examplePlacementGroup,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// example = random.index.String("example",
///     length=12,
///     special=True)
/// admin_username = "exampleadmin"
/// admin_password = example["result"]
/// example_resource_group = azure.core.ResourceGroup("example",
///     name=f"{prefix}-resources",
///     location=location)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name=f"{prefix}-vnet",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     address_spaces=["10.88.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name=f"{prefix}-delegated-subnet",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
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
/// example1 = azure.network.Subnet("example1",
///     name=f"{prefix}-hosts-subnet",
///     resource_group_name=example_resource_group.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.88.1.0/24"])
/// example_placement_group = azure.proximity.PlacementGroup("example",
///     name=f"{prefix}-ppg",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_availability_set = azure.compute.AvailabilitySet("example",
///     name=f"{prefix}-avset",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     proximity_placement_group_id=example_placement_group.id)
/// example_network_interface = azure.network.NetworkInterface("example",
///     name=f"{prefix}-nic",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example1.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name=f"{prefix}-vm",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     size="Standard_M8ms",
///     admin_username=admin_username,
///     admin_password=admin_password,
///     disable_password_authentication=False,
///     proximity_placement_group_id=example_placement_group.id,
///     availability_set_id=example_availability_set.id,
///     network_interface_ids=[example_network_interface.id],
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     os_disk={
///         "storage_account_type": "Standard_LRS",
///         "caching": "ReadWrite",
///     })
/// example_account = azure.netapp.Account("example",
///     name=f"{prefix}-netapp-account",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_subnet,
///             example1,
///         ]))
/// example_pool = azure.netapp.Pool("example",
///     name=f"{prefix}-netapp-pool",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     account_name=example_account.name,
///     service_level="Standard",
///     size_in_tb=8,
///     qos_type="Manual")
/// example_volume_group_sap_hana = azure.netapp.VolumeGroupSapHana("example",
///     name=f"{prefix}-netapp-volumegroup",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     account_name=example_account.name,
///     group_description="Test volume group",
///     application_identifier="TST",
///     volumes=[
///         {
///             "name": f"{prefix}-netapp-volume-1",
///             "volume_path": "my-unique-file-path-1",
///             "service_level": "Standard",
///             "capacity_pool_id": example_pool.id,
///             "subnet_id": example_subnet.id,
///             "proximity_placement_group_id": example_placement_group.id,
///             "volume_spec_name": "data",
///             "storage_quota_in_gb": 1024,
///             "throughput_in_mibps": 24,
///             "protocols": "NFSv4.1",
///             "security_style": "unix",
///             "snapshot_directory_visible": False,
///             "export_policy_rules": [{
///                 "rule_index": 1,
///                 "allowed_clients": "0.0.0.0/0",
///                 "nfsv3_enabled": False,
///                 "nfsv41_enabled": True,
///                 "unix_read_only": False,
///                 "unix_read_write": True,
///                 "root_access_enabled": False,
///             }],
///             "tags": {
///                 "foo": "bar",
///             },
///         },
///         {
///             "name": f"{prefix}-netapp-volume-2",
///             "volume_path": "my-unique-file-path-2",
///             "service_level": "Standard",
///             "capacity_pool_id": example_pool.id,
///             "subnet_id": example_subnet.id,
///             "proximity_placement_group_id": example_placement_group.id,
///             "volume_spec_name": "log",
///             "storage_quota_in_gb": 1024,
///             "throughput_in_mibps": 24,
///             "protocols": "NFSv4.1",
///             "security_style": "unix",
///             "snapshot_directory_visible": False,
///             "export_policy_rules": [{
///                 "rule_index": 1,
///                 "allowed_clients": "0.0.0.0/0",
///                 "nfsv3_enabled": False,
///                 "nfsv41_enabled": True,
///                 "unix_read_only": False,
///                 "unix_read_write": True,
///                 "root_access_enabled": False,
///             }],
///             "tags": {
///                 "foo": "bar",
///             },
///         },
///         {
///             "name": f"{prefix}-netapp-volume-3",
///             "volume_path": "my-unique-file-path-3",
///             "service_level": "Standard",
///             "capacity_pool_id": example_pool.id,
///             "subnet_id": example_subnet.id,
///             "proximity_placement_group_id": example_placement_group.id,
///             "volume_spec_name": "shared",
///             "storage_quota_in_gb": 1024,
///             "throughput_in_mibps": 24,
///             "protocols": "NFSv4.1",
///             "security_style": "unix",
///             "snapshot_directory_visible": False,
///             "export_policy_rules": [{
///                 "rule_index": 1,
///                 "allowed_clients": "0.0.0.0/0",
///                 "nfsv3_enabled": False,
///                 "nfsv41_enabled": True,
///                 "unix_read_only": False,
///                 "unix_read_write": True,
///                 "root_access_enabled": False,
///             }],
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_linux_virtual_machine,
///             example_placement_group,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Random.Index.String("example", new()
///     {
///         Length = 12,
///         Special = true,
///     });
///
///     var adminUsername = "exampleadmin";
///
///     var adminPassword = example.Result;
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = $"{prefix}-resources",
///         Location = location,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = $"{prefix}-vnet",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AddressSpaces = new[]
///         {
///             "10.88.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = $"{prefix}-delegated-subnet",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
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
///     var example1 = new Azure.Network.Subnet("example1", new()
///     {
///         Name = $"{prefix}-hosts-subnet",
///         ResourceGroupName = exampleResourceGroup.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.88.1.0/24",
///         },
///     });
///
///     var examplePlacementGroup = new Azure.Proximity.PlacementGroup("example", new()
///     {
///         Name = $"{prefix}-ppg",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleAvailabilitySet = new Azure.Compute.AvailabilitySet("example", new()
///     {
///         Name = $"{prefix}-avset",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         ProximityPlacementGroupId = examplePlacementGroup.Id,
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = $"{prefix}-nic",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "internal",
///                 SubnetId = example1.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = $"{prefix}-vm",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Size = "Standard_M8ms",
///         AdminUsername = adminUsername,
///         AdminPassword = adminPassword,
///         DisablePasswordAuthentication = false,
///         ProximityPlacementGroupId = examplePlacementGroup.Id,
///         AvailabilitySetId = exampleAvailabilitySet.Id,
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             StorageAccountType = "Standard_LRS",
///             Caching = "ReadWrite",
///         },
///     });
///
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = $"{prefix}-netapp-account",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSubnet,
///             example1,
///         },
///     });
///
///     var examplePool = new Azure.NetApp.Pool("example", new()
///     {
///         Name = $"{prefix}-netapp-pool",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AccountName = exampleAccount.Name,
///         ServiceLevel = "Standard",
///         SizeInTb = 8,
///         QosType = "Manual",
///     });
///
///     var exampleVolumeGroupSapHana = new Azure.NetApp.VolumeGroupSapHana("example", new()
///     {
///         Name = $"{prefix}-netapp-volumegroup",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         AccountName = exampleAccount.Name,
///         GroupDescription = "Test volume group",
///         ApplicationIdentifier = "TST",
///         Volumes = new[]
///         {
///             new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeArgs
///             {
///                 Name = $"{prefix}-netapp-volume-1",
///                 VolumePath = "my-unique-file-path-1",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePool.Id,
///                 SubnetId = exampleSubnet.Id,
///                 ProximityPlacementGroupId = examplePlacementGroup.Id,
///                 VolumeSpecName = "data",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///                 Tags =
///                 {
///                     { "foo", "bar" },
///                 },
///             },
///             new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeArgs
///             {
///                 Name = $"{prefix}-netapp-volume-2",
///                 VolumePath = "my-unique-file-path-2",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePool.Id,
///                 SubnetId = exampleSubnet.Id,
///                 ProximityPlacementGroupId = examplePlacementGroup.Id,
///                 VolumeSpecName = "log",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///                 Tags =
///                 {
///                     { "foo", "bar" },
///                 },
///             },
///             new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeArgs
///             {
///                 Name = $"{prefix}-netapp-volume-3",
///                 VolumePath = "my-unique-file-path-3",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePool.Id,
///                 SubnetId = exampleSubnet.Id,
///                 ProximityPlacementGroupId = examplePlacementGroup.Id,
///                 VolumeSpecName = "shared",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleLinuxVirtualMachine,
///             examplePlacementGroup,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/proximity"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := random.NewString(ctx, "example", &random.StringArgs{
/// 			Length:  12,
/// 			Special: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		adminUsername := "exampleadmin"
/// 		adminPassword := example.Result
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.Sprintf("%v-resources", prefix),
/// 			Location: pulumi.Any(location),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.Sprintf("%v-vnet", prefix),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.88.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.Sprintf("%v-delegated-subnet", prefix),
/// 			ResourceGroupName:  exampleResourceGroup.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
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
/// 		example1, err := network.NewSubnet(ctx, "example1", &network.SubnetArgs{
/// 			Name:               pulumi.Sprintf("%v-hosts-subnet", prefix),
/// 			ResourceGroupName:  exampleResourceGroup.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.88.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlacementGroup, err := proximity.NewPlacementGroup(ctx, "example", &proximity.PlacementGroupArgs{
/// 			Name:              pulumi.Sprintf("%v-ppg", prefix),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAvailabilitySet, err := compute.NewAvailabilitySet(ctx, "example", &compute.AvailabilitySetArgs{
/// 			Name:                      pulumi.Sprintf("%v-avset", prefix),
/// 			Location:                  exampleResourceGroup.Location,
/// 			ResourceGroupName:         exampleResourceGroup.Name,
/// 			ProximityPlacementGroupId: examplePlacementGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.Sprintf("%v-nic", prefix),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("internal"),
/// 					SubnetId:                   example1.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:                          pulumi.Sprintf("%v-vm", prefix),
/// 			ResourceGroupName:             exampleResourceGroup.Name,
/// 			Location:                      exampleResourceGroup.Location,
/// 			Size:                          pulumi.String("Standard_M8ms"),
/// 			AdminUsername:                 pulumi.String(adminUsername),
/// 			AdminPassword:                 pulumi.Any(adminPassword),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 			ProximityPlacementGroupId:     examplePlacementGroup.ID(),
/// 			AvailabilitySetId:             exampleAvailabilitySet.ID(),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 				Caching:            pulumi.String("ReadWrite"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-account", prefix),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSubnet,
/// 			example1,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePool, err := netapp.NewPool(ctx, "example", &netapp.PoolArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-pool", prefix),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SizeInTb:          pulumi.Int(8),
/// 			QosType:           pulumi.String("Manual"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeGroupSapHana(ctx, "example", &netapp.VolumeGroupSapHanaArgs{
/// 			Name:                  pulumi.Sprintf("%v-netapp-volumegroup", prefix),
/// 			Location:              exampleResourceGroup.Location,
/// 			ResourceGroupName:     exampleResourceGroup.Name,
/// 			AccountName:           exampleAccount.Name,
/// 			GroupDescription:      pulumi.String("Test volume group"),
/// 			ApplicationIdentifier: pulumi.String("TST"),
/// 			Volumes: netapp.VolumeGroupSapHanaVolumeArray{
/// 				&netapp.VolumeGroupSapHanaVolumeArgs{
/// 					Name:                      pulumi.Sprintf("%v-netapp-volume-1", prefix),
/// 					VolumePath:                pulumi.String("my-unique-file-path-1"),
/// 					ServiceLevel:              pulumi.String("Standard"),
/// 					CapacityPoolId:            examplePool.ID(),
/// 					SubnetId:                  exampleSubnet.ID(),
/// 					ProximityPlacementGroupId: examplePlacementGroup.ID(),
/// 					VolumeSpecName:            pulumi.String("data"),
/// 					StorageQuotaInGb:          pulumi.Int(1024),
/// 					ThroughputInMibps:         pulumi.Float64(24),
/// 					Protocols:                 pulumi.String("NFSv4.1"),
/// 					SecurityStyle:             pulumi.String("unix"),
/// 					SnapshotDirectoryVisible:  pulumi.Bool(false),
/// 					ExportPolicyRules: netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 					Tags: pulumi.StringMap{
/// 						"foo": pulumi.String("bar"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupSapHanaVolumeArgs{
/// 					Name:                      pulumi.Sprintf("%v-netapp-volume-2", prefix),
/// 					VolumePath:                pulumi.String("my-unique-file-path-2"),
/// 					ServiceLevel:              pulumi.String("Standard"),
/// 					CapacityPoolId:            examplePool.ID(),
/// 					SubnetId:                  exampleSubnet.ID(),
/// 					ProximityPlacementGroupId: examplePlacementGroup.ID(),
/// 					VolumeSpecName:            pulumi.String("log"),
/// 					StorageQuotaInGb:          pulumi.Int(1024),
/// 					ThroughputInMibps:         pulumi.Float64(24),
/// 					Protocols:                 pulumi.String("NFSv4.1"),
/// 					SecurityStyle:             pulumi.String("unix"),
/// 					SnapshotDirectoryVisible:  pulumi.Bool(false),
/// 					ExportPolicyRules: netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 					Tags: pulumi.StringMap{
/// 						"foo": pulumi.String("bar"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupSapHanaVolumeArgs{
/// 					Name:                      pulumi.Sprintf("%v-netapp-volume-3", prefix),
/// 					VolumePath:                pulumi.String("my-unique-file-path-3"),
/// 					ServiceLevel:              pulumi.String("Standard"),
/// 					CapacityPoolId:            examplePool.ID(),
/// 					SubnetId:                  exampleSubnet.ID(),
/// 					ProximityPlacementGroupId: examplePlacementGroup.ID(),
/// 					VolumeSpecName:            pulumi.String("shared"),
/// 					StorageQuotaInGb:          pulumi.Int(1024),
/// 					ThroughputInMibps:         pulumi.Float64(24),
/// 					Protocols:                 pulumi.String("NFSv4.1"),
/// 					SecurityStyle:             pulumi.String("unix"),
/// 					SnapshotDirectoryVisible:  pulumi.Bool(false),
/// 					ExportPolicyRules: netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleLinuxVirtualMachine,
/// 			examplePlacementGroup,
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
/// import com.pulumi.random.String;
/// import com.pulumi.random.StringArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.proximity.PlacementGroup;
/// import com.pulumi.azure.proximity.PlacementGroupArgs;
/// import com.pulumi.azure.compute.AvailabilitySet;
/// import com.pulumi.azure.compute.AvailabilitySetArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
/// import com.pulumi.azure.netapp.VolumeGroupSapHana;
/// import com.pulumi.azure.netapp.VolumeGroupSapHanaArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeGroupSapHanaVolumeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(java.lang.String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new String("example", StringArgs.builder()
///             .length(12)
///             .special(true)
///             .build());
///
///         final var adminUsername = "exampleadmin";
///
///         final var adminPassword = example.result();
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name(String.format("%s-resources", prefix))
///             .location(location)
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name(String.format("%s-vnet", prefix))
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .addressSpaces("10.88.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name(String.format("%s-delegated-subnet", prefix))
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
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
///         var example1 = new Subnet("example1", SubnetArgs.builder()
///             .name(String.format("%s-hosts-subnet", prefix))
///             .resourceGroupName(exampleResourceGroup.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.88.1.0/24")
///             .build());
///
///         var examplePlacementGroup = new PlacementGroup("examplePlacementGroup", PlacementGroupArgs.builder()
///             .name(String.format("%s-ppg", prefix))
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleAvailabilitySet = new AvailabilitySet("exampleAvailabilitySet", AvailabilitySetArgs.builder()
///             .name(String.format("%s-avset", prefix))
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .proximityPlacementGroupId(examplePlacementGroup.id())
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name(String.format("%s-nic", prefix))
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(example1.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name(String.format("%s-vm", prefix))
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .size("Standard_M8ms")
///             .adminUsername(adminUsername)
///             .adminPassword(adminPassword)
///             .disablePasswordAuthentication(false)
///             .proximityPlacementGroupId(examplePlacementGroup.id())
///             .availabilitySetId(exampleAvailabilitySet.id())
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .sourceImageReference(LinuxVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .storageAccountType("Standard_LRS")
///                 .caching("ReadWrite")
///                 .build())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name(String.format("%s-netapp-account", prefix))
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleSubnet,
///                     example1)
///                 .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name(String.format("%s-netapp-pool", prefix))
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .accountName(exampleAccount.name())
///             .serviceLevel("Standard")
///             .sizeInTb(8)
///             .qosType("Manual")
///             .build());
///
///         var exampleVolumeGroupSapHana = new VolumeGroupSapHana("exampleVolumeGroupSapHana", VolumeGroupSapHanaArgs.builder()
///             .name(String.format("%s-netapp-volumegroup", prefix))
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .accountName(exampleAccount.name())
///             .groupDescription("Test volume group")
///             .applicationIdentifier("TST")
///             .volumes(
///                 VolumeGroupSapHanaVolumeArgs.builder()
///                     .name(String.format("%s-netapp-volume-1", prefix))
///                     .volumePath("my-unique-file-path-1")
///                     .serviceLevel("Standard")
///                     .capacityPoolId(examplePool.id())
///                     .subnetId(exampleSubnet.id())
///                     .proximityPlacementGroupId(examplePlacementGroup.id())
///                     .volumeSpecName("data")
///                     .storageQuotaInGb(1024)
///                     .throughputInMibps(24.0)
///                     .protocols("NFSv4.1")
///                     .securityStyle("unix")
///                     .snapshotDirectoryVisible(false)
///                     .exportPolicyRules(VolumeGroupSapHanaVolumeExportPolicyRuleArgs.builder()
///                         .ruleIndex(1)
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3Enabled(false)
///                         .nfsv41Enabled(true)
///                         .unixReadOnly(false)
///                         .unixReadWrite(true)
///                         .rootAccessEnabled(false)
///                         .build())
///                     .tags(Map.of("foo", "bar"))
///                     .build(),
///                 VolumeGroupSapHanaVolumeArgs.builder()
///                     .name(String.format("%s-netapp-volume-2", prefix))
///                     .volumePath("my-unique-file-path-2")
///                     .serviceLevel("Standard")
///                     .capacityPoolId(examplePool.id())
///                     .subnetId(exampleSubnet.id())
///                     .proximityPlacementGroupId(examplePlacementGroup.id())
///                     .volumeSpecName("log")
///                     .storageQuotaInGb(1024)
///                     .throughputInMibps(24.0)
///                     .protocols("NFSv4.1")
///                     .securityStyle("unix")
///                     .snapshotDirectoryVisible(false)
///                     .exportPolicyRules(VolumeGroupSapHanaVolumeExportPolicyRuleArgs.builder()
///                         .ruleIndex(1)
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3Enabled(false)
///                         .nfsv41Enabled(true)
///                         .unixReadOnly(false)
///                         .unixReadWrite(true)
///                         .rootAccessEnabled(false)
///                         .build())
///                     .tags(Map.of("foo", "bar"))
///                     .build(),
///                 VolumeGroupSapHanaVolumeArgs.builder()
///                     .name(String.format("%s-netapp-volume-3", prefix))
///                     .volumePath("my-unique-file-path-3")
///                     .serviceLevel("Standard")
///                     .capacityPoolId(examplePool.id())
///                     .subnetId(exampleSubnet.id())
///                     .proximityPlacementGroupId(examplePlacementGroup.id())
///                     .volumeSpecName("shared")
///                     .storageQuotaInGb(1024)
///                     .throughputInMibps(24.0)
///                     .protocols("NFSv4.1")
///                     .securityStyle("unix")
///                     .snapshotDirectoryVisible(false)
///                     .exportPolicyRules(VolumeGroupSapHanaVolumeExportPolicyRuleArgs.builder()
///                         .ruleIndex(1)
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3Enabled(false)
///                         .nfsv41Enabled(true)
///                         .unixReadOnly(false)
///                         .unixReadWrite(true)
///                         .rootAccessEnabled(false)
///                         .build())
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleLinuxVirtualMachine,
///                     examplePlacementGroup)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: random:String
///     properties:
///       length: 12
///       special: true
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: ${prefix}-resources
///       location: ${location}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: ${prefix}-vnet
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       addressSpaces:
///         - 10.88.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: ${prefix}-delegated-subnet
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.88.2.0/24
///       delegations:
///         - name: testdelegation
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   example1:
///     type: azure:network:Subnet
///     properties:
///       name: ${prefix}-hosts-subnet
///       resourceGroupName: ${exampleResourceGroup.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.88.1.0/24
///   examplePlacementGroup:
///     type: azure:proximity:PlacementGroup
///     name: example
///     properties:
///       name: ${prefix}-ppg
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleAvailabilitySet:
///     type: azure:compute:AvailabilitySet
///     name: example
///     properties:
///       name: ${prefix}-avset
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       proximityPlacementGroupId: ${examplePlacementGroup.id}
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: ${prefix}-nic
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${example1.id}
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: ${prefix}-vm
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       size: Standard_M8ms
///       adminUsername: ${adminUsername}
///       adminPassword: ${adminPassword}
///       disablePasswordAuthentication: false
///       proximityPlacementGroupId: ${examplePlacementGroup.id}
///       availabilitySetId: ${exampleAvailabilitySet.id}
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       osDisk:
///         storageAccountType: Standard_LRS
///         caching: ReadWrite
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: ${prefix}-netapp-account
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///     options:
///       dependsOn:
///         - ${exampleSubnet}
///         - ${example1}
///   examplePool:
///     type: azure:netapp:Pool
///     name: example
///     properties:
///       name: ${prefix}-netapp-pool
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       accountName: ${exampleAccount.name}
///       serviceLevel: Standard
///       sizeInTb: 8
///       qosType: Manual
///   exampleVolumeGroupSapHana:
///     type: azure:netapp:VolumeGroupSapHana
///     name: example
///     properties:
///       name: ${prefix}-netapp-volumegroup
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       accountName: ${exampleAccount.name}
///       groupDescription: Test volume group
///       applicationIdentifier: TST
///       volumes:
///         - name: ${prefix}-netapp-volume-1
///           volumePath: my-unique-file-path-1
///           serviceLevel: Standard
///           capacityPoolId: ${examplePool.id}
///           subnetId: ${exampleSubnet.id}
///           proximityPlacementGroupId: ${examplePlacementGroup.id}
///           volumeSpecName: data
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
///           tags:
///             foo: bar
///         - name: ${prefix}-netapp-volume-2
///           volumePath: my-unique-file-path-2
///           serviceLevel: Standard
///           capacityPoolId: ${examplePool.id}
///           subnetId: ${exampleSubnet.id}
///           proximityPlacementGroupId: ${examplePlacementGroup.id}
///           volumeSpecName: log
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
///           tags:
///             foo: bar
///         - name: ${prefix}-netapp-volume-3
///           volumePath: my-unique-file-path-3
///           serviceLevel: Standard
///           capacityPoolId: ${examplePool.id}
///           subnetId: ${exampleSubnet.id}
///           proximityPlacementGroupId: ${examplePlacementGroup.id}
///           volumeSpecName: shared
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
///     options:
///       dependsOn:
///         - ${exampleLinuxVirtualMachine}
///         - ${examplePlacementGroup}
/// variables:
///   adminUsername: exampleadmin
///   adminPassword: ${example.result}
/// ```
///
///
/// ### Example with Availability Zone and Customer-Managed Keys
///
/// This example demonstrates using availability zones instead of proximity placement groups, with customer-managed key encryption and Standard network features.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: `${prefix}-resources`,
///     location: location,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: `${prefix}-vnet`,
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.88.0.0/16"],
/// });
/// const exampleDelegated = new azure.network.Subnet("example_delegated", {
///     name: `${prefix}-delegated-subnet`,
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.88.1.0/24"],
///     delegations: [{
///         name: "netapp",
///         serviceDelegation: {
///             name: "Microsoft.Netapp/volumes",
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }],
/// });
/// const examplePrivateEndpoint = new azure.network.Subnet("example_private_endpoint", {
///     name: `${prefix}-pe-subnet`,
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.88.2.0/24"],
/// });
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: `${prefix}-netapp-account`,
///     location: example.location,
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: `${prefix}kv`,
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
///     softDeleteRetentionDays: 7,
///     enabledForDiskEncryption: true,
///     enabledForDeployment: true,
///     enabledForTemplateDeployment: true,
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "WrapKey",
///                 "UnwrapKey",
///                 "GetRotationPolicy",
///                 "SetRotationPolicy",
///             ],
///         },
///         {
///             tenantId: exampleAccount.identity.apply(identity => identity?.tenantId),
///             objectId: exampleAccount.identity.apply(identity => identity?.principalId),
///             keyPermissions: [
///                 "Get",
///                 "Encrypt",
///                 "Decrypt",
///             ],
///         },
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: `${prefix}-key`,
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
/// });
/// const exampleAccountEncryption = new azure.netapp.AccountEncryption("example", {
///     netappAccountId: exampleAccount.id,
///     systemAssignedIdentityPrincipalId: exampleAccount.identity.apply(identity => identity?.principalId),
///     encryptionKey: exampleKey.versionlessId,
/// });
/// const exampleEndpoint = new azure.privatelink.Endpoint("example", {
///     name: `${prefix}-pe-kv`,
///     location: example.location,
///     resourceGroupName: example.name,
///     subnetId: examplePrivateEndpoint.id,
///     privateServiceConnection: {
///         name: `${prefix}-pe-sc-kv`,
///         privateConnectionResourceId: exampleKeyVault.id,
///         isManualConnection: false,
///         subresourceNames: ["Vault"],
///     },
/// });
/// const examplePool = new azure.netapp.Pool("example", {
///     name: `${prefix}-netapp-pool`,
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     serviceLevel: "Standard",
///     sizeInTb: 8,
///     qosType: "Manual",
/// }, {
///     dependsOn: [exampleAccountEncryption],
/// });
/// const exampleVolumeGroupSapHana = new azure.netapp.VolumeGroupSapHana("example", {
///     name: `${prefix}-netapp-volumegroup`,
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     groupDescription: "Test volume group with zone and CMK",
///     applicationIdentifier: "TST",
///     volumes: [
///         {
///             name: `${prefix}-netapp-volume-data`,
///             volumePath: "my-unique-file-path-data",
///             serviceLevel: "Standard",
///             capacityPoolId: examplePool.id,
///             subnetId: exampleDelegated.id,
///             zone: "1",
///             volumeSpecName: "data",
///             storageQuotaInGb: 1024,
///             throughputInMibps: 24,
///             protocols: "NFSv4.1",
///             securityStyle: "unix",
///             snapshotDirectoryVisible: false,
///             networkFeatures: "Standard",
///             encryptionKeySource: "Microsoft.KeyVault",
///             keyVaultPrivateEndpointId: exampleEndpoint.id,
///             exportPolicyRules: [{
///                 ruleIndex: 1,
///                 allowedClients: "0.0.0.0/0",
///                 nfsv3Enabled: false,
///                 nfsv41Enabled: true,
///                 unixReadOnly: false,
///                 unixReadWrite: true,
///                 rootAccessEnabled: false,
///             }],
///         },
///         {
///             name: `${prefix}-netapp-volume-log`,
///             volumePath: "my-unique-file-path-log",
///             serviceLevel: "Standard",
///             capacityPoolId: examplePool.id,
///             subnetId: exampleDelegated.id,
///             zone: "1",
///             volumeSpecName: "log",
///             storageQuotaInGb: 1024,
///             throughputInMibps: 24,
///             protocols: "NFSv4.1",
///             securityStyle: "unix",
///             snapshotDirectoryVisible: false,
///             networkFeatures: "Standard",
///             encryptionKeySource: "Microsoft.KeyVault",
///             keyVaultPrivateEndpointId: exampleEndpoint.id,
///             exportPolicyRules: [{
///                 ruleIndex: 1,
///                 allowedClients: "0.0.0.0/0",
///                 nfsv3Enabled: false,
///                 nfsv41Enabled: true,
///                 unixReadOnly: false,
///                 unixReadWrite: true,
///                 rootAccessEnabled: false,
///             }],
///         },
///         {
///             name: `${prefix}-netapp-volume-shared`,
///             volumePath: "my-unique-file-path-shared",
///             serviceLevel: "Standard",
///             capacityPoolId: examplePool.id,
///             subnetId: exampleDelegated.id,
///             zone: "1",
///             volumeSpecName: "shared",
///             storageQuotaInGb: 1024,
///             throughputInMibps: 24,
///             protocols: "NFSv4.1",
///             securityStyle: "unix",
///             snapshotDirectoryVisible: false,
///             networkFeatures: "Standard",
///             encryptionKeySource: "Microsoft.KeyVault",
///             keyVaultPrivateEndpointId: exampleEndpoint.id,
///             exportPolicyRules: [{
///                 ruleIndex: 1,
///                 allowedClients: "0.0.0.0/0",
///                 nfsv3Enabled: false,
///                 nfsv41Enabled: true,
///                 unixReadOnly: false,
///                 unixReadWrite: true,
///                 rootAccessEnabled: false,
///             }],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name=f"{prefix}-resources",
///     location=location)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name=f"{prefix}-vnet",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.88.0.0/16"])
/// example_delegated = azure.network.Subnet("example_delegated",
///     name=f"{prefix}-delegated-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.88.1.0/24"],
///     delegations=[{
///         "name": "netapp",
///         "service_delegation": {
///             "name": "Microsoft.Netapp/volumes",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// example_private_endpoint = azure.network.Subnet("example_private_endpoint",
///     name=f"{prefix}-pe-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.88.2.0/24"])
/// example_account = azure.netapp.Account("example",
///     name=f"{prefix}-netapp-account",
///     location=example.location,
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name=f"{prefix}kv",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True,
///     soft_delete_retention_days=7,
///     enabled_for_disk_encryption=True,
///     enabled_for_deployment=True,
///     enabled_for_template_deployment=True,
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "WrapKey",
///                 "UnwrapKey",
///                 "GetRotationPolicy",
///                 "SetRotationPolicy",
///             ],
///         },
///         {
///             "tenant_id": example_account.identity.tenant_id,
///             "object_id": example_account.identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "Encrypt",
///                 "Decrypt",
///             ],
///         },
///     ])
/// example_key = azure.keyvault.Key("example",
///     name=f"{prefix}-key",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ])
/// example_account_encryption = azure.netapp.AccountEncryption("example",
///     netapp_account_id=example_account.id,
///     system_assigned_identity_principal_id=example_account.identity.principal_id,
///     encryption_key=example_key.versionless_id)
/// example_endpoint = azure.privatelink.Endpoint("example",
///     name=f"{prefix}-pe-kv",
///     location=example.location,
///     resource_group_name=example.name,
///     subnet_id=example_private_endpoint.id,
///     private_service_connection={
///         "name": f"{prefix}-pe-sc-kv",
///         "private_connection_resource_id": example_key_vault.id,
///         "is_manual_connection": False,
///         "subresource_names": ["Vault"],
///     })
/// example_pool = azure.netapp.Pool("example",
///     name=f"{prefix}-netapp-pool",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     service_level="Standard",
///     size_in_tb=8,
///     qos_type="Manual",
///     opts = pulumi.ResourceOptions(depends_on=[example_account_encryption]))
/// example_volume_group_sap_hana = azure.netapp.VolumeGroupSapHana("example",
///     name=f"{prefix}-netapp-volumegroup",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     group_description="Test volume group with zone and CMK",
///     application_identifier="TST",
///     volumes=[
///         {
///             "name": f"{prefix}-netapp-volume-data",
///             "volume_path": "my-unique-file-path-data",
///             "service_level": "Standard",
///             "capacity_pool_id": example_pool.id,
///             "subnet_id": example_delegated.id,
///             "zone": "1",
///             "volume_spec_name": "data",
///             "storage_quota_in_gb": 1024,
///             "throughput_in_mibps": 24,
///             "protocols": "NFSv4.1",
///             "security_style": "unix",
///             "snapshot_directory_visible": False,
///             "network_features": "Standard",
///             "encryption_key_source": "Microsoft.KeyVault",
///             "key_vault_private_endpoint_id": example_endpoint.id,
///             "export_policy_rules": [{
///                 "rule_index": 1,
///                 "allowed_clients": "0.0.0.0/0",
///                 "nfsv3_enabled": False,
///                 "nfsv41_enabled": True,
///                 "unix_read_only": False,
///                 "unix_read_write": True,
///                 "root_access_enabled": False,
///             }],
///         },
///         {
///             "name": f"{prefix}-netapp-volume-log",
///             "volume_path": "my-unique-file-path-log",
///             "service_level": "Standard",
///             "capacity_pool_id": example_pool.id,
///             "subnet_id": example_delegated.id,
///             "zone": "1",
///             "volume_spec_name": "log",
///             "storage_quota_in_gb": 1024,
///             "throughput_in_mibps": 24,
///             "protocols": "NFSv4.1",
///             "security_style": "unix",
///             "snapshot_directory_visible": False,
///             "network_features": "Standard",
///             "encryption_key_source": "Microsoft.KeyVault",
///             "key_vault_private_endpoint_id": example_endpoint.id,
///             "export_policy_rules": [{
///                 "rule_index": 1,
///                 "allowed_clients": "0.0.0.0/0",
///                 "nfsv3_enabled": False,
///                 "nfsv41_enabled": True,
///                 "unix_read_only": False,
///                 "unix_read_write": True,
///                 "root_access_enabled": False,
///             }],
///         },
///         {
///             "name": f"{prefix}-netapp-volume-shared",
///             "volume_path": "my-unique-file-path-shared",
///             "service_level": "Standard",
///             "capacity_pool_id": example_pool.id,
///             "subnet_id": example_delegated.id,
///             "zone": "1",
///             "volume_spec_name": "shared",
///             "storage_quota_in_gb": 1024,
///             "throughput_in_mibps": 24,
///             "protocols": "NFSv4.1",
///             "security_style": "unix",
///             "snapshot_directory_visible": False,
///             "network_features": "Standard",
///             "encryption_key_source": "Microsoft.KeyVault",
///             "key_vault_private_endpoint_id": example_endpoint.id,
///             "export_policy_rules": [{
///                 "rule_index": 1,
///                 "allowed_clients": "0.0.0.0/0",
///                 "nfsv3_enabled": False,
///                 "nfsv41_enabled": True,
///                 "unix_read_only": False,
///                 "unix_read_write": True,
///                 "root_access_enabled": False,
///             }],
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
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = $"{prefix}-resources",
///         Location = location,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = $"{prefix}-vnet",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.88.0.0/16",
///         },
///     });
///
///     var exampleDelegated = new Azure.Network.Subnet("example_delegated", new()
///     {
///         Name = $"{prefix}-delegated-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.88.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "netapp",
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
///     var examplePrivateEndpoint = new Azure.Network.Subnet("example_private_endpoint", new()
///     {
///         Name = $"{prefix}-pe-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.88.2.0/24",
///         },
///     });
///
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = $"{prefix}-netapp-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Identity = new Azure.NetApp.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = $"{prefix}kv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///         SoftDeleteRetentionDays = 7,
///         EnabledForDiskEncryption = true,
///         EnabledForDeployment = true,
///         EnabledForTemplateDeployment = true,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "Create",
///                     "Delete",
///                     "WrapKey",
///                     "UnwrapKey",
///                     "GetRotationPolicy",
///                     "SetRotationPolicy",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleAccount.Identity.Apply(identity => identity?.TenantId),
///                 ObjectId = exampleAccount.Identity.Apply(identity => identity?.PrincipalId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "Encrypt",
///                     "Decrypt",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = $"{prefix}-key",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "decrypt",
///             "encrypt",
///             "sign",
///             "unwrapKey",
///             "verify",
///             "wrapKey",
///         },
///     });
///
///     var exampleAccountEncryption = new Azure.NetApp.AccountEncryption("example", new()
///     {
///         NetappAccountId = exampleAccount.Id,
///         SystemAssignedIdentityPrincipalId = exampleAccount.Identity.Apply(identity => identity?.PrincipalId),
///         EncryptionKey = exampleKey.VersionlessId,
///     });
///
///     var exampleEndpoint = new Azure.PrivateLink.Endpoint("example", new()
///     {
///         Name = $"{prefix}-pe-kv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SubnetId = examplePrivateEndpoint.Id,
///         PrivateServiceConnection = new Azure.PrivateLink.Inputs.EndpointPrivateServiceConnectionArgs
///         {
///             Name = $"{prefix}-pe-sc-kv",
///             PrivateConnectionResourceId = exampleKeyVault.Id,
///             IsManualConnection = false,
///             SubresourceNames = new[]
///             {
///                 "Vault",
///             },
///         },
///     });
///
///     var examplePool = new Azure.NetApp.Pool("example", new()
///     {
///         Name = $"{prefix}-netapp-pool",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         ServiceLevel = "Standard",
///         SizeInTb = 8,
///         QosType = "Manual",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAccountEncryption,
///         },
///     });
///
///     var exampleVolumeGroupSapHana = new Azure.NetApp.VolumeGroupSapHana("example", new()
///     {
///         Name = $"{prefix}-netapp-volumegroup",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         GroupDescription = "Test volume group with zone and CMK",
///         ApplicationIdentifier = "TST",
///         Volumes = new[]
///         {
///             new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeArgs
///             {
///                 Name = $"{prefix}-netapp-volume-data",
///                 VolumePath = "my-unique-file-path-data",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePool.Id,
///                 SubnetId = exampleDelegated.Id,
///                 Zone = "1",
///                 VolumeSpecName = "data",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 NetworkFeatures = "Standard",
///                 EncryptionKeySource = "Microsoft.KeyVault",
///                 KeyVaultPrivateEndpointId = exampleEndpoint.Id,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///             },
///             new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeArgs
///             {
///                 Name = $"{prefix}-netapp-volume-log",
///                 VolumePath = "my-unique-file-path-log",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePool.Id,
///                 SubnetId = exampleDelegated.Id,
///                 Zone = "1",
///                 VolumeSpecName = "log",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 NetworkFeatures = "Standard",
///                 EncryptionKeySource = "Microsoft.KeyVault",
///                 KeyVaultPrivateEndpointId = exampleEndpoint.Id,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///             },
///             new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeArgs
///             {
///                 Name = $"{prefix}-netapp-volume-shared",
///                 VolumePath = "my-unique-file-path-shared",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePool.Id,
///                 SubnetId = exampleDelegated.Id,
///                 Zone = "1",
///                 VolumeSpecName = "shared",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 NetworkFeatures = "Standard",
///                 EncryptionKeySource = "Microsoft.KeyVault",
///                 KeyVaultPrivateEndpointId = exampleEndpoint.Id,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupSapHanaVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.Sprintf("%v-resources", prefix),
/// 			Location: pulumi.Any(location),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.Sprintf("%v-vnet", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.88.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDelegated, err := network.NewSubnet(ctx, "example_delegated", &network.SubnetArgs{
/// 			Name:               pulumi.Sprintf("%v-delegated-subnet", prefix),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.88.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("netapp"),
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
/// 		examplePrivateEndpoint, err := network.NewSubnet(ctx, "example_private_endpoint", &network.SubnetArgs{
/// 			Name:               pulumi.Sprintf("%v-pe-subnet", prefix),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.88.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-account", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Identity: &netapp.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                         pulumi.Sprintf("%vkv", prefix),
/// 			Location:                     example.Location,
/// 			ResourceGroupName:            example.Name,
/// 			TenantId:                     pulumi.String(current.TenantId),
/// 			SkuName:                      pulumi.String("standard"),
/// 			PurgeProtectionEnabled:       pulumi.Bool(true),
/// 			SoftDeleteRetentionDays:      pulumi.Int(7),
/// 			EnabledForDiskEncryption:     pulumi.Bool(true),
/// 			EnabledForDeployment:         pulumi.Bool(true),
/// 			EnabledForTemplateDeployment: pulumi.Bool(true),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("GetRotationPolicy"),
/// 						pulumi.String("SetRotationPolicy"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleAccount.Identity.ApplyT(func(identity netapp.AccountIdentity) (*string, error) {
/// 						return &identity.TenantId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					ObjectId: exampleAccount.Identity.ApplyT(func(identity netapp.AccountIdentity) (*string, error) {
/// 						return &identity.PrincipalId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Decrypt"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.Sprintf("%v-key", prefix),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("decrypt"),
/// 				pulumi.String("encrypt"),
/// 				pulumi.String("sign"),
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("verify"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccountEncryption, err := netapp.NewAccountEncryption(ctx, "example", &netapp.AccountEncryptionArgs{
/// 			NetappAccountId: exampleAccount.ID(),
/// 			SystemAssignedIdentityPrincipalId: pulumi.String(exampleAccount.Identity.ApplyT(func(identity netapp.AccountIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			EncryptionKey: exampleKey.VersionlessId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEndpoint, err := privatelink.NewEndpoint(ctx, "example", &privatelink.EndpointArgs{
/// 			Name:              pulumi.Sprintf("%v-pe-kv", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SubnetId:          examplePrivateEndpoint.ID(),
/// 			PrivateServiceConnection: &privatelink.EndpointPrivateServiceConnectionArgs{
/// 				Name:                        pulumi.Sprintf("%v-pe-sc-kv", prefix),
/// 				PrivateConnectionResourceId: exampleKeyVault.ID(),
/// 				IsManualConnection:          pulumi.Bool(false),
/// 				SubresourceNames: pulumi.StringArray{
/// 					pulumi.String("Vault"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePool, err := netapp.NewPool(ctx, "example", &netapp.PoolArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-pool", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SizeInTb:          pulumi.Int(8),
/// 			QosType:           pulumi.String("Manual"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAccountEncryption,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeGroupSapHana(ctx, "example", &netapp.VolumeGroupSapHanaArgs{
/// 			Name:                  pulumi.Sprintf("%v-netapp-volumegroup", prefix),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			AccountName:           exampleAccount.Name,
/// 			GroupDescription:      pulumi.String("Test volume group with zone and CMK"),
/// 			ApplicationIdentifier: pulumi.String("TST"),
/// 			Volumes: netapp.VolumeGroupSapHanaVolumeArray{
/// 				&netapp.VolumeGroupSapHanaVolumeArgs{
/// 					Name:                      pulumi.Sprintf("%v-netapp-volume-data", prefix),
/// 					VolumePath:                pulumi.String("my-unique-file-path-data"),
/// 					ServiceLevel:              pulumi.String("Standard"),
/// 					CapacityPoolId:            examplePool.ID(),
/// 					SubnetId:                  exampleDelegated.ID(),
/// 					Zone:                      pulumi.String("1"),
/// 					VolumeSpecName:            pulumi.String("data"),
/// 					StorageQuotaInGb:          pulumi.Int(1024),
/// 					ThroughputInMibps:         pulumi.Float64(24),
/// 					Protocols:                 pulumi.String("NFSv4.1"),
/// 					SecurityStyle:             pulumi.String("unix"),
/// 					SnapshotDirectoryVisible:  pulumi.Bool(false),
/// 					NetworkFeatures:           pulumi.String("Standard"),
/// 					EncryptionKeySource:       pulumi.String("Microsoft.KeyVault"),
/// 					KeyVaultPrivateEndpointId: exampleEndpoint.ID(),
/// 					ExportPolicyRules: netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 				&netapp.VolumeGroupSapHanaVolumeArgs{
/// 					Name:                      pulumi.Sprintf("%v-netapp-volume-log", prefix),
/// 					VolumePath:                pulumi.String("my-unique-file-path-log"),
/// 					ServiceLevel:              pulumi.String("Standard"),
/// 					CapacityPoolId:            examplePool.ID(),
/// 					SubnetId:                  exampleDelegated.ID(),
/// 					Zone:                      pulumi.String("1"),
/// 					VolumeSpecName:            pulumi.String("log"),
/// 					StorageQuotaInGb:          pulumi.Int(1024),
/// 					ThroughputInMibps:         pulumi.Float64(24),
/// 					Protocols:                 pulumi.String("NFSv4.1"),
/// 					SecurityStyle:             pulumi.String("unix"),
/// 					SnapshotDirectoryVisible:  pulumi.Bool(false),
/// 					NetworkFeatures:           pulumi.String("Standard"),
/// 					EncryptionKeySource:       pulumi.String("Microsoft.KeyVault"),
/// 					KeyVaultPrivateEndpointId: exampleEndpoint.ID(),
/// 					ExportPolicyRules: netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 				&netapp.VolumeGroupSapHanaVolumeArgs{
/// 					Name:                      pulumi.Sprintf("%v-netapp-volume-shared", prefix),
/// 					VolumePath:                pulumi.String("my-unique-file-path-shared"),
/// 					ServiceLevel:              pulumi.String("Standard"),
/// 					CapacityPoolId:            examplePool.ID(),
/// 					SubnetId:                  exampleDelegated.ID(),
/// 					Zone:                      pulumi.String("1"),
/// 					VolumeSpecName:            pulumi.String("shared"),
/// 					StorageQuotaInGb:          pulumi.Int(1024),
/// 					ThroughputInMibps:         pulumi.Float64(24),
/// 					Protocols:                 pulumi.String("NFSv4.1"),
/// 					SecurityStyle:             pulumi.String("unix"),
/// 					SnapshotDirectoryVisible:  pulumi.Bool(false),
/// 					NetworkFeatures:           pulumi.String("Standard"),
/// 					EncryptionKeySource:       pulumi.String("Microsoft.KeyVault"),
/// 					KeyVaultPrivateEndpointId: exampleEndpoint.ID(),
/// 					ExportPolicyRules: netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupSapHanaVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.netapp.AccountEncryption;
/// import com.pulumi.azure.netapp.AccountEncryptionArgs;
/// import com.pulumi.azure.privatelink.Endpoint;
/// import com.pulumi.azure.privatelink.EndpointArgs;
/// import com.pulumi.azure.privatelink.inputs.EndpointPrivateServiceConnectionArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
/// import com.pulumi.azure.netapp.VolumeGroupSapHana;
/// import com.pulumi.azure.netapp.VolumeGroupSapHanaArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeGroupSapHanaVolumeArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name(String.format("%s-resources", prefix))
///             .location(location)
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name(String.format("%s-vnet", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.88.0.0/16")
///             .build());
///
///         var exampleDelegated = new Subnet("exampleDelegated", SubnetArgs.builder()
///             .name(String.format("%s-delegated-subnet", prefix))
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.88.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("netapp")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Netapp/volumes")
///                     .actions(
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var examplePrivateEndpoint = new Subnet("examplePrivateEndpoint", SubnetArgs.builder()
///             .name(String.format("%s-pe-subnet", prefix))
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.88.2.0/24")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name(String.format("%s-netapp-account", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name(String.format("%skv", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .softDeleteRetentionDays(7)
///             .enabledForDiskEncryption(true)
///             .enabledForDeployment(true)
///             .enabledForTemplateDeployment(true)
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Get",
///                         "Create",
///                         "Delete",
///                         "WrapKey",
///                         "UnwrapKey",
///                         "GetRotationPolicy",
///                         "SetRotationPolicy")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleAccount.identity().applyValue(_identity -> _identity.tenantId()))
///                     .objectId(exampleAccount.identity().applyValue(_identity -> _identity.principalId()))
///                     .keyPermissions(
///                         "Get",
///                         "Encrypt",
///                         "Decrypt")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name(String.format("%s-key", prefix))
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "decrypt",
///                 "encrypt",
///                 "sign",
///                 "unwrapKey",
///                 "verify",
///                 "wrapKey")
///             .build());
///
///         var exampleAccountEncryption = new AccountEncryption("exampleAccountEncryption", AccountEncryptionArgs.builder()
///             .netappAccountId(exampleAccount.id())
///             .systemAssignedIdentityPrincipalId(exampleAccount.identity().applyValue(_identity -> _identity.principalId()))
///             .encryptionKey(exampleKey.versionlessId())
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .name(String.format("%s-pe-kv", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .subnetId(examplePrivateEndpoint.id())
///             .privateServiceConnection(EndpointPrivateServiceConnectionArgs.builder()
///                 .name(String.format("%s-pe-sc-kv", prefix))
///                 .privateConnectionResourceId(exampleKeyVault.id())
///                 .isManualConnection(false)
///                 .subresourceNames("Vault")
///                 .build())
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name(String.format("%s-netapp-pool", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .serviceLevel("Standard")
///             .sizeInTb(8)
///             .qosType("Manual")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAccountEncryption)
///                 .build());
///
///         var exampleVolumeGroupSapHana = new VolumeGroupSapHana("exampleVolumeGroupSapHana", VolumeGroupSapHanaArgs.builder()
///             .name(String.format("%s-netapp-volumegroup", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .groupDescription("Test volume group with zone and CMK")
///             .applicationIdentifier("TST")
///             .volumes(
///                 VolumeGroupSapHanaVolumeArgs.builder()
///                     .name(String.format("%s-netapp-volume-data", prefix))
///                     .volumePath("my-unique-file-path-data")
///                     .serviceLevel("Standard")
///                     .capacityPoolId(examplePool.id())
///                     .subnetId(exampleDelegated.id())
///                     .zone("1")
///                     .volumeSpecName("data")
///                     .storageQuotaInGb(1024)
///                     .throughputInMibps(24.0)
///                     .protocols("NFSv4.1")
///                     .securityStyle("unix")
///                     .snapshotDirectoryVisible(false)
///                     .networkFeatures("Standard")
///                     .encryptionKeySource("Microsoft.KeyVault")
///                     .keyVaultPrivateEndpointId(exampleEndpoint.id())
///                     .exportPolicyRules(VolumeGroupSapHanaVolumeExportPolicyRuleArgs.builder()
///                         .ruleIndex(1)
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3Enabled(false)
///                         .nfsv41Enabled(true)
///                         .unixReadOnly(false)
///                         .unixReadWrite(true)
///                         .rootAccessEnabled(false)
///                         .build())
///                     .build(),
///                 VolumeGroupSapHanaVolumeArgs.builder()
///                     .name(String.format("%s-netapp-volume-log", prefix))
///                     .volumePath("my-unique-file-path-log")
///                     .serviceLevel("Standard")
///                     .capacityPoolId(examplePool.id())
///                     .subnetId(exampleDelegated.id())
///                     .zone("1")
///                     .volumeSpecName("log")
///                     .storageQuotaInGb(1024)
///                     .throughputInMibps(24.0)
///                     .protocols("NFSv4.1")
///                     .securityStyle("unix")
///                     .snapshotDirectoryVisible(false)
///                     .networkFeatures("Standard")
///                     .encryptionKeySource("Microsoft.KeyVault")
///                     .keyVaultPrivateEndpointId(exampleEndpoint.id())
///                     .exportPolicyRules(VolumeGroupSapHanaVolumeExportPolicyRuleArgs.builder()
///                         .ruleIndex(1)
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3Enabled(false)
///                         .nfsv41Enabled(true)
///                         .unixReadOnly(false)
///                         .unixReadWrite(true)
///                         .rootAccessEnabled(false)
///                         .build())
///                     .build(),
///                 VolumeGroupSapHanaVolumeArgs.builder()
///                     .name(String.format("%s-netapp-volume-shared", prefix))
///                     .volumePath("my-unique-file-path-shared")
///                     .serviceLevel("Standard")
///                     .capacityPoolId(examplePool.id())
///                     .subnetId(exampleDelegated.id())
///                     .zone("1")
///                     .volumeSpecName("shared")
///                     .storageQuotaInGb(1024)
///                     .throughputInMibps(24.0)
///                     .protocols("NFSv4.1")
///                     .securityStyle("unix")
///                     .snapshotDirectoryVisible(false)
///                     .networkFeatures("Standard")
///                     .encryptionKeySource("Microsoft.KeyVault")
///                     .keyVaultPrivateEndpointId(exampleEndpoint.id())
///                     .exportPolicyRules(VolumeGroupSapHanaVolumeExportPolicyRuleArgs.builder()
///                         .ruleIndex(1)
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3Enabled(false)
///                         .nfsv41Enabled(true)
///                         .unixReadOnly(false)
///                         .unixReadWrite(true)
///                         .rootAccessEnabled(false)
///                         .build())
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
///       name: ${prefix}-resources
///       location: ${location}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: ${prefix}-vnet
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.88.0.0/16
///   exampleDelegated:
///     type: azure:network:Subnet
///     name: example_delegated
///     properties:
///       name: ${prefix}-delegated-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.88.1.0/24
///       delegations:
///         - name: netapp
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   examplePrivateEndpoint:
///     type: azure:network:Subnet
///     name: example_private_endpoint
///     properties:
///       name: ${prefix}-pe-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.88.2.0/24
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: ${prefix}-netapp-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: ${prefix}kv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///       softDeleteRetentionDays: 7
///       enabledForDiskEncryption: true
///       enabledForDeployment: true
///       enabledForTemplateDeployment: true
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Get
///             - Create
///             - Delete
///             - WrapKey
///             - UnwrapKey
///             - GetRotationPolicy
///             - SetRotationPolicy
///         - tenantId: ${exampleAccount.identity.tenantId}
///           objectId: ${exampleAccount.identity.principalId}
///           keyPermissions:
///             - Get
///             - Encrypt
///             - Decrypt
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: ${prefix}-key
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - decrypt
///         - encrypt
///         - sign
///         - unwrapKey
///         - verify
///         - wrapKey
///   exampleAccountEncryption:
///     type: azure:netapp:AccountEncryption
///     name: example
///     properties:
///       netappAccountId: ${exampleAccount.id}
///       systemAssignedIdentityPrincipalId: ${exampleAccount.identity.principalId}
///       encryptionKey: ${exampleKey.versionlessId}
///   exampleEndpoint:
///     type: azure:privatelink:Endpoint
///     name: example
///     properties:
///       name: ${prefix}-pe-kv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       subnetId: ${examplePrivateEndpoint.id}
///       privateServiceConnection:
///         name: ${prefix}-pe-sc-kv
///         privateConnectionResourceId: ${exampleKeyVault.id}
///         isManualConnection: false
///         subresourceNames:
///           - Vault
///   examplePool:
///     type: azure:netapp:Pool
///     name: example
///     properties:
///       name: ${prefix}-netapp-pool
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       serviceLevel: Standard
///       sizeInTb: 8
///       qosType: Manual
///     options:
///       dependsOn:
///         - ${exampleAccountEncryption}
///   exampleVolumeGroupSapHana:
///     type: azure:netapp:VolumeGroupSapHana
///     name: example
///     properties:
///       name: ${prefix}-netapp-volumegroup
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       groupDescription: Test volume group with zone and CMK
///       applicationIdentifier: TST
///       volumes:
///         - name: ${prefix}-netapp-volume-data
///           volumePath: my-unique-file-path-data
///           serviceLevel: Standard
///           capacityPoolId: ${examplePool.id}
///           subnetId: ${exampleDelegated.id}
///           zone: '1'
///           volumeSpecName: data
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           networkFeatures: Standard
///           encryptionKeySource: Microsoft.KeyVault
///           keyVaultPrivateEndpointId: ${exampleEndpoint.id}
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
///         - name: ${prefix}-netapp-volume-log
///           volumePath: my-unique-file-path-log
///           serviceLevel: Standard
///           capacityPoolId: ${examplePool.id}
///           subnetId: ${exampleDelegated.id}
///           zone: '1'
///           volumeSpecName: log
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           networkFeatures: Standard
///           encryptionKeySource: Microsoft.KeyVault
///           keyVaultPrivateEndpointId: ${exampleEndpoint.id}
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
///         - name: ${prefix}-netapp-volume-shared
///           volumePath: my-unique-file-path-shared
///           serviceLevel: Standard
///           capacityPoolId: ${examplePool.id}
///           subnetId: ${exampleDelegated.id}
///           zone: '1'
///           volumeSpecName: shared
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           networkFeatures: Standard
///           encryptionKeySource: Microsoft.KeyVault
///           keyVaultPrivateEndpointId: ${exampleEndpoint.id}
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
///
/// ## Import
///
/// Application Volume Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/volumeGroupSapHana:VolumeGroupSapHana example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mytest-rg/providers/Microsoft.NetApp/netAppAccounts/netapp-account-test/volumeGroups/netapp-volumegroup-test
/// ```
class VolumeGroupSapHana extends pulumi.CustomResource {
  /// Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> accountName;
  /// The SAP System ID, maximum 3 characters, e.g. `SH9`. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> applicationIdentifier;
  /// Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> groupDescription;
  /// The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `volume` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> volumes;

  /// Creates a new [VolumeGroupSapHana].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeGroupSapHana]. {@macro pulumi_netapp_volume_group_sap_hana_volume_group_sap_hana_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeGroupSapHana(
    String name, {
    VolumeGroupSapHanaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeGroupSapHana:VolumeGroupSapHana',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    applicationIdentifier = registerOutput<String>('applicationIdentifier');
    groupDescription = registerOutput<String>('groupDescription');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    volumes = registerOutput<List<Map<String, dynamic>>>('volumes');
  }

  /// Gets an existing [VolumeGroupSapHana] resource's state with the given [name] and [id].
  static VolumeGroupSapHana get(
    String name,
    pulumi.Input<String> id, {
    VolumeGroupSapHanaState? state,
  }) {
    return VolumeGroupSapHana._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeGroupSapHana._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeGroupSapHana:VolumeGroupSapHana',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    applicationIdentifier = registerOutput<String>('applicationIdentifier');
    groupDescription = registerOutput<String>('groupDescription');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    volumes = registerOutput<List<Map<String, dynamic>>>('volumes');
  }
}

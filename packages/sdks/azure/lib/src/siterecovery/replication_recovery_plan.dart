import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_recovery_plan_args.dart';
import 'replication_recovery_plan_azure_to_azure_settings.dart';
import 'replication_recovery_plan_boot_recovery_group.dart';
import 'replication_recovery_plan_failover_recovery_group.dart';
import 'replication_recovery_plan_shutdown_recovery_group.dart';
import 'replication_recovery_plan_state.dart';

/// Manages a Site Recovery Replication Recovery Plan within a Recovery Services vault. A recovery plan gathers machines into recovery groups for the purpose of failover.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = new azure.core.ResourceGroup("primary", {
///     name: "tfex-replicated-vm-primary",
///     location: "West US",
/// });
/// const secondary = new azure.core.ResourceGroup("secondary", {
///     name: "tfex-replicated-vm-secondary",
///     location: "East US",
/// });
/// const primaryVirtualNetwork = new azure.network.VirtualNetwork("primary", {
///     name: "network1",
///     resourceGroupName: primary.name,
///     addressSpaces: ["192.168.1.0/24"],
///     location: primary.location,
/// });
/// const primarySubnet = new azure.network.Subnet("primary", {
///     name: "network1-subnet",
///     resourceGroupName: primary.name,
///     virtualNetworkName: primaryVirtualNetwork.name,
///     addressPrefixes: ["192.168.1.0/24"],
/// });
/// const primaryPublicIp = new azure.network.PublicIp("primary", {
///     name: "vm-public-ip-primary",
///     allocationMethod: "Static",
///     location: primary.location,
///     resourceGroupName: primary.name,
///     sku: "Basic",
/// });
/// const vmNetworkInterface = new azure.network.NetworkInterface("vm", {
///     name: "vm-nic",
///     location: primary.location,
///     resourceGroupName: primary.name,
///     ipConfigurations: [{
///         name: "vm",
///         subnetId: primarySubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///         publicIpAddressId: primaryPublicIp.id,
///     }],
/// });
/// const vm = new azure.compute.VirtualMachine("vm", {
///     name: "vm",
///     location: primary.location,
///     resourceGroupName: primary.name,
///     vmSize: "Standard_B1s",
///     networkInterfaceIds: [vmNetworkInterface.id],
///     storageImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     storageOsDisk: {
///         name: "vm-os-disk",
///         osType: "Linux",
///         caching: "ReadWrite",
///         createOption: "FromImage",
///         managedDiskType: "Premium_LRS",
///     },
///     osProfile: {
///         adminUsername: "test-admin-123",
///         adminPassword: "test-pwd-123",
///         computerName: "vm",
///     },
///     osProfileLinuxConfig: {
///         disablePasswordAuthentication: false,
///     },
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: secondary.location,
///     resourceGroupName: secondary.name,
///     sku: "Standard",
/// });
/// const primaryFabric = new azure.siterecovery.Fabric("primary", {
///     name: "primary-fabric",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     location: primary.location,
/// });
/// const secondaryFabric = new azure.siterecovery.Fabric("secondary", {
///     name: "secondary-fabric",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     location: secondary.location,
/// });
/// const primaryProtectionContainer = new azure.siterecovery.ProtectionContainer("primary", {
///     name: "primary-protection-container",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     recoveryFabricName: primaryFabric.name,
/// });
/// const secondaryProtectionContainer = new azure.siterecovery.ProtectionContainer("secondary", {
///     name: "secondary-protection-container",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     recoveryFabricName: secondaryFabric.name,
/// });
/// const policy = new azure.siterecovery.ReplicationPolicy("policy", {
///     name: "policy",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     recoveryPointRetentionInMinutes: 24 * 60,
///     applicationConsistentSnapshotFrequencyInMinutes: 4 * 60,
/// });
/// const container_mapping = new azure.siterecovery.ProtectionContainerMapping("container-mapping", {
///     name: "container-mapping",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     recoveryFabricName: primaryFabric.name,
///     recoverySourceProtectionContainerName: primaryProtectionContainer.name,
///     recoveryTargetProtectionContainerId: secondaryProtectionContainer.id,
///     recoveryReplicationPolicyId: policy.id,
/// });
/// const secondaryVirtualNetwork = new azure.network.VirtualNetwork("secondary", {
///     name: "network2",
///     resourceGroupName: secondary.name,
///     addressSpaces: ["192.168.2.0/24"],
///     location: secondary.location,
/// });
/// const network_mapping = new azure.siterecovery.NetworkMapping("network-mapping", {
///     name: "network-mapping",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     sourceRecoveryFabricName: primaryFabric.name,
///     targetRecoveryFabricName: secondaryFabric.name,
///     sourceNetworkId: primaryVirtualNetwork.id,
///     targetNetworkId: secondaryVirtualNetwork.id,
/// });
/// const primaryAccount = new azure.storage.Account("primary", {
///     name: "primaryrecoverycache",
///     location: primary.location,
///     resourceGroupName: primary.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const secondarySubnet = new azure.network.Subnet("secondary", {
///     name: "network2-subnet",
///     resourceGroupName: secondary.name,
///     virtualNetworkName: secondaryVirtualNetwork.name,
///     addressPrefixes: ["192.168.2.0/24"],
/// });
/// const secondaryPublicIp = new azure.network.PublicIp("secondary", {
///     name: "vm-public-ip-secondary",
///     allocationMethod: "Static",
///     location: secondary.location,
///     resourceGroupName: secondary.name,
///     sku: "Basic",
/// });
/// const vm_replication = new azure.siterecovery.ReplicatedVM("vm-replication", {
///     name: "vm-replication",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     sourceRecoveryFabricName: primaryFabric.name,
///     sourceVmId: vm.id,
///     recoveryReplicationPolicyId: policy.id,
///     sourceRecoveryProtectionContainerName: primaryProtectionContainer.name,
///     targetResourceGroupId: secondary.id,
///     targetRecoveryFabricId: secondaryFabric.id,
///     targetRecoveryProtectionContainerId: secondaryProtectionContainer.id,
///     managedDisks: [{
///         diskId: vm.storageOsDisk.apply(storageOsDisk => storageOsDisk.managedDiskId),
///         stagingStorageAccountId: primaryAccount.id,
///         targetResourceGroupId: secondary.id,
///         targetDiskType: "Premium_LRS",
///         targetReplicaDiskType: "Premium_LRS",
///     }],
///     networkInterfaces: [{
///         sourceNetworkInterfaceId: vmNetworkInterface.id,
///         targetSubnetName: secondarySubnet.name,
///         recoveryPublicIpAddressId: secondaryPublicIp.id,
///     }],
/// }, {
///     dependsOn: [
///         container_mapping,
///         network_mapping,
///     ],
/// });
/// const example = new azure.siterecovery.ReplicationRecoveryPlan("example", {
///     name: "example-recover-plan",
///     recoveryVaultId: vault.id,
///     sourceRecoveryFabricId: primaryFabric.id,
///     targetRecoveryFabricId: secondaryFabric.id,
///     shutdownRecoveryGroup: {},
///     failoverRecoveryGroup: {},
///     bootRecoveryGroups: [{
///         replicatedProtectedItems: [vm_replication.id],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.ResourceGroup("primary",
///     name="tfex-replicated-vm-primary",
///     location="West US")
/// secondary = azure.core.ResourceGroup("secondary",
///     name="tfex-replicated-vm-secondary",
///     location="East US")
/// primary_virtual_network = azure.network.VirtualNetwork("primary",
///     name="network1",
///     resource_group_name=primary.name,
///     address_spaces=["192.168.1.0/24"],
///     location=primary.location)
/// primary_subnet = azure.network.Subnet("primary",
///     name="network1-subnet",
///     resource_group_name=primary.name,
///     virtual_network_name=primary_virtual_network.name,
///     address_prefixes=["192.168.1.0/24"])
/// primary_public_ip = azure.network.PublicIp("primary",
///     name="vm-public-ip-primary",
///     allocation_method="Static",
///     location=primary.location,
///     resource_group_name=primary.name,
///     sku="Basic")
/// vm_network_interface = azure.network.NetworkInterface("vm",
///     name="vm-nic",
///     location=primary.location,
///     resource_group_name=primary.name,
///     ip_configurations=[{
///         "name": "vm",
///         "subnet_id": primary_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///         "public_ip_address_id": primary_public_ip.id,
///     }])
/// vm = azure.compute.VirtualMachine("vm",
///     name="vm",
///     location=primary.location,
///     resource_group_name=primary.name,
///     vm_size="Standard_B1s",
///     network_interface_ids=[vm_network_interface.id],
///     storage_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     storage_os_disk={
///         "name": "vm-os-disk",
///         "os_type": "Linux",
///         "caching": "ReadWrite",
///         "create_option": "FromImage",
///         "managed_disk_type": "Premium_LRS",
///     },
///     os_profile={
///         "admin_username": "test-admin-123",
///         "admin_password": "test-pwd-123",
///         "computer_name": "vm",
///     },
///     os_profile_linux_config={
///         "disable_password_authentication": False,
///     })
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=secondary.location,
///     resource_group_name=secondary.name,
///     sku="Standard")
/// primary_fabric = azure.siterecovery.Fabric("primary",
///     name="primary-fabric",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     location=primary.location)
/// secondary_fabric = azure.siterecovery.Fabric("secondary",
///     name="secondary-fabric",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     location=secondary.location)
/// primary_protection_container = azure.siterecovery.ProtectionContainer("primary",
///     name="primary-protection-container",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     recovery_fabric_name=primary_fabric.name)
/// secondary_protection_container = azure.siterecovery.ProtectionContainer("secondary",
///     name="secondary-protection-container",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     recovery_fabric_name=secondary_fabric.name)
/// policy = azure.siterecovery.ReplicationPolicy("policy",
///     name="policy",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     recovery_point_retention_in_minutes=24 * 60,
///     application_consistent_snapshot_frequency_in_minutes=4 * 60)
/// container_mapping = azure.siterecovery.ProtectionContainerMapping("container-mapping",
///     name="container-mapping",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     recovery_fabric_name=primary_fabric.name,
///     recovery_source_protection_container_name=primary_protection_container.name,
///     recovery_target_protection_container_id=secondary_protection_container.id,
///     recovery_replication_policy_id=policy.id)
/// secondary_virtual_network = azure.network.VirtualNetwork("secondary",
///     name="network2",
///     resource_group_name=secondary.name,
///     address_spaces=["192.168.2.0/24"],
///     location=secondary.location)
/// network_mapping = azure.siterecovery.NetworkMapping("network-mapping",
///     name="network-mapping",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     source_recovery_fabric_name=primary_fabric.name,
///     target_recovery_fabric_name=secondary_fabric.name,
///     source_network_id=primary_virtual_network.id,
///     target_network_id=secondary_virtual_network.id)
/// primary_account = azure.storage.Account("primary",
///     name="primaryrecoverycache",
///     location=primary.location,
///     resource_group_name=primary.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// secondary_subnet = azure.network.Subnet("secondary",
///     name="network2-subnet",
///     resource_group_name=secondary.name,
///     virtual_network_name=secondary_virtual_network.name,
///     address_prefixes=["192.168.2.0/24"])
/// secondary_public_ip = azure.network.PublicIp("secondary",
///     name="vm-public-ip-secondary",
///     allocation_method="Static",
///     location=secondary.location,
///     resource_group_name=secondary.name,
///     sku="Basic")
/// vm_replication = azure.siterecovery.ReplicatedVM("vm-replication",
///     name="vm-replication",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     source_recovery_fabric_name=primary_fabric.name,
///     source_vm_id=vm.id,
///     recovery_replication_policy_id=policy.id,
///     source_recovery_protection_container_name=primary_protection_container.name,
///     target_resource_group_id=secondary.id,
///     target_recovery_fabric_id=secondary_fabric.id,
///     target_recovery_protection_container_id=secondary_protection_container.id,
///     managed_disks=[{
///         "disk_id": vm.storage_os_disk.managed_disk_id,
///         "staging_storage_account_id": primary_account.id,
///         "target_resource_group_id": secondary.id,
///         "target_disk_type": "Premium_LRS",
///         "target_replica_disk_type": "Premium_LRS",
///     }],
///     network_interfaces=[{
///         "source_network_interface_id": vm_network_interface.id,
///         "target_subnet_name": secondary_subnet.name,
///         "recovery_public_ip_address_id": secondary_public_ip.id,
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[
///             container_mapping,
///             network_mapping,
///         ]))
/// example = azure.siterecovery.ReplicationRecoveryPlan("example",
///     name="example-recover-plan",
///     recovery_vault_id=vault.id,
///     source_recovery_fabric_id=primary_fabric.id,
///     target_recovery_fabric_id=secondary_fabric.id,
///     shutdown_recovery_group={},
///     failover_recovery_group={},
///     boot_recovery_groups=[{
///         "replicated_protected_items": [vm_replication.id],
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
///     var primary = new Azure.Core.ResourceGroup("primary", new()
///     {
///         Name = "tfex-replicated-vm-primary",
///         Location = "West US",
///     });
///
///     var secondary = new Azure.Core.ResourceGroup("secondary", new()
///     {
///         Name = "tfex-replicated-vm-secondary",
///         Location = "East US",
///     });
///
///     var primaryVirtualNetwork = new Azure.Network.VirtualNetwork("primary", new()
///     {
///         Name = "network1",
///         ResourceGroupName = primary.Name,
///         AddressSpaces = new[]
///         {
///             "192.168.1.0/24",
///         },
///         Location = primary.Location,
///     });
///
///     var primarySubnet = new Azure.Network.Subnet("primary", new()
///     {
///         Name = "network1-subnet",
///         ResourceGroupName = primary.Name,
///         VirtualNetworkName = primaryVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "192.168.1.0/24",
///         },
///     });
///
///     var primaryPublicIp = new Azure.Network.PublicIp("primary", new()
///     {
///         Name = "vm-public-ip-primary",
///         AllocationMethod = "Static",
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///         Sku = "Basic",
///     });
///
///     var vmNetworkInterface = new Azure.Network.NetworkInterface("vm", new()
///     {
///         Name = "vm-nic",
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "vm",
///                 SubnetId = primarySubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///                 PublicIpAddressId = primaryPublicIp.Id,
///             },
///         },
///     });
///
///     var vm = new Azure.Compute.VirtualMachine("vm", new()
///     {
///         Name = "vm",
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///         VmSize = "Standard_B1s",
///         NetworkInterfaceIds = new[]
///         {
///             vmNetworkInterface.Id,
///         },
///         StorageImageReference = new Azure.Compute.Inputs.VirtualMachineStorageImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         StorageOsDisk = new Azure.Compute.Inputs.VirtualMachineStorageOsDiskArgs
///         {
///             Name = "vm-os-disk",
///             OsType = "Linux",
///             Caching = "ReadWrite",
///             CreateOption = "FromImage",
///             ManagedDiskType = "Premium_LRS",
///         },
///         OsProfile = new Azure.Compute.Inputs.VirtualMachineOsProfileArgs
///         {
///             AdminUsername = "test-admin-123",
///             AdminPassword = "test-pwd-123",
///             ComputerName = "vm",
///         },
///         OsProfileLinuxConfig = new Azure.Compute.Inputs.VirtualMachineOsProfileLinuxConfigArgs
///         {
///             DisablePasswordAuthentication = false,
///         },
///     });
///
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "example-recovery-vault",
///         Location = secondary.Location,
///         ResourceGroupName = secondary.Name,
///         Sku = "Standard",
///     });
///
///     var primaryFabric = new Azure.SiteRecovery.Fabric("primary", new()
///     {
///         Name = "primary-fabric",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         Location = primary.Location,
///     });
///
///     var secondaryFabric = new Azure.SiteRecovery.Fabric("secondary", new()
///     {
///         Name = "secondary-fabric",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         Location = secondary.Location,
///     });
///
///     var primaryProtectionContainer = new Azure.SiteRecovery.ProtectionContainer("primary", new()
///     {
///         Name = "primary-protection-container",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryFabricName = primaryFabric.Name,
///     });
///
///     var secondaryProtectionContainer = new Azure.SiteRecovery.ProtectionContainer("secondary", new()
///     {
///         Name = "secondary-protection-container",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryFabricName = secondaryFabric.Name,
///     });
///
///     var policy = new Azure.SiteRecovery.ReplicationPolicy("policy", new()
///     {
///         Name = "policy",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryPointRetentionInMinutes = 24 * 60,
///         ApplicationConsistentSnapshotFrequencyInMinutes = 4 * 60,
///     });
///
///     var container_mapping = new Azure.SiteRecovery.ProtectionContainerMapping("container-mapping", new()
///     {
///         Name = "container-mapping",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryFabricName = primaryFabric.Name,
///         RecoverySourceProtectionContainerName = primaryProtectionContainer.Name,
///         RecoveryTargetProtectionContainerId = secondaryProtectionContainer.Id,
///         RecoveryReplicationPolicyId = policy.Id,
///     });
///
///     var secondaryVirtualNetwork = new Azure.Network.VirtualNetwork("secondary", new()
///     {
///         Name = "network2",
///         ResourceGroupName = secondary.Name,
///         AddressSpaces = new[]
///         {
///             "192.168.2.0/24",
///         },
///         Location = secondary.Location,
///     });
///
///     var network_mapping = new Azure.SiteRecovery.NetworkMapping("network-mapping", new()
///     {
///         Name = "network-mapping",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         SourceRecoveryFabricName = primaryFabric.Name,
///         TargetRecoveryFabricName = secondaryFabric.Name,
///         SourceNetworkId = primaryVirtualNetwork.Id,
///         TargetNetworkId = secondaryVirtualNetwork.Id,
///     });
///
///     var primaryAccount = new Azure.Storage.Account("primary", new()
///     {
///         Name = "primaryrecoverycache",
///         Location = primary.Location,
///         ResourceGroupName = primary.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var secondarySubnet = new Azure.Network.Subnet("secondary", new()
///     {
///         Name = "network2-subnet",
///         ResourceGroupName = secondary.Name,
///         VirtualNetworkName = secondaryVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "192.168.2.0/24",
///         },
///     });
///
///     var secondaryPublicIp = new Azure.Network.PublicIp("secondary", new()
///     {
///         Name = "vm-public-ip-secondary",
///         AllocationMethod = "Static",
///         Location = secondary.Location,
///         ResourceGroupName = secondary.Name,
///         Sku = "Basic",
///     });
///
///     var vm_replication = new Azure.SiteRecovery.ReplicatedVM("vm-replication", new()
///     {
///         Name = "vm-replication",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         SourceRecoveryFabricName = primaryFabric.Name,
///         SourceVmId = vm.Id,
///         RecoveryReplicationPolicyId = policy.Id,
///         SourceRecoveryProtectionContainerName = primaryProtectionContainer.Name,
///         TargetResourceGroupId = secondary.Id,
///         TargetRecoveryFabricId = secondaryFabric.Id,
///         TargetRecoveryProtectionContainerId = secondaryProtectionContainer.Id,
///         ManagedDisks = new[]
///         {
///             new Azure.SiteRecovery.Inputs.ReplicatedVMManagedDiskArgs
///             {
///                 DiskId = vm.StorageOsDisk.Apply(storageOsDisk => storageOsDisk.ManagedDiskId),
///                 StagingStorageAccountId = primaryAccount.Id,
///                 TargetResourceGroupId = secondary.Id,
///                 TargetDiskType = "Premium_LRS",
///                 TargetReplicaDiskType = "Premium_LRS",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.SiteRecovery.Inputs.ReplicatedVMNetworkInterfaceArgs
///             {
///                 SourceNetworkInterfaceId = vmNetworkInterface.Id,
///                 TargetSubnetName = secondarySubnet.Name,
///                 RecoveryPublicIpAddressId = secondaryPublicIp.Id,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             container_mapping,
///             network_mapping,
///         },
///     });
///
///     var example = new Azure.SiteRecovery.ReplicationRecoveryPlan("example", new()
///     {
///         Name = "example-recover-plan",
///         RecoveryVaultId = vault.Id,
///         SourceRecoveryFabricId = primaryFabric.Id,
///         TargetRecoveryFabricId = secondaryFabric.Id,
///         ShutdownRecoveryGroup = null,
///         FailoverRecoveryGroup = null,
///         BootRecoveryGroups = new[]
///         {
///             new Azure.SiteRecovery.Inputs.ReplicationRecoveryPlanBootRecoveryGroupArgs
///             {
///                 ReplicatedProtectedItems = new[]
///                 {
///                     vm_replication.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.NewResourceGroup(ctx, "primary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-replicated-vm-primary"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := core.NewResourceGroup(ctx, "secondary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-replicated-vm-secondary"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryVirtualNetwork, err := network.NewVirtualNetwork(ctx, "primary", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("network1"),
/// 			ResourceGroupName: primary.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.1.0/24"),
/// 			},
/// 			Location: primary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primarySubnet, err := network.NewSubnet(ctx, "primary", &network.SubnetArgs{
/// 			Name:               pulumi.String("network1-subnet"),
/// 			ResourceGroupName:  primary.Name,
/// 			VirtualNetworkName: primaryVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("192.168.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryPublicIp, err := network.NewPublicIp(ctx, "primary", &network.PublicIpArgs{
/// 			Name:              pulumi.String("vm-public-ip-primary"),
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Location:          primary.Location,
/// 			ResourceGroupName: primary.Name,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vmNetworkInterface, err := network.NewNetworkInterface(ctx, "vm", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("vm-nic"),
/// 			Location:          primary.Location,
/// 			ResourceGroupName: primary.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("vm"),
/// 					SubnetId:                   primarySubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 					PublicIpAddressId:          primaryPublicIp.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vm, err := compute.NewVirtualMachine(ctx, "vm", &compute.VirtualMachineArgs{
/// 			Name:              pulumi.String("vm"),
/// 			Location:          primary.Location,
/// 			ResourceGroupName: primary.Name,
/// 			VmSize:            pulumi.String("Standard_B1s"),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				vmNetworkInterface.ID(),
/// 			},
/// 			StorageImageReference: &compute.VirtualMachineStorageImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			StorageOsDisk: &compute.VirtualMachineStorageOsDiskArgs{
/// 				Name:            pulumi.String("vm-os-disk"),
/// 				OsType:          pulumi.String("Linux"),
/// 				Caching:         pulumi.String("ReadWrite"),
/// 				CreateOption:    pulumi.String("FromImage"),
/// 				ManagedDiskType: pulumi.String("Premium_LRS"),
/// 			},
/// 			OsProfile: &compute.VirtualMachineOsProfileArgs{
/// 				AdminUsername: pulumi.String("test-admin-123"),
/// 				AdminPassword: pulumi.String("test-pwd-123"),
/// 				ComputerName:  pulumi.String("vm"),
/// 			},
/// 			OsProfileLinuxConfig: &compute.VirtualMachineOsProfileLinuxConfigArgs{
/// 				DisablePasswordAuthentication: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vault, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          secondary.Location,
/// 			ResourceGroupName: secondary.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryFabric, err := siterecovery.NewFabric(ctx, "primary", &siterecovery.FabricArgs{
/// 			Name:              pulumi.String("primary-fabric"),
/// 			ResourceGroupName: secondary.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			Location:          primary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryFabric, err := siterecovery.NewFabric(ctx, "secondary", &siterecovery.FabricArgs{
/// 			Name:              pulumi.String("secondary-fabric"),
/// 			ResourceGroupName: secondary.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			Location:          secondary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryProtectionContainer, err := siterecovery.NewProtectionContainer(ctx, "primary", &siterecovery.ProtectionContainerArgs{
/// 			Name:               pulumi.String("primary-protection-container"),
/// 			ResourceGroupName:  secondary.Name,
/// 			RecoveryVaultName:  vault.Name,
/// 			RecoveryFabricName: primaryFabric.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryProtectionContainer, err := siterecovery.NewProtectionContainer(ctx, "secondary", &siterecovery.ProtectionContainerArgs{
/// 			Name:               pulumi.String("secondary-protection-container"),
/// 			ResourceGroupName:  secondary.Name,
/// 			RecoveryVaultName:  vault.Name,
/// 			RecoveryFabricName: secondaryFabric.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := siterecovery.NewReplicationPolicy(ctx, "policy", &siterecovery.ReplicationPolicyArgs{
/// 			Name:                            pulumi.String("policy"),
/// 			ResourceGroupName:               secondary.Name,
/// 			RecoveryVaultName:               vault.Name,
/// 			RecoveryPointRetentionInMinutes: int(24 * 60),
/// 			ApplicationConsistentSnapshotFrequencyInMinutes: int(4 * 60),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		container_mapping, err := siterecovery.NewProtectionContainerMapping(ctx, "container-mapping", &siterecovery.ProtectionContainerMappingArgs{
/// 			Name:                                  pulumi.String("container-mapping"),
/// 			ResourceGroupName:                     secondary.Name,
/// 			RecoveryVaultName:                     vault.Name,
/// 			RecoveryFabricName:                    primaryFabric.Name,
/// 			RecoverySourceProtectionContainerName: primaryProtectionContainer.Name,
/// 			RecoveryTargetProtectionContainerId:   secondaryProtectionContainer.ID(),
/// 			RecoveryReplicationPolicyId:           policy.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryVirtualNetwork, err := network.NewVirtualNetwork(ctx, "secondary", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("network2"),
/// 			ResourceGroupName: secondary.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.2.0/24"),
/// 			},
/// 			Location: secondary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network_mapping, err := siterecovery.NewNetworkMapping(ctx, "network-mapping", &siterecovery.NetworkMappingArgs{
/// 			Name:                     pulumi.String("network-mapping"),
/// 			ResourceGroupName:        secondary.Name,
/// 			RecoveryVaultName:        vault.Name,
/// 			SourceRecoveryFabricName: primaryFabric.Name,
/// 			TargetRecoveryFabricName: secondaryFabric.Name,
/// 			SourceNetworkId:          primaryVirtualNetwork.ID(),
/// 			TargetNetworkId:          secondaryVirtualNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryAccount, err := storage.NewAccount(ctx, "primary", &storage.AccountArgs{
/// 			Name:                   pulumi.String("primaryrecoverycache"),
/// 			Location:               primary.Location,
/// 			ResourceGroupName:      primary.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondarySubnet, err := network.NewSubnet(ctx, "secondary", &network.SubnetArgs{
/// 			Name:               pulumi.String("network2-subnet"),
/// 			ResourceGroupName:  secondary.Name,
/// 			VirtualNetworkName: secondaryVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("192.168.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryPublicIp, err := network.NewPublicIp(ctx, "secondary", &network.PublicIpArgs{
/// 			Name:              pulumi.String("vm-public-ip-secondary"),
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Location:          secondary.Location,
/// 			ResourceGroupName: secondary.Name,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vm_replication, err := siterecovery.NewReplicatedVM(ctx, "vm-replication", &siterecovery.ReplicatedVMArgs{
/// 			Name:                                  pulumi.String("vm-replication"),
/// 			ResourceGroupName:                     secondary.Name,
/// 			RecoveryVaultName:                     vault.Name,
/// 			SourceRecoveryFabricName:              primaryFabric.Name,
/// 			SourceVmId:                            vm.ID(),
/// 			RecoveryReplicationPolicyId:           policy.ID(),
/// 			SourceRecoveryProtectionContainerName: primaryProtectionContainer.Name,
/// 			TargetResourceGroupId:                 secondary.ID(),
/// 			TargetRecoveryFabricId:                secondaryFabric.ID(),
/// 			TargetRecoveryProtectionContainerId:   secondaryProtectionContainer.ID(),
/// 			ManagedDisks: siterecovery.ReplicatedVMManagedDiskArray{
/// 				&siterecovery.ReplicatedVMManagedDiskArgs{
/// 					DiskId: vm.StorageOsDisk.ApplyT(func(storageOsDisk compute.VirtualMachineStorageOsDisk) (*string, error) {
/// 						return &storageOsDisk.ManagedDiskId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					StagingStorageAccountId: primaryAccount.ID(),
/// 					TargetResourceGroupId:   secondary.ID(),
/// 					TargetDiskType:          pulumi.String("Premium_LRS"),
/// 					TargetReplicaDiskType:   pulumi.String("Premium_LRS"),
/// 				},
/// 			},
/// 			NetworkInterfaces: siterecovery.ReplicatedVMNetworkInterfaceArray{
/// 				&siterecovery.ReplicatedVMNetworkInterfaceArgs{
/// 					SourceNetworkInterfaceId:  vmNetworkInterface.ID(),
/// 					TargetSubnetName:          secondarySubnet.Name,
/// 					RecoveryPublicIpAddressId: secondaryPublicIp.ID(),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			container_mapping,
/// 			network_mapping,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewReplicationRecoveryPlan(ctx, "example", &siterecovery.ReplicationRecoveryPlanArgs{
/// 			Name:                   pulumi.String("example-recover-plan"),
/// 			RecoveryVaultId:        vault.ID(),
/// 			SourceRecoveryFabricId: primaryFabric.ID(),
/// 			TargetRecoveryFabricId: secondaryFabric.ID(),
/// 			ShutdownRecoveryGroup:  &siterecovery.ReplicationRecoveryPlanShutdownRecoveryGroupArgs{},
/// 			FailoverRecoveryGroup:  &siterecovery.ReplicationRecoveryPlanFailoverRecoveryGroupArgs{},
/// 			BootRecoveryGroups: siterecovery.ReplicationRecoveryPlanBootRecoveryGroupArray{
/// 				&siterecovery.ReplicationRecoveryPlanBootRecoveryGroupArgs{
/// 					ReplicatedProtectedItems: pulumi.StringArray{
/// 						vm_replication.ID(),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.VirtualMachine;
/// import com.pulumi.azure.compute.VirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineStorageImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineStorageOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineOsProfileArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineOsProfileLinuxConfigArgs;
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
/// import com.pulumi.azure.siterecovery.Fabric;
/// import com.pulumi.azure.siterecovery.FabricArgs;
/// import com.pulumi.azure.siterecovery.ProtectionContainer;
/// import com.pulumi.azure.siterecovery.ProtectionContainerArgs;
/// import com.pulumi.azure.siterecovery.ReplicationPolicy;
/// import com.pulumi.azure.siterecovery.ReplicationPolicyArgs;
/// import com.pulumi.azure.siterecovery.ProtectionContainerMapping;
/// import com.pulumi.azure.siterecovery.ProtectionContainerMappingArgs;
/// import com.pulumi.azure.siterecovery.NetworkMapping;
/// import com.pulumi.azure.siterecovery.NetworkMappingArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.siterecovery.ReplicatedVM;
/// import com.pulumi.azure.siterecovery.ReplicatedVMArgs;
/// import com.pulumi.azure.siterecovery.inputs.ReplicatedVMManagedDiskArgs;
/// import com.pulumi.azure.siterecovery.inputs.ReplicatedVMNetworkInterfaceArgs;
/// import com.pulumi.azure.siterecovery.ReplicationRecoveryPlan;
/// import com.pulumi.azure.siterecovery.ReplicationRecoveryPlanArgs;
/// import com.pulumi.azure.siterecovery.inputs.ReplicationRecoveryPlanShutdownRecoveryGroupArgs;
/// import com.pulumi.azure.siterecovery.inputs.ReplicationRecoveryPlanFailoverRecoveryGroupArgs;
/// import com.pulumi.azure.siterecovery.inputs.ReplicationRecoveryPlanBootRecoveryGroupArgs;
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
///         var primary = new ResourceGroup("primary", ResourceGroupArgs.builder()
///             .name("tfex-replicated-vm-primary")
///             .location("West US")
///             .build());
///
///         var secondary = new ResourceGroup("secondary", ResourceGroupArgs.builder()
///             .name("tfex-replicated-vm-secondary")
///             .location("East US")
///             .build());
///
///         var primaryVirtualNetwork = new VirtualNetwork("primaryVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("network1")
///             .resourceGroupName(primary.name())
///             .addressSpaces("192.168.1.0/24")
///             .location(primary.location())
///             .build());
///
///         var primarySubnet = new Subnet("primarySubnet", SubnetArgs.builder()
///             .name("network1-subnet")
///             .resourceGroupName(primary.name())
///             .virtualNetworkName(primaryVirtualNetwork.name())
///             .addressPrefixes("192.168.1.0/24")
///             .build());
///
///         var primaryPublicIp = new PublicIp("primaryPublicIp", PublicIpArgs.builder()
///             .name("vm-public-ip-primary")
///             .allocationMethod("Static")
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .sku("Basic")
///             .build());
///
///         var vmNetworkInterface = new NetworkInterface("vmNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("vm-nic")
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("vm")
///                 .subnetId(primarySubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .publicIpAddressId(primaryPublicIp.id())
///                 .build())
///             .build());
///
///         var vm = new VirtualMachine("vm", VirtualMachineArgs.builder()
///             .name("vm")
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .vmSize("Standard_B1s")
///             .networkInterfaceIds(vmNetworkInterface.id())
///             .storageImageReference(VirtualMachineStorageImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .storageOsDisk(VirtualMachineStorageOsDiskArgs.builder()
///                 .name("vm-os-disk")
///                 .osType("Linux")
///                 .caching("ReadWrite")
///                 .createOption("FromImage")
///                 .managedDiskType("Premium_LRS")
///                 .build())
///             .osProfile(VirtualMachineOsProfileArgs.builder()
///                 .adminUsername("test-admin-123")
///                 .adminPassword("test-pwd-123")
///                 .computerName("vm")
///                 .build())
///             .osProfileLinuxConfig(VirtualMachineOsProfileLinuxConfigArgs.builder()
///                 .disablePasswordAuthentication(false)
///                 .build())
///             .build());
///
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(secondary.location())
///             .resourceGroupName(secondary.name())
///             .sku("Standard")
///             .build());
///
///         var primaryFabric = new Fabric("primaryFabric", FabricArgs.builder()
///             .name("primary-fabric")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .location(primary.location())
///             .build());
///
///         var secondaryFabric = new Fabric("secondaryFabric", FabricArgs.builder()
///             .name("secondary-fabric")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .location(secondary.location())
///             .build());
///
///         var primaryProtectionContainer = new ProtectionContainer("primaryProtectionContainer", ProtectionContainerArgs.builder()
///             .name("primary-protection-container")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .recoveryFabricName(primaryFabric.name())
///             .build());
///
///         var secondaryProtectionContainer = new ProtectionContainer("secondaryProtectionContainer", ProtectionContainerArgs.builder()
///             .name("secondary-protection-container")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .recoveryFabricName(secondaryFabric.name())
///             .build());
///
///         var policy = new ReplicationPolicy("policy", ReplicationPolicyArgs.builder()
///             .name("policy")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .recoveryPointRetentionInMinutes(24 * 60)
///             .applicationConsistentSnapshotFrequencyInMinutes(4 * 60)
///             .build());
///
///         var container_mapping = new ProtectionContainerMapping("container-mapping", ProtectionContainerMappingArgs.builder()
///             .name("container-mapping")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .recoveryFabricName(primaryFabric.name())
///             .recoverySourceProtectionContainerName(primaryProtectionContainer.name())
///             .recoveryTargetProtectionContainerId(secondaryProtectionContainer.id())
///             .recoveryReplicationPolicyId(policy.id())
///             .build());
///
///         var secondaryVirtualNetwork = new VirtualNetwork("secondaryVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("network2")
///             .resourceGroupName(secondary.name())
///             .addressSpaces("192.168.2.0/24")
///             .location(secondary.location())
///             .build());
///
///         var network_mapping = new NetworkMapping("network-mapping", NetworkMappingArgs.builder()
///             .name("network-mapping")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .sourceRecoveryFabricName(primaryFabric.name())
///             .targetRecoveryFabricName(secondaryFabric.name())
///             .sourceNetworkId(primaryVirtualNetwork.id())
///             .targetNetworkId(secondaryVirtualNetwork.id())
///             .build());
///
///         var primaryAccount = new Account("primaryAccount", AccountArgs.builder()
///             .name("primaryrecoverycache")
///             .location(primary.location())
///             .resourceGroupName(primary.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var secondarySubnet = new Subnet("secondarySubnet", SubnetArgs.builder()
///             .name("network2-subnet")
///             .resourceGroupName(secondary.name())
///             .virtualNetworkName(secondaryVirtualNetwork.name())
///             .addressPrefixes("192.168.2.0/24")
///             .build());
///
///         var secondaryPublicIp = new PublicIp("secondaryPublicIp", PublicIpArgs.builder()
///             .name("vm-public-ip-secondary")
///             .allocationMethod("Static")
///             .location(secondary.location())
///             .resourceGroupName(secondary.name())
///             .sku("Basic")
///             .build());
///
///         var vm_replication = new ReplicatedVM("vm-replication", ReplicatedVMArgs.builder()
///             .name("vm-replication")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .sourceRecoveryFabricName(primaryFabric.name())
///             .sourceVmId(vm.id())
///             .recoveryReplicationPolicyId(policy.id())
///             .sourceRecoveryProtectionContainerName(primaryProtectionContainer.name())
///             .targetResourceGroupId(secondary.id())
///             .targetRecoveryFabricId(secondaryFabric.id())
///             .targetRecoveryProtectionContainerId(secondaryProtectionContainer.id())
///             .managedDisks(ReplicatedVMManagedDiskArgs.builder()
///                 .diskId(vm.storageOsDisk().applyValue(_storageOsDisk -> _storageOsDisk.managedDiskId()))
///                 .stagingStorageAccountId(primaryAccount.id())
///                 .targetResourceGroupId(secondary.id())
///                 .targetDiskType("Premium_LRS")
///                 .targetReplicaDiskType("Premium_LRS")
///                 .build())
///             .networkInterfaces(ReplicatedVMNetworkInterfaceArgs.builder()
///                 .sourceNetworkInterfaceId(vmNetworkInterface.id())
///                 .targetSubnetName(secondarySubnet.name())
///                 .recoveryPublicIpAddressId(secondaryPublicIp.id())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     container_mapping,
///                     network_mapping)
///                 .build());
///
///         var example = new ReplicationRecoveryPlan("example", ReplicationRecoveryPlanArgs.builder()
///             .name("example-recover-plan")
///             .recoveryVaultId(vault.id())
///             .sourceRecoveryFabricId(primaryFabric.id())
///             .targetRecoveryFabricId(secondaryFabric.id())
///             .shutdownRecoveryGroup(ReplicationRecoveryPlanShutdownRecoveryGroupArgs.builder()
///                 .build())
///             .failoverRecoveryGroup(ReplicationRecoveryPlanFailoverRecoveryGroupArgs.builder()
///                 .build())
///             .bootRecoveryGroups(ReplicationRecoveryPlanBootRecoveryGroupArgs.builder()
///                 .replicatedProtectedItems(vm_replication.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-04-01
///
/// ## Import
///
/// Site Recovery Fabric can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/replicationRecoveryPlan:ReplicationRecoveryPlan example /subscriptions/00000000-0000-0000-0000-00000000000/resourceGroups/groupName/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationRecoveryPlans/planName
/// ```
class ReplicationRecoveryPlan extends pulumi.CustomResource {
  /// An `azure_to_azure_settings` block as defined below.
  late final pulumi.Output<ReplicationRecoveryPlanAzureToAzureSettings?> azureToAzureSettings;
  /// One or more `boot_recovery_group` blocks as defined below.
  late final pulumi.Output<List<ReplicationRecoveryPlanBootRecoveryGroup>> bootRecoveryGroups;
  /// One `failover_recovery_group` block as defined below.
  late final pulumi.Output<ReplicationRecoveryPlanFailoverRecoveryGroup> failoverRecoveryGroup;
  /// The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the vault that should be updated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultId;
  /// One `shutdown_recovery_group` block as defined below.
  late final pulumi.Output<ReplicationRecoveryPlanShutdownRecoveryGroup> shutdownRecoveryGroup;
  /// ID of source fabric to be recovered from. Changing this forces a new Replication Plan to be created.
  late final pulumi.Output<String> sourceRecoveryFabricId;
  /// ID of target fabric to recover. Changing this forces a new Replication Plan to be created.
  late final pulumi.Output<String> targetRecoveryFabricId;

  /// Creates a new [ReplicationRecoveryPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationRecoveryPlan]. {@macro pulumi_siterecovery_replication_recovery_plan_replication_recovery_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationRecoveryPlan(
    String name, {
    ReplicationRecoveryPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/replicationRecoveryPlan:ReplicationRecoveryPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureToAzureSettings = registerOutput<ReplicationRecoveryPlanAzureToAzureSettings?>('azureToAzureSettings');
    this.bootRecoveryGroups = registerOutput<List<ReplicationRecoveryPlanBootRecoveryGroup>>('bootRecoveryGroups');
    this.failoverRecoveryGroup = registerOutput<ReplicationRecoveryPlanFailoverRecoveryGroup>('failoverRecoveryGroup');
    this.name = registerOutput<String>('name');
    this.recoveryVaultId = registerOutput<String>('recoveryVaultId');
    this.shutdownRecoveryGroup = registerOutput<ReplicationRecoveryPlanShutdownRecoveryGroup>('shutdownRecoveryGroup');
    this.sourceRecoveryFabricId = registerOutput<String>('sourceRecoveryFabricId');
    this.targetRecoveryFabricId = registerOutput<String>('targetRecoveryFabricId');
  }

  /// Gets an existing [ReplicationRecoveryPlan] resource's state with the given [name] and [id].
  static ReplicationRecoveryPlan get(
    String name,
    pulumi.Input<String> id, {
    ReplicationRecoveryPlanState? state,
  }) {
    return ReplicationRecoveryPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicationRecoveryPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/replicationRecoveryPlan:ReplicationRecoveryPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureToAzureSettings = registerOutput<ReplicationRecoveryPlanAzureToAzureSettings?>('azureToAzureSettings');
    this.bootRecoveryGroups = registerOutput<List<ReplicationRecoveryPlanBootRecoveryGroup>>('bootRecoveryGroups');
    this.failoverRecoveryGroup = registerOutput<ReplicationRecoveryPlanFailoverRecoveryGroup>('failoverRecoveryGroup');
    this.name = registerOutput<String>('name');
    this.recoveryVaultId = registerOutput<String>('recoveryVaultId');
    this.shutdownRecoveryGroup = registerOutput<ReplicationRecoveryPlanShutdownRecoveryGroup>('shutdownRecoveryGroup');
    this.sourceRecoveryFabricId = registerOutput<String>('sourceRecoveryFabricId');
    this.targetRecoveryFabricId = registerOutput<String>('targetRecoveryFabricId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_replicated_vm_args.dart';
import 'vmware_replicated_vm_state.dart';

/// Manages a VMWare replicated VM using Azure Site Recovery (VMWare to Azure only). A replicated VM keeps a copiously updated image of the VM in Azure in order to be able to start the VM in Azure in case of a disaster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West US",
/// });
/// const exampleVault = new azure.recoveryservices.Vault("example", {
///     name: "example-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleVMWareReplicationPolicy = new azure.siterecovery.VMWareReplicationPolicy("example", {
///     recoveryVaultId: exampleVault.id,
///     name: "example-policy",
///     recoveryPointRetentionInMinutes: 1440,
///     applicationConsistentSnapshotFrequencyInMinutes: 240,
/// });
/// const test = new azure.siterecovery.VmwareReplicationPolicyAssociation("test", {
///     name: "example-association",
///     recoveryVaultId: exampleVault.id,
///     policyId: exampleVMWareReplicationPolicy.id,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountKind: "StorageV2",
///     accountReplicationType: "LRS",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-net",
///     resourceGroupName: example.name,
///     addressSpaces: ["192.168.2.0/24"],
///     location: example.location,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["192.168.2.0/24"],
/// });
/// const exampleVmwareReplicatedVm = new azure.siterecovery.VmwareReplicatedVm("example", {
///     name: "example-vmware-vm",
///     recoveryVaultId: exampleVault.id,
///     sourceVmName: "example-vm",
///     applianceName: "example-appliance",
///     recoveryReplicationPolicyId: exampleAzurermSiteRecoveryVmwareReplicationPolicyAssociation.policyId,
///     physicalServerCredentialName: "example-creds",
///     licenseType: "NotSpecified",
///     targetBootDiagnosticsStorageAccountId: exampleAccount.id,
///     targetVmName: "example_replicated_vm",
///     targetResourceGroupId: example.id,
///     defaultLogStorageAccountId: exampleAccount.id,
///     defaultRecoveryDiskType: "Standard_LRS",
///     targetNetworkId: exampleVirtualNetwork.id,
///     networkInterfaces: [{
///         sourceMacAddress: "00:00:00:00:00:00",
///         targetSubnetName: exampleSubnet.name,
///         isPrimary: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West US")
/// example_vault = azure.recoveryservices.Vault("example",
///     name="example-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_vm_ware_replication_policy = azure.siterecovery.VMWareReplicationPolicy("example",
///     recovery_vault_id=example_vault.id,
///     name="example-policy",
///     recovery_point_retention_in_minutes=1440,
///     application_consistent_snapshot_frequency_in_minutes=240)
/// test = azure.siterecovery.VmwareReplicationPolicyAssociation("test",
///     name="example-association",
///     recovery_vault_id=example_vault.id,
///     policy_id=example_vm_ware_replication_policy.id)
/// example_account = azure.storage.Account("example",
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_kind="StorageV2",
///     account_replication_type="LRS")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-net",
///     resource_group_name=example.name,
///     address_spaces=["192.168.2.0/24"],
///     location=example.location)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["192.168.2.0/24"])
/// example_vmware_replicated_vm = azure.siterecovery.VmwareReplicatedVm("example",
///     name="example-vmware-vm",
///     recovery_vault_id=example_vault.id,
///     source_vm_name="example-vm",
///     appliance_name="example-appliance",
///     recovery_replication_policy_id=example_azurerm_site_recovery_vmware_replication_policy_association["policyId"],
///     physical_server_credential_name="example-creds",
///     license_type="NotSpecified",
///     target_boot_diagnostics_storage_account_id=example_account.id,
///     target_vm_name="example_replicated_vm",
///     target_resource_group_id=example.id,
///     default_log_storage_account_id=example_account.id,
///     default_recovery_disk_type="Standard_LRS",
///     target_network_id=example_virtual_network.id,
///     network_interfaces=[{
///         "source_mac_address": "00:00:00:00:00:00",
///         "target_subnet_name": example_subnet.name,
///         "is_primary": True,
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "West US",
///     });
///
///     var exampleVault = new Azure.RecoveryServices.Vault("example", new()
///     {
///         Name = "example-recovery-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleVMWareReplicationPolicy = new Azure.SiteRecovery.VMWareReplicationPolicy("example", new()
///     {
///         RecoveryVaultId = exampleVault.Id,
///         Name = "example-policy",
///         RecoveryPointRetentionInMinutes = 1440,
///         ApplicationConsistentSnapshotFrequencyInMinutes = 240,
///     });
///
///     var test = new Azure.SiteRecovery.VmwareReplicationPolicyAssociation("test", new()
///     {
///         Name = "example-association",
///         RecoveryVaultId = exampleVault.Id,
///         PolicyId = exampleVMWareReplicationPolicy.Id,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountKind = "StorageV2",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-net",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "192.168.2.0/24",
///         },
///         Location = example.Location,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "192.168.2.0/24",
///         },
///     });
///
///     var exampleVmwareReplicatedVm = new Azure.SiteRecovery.VmwareReplicatedVm("example", new()
///     {
///         Name = "example-vmware-vm",
///         RecoveryVaultId = exampleVault.Id,
///         SourceVmName = "example-vm",
///         ApplianceName = "example-appliance",
///         RecoveryReplicationPolicyId = exampleAzurermSiteRecoveryVmwareReplicationPolicyAssociation.PolicyId,
///         PhysicalServerCredentialName = "example-creds",
///         LicenseType = "NotSpecified",
///         TargetBootDiagnosticsStorageAccountId = exampleAccount.Id,
///         TargetVmName = "example_replicated_vm",
///         TargetResourceGroupId = example.Id,
///         DefaultLogStorageAccountId = exampleAccount.Id,
///         DefaultRecoveryDiskType = "Standard_LRS",
///         TargetNetworkId = exampleVirtualNetwork.Id,
///         NetworkInterfaces = new[]
///         {
///             new Azure.SiteRecovery.Inputs.VmwareReplicatedVmNetworkInterfaceArgs
///             {
///                 SourceMacAddress = "00:00:00:00:00:00",
///                 TargetSubnetName = exampleSubnet.Name,
///                 IsPrimary = true,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := recoveryservices.NewVault(ctx, "example", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVMWareReplicationPolicy, err := siterecovery.NewVMWareReplicationPolicy(ctx, "example", &siterecovery.VMWareReplicationPolicyArgs{
/// 			RecoveryVaultId:                 exampleVault.ID(),
/// 			Name:                            pulumi.String("example-policy"),
/// 			RecoveryPointRetentionInMinutes: pulumi.Int(1440),
/// 			ApplicationConsistentSnapshotFrequencyInMinutes: pulumi.Int(240),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewVmwareReplicationPolicyAssociation(ctx, "test", &siterecovery.VmwareReplicationPolicyAssociationArgs{
/// 			Name:            pulumi.String("example-association"),
/// 			RecoveryVaultId: exampleVault.ID(),
/// 			PolicyId:        exampleVMWareReplicationPolicy.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-net"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.2.0/24"),
/// 			},
/// 			Location: example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("192.168.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewVmwareReplicatedVm(ctx, "example", &siterecovery.VmwareReplicatedVmArgs{
/// 			Name:                                  pulumi.String("example-vmware-vm"),
/// 			RecoveryVaultId:                       exampleVault.ID(),
/// 			SourceVmName:                          pulumi.String("example-vm"),
/// 			ApplianceName:                         pulumi.String("example-appliance"),
/// 			RecoveryReplicationPolicyId:           pulumi.Any(exampleAzurermSiteRecoveryVmwareReplicationPolicyAssociation.PolicyId),
/// 			PhysicalServerCredentialName:          pulumi.String("example-creds"),
/// 			LicenseType:                           pulumi.String("NotSpecified"),
/// 			TargetBootDiagnosticsStorageAccountId: exampleAccount.ID(),
/// 			TargetVmName:                          pulumi.String("example_replicated_vm"),
/// 			TargetResourceGroupId:                 example.ID(),
/// 			DefaultLogStorageAccountId:            exampleAccount.ID(),
/// 			DefaultRecoveryDiskType:               pulumi.String("Standard_LRS"),
/// 			TargetNetworkId:                       exampleVirtualNetwork.ID(),
/// 			NetworkInterfaces: siterecovery.VmwareReplicatedVmNetworkInterfaceArray{
/// 				&siterecovery.VmwareReplicatedVmNetworkInterfaceArgs{
/// 					SourceMacAddress: pulumi.String("00:00:00:00:00:00"),
/// 					TargetSubnetName: exampleSubnet.Name,
/// 					IsPrimary:        pulumi.Bool(true),
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
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
/// import com.pulumi.azure.siterecovery.VMWareReplicationPolicy;
/// import com.pulumi.azure.siterecovery.VMWareReplicationPolicyArgs;
/// import com.pulumi.azure.siterecovery.VmwareReplicationPolicyAssociation;
/// import com.pulumi.azure.siterecovery.VmwareReplicationPolicyAssociationArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.siterecovery.VmwareReplicatedVm;
/// import com.pulumi.azure.siterecovery.VmwareReplicatedVmArgs;
/// import com.pulumi.azure.siterecovery.inputs.VmwareReplicatedVmNetworkInterfaceArgs;
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
///             .name("example-rg")
///             .location("West US")
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleVMWareReplicationPolicy = new VMWareReplicationPolicy("exampleVMWareReplicationPolicy", VMWareReplicationPolicyArgs.builder()
///             .recoveryVaultId(exampleVault.id())
///             .name("example-policy")
///             .recoveryPointRetentionInMinutes(1440)
///             .applicationConsistentSnapshotFrequencyInMinutes(240)
///             .build());
///
///         var test = new VmwareReplicationPolicyAssociation("test", VmwareReplicationPolicyAssociationArgs.builder()
///             .name("example-association")
///             .recoveryVaultId(exampleVault.id())
///             .policyId(exampleVMWareReplicationPolicy.id())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountKind("StorageV2")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-net")
///             .resourceGroupName(example.name())
///             .addressSpaces("192.168.2.0/24")
///             .location(example.location())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("192.168.2.0/24")
///             .build());
///
///         var exampleVmwareReplicatedVm = new VmwareReplicatedVm("exampleVmwareReplicatedVm", VmwareReplicatedVmArgs.builder()
///             .name("example-vmware-vm")
///             .recoveryVaultId(exampleVault.id())
///             .sourceVmName("example-vm")
///             .applianceName("example-appliance")
///             .recoveryReplicationPolicyId(exampleAzurermSiteRecoveryVmwareReplicationPolicyAssociation.policyId())
///             .physicalServerCredentialName("example-creds")
///             .licenseType("NotSpecified")
///             .targetBootDiagnosticsStorageAccountId(exampleAccount.id())
///             .targetVmName("example_replicated_vm")
///             .targetResourceGroupId(example.id())
///             .defaultLogStorageAccountId(exampleAccount.id())
///             .defaultRecoveryDiskType("Standard_LRS")
///             .targetNetworkId(exampleVirtualNetwork.id())
///             .networkInterfaces(VmwareReplicatedVmNetworkInterfaceArgs.builder()
///                 .sourceMacAddress("00:00:00:00:00:00")
///                 .targetSubnetName(exampleSubnet.name())
///                 .isPrimary(true)
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
///       name: example-rg
///       location: West US
///   exampleVault:
///     type: azure:recoveryservices:Vault
///     name: example
///     properties:
///       name: example-recovery-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleVMWareReplicationPolicy:
///     type: azure:siterecovery:VMWareReplicationPolicy
///     name: example
///     properties:
///       recoveryVaultId: ${exampleVault.id}
///       name: example-policy
///       recoveryPointRetentionInMinutes: 1440
///       applicationConsistentSnapshotFrequencyInMinutes: 240
///   test:
///     type: azure:siterecovery:VmwareReplicationPolicyAssociation
///     properties:
///       name: example-association
///       recoveryVaultId: ${exampleVault.id}
///       policyId: ${exampleVMWareReplicationPolicy.id}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountKind: StorageV2
///       accountReplicationType: LRS
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-net
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 192.168.2.0/24
///       location: ${example.location}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 192.168.2.0/24
///   exampleVmwareReplicatedVm:
///     type: azure:siterecovery:VmwareReplicatedVm
///     name: example
///     properties:
///       name: example-vmware-vm
///       recoveryVaultId: ${exampleVault.id}
///       sourceVmName: example-vm
///       applianceName: example-appliance
///       recoveryReplicationPolicyId: ${exampleAzurermSiteRecoveryVmwareReplicationPolicyAssociation.policyId}
///       physicalServerCredentialName: example-creds
///       licenseType: NotSpecified
///       targetBootDiagnosticsStorageAccountId: ${exampleAccount.id}
///       targetVmName: example_replicated_vm
///       targetResourceGroupId: ${example.id}
///       defaultLogStorageAccountId: ${exampleAccount.id}
///       defaultRecoveryDiskType: Standard_LRS
///       targetNetworkId: ${exampleVirtualNetwork.id}
///       networkInterfaces:
///         - sourceMacAddress: 00:00:00:00:00:00
///           targetSubnetName: ${exampleSubnet.name}
///           isPrimary: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OffAzure` - 2020-01-01
///
/// * `Microsoft.RecoveryServices` - 2024-04-01
///
/// ## Import
///
/// Site Recovery VMWare Replicated VM's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/vmwareReplicatedVm:VmwareReplicatedVm vmreplication /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationFabrics/fabric-name/replicationProtectionContainers/protection-container-name/replicationProtectedItems/vm-replication-name
/// ```
class VmwareReplicatedVm extends pulumi.CustomResource {
  /// The name of VMWare appliance which handles the replication. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applianceName;

  /// The ID of the stroage account that should be used for logging during replication.
  ///
  /// &gt; **Note:** Only standard types of storage accounts are allowed.
  ///
  /// &gt; **Note:** Only one of `default_log_storage_account_id` or `managed_disk` must be specified.
  ///
  /// &gt; **Note:** Changing `default_log_storage_account_id` forces a new resource to be created. But removing it does not.
  ///
  /// &gt; **Note:** When `default_log_storage_account_id` co-exist with `managed_disk`, the value of `default_log_storage_account_id` must be as same as `log_storage_account_id` of every `managed_disk` or it forces a new resource to be created.
  late final pulumi.Output<String?> defaultLogStorageAccountId;

  /// The type of storage account that should be used for recovery disks when a failover is done. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`.
  ///
  /// &gt; **Note:** Only one of `default_recovery_disk_type` or `managed_disk` must be specified.
  ///
  /// &gt; **Note:** Changing `default_recovery_disk_type` forces a new resource to be created. But removing it does not.
  ///
  /// &gt; **Note:** When `default_recovery_disk_type` co-exist with `managed_disk`, the value of `default_recovery_disk_type` must be as same as `target_disk_type` of every `managed_disk` or it forces a new resource to be created.
  late final pulumi.Output<String?> defaultRecoveryDiskType;

  /// The ID of the default Disk Encryption Set that should be used for the disks when a failover is done.
  ///
  /// &gt; **Note:** Changing `default_target_disk_encryption_set_id` forces a new resource to be created. But removing it does not.
  ///
  /// &gt; **Note:** When `default_target_disk_encryption_set_id` co-exist with `managed_disk`, the value of `default_target_disk_encryption_set_id` must be as same as `target_disk_encryption_set_id` of every `managed_disk` or it forces a new resource to be created.
  late final pulumi.Output<String?> defaultTargetDiskEncryptionSetId;

  /// The license type of the VM. Possible values are `NoLicenseType`, `NotSpecified` and `WindowsServer`. Defaults to `NotSpecified`.
  late final pulumi.Output<String?> licenseType;

  /// One or more `managed_disk` block as defined below. It's available only if mobility service is already installed on the source VM.
  ///
  /// &gt; **Note:** A replicated VM could be created without `managed_disk` block, once the block has been specified, changing it expect removing it forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> managedDisks;

  /// Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over.
  late final pulumi.Output<String?> multiVmGroupName;

  /// The name of the replicated VM. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// One or more `network_interface` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkInterfaces;

  /// The name of the credential to access the source VM. Changing this forces a new resource to be created. More information about the credentials could be found [here](https://learn.microsoft.com/en-us/azure/site-recovery/deploy-vmware-azure-replication-appliance-modernized).
  late final pulumi.Output<String> physicalServerCredentialName;

  /// The ID of the policy to use for this replicated VM.
  late final pulumi.Output<String> recoveryReplicationPolicyId;

  /// The ID of the Recovery Services Vault where the replicated VM is created.
  late final pulumi.Output<String> recoveryVaultId;

  /// The name of the source VM in VMWare. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceVmName;

  /// The ID of availability set that the new VM should belong to when a failover is done.
  late final pulumi.Output<String?> targetAvailabilitySetId;

  /// The ID of the storage account that should be used for boot diagnostics when a failover is done.
  late final pulumi.Output<String?> targetBootDiagnosticsStorageAccountId;

  /// The ID of network to use when a failover is done.
  ///
  /// &gt; **Note:** `target_network_id` is required when `network_interface` is specified.
  late final pulumi.Output<String?> targetNetworkId;

  /// The ID of Proximity Placement Group the new VM should belong to when a failover is done.
  ///
  /// &gt; **Note:** Only one of `target_availability_set_id` or `target_zone` can be specified.
  late final pulumi.Output<String?> targetProximityPlacementGroupId;

  /// The ID of resource group where the VM should be created when a failover is done.
  late final pulumi.Output<String> targetResourceGroupId;

  /// Name of the VM that should be created when a failover is done. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetVmName;

  /// Size of the VM that should be created when a failover is done, such as `Standard_F2`. If it's not specified, it will automatically be set by detecting the source VM size.
  late final pulumi.Output<String?> targetVmSize;

  /// Specifies the Availability Zone where the Failover VM should exist.
  late final pulumi.Output<String?> targetZone;

  /// The ID of network to use when a test failover is done.
  late final pulumi.Output<String?> testNetworkId;

  /// Creates a new [VmwareReplicatedVm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VmwareReplicatedVm]. {@macro pulumi_siterecovery_vmware_replicated_vm_vmware_replicated_vm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VmwareReplicatedVm(
    String name, {
    VmwareReplicatedVmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:siterecovery/vmwareReplicatedVm:VmwareReplicatedVm',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applianceName = registerOutput<String>('applianceName');
    defaultLogStorageAccountId = registerOutput<String?>(
      'defaultLogStorageAccountId',
    );
    defaultRecoveryDiskType = registerOutput<String?>(
      'defaultRecoveryDiskType',
    );
    defaultTargetDiskEncryptionSetId = registerOutput<String?>(
      'defaultTargetDiskEncryptionSetId',
    );
    licenseType = registerOutput<String?>('licenseType');
    managedDisks = registerOutput<List<Map<String, dynamic>>?>('managedDisks');
    multiVmGroupName = registerOutput<String?>('multiVmGroupName');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>(
      'networkInterfaces',
    );
    physicalServerCredentialName = registerOutput<String>(
      'physicalServerCredentialName',
    );
    recoveryReplicationPolicyId = registerOutput<String>(
      'recoveryReplicationPolicyId',
    );
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
    sourceVmName = registerOutput<String>('sourceVmName');
    targetAvailabilitySetId = registerOutput<String?>(
      'targetAvailabilitySetId',
    );
    targetBootDiagnosticsStorageAccountId = registerOutput<String?>(
      'targetBootDiagnosticsStorageAccountId',
    );
    targetNetworkId = registerOutput<String?>('targetNetworkId');
    targetProximityPlacementGroupId = registerOutput<String?>(
      'targetProximityPlacementGroupId',
    );
    targetResourceGroupId = registerOutput<String>('targetResourceGroupId');
    targetVmName = registerOutput<String>('targetVmName');
    targetVmSize = registerOutput<String?>('targetVmSize');
    targetZone = registerOutput<String?>('targetZone');
    testNetworkId = registerOutput<String?>('testNetworkId');
  }

  /// Gets an existing [VmwareReplicatedVm] resource's state with the given [name] and [id].
  static VmwareReplicatedVm get(
    String name,
    pulumi.Input<String> id, {
    VmwareReplicatedVmState? state,
  }) {
    return VmwareReplicatedVm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VmwareReplicatedVm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:siterecovery/vmwareReplicatedVm:VmwareReplicatedVm',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applianceName = registerOutput<String>('applianceName');
    defaultLogStorageAccountId = registerOutput<String?>(
      'defaultLogStorageAccountId',
    );
    defaultRecoveryDiskType = registerOutput<String?>(
      'defaultRecoveryDiskType',
    );
    defaultTargetDiskEncryptionSetId = registerOutput<String?>(
      'defaultTargetDiskEncryptionSetId',
    );
    licenseType = registerOutput<String?>('licenseType');
    managedDisks = registerOutput<List<Map<String, dynamic>>?>('managedDisks');
    multiVmGroupName = registerOutput<String?>('multiVmGroupName');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>?>(
      'networkInterfaces',
    );
    physicalServerCredentialName = registerOutput<String>(
      'physicalServerCredentialName',
    );
    recoveryReplicationPolicyId = registerOutput<String>(
      'recoveryReplicationPolicyId',
    );
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
    sourceVmName = registerOutput<String>('sourceVmName');
    targetAvailabilitySetId = registerOutput<String?>(
      'targetAvailabilitySetId',
    );
    targetBootDiagnosticsStorageAccountId = registerOutput<String?>(
      'targetBootDiagnosticsStorageAccountId',
    );
    targetNetworkId = registerOutput<String?>('targetNetworkId');
    targetProximityPlacementGroupId = registerOutput<String?>(
      'targetProximityPlacementGroupId',
    );
    targetResourceGroupId = registerOutput<String>('targetResourceGroupId');
    targetVmName = registerOutput<String>('targetVmName');
    targetVmSize = registerOutput<String?>('targetVmSize');
    targetZone = registerOutput<String?>('targetZone');
    testNetworkId = registerOutput<String?>('testNetworkId');
  }
}

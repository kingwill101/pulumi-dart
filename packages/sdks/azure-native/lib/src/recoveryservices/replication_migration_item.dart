import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_item_properties_response.dart';
import 'replication_migration_item_args.dart';

/// Migration item.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01, 2026-01-01, 2026-02-01, 2026-03-31-preview, 2026-05-01, 2026-05-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Enables migration.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationMigrationItem = new AzureNative.RecoveryServices.ReplicationMigrationItem("replicationMigrationItem", new()
///     {
///         FabricName = "vmwarefabric1",
///         MigrationItemName = "virtualmachine1",
///         Properties = new AzureNative.RecoveryServices.Inputs.EnableMigrationInputPropertiesArgs
///         {
///             PolicyId = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.RecoveryServices/vaults/migrationvault/replicationPolicies/vmwarepolicy1",
///             ProviderSpecificDetails = new AzureNative.RecoveryServices.Inputs.VMwareCbtEnableMigrationInputArgs
///             {
///                 DataMoverRunAsAccountId = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/dataMoverRunAsAccount1",
///                 DisksToInclude = new[]
///                 {
///                     new AzureNative.RecoveryServices.Inputs.VMwareCbtDiskInputArgs
///                     {
///                         DiskId = "disk1",
///                         IsOSDisk = "true",
///                         LogStorageAccountId = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Storage/storageAccounts/logStorageAccount1",
///                         LogStorageAccountSasSecretName = "logStorageSas",
///                     },
///                 },
///                 InstanceType = "VMwareCbt",
///                 SnapshotRunAsAccountId = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/snapshotRunAsAccount1",
///                 TargetNetworkId = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Network/virtualNetworks/virtualNetwork1",
///                 TargetResourceGroupId = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1",
///                 VmwareMachineId = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/machines/virtualmachine1",
///             },
///         },
///         ProtectionContainerName = "vmwareContainer1",
///         ResourceGroupName = "resourcegroup1",
///         ResourceName = "migrationvault",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewReplicationMigrationItem(ctx, "replicationMigrationItem", &recoveryservices.ReplicationMigrationItemArgs{
/// 			FabricName:        pulumi.String("vmwarefabric1"),
/// 			MigrationItemName: pulumi.String("virtualmachine1"),
/// 			Properties: &recoveryservices.EnableMigrationInputPropertiesArgs{
/// 				PolicyId: pulumi.String("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.RecoveryServices/vaults/migrationvault/replicationPolicies/vmwarepolicy1"),
/// 				ProviderSpecificDetails: &recoveryservices.VMwareCbtEnableMigrationInputArgs{
/// 					DataMoverRunAsAccountId: pulumi.String("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/dataMoverRunAsAccount1"),
/// 					DisksToInclude: recoveryservices.VMwareCbtDiskInputArray{
/// 						&recoveryservices.VMwareCbtDiskInputArgs{
/// 							DiskId:                         pulumi.String("disk1"),
/// 							IsOSDisk:                       pulumi.String("true"),
/// 							LogStorageAccountId:            pulumi.String("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Storage/storageAccounts/logStorageAccount1"),
/// 							LogStorageAccountSasSecretName: pulumi.String("logStorageSas"),
/// 						},
/// 					},
/// 					InstanceType:           pulumi.String("VMwareCbt"),
/// 					SnapshotRunAsAccountId: pulumi.String("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/snapshotRunAsAccount1"),
/// 					TargetNetworkId:        pulumi.String("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Network/virtualNetworks/virtualNetwork1"),
/// 					TargetResourceGroupId:  pulumi.String("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1"),
/// 					VmwareMachineId:        pulumi.String("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/machines/virtualmachine1"),
/// 				},
/// 			},
/// 			ProtectionContainerName: pulumi.String("vmwareContainer1"),
/// 			ResourceGroupName:       pulumi.String("resourcegroup1"),
/// 			ResourceName:            pulumi.String("migrationvault"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_recoveryservices_replicationmigrationitem" "replicationMigrationItem" {
///   fabric_name         = "vmwarefabric1"
///   migration_item_name = "virtualmachine1"
///   properties = {
///     policy_id = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.RecoveryServices/vaults/migrationvault/replicationPolicies/vmwarepolicy1"
///     provider_specific_details = {
///       data_mover_run_as_account_id = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/dataMoverRunAsAccount1"
///       disks_to_include = [{
///         "diskId"                         = "disk1"
///         "isOSDisk"                       = "true"
///         "logStorageAccountId"            = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Storage/storageAccounts/logStorageAccount1"
///         "logStorageAccountSasSecretName" = "logStorageSas"
///       }]
///       instance_type              = "VMwareCbt"
///       snapshot_run_as_account_id = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/snapshotRunAsAccount1"
///       target_network_id          = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Network/virtualNetworks/virtualNetwork1"
///       target_resource_group_id   = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1"
///       vmware_machine_id          = "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/machines/virtualmachine1"
///     }
///   }
///   protection_container_name = "vmwareContainer1"
///   resource_group_name       = "resourcegroup1"
///   resource_name             = "migrationvault"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.recoveryservices.ReplicationMigrationItem;
/// import com.pulumi.azurenative.recoveryservices.ReplicationMigrationItemArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.EnableMigrationInputPropertiesArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.VMwareCbtEnableMigrationInputArgs;
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
///         var replicationMigrationItem = new ReplicationMigrationItem("replicationMigrationItem", ReplicationMigrationItemArgs.builder()
///             .fabricName("vmwarefabric1")
///             .migrationItemName("virtualmachine1")
///             .properties(EnableMigrationInputPropertiesArgs.builder()
///                 .policyId("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.RecoveryServices/vaults/migrationvault/replicationPolicies/vmwarepolicy1")
///                 .providerSpecificDetails(Map.ofEntries(
///                     Map.entry("dataMoverRunAsAccountId", "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/dataMoverRunAsAccount1"),
///                     Map.entry("disksToInclude", Arrays.asList(VMwareCbtDiskInputArgs.builder()
///                         .diskId("disk1")
///                         .isOSDisk("true")
///                         .logStorageAccountId("/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Storage/storageAccounts/logStorageAccount1")
///                         .logStorageAccountSasSecretName("logStorageSas")
///                         .build())),
///                     Map.entry("instanceType", "VMwareCbt"),
///                     Map.entry("snapshotRunAsAccountId", "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/snapshotRunAsAccount1"),
///                     Map.entry("targetNetworkId", "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Network/virtualNetworks/virtualNetwork1"),
///                     Map.entry("targetResourceGroupId", "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1"),
///                     Map.entry("vmwareMachineId", "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/machines/virtualmachine1")
///                 ))
///                 .build())
///             .protectionContainerName("vmwareContainer1")
///             .resourceGroupName("resourcegroup1")
///             .resourceName("migrationvault")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const replicationMigrationItem = new azure_native.recoveryservices.ReplicationMigrationItem("replicationMigrationItem", {
///     fabricName: "vmwarefabric1",
///     migrationItemName: "virtualmachine1",
///     properties: {
///         policyId: "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.RecoveryServices/vaults/migrationvault/replicationPolicies/vmwarepolicy1",
///         providerSpecificDetails: {
///             dataMoverRunAsAccountId: "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/dataMoverRunAsAccount1",
///             disksToInclude: [{
///                 diskId: "disk1",
///                 isOSDisk: "true",
///                 logStorageAccountId: "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Storage/storageAccounts/logStorageAccount1",
///                 logStorageAccountSasSecretName: "logStorageSas",
///             }],
///             instanceType: "VMwareCbt",
///             snapshotRunAsAccountId: "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/snapshotRunAsAccount1",
///             targetNetworkId: "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Network/virtualNetworks/virtualNetwork1",
///             targetResourceGroupId: "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1",
///             vmwareMachineId: "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/machines/virtualmachine1",
///         },
///     },
///     protectionContainerName: "vmwareContainer1",
///     resourceGroupName: "resourcegroup1",
///     resourceName: "migrationvault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_migration_item = azure_native.recoveryservices.ReplicationMigrationItem("replicationMigrationItem",
///     fabric_name="vmwarefabric1",
///     migration_item_name="virtualmachine1",
///     properties={
///         "policy_id": "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.RecoveryServices/vaults/migrationvault/replicationPolicies/vmwarepolicy1",
///         "provider_specific_details": {
///             "data_mover_run_as_account_id": "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/dataMoverRunAsAccount1",
///             "disks_to_include": [{
///                 "disk_id": "disk1",
///                 "is_os_disk": "true",
///                 "log_storage_account_id": "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Storage/storageAccounts/logStorageAccount1",
///                 "log_storage_account_sas_secret_name": "logStorageSas",
///             }],
///             "instance_type": "VMwareCbt",
///             "snapshot_run_as_account_id": "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/snapshotRunAsAccount1",
///             "target_network_id": "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Network/virtualNetworks/virtualNetwork1",
///             "target_resource_group_id": "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1",
///             "vmware_machine_id": "/Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/machines/virtualmachine1",
///         },
///     },
///     protection_container_name="vmwareContainer1",
///     resource_group_name="resourcegroup1",
///     resource_name_="migrationvault")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationMigrationItem:
///     type: azure-native:recoveryservices:ReplicationMigrationItem
///     properties:
///       fabricName: vmwarefabric1
///       migrationItemName: virtualmachine1
///       properties:
///         policyId: /Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.RecoveryServices/vaults/migrationvault/replicationPolicies/vmwarepolicy1
///         providerSpecificDetails:
///           dataMoverRunAsAccountId: /Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/dataMoverRunAsAccount1
///           disksToInclude:
///             - diskId: disk1
///               isOSDisk: 'true'
///               logStorageAccountId: /Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Storage/storageAccounts/logStorageAccount1
///               logStorageAccountSasSecretName: logStorageSas
///           instanceType: VMwareCbt
///           snapshotRunAsAccountId: /Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/runasaccounts/snapshotRunAsAccount1
///           targetNetworkId: /Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.Network/virtualNetworks/virtualNetwork1
///           targetResourceGroupId: /Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1
///           vmwareMachineId: /Subscriptions/cb53d0c3-bd59-4721-89bc-06916a9147ef/resourceGroups/resourcegroup1/providers/Microsoft.OffAzure/VMwareSites/vmwaresite1/machines/virtualmachine1
///       protectionContainerName: vmwareContainer1
///       resourceGroupName: resourcegroup1
///       resourceName: migrationvault
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:recoveryservices:ReplicationMigrationItem virtualmachine1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationProtectionContainers/{protectionContainerName}/replicationMigrationItems/{migrationItemName}
/// ```
class ReplicationMigrationItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Location
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// The migration item properties.
  late final pulumi.Output<MigrationItemPropertiesResponse> properties;
  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationMigrationItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationMigrationItem]. {@macro pulumi_recoveryservices_replication_migration_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationMigrationItem(
    String name, {
    ReplicationMigrationItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ReplicationMigrationItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MigrationItemPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationItemPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

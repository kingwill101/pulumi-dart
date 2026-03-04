import 'package:pulumi/pulumi.dart' as pulumi;
import 'iscsi_target_args.dart';
import 'system_metadata_response.dart';

/// Response for iSCSI Target requests.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update iSCSI Target
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iscsiTarget = new AzureNative.StoragePool.IscsiTarget("iscsiTarget", new()
///     {
///         AclMode = AzureNative.StoragePool.IscsiTargetAclMode.Dynamic,
///         DiskPoolName = "myDiskPool",
///         IscsiTargetName = "myIscsiTarget",
///         Luns = new[]
///         {
///             new AzureNative.StoragePool.Inputs.IscsiLunArgs
///             {
///                 ManagedDiskAzureResourceId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1",
///                 Name = "lun0",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         TargetIqn = "iqn.2005-03.org.iscsi:server1",
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
/// 	storagepool "github.com/pulumi/pulumi-azure-native-sdk/storagepool/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagepool.NewIscsiTarget(ctx, "iscsiTarget", &storagepool.IscsiTargetArgs{
/// 			AclMode:         pulumi.String(storagepool.IscsiTargetAclModeDynamic),
/// 			DiskPoolName:    pulumi.String("myDiskPool"),
/// 			IscsiTargetName: pulumi.String("myIscsiTarget"),
/// 			Luns: storagepool.IscsiLunArray{
/// 				&storagepool.IscsiLunArgs{
/// 					ManagedDiskAzureResourceId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1"),
/// 					Name:                       pulumi.String("lun0"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			TargetIqn:         pulumi.String("iqn.2005-03.org.iscsi:server1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagepool.IscsiTarget;
/// import com.pulumi.azurenative.storagepool.IscsiTargetArgs;
/// import com.pulumi.azurenative.storagepool.inputs.IscsiLunArgs;
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
///         var iscsiTarget = new IscsiTarget("iscsiTarget", IscsiTargetArgs.builder()
///             .aclMode("Dynamic")
///             .diskPoolName("myDiskPool")
///             .iscsiTargetName("myIscsiTarget")
///             .luns(IscsiLunArgs.builder()
///                 .managedDiskAzureResourceId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1")
///                 .name("lun0")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .targetIqn("iqn.2005-03.org.iscsi:server1")
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
/// const iscsiTarget = new azure_native.storagepool.IscsiTarget("iscsiTarget", {
///     aclMode: azure_native.storagepool.IscsiTargetAclMode.Dynamic,
///     diskPoolName: "myDiskPool",
///     iscsiTargetName: "myIscsiTarget",
///     luns: [{
///         managedDiskAzureResourceId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1",
///         name: "lun0",
///     }],
///     resourceGroupName: "myResourceGroup",
///     targetIqn: "iqn.2005-03.org.iscsi:server1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iscsi_target = azure_native.storagepool.IscsiTarget("iscsiTarget",
///     acl_mode=azure_native.storagepool.IscsiTargetAclMode.DYNAMIC,
///     disk_pool_name="myDiskPool",
///     iscsi_target_name="myIscsiTarget",
///     luns=[{
///         "managed_disk_azure_resource_id": "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1",
///         "name": "lun0",
///     }],
///     resource_group_name="myResourceGroup",
///     target_iqn="iqn.2005-03.org.iscsi:server1")
///
/// ```
///
/// ```yaml
/// resources:
///   iscsiTarget:
///     type: azure-native:storagepool:IscsiTarget
///     properties:
///       aclMode: Dynamic
///       diskPoolName: myDiskPool
///       iscsiTargetName: myIscsiTarget
///       luns:
///         - managedDiskAzureResourceId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/vm-name_DataDisk_1
///           name: lun0
///       resourceGroupName: myResourceGroup
///       targetIqn: iqn.2005-03.org.iscsi:server1
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
/// $ pulumi import azure-native:storagepool:IscsiTarget myIscsiTarget /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StoragePool/diskPools/{diskPoolName}/iscsiTargets/{iscsiTargetName}
/// ```
class IscsiTarget extends pulumi.CustomResource {
  /// Mode for Target connectivity.
  late final pulumi.Output<String> aclMode;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// List of private IPv4 addresses to connect to the iSCSI Target.
  late final pulumi.Output<List<String>?> endpoints;

  /// List of LUNs to be exposed through iSCSI Target.
  late final pulumi.Output<List<Map<String, dynamic>>?> luns;

  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  late final pulumi.Output<String> managedBy;

  /// List of Azure resource ids that manage this resource.
  late final pulumi.Output<List<String>> managedByExtended;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The port used by iSCSI Target portal group.
  late final pulumi.Output<int?> port;

  /// State of the operation on the resource.
  late final pulumi.Output<String> provisioningState;

  /// List of identifiers for active sessions on the iSCSI target
  late final pulumi.Output<List<String>> sessions;

  /// Access Control List (ACL) for an iSCSI Target; defines LUN masking policy
  late final pulumi.Output<List<Map<String, dynamic>>?> staticAcls;

  /// Operational status of the iSCSI Target.
  late final pulumi.Output<String> status;

  /// Resource metadata required by ARM RPC
  late final pulumi.Output<SystemMetadataResponse> systemData;

  /// iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server".
  late final pulumi.Output<String> targetIqn;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [IscsiTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IscsiTarget]. {@macro pulumi_storagepool_iscsi_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IscsiTarget(
    String name, {
    IscsiTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:storagepool:IscsiTarget',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclMode = registerOutput<String>('aclMode');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endpoints = registerOutput<List<String>?>('endpoints');
    luns = registerOutput<List<Map<String, dynamic>>?>('luns');
    managedBy = registerOutput<String>('managedBy');
    managedByExtended = registerOutput<List<String>>('managedByExtended');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    provisioningState = registerOutput<String>('provisioningState');
    sessions = registerOutput<List<String>>('sessions');
    staticAcls = registerOutput<List<Map<String, dynamic>>?>('staticAcls');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemMetadataResponse>('systemData');
    targetIqn = registerOutput<String>('targetIqn');
    type = registerOutput<String>('type');
  }
}

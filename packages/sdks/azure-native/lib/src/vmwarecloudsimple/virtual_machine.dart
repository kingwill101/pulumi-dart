import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_oscustomization_response.dart';
import 'resource_pool_response.dart';
import 'virtual_machine_args.dart';

/// Virtual machine model
///
/// Uses Azure REST API version 2019-04-01. In version 2.x of the Azure Native provider, it used API version 2019-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVirtualMachine
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.VMwareCloudSimple.VirtualMachine("virtualMachine", new()
///     {
///         AmountOfRam = 4096,
///         Disks = new[]
///         {
///             new AzureNative.VMwareCloudSimple.Inputs.VirtualDiskArgs
///             {
///                 ControllerId = "1000",
///                 IndependenceMode = AzureNative.VMwareCloudSimple.DiskIndependenceMode.Persistent,
///                 TotalSize = 10485760,
///                 VirtualDiskId = "2000",
///             },
///         },
///         Location = "westus2",
///         Nics = new[]
///         {
///             new AzureNative.VMwareCloudSimple.Inputs.VirtualNicArgs
///             {
///                 Network = new AzureNative.VMwareCloudSimple.Inputs.VirtualNetworkArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualNetworks/dvportgroup-19",
///                 },
///                 NicType = AzureNative.VMwareCloudSimple.NICType.E1000,
///                 PowerOnBoot = true,
///                 VirtualNicId = "4000",
///             },
///         },
///         NumberOfCores = 2,
///         PrivateCloudId = "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud",
///         ResourceGroupName = "myResourceGroup",
///         ResourcePool = new AzureNative.VMwareCloudSimple.Inputs.ResourcePoolArgs
///         {
///             Id = "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/resourcePools/resgroup-26",
///         },
///         TemplateId = "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualMachineTemplates/vm-34",
///         VirtualMachineName = "myVirtualMachine",
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
/// 	vmwarecloudsimple "github.com/pulumi/pulumi-azure-native-sdk/vmwarecloudsimple/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vmwarecloudsimple.NewVirtualMachine(ctx, "virtualMachine", &vmwarecloudsimple.VirtualMachineArgs{
/// 			AmountOfRam: pulumi.Int(4096),
/// 			Disks: vmwarecloudsimple.VirtualDiskArray{
/// 				&vmwarecloudsimple.VirtualDiskArgs{
/// 					ControllerId:     pulumi.String("1000"),
/// 					IndependenceMode: vmwarecloudsimple.DiskIndependenceModePersistent,
/// 					TotalSize:        pulumi.Int(10485760),
/// 					VirtualDiskId:    pulumi.String("2000"),
/// 				},
/// 			},
/// 			Location: pulumi.String("westus2"),
/// 			Nics: vmwarecloudsimple.VirtualNicArray{
/// 				&vmwarecloudsimple.VirtualNicArgs{
/// 					Network: &vmwarecloudsimple.VirtualNetworkArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualNetworks/dvportgroup-19"),
/// 					},
/// 					NicType:      vmwarecloudsimple.NICTypeE1000,
/// 					PowerOnBoot:  pulumi.Bool(true),
/// 					VirtualNicId: pulumi.String("4000"),
/// 				},
/// 			},
/// 			NumberOfCores:     pulumi.Int(2),
/// 			PrivateCloudId:    pulumi.String("/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourcePool: &vmwarecloudsimple.ResourcePoolArgs{
/// 				Id: pulumi.String("/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/resourcePools/resgroup-26"),
/// 			},
/// 			TemplateId:         pulumi.String("/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualMachineTemplates/vm-34"),
/// 			VirtualMachineName: pulumi.String("myVirtualMachine"),
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
/// import com.pulumi.azurenative.vmwarecloudsimple.VirtualMachine;
/// import com.pulumi.azurenative.vmwarecloudsimple.VirtualMachineArgs;
/// import com.pulumi.azurenative.vmwarecloudsimple.inputs.VirtualDiskArgs;
/// import com.pulumi.azurenative.vmwarecloudsimple.inputs.VirtualNicArgs;
/// import com.pulumi.azurenative.vmwarecloudsimple.inputs.VirtualNetworkArgs;
/// import com.pulumi.azurenative.vmwarecloudsimple.inputs.ResourcePoolArgs;
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
///         var virtualMachine = new VirtualMachine("virtualMachine", VirtualMachineArgs.builder()
///             .amountOfRam(4096)
///             .disks(VirtualDiskArgs.builder()
///                 .controllerId("1000")
///                 .independenceMode("persistent")
///                 .totalSize(10485760)
///                 .virtualDiskId("2000")
///                 .build())
///             .location("westus2")
///             .nics(VirtualNicArgs.builder()
///                 .network(VirtualNetworkArgs.builder()
///                     .id("/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualNetworks/dvportgroup-19")
///                     .build())
///                 .nicType("E1000")
///                 .powerOnBoot(true)
///                 .virtualNicId("4000")
///                 .build())
///             .numberOfCores(2)
///             .privateCloudId("/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud")
///             .resourceGroupName("myResourceGroup")
///             .resourcePool(ResourcePoolArgs.builder()
///                 .id("/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/resourcePools/resgroup-26")
///                 .build())
///             .templateId("/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualMachineTemplates/vm-34")
///             .virtualMachineName("myVirtualMachine")
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
/// const virtualMachine = new azure_native.vmwarecloudsimple.VirtualMachine("virtualMachine", {
///     amountOfRam: 4096,
///     disks: [{
///         controllerId: "1000",
///         independenceMode: azure_native.vmwarecloudsimple.DiskIndependenceMode.Persistent,
///         totalSize: 10485760,
///         virtualDiskId: "2000",
///     }],
///     location: "westus2",
///     nics: [{
///         network: {
///             id: "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualNetworks/dvportgroup-19",
///         },
///         nicType: azure_native.vmwarecloudsimple.NICType.E1000,
///         powerOnBoot: true,
///         virtualNicId: "4000",
///     }],
///     numberOfCores: 2,
///     privateCloudId: "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud",
///     resourceGroupName: "myResourceGroup",
///     resourcePool: {
///         id: "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/resourcePools/resgroup-26",
///     },
///     templateId: "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualMachineTemplates/vm-34",
///     virtualMachineName: "myVirtualMachine",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.vmwarecloudsimple.VirtualMachine("virtualMachine",
///     amount_of_ram=4096,
///     disks=[{
///         "controller_id": "1000",
///         "independence_mode": azure_native.vmwarecloudsimple.DiskIndependenceMode.PERSISTENT,
///         "total_size": 10485760,
///         "virtual_disk_id": "2000",
///     }],
///     location="westus2",
///     nics=[{
///         "network": {
///             "id": "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualNetworks/dvportgroup-19",
///         },
///         "nic_type": azure_native.vmwarecloudsimple.NICType.E1000,
///         "power_on_boot": True,
///         "virtual_nic_id": "4000",
///     }],
///     number_of_cores=2,
///     private_cloud_id="/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud",
///     resource_group_name="myResourceGroup",
///     resource_pool={
///         "id": "/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/resourcePools/resgroup-26",
///     },
///     template_id="/subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualMachineTemplates/vm-34",
///     virtual_machine_name="myVirtualMachine")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:vmwarecloudsimple:VirtualMachine
///     properties:
///       amountOfRam: 4096
///       disks:
///         - controllerId: '1000'
///           independenceMode: persistent
///           totalSize: 1.048576e+07
///           virtualDiskId: '2000'
///       location: westus2
///       nics:
///         - network:
///             id: /subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualNetworks/dvportgroup-19
///           nicType: E1000
///           powerOnBoot: true
///           virtualNicId: '4000'
///       numberOfCores: 2
///       privateCloudId: /subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud
///       resourceGroupName: myResourceGroup
///       resourcePool:
///         id: /subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/resourcePools/resgroup-26
///       templateId: /subscriptions/{subscription-id}/providers/Microsoft.VMwareCloudSimple/locations/westus2/privateClouds/myPrivateCloud/virtualMachineTemplates/vm-34
///       virtualMachineName: myVirtualMachine
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
/// $ pulumi import azure-native:vmwarecloudsimple:VirtualMachine myVirtualMachine /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VMwareCloudSimple/virtualMachines/{virtualMachineName}
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// The amount of memory
  late final pulumi.Output<int> amountOfRam;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The list of Virtual Disks' Controllers
  late final pulumi.Output<List<Map<String, dynamic>>> controllers;

  /// Virtual machine properties
  late final pulumi.Output<GuestOSCustomizationResponse?> customization;

  /// The list of Virtual Disks
  late final pulumi.Output<List<Map<String, dynamic>>?> disks;

  /// The DNS name of Virtual Machine in VCenter
  late final pulumi.Output<String> dnsname;

  /// Expose Guest OS or not
  late final pulumi.Output<bool?> exposeToGuestVM;

  /// The path to virtual machine folder in VCenter
  late final pulumi.Output<String> folder;

  /// The name of Guest OS
  late final pulumi.Output<String> guestOS;

  /// The Guest OS type
  late final pulumi.Output<String> guestOSType;

  /// Azure region
  late final pulumi.Output<String> location;

  /// {virtualMachineName}
  late final pulumi.Output<String> name;

  /// The list of Virtual NICs
  late final pulumi.Output<List<Map<String, dynamic>>?> nics;

  /// The number of CPU cores
  late final pulumi.Output<int> numberOfCores;

  /// Password for login. Deprecated - use customization property
  late final pulumi.Output<String?> password;

  /// Private Cloud Id
  late final pulumi.Output<String> privateCloudId;

  /// The provisioning status of the resource
  late final pulumi.Output<String> provisioningState;

  /// The public ip of Virtual Machine
  late final pulumi.Output<String> publicIP;

  /// Virtual Machines Resource Pool
  late final pulumi.Output<ResourcePoolResponse?> resourcePool;

  /// The status of Virtual machine
  late final pulumi.Output<String> status;

  /// The list of tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// Virtual Machine Template Id
  late final pulumi.Output<String?> templateId;

  /// {resourceProviderNamespace}/{resourceType}
  late final pulumi.Output<String> type;

  /// Username for login. Deprecated - use customization property
  late final pulumi.Output<String?> username;

  /// The list of Virtual VSphere Networks
  late final pulumi.Output<List<String>?> vSphereNetworks;

  /// The internal id of Virtual Machine in VCenter
  late final pulumi.Output<String> vmId;

  /// VMware tools version
  late final pulumi.Output<String> vmwaretools;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_vmwarecloudsimple_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:vmwarecloudsimple:VirtualMachine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    amountOfRam = registerOutput<int>('amountOfRam');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    controllers = registerOutput<List<Map<String, dynamic>>>('controllers');
    customization = registerOutput<GuestOSCustomizationResponse?>(
      'customization',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GuestOSCustomizationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    disks = registerOutput<List<Map<String, dynamic>>?>('disks');
    dnsname = registerOutput<String>('dnsname');
    exposeToGuestVM = registerOutput<bool?>('exposeToGuestVM');
    folder = registerOutput<String>('folder');
    guestOS = registerOutput<String>('guestOS');
    guestOSType = registerOutput<String>('guestOSType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nics = registerOutput<List<Map<String, dynamic>>?>('nics');
    numberOfCores = registerOutput<int>('numberOfCores');
    password = registerOutput<String?>('password');
    privateCloudId = registerOutput<String>('privateCloudId');
    provisioningState = registerOutput<String>('provisioningState');
    publicIP = registerOutput<String>('publicIP');
    resourcePool = registerOutput<ResourcePoolResponse?>(
      'resourcePool',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourcePoolResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    templateId = registerOutput<String?>('templateId');
    type = registerOutput<String>('type');
    username = registerOutput<String?>('username');
    vSphereNetworks = registerOutput<List<String>?>('vSphereNetworks');
    vmId = registerOutput<String>('vmId');
    vmwaretools = registerOutput<String>('vmwaretools');
  }
}

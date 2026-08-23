import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'image_repository_credentials_response.dart';
import 'network_attachment_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_args.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update virtual machine
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachine = new AzureNative.NetworkCloud.VirtualMachine("virtualMachine", new()
///     {
///         AdminUsername = "username",
///         BootMethod = AzureNative.NetworkCloud.VirtualMachineBootMethod.UEFI,
///         CloudServicesNetworkAttachment = new AzureNative.NetworkCloud.Inputs.NetworkAttachmentArgs
///         {
///             AttachedNetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///             IpAllocationMethod = AzureNative.NetworkCloud.VirtualMachineIPAllocationMethod.Dynamic,
///         },
///         CpuCores = 2,
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         Location = "location",
///         MemorySizeGB = 8,
///         NetworkAttachments = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.NetworkAttachmentArgs
///             {
///                 AttachedNetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 DefaultGateway = AzureNative.NetworkCloud.DefaultGateway.True,
///                 IpAllocationMethod = AzureNative.NetworkCloud.VirtualMachineIPAllocationMethod.Dynamic,
///                 Ipv4Address = "198.51.100.1",
///                 Ipv6Address = "2001:0db8:0000:0000:0000:0000:0000:0000",
///                 NetworkAttachmentName = "netAttachName01",
///             },
///         },
///         NetworkData = "bmV0d29ya0RhdGVTYW1wbGU=",
///         PlacementHints = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.VirtualMachinePlacementHintArgs
///             {
///                 HintType = AzureNative.NetworkCloud.VirtualMachinePlacementHintType.Affinity,
///                 ResourceId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///                 SchedulingExecution = AzureNative.NetworkCloud.VirtualMachineSchedulingExecution.Hard,
///                 Scope = "",
///             },
///         },
///         ResourceGroupName = "resourceGroupName",
///         SshPublicKeys = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///             {
///                 KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             },
///         },
///         StorageProfile = new AzureNative.NetworkCloud.Inputs.StorageProfileArgs
///         {
///             OsDisk = new AzureNative.NetworkCloud.Inputs.OsDiskArgs
///             {
///                 CreateOption = AzureNative.NetworkCloud.OsDiskCreateOption.Ephemeral,
///                 DeleteOption = AzureNative.NetworkCloud.OsDiskDeleteOption.Delete,
///                 DiskSizeGB = 120,
///             },
///             VolumeAttachments = new[]
///             {
///                 "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/volumes/volumeName",
///             },
///         },
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
///         UserData = "dXNlckRhdGVTYW1wbGU=",
///         VirtualMachineName = "virtualMachineName",
///         VmDeviceModel = AzureNative.NetworkCloud.VirtualMachineDeviceModelType.T2,
///         VmImage = "myacr.azurecr.io/foobar:latest",
///         VmImageRepositoryCredentials = new AzureNative.NetworkCloud.Inputs.ImageRepositoryCredentialsArgs
///         {
///             Password = "{password}",
///             RegistryUrl = "myacr.azurecr.io",
///             Username = "myuser",
///         },
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
/// 	networkcloud "github.com/pulumi/pulumi-azure-native-sdk/networkcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkcloud.NewVirtualMachine(ctx, "virtualMachine", &networkcloud.VirtualMachineArgs{
/// 			AdminUsername: pulumi.String("username"),
/// 			BootMethod:    pulumi.String(networkcloud.VirtualMachineBootMethodUEFI),
/// 			CloudServicesNetworkAttachment: &networkcloud.NetworkAttachmentArgs{
/// 				AttachedNetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName"),
/// 				IpAllocationMethod: pulumi.String(networkcloud.VirtualMachineIPAllocationMethodDynamic),
/// 			},
/// 			CpuCores: pulumi.Float64(2),
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:     pulumi.String("location"),
/// 			MemorySizeGB: pulumi.Float64(8),
/// 			NetworkAttachments: networkcloud.NetworkAttachmentArray{
/// 				&networkcloud.NetworkAttachmentArgs{
/// 					AttachedNetworkId:     pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"),
/// 					DefaultGateway:        pulumi.String(networkcloud.DefaultGatewayTrue),
/// 					IpAllocationMethod:    pulumi.String(networkcloud.VirtualMachineIPAllocationMethodDynamic),
/// 					Ipv4Address:           pulumi.String("198.51.100.1"),
/// 					Ipv6Address:           pulumi.String("2001:0db8:0000:0000:0000:0000:0000:0000"),
/// 					NetworkAttachmentName: pulumi.String("netAttachName01"),
/// 				},
/// 			},
/// 			NetworkData: pulumi.String("bmV0d29ya0RhdGVTYW1wbGU="),
/// 			PlacementHints: networkcloud.VirtualMachinePlacementHintArray{
/// 				&networkcloud.VirtualMachinePlacementHintArgs{
/// 					HintType:            pulumi.String(networkcloud.VirtualMachinePlacementHintTypeAffinity),
/// 					ResourceId:          pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName"),
/// 					SchedulingExecution: pulumi.String(networkcloud.VirtualMachineSchedulingExecutionHard),
/// 					Scope:               pulumi.String(""),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			SshPublicKeys: networkcloud.SshPublicKeyArray{
/// 				&networkcloud.SshPublicKeyArgs{
/// 					KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 				},
/// 			},
/// 			StorageProfile: &networkcloud.StorageProfileArgs{
/// 				OsDisk: &networkcloud.OsDiskArgs{
/// 					CreateOption: pulumi.String(networkcloud.OsDiskCreateOptionEphemeral),
/// 					DeleteOption: pulumi.String(networkcloud.OsDiskDeleteOptionDelete),
/// 					DiskSizeGB:   pulumi.Float64(120),
/// 				},
/// 				VolumeAttachments: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/volumes/volumeName"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
/// 			UserData:           pulumi.String("dXNlckRhdGVTYW1wbGU="),
/// 			VirtualMachineName: pulumi.String("virtualMachineName"),
/// 			VmDeviceModel:      pulumi.String(networkcloud.VirtualMachineDeviceModelTypeT2),
/// 			VmImage:            pulumi.String("myacr.azurecr.io/foobar:latest"),
/// 			VmImageRepositoryCredentials: &networkcloud.ImageRepositoryCredentialsArgs{
/// 				Password:    pulumi.String("{password}"),
/// 				RegistryUrl: pulumi.String("myacr.azurecr.io"),
/// 				Username:    pulumi.String("myuser"),
/// 			},
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
/// resource "azure-native_networkcloud_virtualmachine" "virtualMachine" {
///   admin_username = "username"
///   boot_method    = "UEFI"
///   cloud_services_network_attachment = {
///     attached_network_id  = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName"
///     ip_allocation_method = "Dynamic"
///   }
///   cpu_cores = 2
///   extended_location = {
///     name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"
///     type = "CustomLocation"
///   }
///   location       = "location"
///   memory_size_gb = 8
///   network_attachments {
///     attached_network_id     = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"
///     default_gateway         = "True"
///     ip_allocation_method    = "Dynamic"
///     ipv4_address            = "198.51.100.1"
///     ipv6_address            = "2001:0db8:0000:0000:0000:0000:0000:0000"
///     network_attachment_name = "netAttachName01"
///   }
///   network_data = "bmV0d29ya0RhdGVTYW1wbGU="
///   placement_hints {
///     hint_type            = "Affinity"
///     resource_id          = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName"
///     scheduling_execution = "Hard"
///     scope                = ""
///   }
///   resource_group_name = "resourceGroupName"
///   ssh_public_keys {
///     key_data = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"
///   }
///   storage_profile = {
///     os_disk = {
///       create_option = "Ephemeral"
///       delete_option = "Delete"
///       disk_size_gb  = 120
///     }
///     volume_attachments = ["/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/volumes/volumeName"]
///   }
///   tags = {
///     "key1" = "myvalue1"
///     "key2" = "myvalue2"
///   }
///   user_data            = "dXNlckRhdGVTYW1wbGU="
///   virtual_machine_name = "virtualMachineName"
///   vm_device_model      = "T2"
///   vm_image             = "myacr.azurecr.io/foobar:latest"
///   vm_image_repository_credentials = {
///     password     = "{password}"
///     registry_url = "myacr.azurecr.io"
///     username     = "myuser"
///   }
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
/// import com.pulumi.azurenative.networkcloud.VirtualMachine;
/// import com.pulumi.azurenative.networkcloud.VirtualMachineArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.NetworkAttachmentArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.VirtualMachinePlacementHintArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.SshPublicKeyArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.StorageProfileArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.OsDiskArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ImageRepositoryCredentialsArgs;
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
///         var virtualMachine = new VirtualMachine("virtualMachine", VirtualMachineArgs.builder()
///             .adminUsername("username")
///             .bootMethod("UEFI")
///             .cloudServicesNetworkAttachment(NetworkAttachmentArgs.builder()
///                 .attachedNetworkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName")
///                 .ipAllocationMethod("Dynamic")
///                 .build())
///             .cpuCores(2.0)
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .location("location")
///             .memorySizeGB(8.0)
///             .networkAttachments(NetworkAttachmentArgs.builder()
///                 .attachedNetworkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName")
///                 .defaultGateway("True")
///                 .ipAllocationMethod("Dynamic")
///                 .ipv4Address("198.51.100.1")
///                 .ipv6Address("2001:0db8:0000:0000:0000:0000:0000:0000")
///                 .networkAttachmentName("netAttachName01")
///                 .build())
///             .networkData("bmV0d29ya0RhdGVTYW1wbGU=")
///             .placementHints(VirtualMachinePlacementHintArgs.builder()
///                 .hintType("Affinity")
///                 .resourceId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName")
///                 .schedulingExecution("Hard")
///                 .scope("")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .sshPublicKeys(SshPublicKeyArgs.builder()
///                 .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                 .build())
///             .storageProfile(StorageProfileArgs.builder()
///                 .osDisk(OsDiskArgs.builder()
///                     .createOption("Ephemeral")
///                     .deleteOption("Delete")
///                     .diskSizeGB(120.0)
///                     .build())
///                 .volumeAttachments("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/volumes/volumeName")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
///             .userData("dXNlckRhdGVTYW1wbGU=")
///             .virtualMachineName("virtualMachineName")
///             .vmDeviceModel("T2")
///             .vmImage("myacr.azurecr.io/foobar:latest")
///             .vmImageRepositoryCredentials(ImageRepositoryCredentialsArgs.builder()
///                 .password("{password}")
///                 .registryUrl("myacr.azurecr.io")
///                 .username("myuser")
///                 .build())
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
/// const virtualMachine = new azure_native.networkcloud.VirtualMachine("virtualMachine", {
///     adminUsername: "username",
///     bootMethod: azure_native.networkcloud.VirtualMachineBootMethod.UEFI,
///     cloudServicesNetworkAttachment: {
///         attachedNetworkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///         ipAllocationMethod: azure_native.networkcloud.VirtualMachineIPAllocationMethod.Dynamic,
///     },
///     cpuCores: 2,
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     location: "location",
///     memorySizeGB: 8,
///     networkAttachments: [{
///         attachedNetworkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///         defaultGateway: azure_native.networkcloud.DefaultGateway.True,
///         ipAllocationMethod: azure_native.networkcloud.VirtualMachineIPAllocationMethod.Dynamic,
///         ipv4Address: "198.51.100.1",
///         ipv6Address: "2001:0db8:0000:0000:0000:0000:0000:0000",
///         networkAttachmentName: "netAttachName01",
///     }],
///     networkData: "bmV0d29ya0RhdGVTYW1wbGU=",
///     placementHints: [{
///         hintType: azure_native.networkcloud.VirtualMachinePlacementHintType.Affinity,
///         resourceId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///         schedulingExecution: azure_native.networkcloud.VirtualMachineSchedulingExecution.Hard,
///         scope: "",
///     }],
///     resourceGroupName: "resourceGroupName",
///     sshPublicKeys: [{
///         keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///     }],
///     storageProfile: {
///         osDisk: {
///             createOption: azure_native.networkcloud.OsDiskCreateOption.Ephemeral,
///             deleteOption: azure_native.networkcloud.OsDiskDeleteOption.Delete,
///             diskSizeGB: 120,
///         },
///         volumeAttachments: ["/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/volumes/volumeName"],
///     },
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
///     userData: "dXNlckRhdGVTYW1wbGU=",
///     virtualMachineName: "virtualMachineName",
///     vmDeviceModel: azure_native.networkcloud.VirtualMachineDeviceModelType.T2,
///     vmImage: "myacr.azurecr.io/foobar:latest",
///     vmImageRepositoryCredentials: {
///         password: "{password}",
///         registryUrl: "myacr.azurecr.io",
///         username: "myuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.networkcloud.VirtualMachine("virtualMachine",
///     admin_username="username",
///     boot_method=azure_native.networkcloud.VirtualMachineBootMethod.UEFI,
///     cloud_services_network_attachment={
///         "attached_network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///         "ip_allocation_method": azure_native.networkcloud.VirtualMachineIPAllocationMethod.DYNAMIC,
///     },
///     cpu_cores=float(2),
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     location="location",
///     memory_size_gb=float(8),
///     network_attachments=[{
///         "attached_network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///         "default_gateway": azure_native.networkcloud.DefaultGateway.TRUE,
///         "ip_allocation_method": azure_native.networkcloud.VirtualMachineIPAllocationMethod.DYNAMIC,
///         "ipv4_address": "198.51.100.1",
///         "ipv6_address": "2001:0db8:0000:0000:0000:0000:0000:0000",
///         "network_attachment_name": "netAttachName01",
///     }],
///     network_data="bmV0d29ya0RhdGVTYW1wbGU=",
///     placement_hints=[{
///         "hint_type": azure_native.networkcloud.VirtualMachinePlacementHintType.AFFINITY,
///         "resource_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///         "scheduling_execution": azure_native.networkcloud.VirtualMachineSchedulingExecution.HARD,
///         "scope": "",
///     }],
///     resource_group_name="resourceGroupName",
///     ssh_public_keys=[{
///         "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///     }],
///     storage_profile={
///         "os_disk": {
///             "create_option": azure_native.networkcloud.OsDiskCreateOption.EPHEMERAL,
///             "delete_option": azure_native.networkcloud.OsDiskDeleteOption.DELETE,
///             "disk_size_gb": float(120),
///         },
///         "volume_attachments": ["/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/volumes/volumeName"],
///     },
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     },
///     user_data="dXNlckRhdGVTYW1wbGU=",
///     virtual_machine_name="virtualMachineName",
///     vm_device_model=azure_native.networkcloud.VirtualMachineDeviceModelType.T2,
///     vm_image="myacr.azurecr.io/foobar:latest",
///     vm_image_repository_credentials={
///         "password": "{password}",
///         "registry_url": "myacr.azurecr.io",
///         "username": "myuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:networkcloud:VirtualMachine
///     properties:
///       adminUsername: username
///       bootMethod: UEFI
///       cloudServicesNetworkAttachment:
///         attachedNetworkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName
///         ipAllocationMethod: Dynamic
///       cpuCores: 2
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       location: location
///       memorySizeGB: 8
///       networkAttachments:
///         - attachedNetworkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName
///           defaultGateway: True
///           ipAllocationMethod: Dynamic
///           ipv4Address: 198.51.100.1
///           ipv6Address: 2001:0db8:0000:0000:0000:0000:0000:0000
///           networkAttachmentName: netAttachName01
///       networkData: bmV0d29ya0RhdGVTYW1wbGU=
///       placementHints:
///         - hintType: Affinity
///           resourceId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName
///           schedulingExecution: Hard
///           scope: ""
///       resourceGroupName: resourceGroupName
///       sshPublicKeys:
///         - keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///       storageProfile:
///         osDisk:
///           createOption: Ephemeral
///           deleteOption: Delete
///           diskSizeGB: 120
///         volumeAttachments:
///           - /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/volumes/volumeName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
///       userData: dXNlckRhdGVTYW1wbGU=
///       virtualMachineName: virtualMachineName
///       vmDeviceModel: T2
///       vmImage: myacr.azurecr.io/foobar:latest
///       vmImageRepositoryCredentials:
///         password: '{password}'
///         registryUrl: myacr.azurecr.io
///         username: myuser
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
/// $ pulumi import azure-native:networkcloud:VirtualMachine virtualMachineName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/virtualMachines/{virtualMachineName}
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// The name of the administrator to which the ssh public keys will be added into the authorized keys.
  late final pulumi.Output<String> adminUsername;
  /// The cluster availability zone containing this virtual machine.
  late final pulumi.Output<String> availabilityZone;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource ID of the bare metal machine that hosts the virtual machine.
  late final pulumi.Output<String> bareMetalMachineId;
  /// Selects the boot method for the virtual machine.
  late final pulumi.Output<String?> bootMethod;
  /// The cloud service network that provides platform-level services for the virtual machine.
  late final pulumi.Output<NetworkAttachmentResponse> cloudServicesNetworkAttachment;
  /// The resource ID of the cluster the virtual machine is created for.
  late final pulumi.Output<String> clusterId;
  /// The extended location to use for creation of a VM console resource.
  late final pulumi.Output<ExtendedLocationResponse?> consoleExtendedLocation;
  /// The number of CPU cores in the virtual machine.
  late final pulumi.Output<double> cpuCores;
  /// The more detailed status of the virtual machine.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;
  /// Resource ETag.
  late final pulumi.Output<String> etag;
  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
  late final pulumi.Output<String?> isolateEmulatorThread;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The memory size of the virtual machine. Allocations are measured in gibibytes.
  late final pulumi.Output<double> memorySizeGB;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of network attachments to the virtual machine.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkAttachments;
  /// The Base64 encoded cloud-init network data.
  late final pulumi.Output<String?> networkData;
  /// The scheduling hints for the virtual machine.
  late final pulumi.Output<List<Map<String, dynamic>>?> placementHints;
  /// The power state of the virtual machine.
  late final pulumi.Output<String> powerState;
  /// The provisioning state of the virtual machine.
  late final pulumi.Output<String> provisioningState;
  /// The list of ssh public keys. Each key will be added to the virtual machine using the cloud-init ssh_authorized_keys mechanism for the adminUsername.
  late final pulumi.Output<List<Map<String, dynamic>>?> sshPublicKeys;
  /// The storage profile that specifies size and other parameters about the disks related to the virtual machine.
  late final pulumi.Output<StorageProfileResponse> storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The Base64 encoded cloud-init user data.
  late final pulumi.Output<String?> userData;
  /// Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
  late final pulumi.Output<String?> virtioInterface;
  /// The type of the device model to use.
  late final pulumi.Output<String?> vmDeviceModel;
  /// The virtual machine image that is currently provisioned to the OS disk, using the full url and tag notation used to pull the image.
  late final pulumi.Output<String> vmImage;
  /// The credentials used to login to the image repository that has access to the specified image.
  late final pulumi.Output<ImageRepositoryCredentialsResponse?> vmImageRepositoryCredentials;
  /// The resource IDs of volumes that are attached to the virtual machine.
  late final pulumi.Output<List<String>> volumes;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_networkcloud_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:VirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminUsername = registerOutput<String>('adminUsername');
    availabilityZone = registerOutput<String>('availabilityZone');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bareMetalMachineId = registerOutput<String>('bareMetalMachineId');
    bootMethod = registerOutput<String?>('bootMethod');
    cloudServicesNetworkAttachment = registerOutput<NetworkAttachmentResponse>('cloudServicesNetworkAttachment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkAttachmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    consoleExtendedLocation = registerOutput<ExtendedLocationResponse?>('consoleExtendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuCores = registerOutput<double>('cpuCores');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isolateEmulatorThread = registerOutput<String?>('isolateEmulatorThread');
    location = registerOutput<String>('location');
    memorySizeGB = registerOutput<double>('memorySizeGB');
    this.name = registerOutput<String>('name');
    networkAttachments = registerOutput<List<Map<String, dynamic>>?>('networkAttachments');
    networkData = registerOutput<String?>('networkData');
    placementHints = registerOutput<List<Map<String, dynamic>>?>('placementHints');
    powerState = registerOutput<String>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    sshPublicKeys = registerOutput<List<Map<String, dynamic>>?>('sshPublicKeys');
    storageProfile = registerOutput<StorageProfileResponse>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    userData = registerOutput<String?>('userData');
    virtioInterface = registerOutput<String?>('virtioInterface');
    vmDeviceModel = registerOutput<String?>('vmDeviceModel');
    vmImage = registerOutput<String>('vmImage');
    vmImageRepositoryCredentials = registerOutput<ImageRepositoryCredentialsResponse?>('vmImageRepositoryCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageRepositoryCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    volumes = registerOutput<List<String>>('volumes');
  }
}

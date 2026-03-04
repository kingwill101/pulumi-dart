import 'package:pulumi/pulumi.dart' as pulumi;
import 'checkpoint_response.dart';
import 'extended_location_response.dart';
import 'guest_agent_profile_response.dart';
import 'hardware_profile_response.dart';
import 'identity_response.dart';
import 'network_profile_response.dart';
import 'os_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_args.dart';

/// The VirtualMachines resource definition.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-21-preview.
///
/// Other available API versions: 2022-05-21-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var virtualMachine = new AzureNative.ScVmm.VirtualMachine("virtualMachine", new()
///     {
///         CloudId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud",
///         ExtendedLocation = new AzureNative.ScVmm.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///             Type = "customLocation",
///         },
///         HardwareProfile = new AzureNative.ScVmm.Inputs.HardwareProfileArgs
///         {
///             CpuCount = 4,
///             MemoryMB = 4096,
///         },
///         Location = "East US",
///         ResourceGroupName = "testrg",
///         TemplateId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate",
///         VirtualMachineName = "DemoVM",
///         VmmServerId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer",
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
/// 	scvmm "github.com/pulumi/pulumi-azure-native-sdk/scvmm/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scvmm.NewVirtualMachine(ctx, "virtualMachine", &scvmm.VirtualMachineArgs{
/// 			CloudId: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud"),
/// 			ExtendedLocation: &scvmm.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			HardwareProfile: &scvmm.HardwareProfileArgs{
/// 				CpuCount: pulumi.Int(4),
/// 				MemoryMB: pulumi.Int(4096),
/// 			},
/// 			Location:           pulumi.String("East US"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			TemplateId:         pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate"),
/// 			VirtualMachineName: pulumi.String("DemoVM"),
/// 			VmmServerId:        pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer"),
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
/// import com.pulumi.azurenative.scvmm.VirtualMachine;
/// import com.pulumi.azurenative.scvmm.VirtualMachineArgs;
/// import com.pulumi.azurenative.scvmm.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.scvmm.inputs.HardwareProfileArgs;
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
///             .cloudId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .cpuCount(4)
///                 .memoryMB(4096)
///                 .build())
///             .location("East US")
///             .resourceGroupName("testrg")
///             .templateId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate")
///             .virtualMachineName("DemoVM")
///             .vmmServerId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer")
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
/// const virtualMachine = new azure_native.scvmm.VirtualMachine("virtualMachine", {
///     cloudId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud",
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         type: "customLocation",
///     },
///     hardwareProfile: {
///         cpuCount: 4,
///         memoryMB: 4096,
///     },
///     location: "East US",
///     resourceGroupName: "testrg",
///     templateId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate",
///     virtualMachineName: "DemoVM",
///     vmmServerId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine = azure_native.scvmm.VirtualMachine("virtualMachine",
///     cloud_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         "type": "customLocation",
///     },
///     hardware_profile={
///         "cpu_count": 4,
///         "memory_mb": 4096,
///     },
///     location="East US",
///     resource_group_name="testrg",
///     template_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate",
///     virtual_machine_name="DemoVM",
///     vmm_server_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachine:
///     type: azure-native:scvmm:VirtualMachine
///     properties:
///       cloudId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso
///         type: customLocation
///       hardwareProfile:
///         cpuCount: 4
///         memoryMB: 4096
///       location: East US
///       resourceGroupName: testrg
///       templateId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate
///       virtualMachineName: DemoVM
///       vmmServerId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer
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
/// $ pulumi import azure-native:scvmm:VirtualMachine DemoVM /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ScVmm/virtualMachines/{virtualMachineName}
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// Availability Sets in vm.
  late final pulumi.Output<List<Map<String, dynamic>>?> availabilitySets;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Type of checkpoint supported for the vm.
  late final pulumi.Output<String?> checkpointType;

  /// Checkpoints in the vm.
  late final pulumi.Output<List<Map<String, dynamic>>?> checkpoints;

  /// ARM Id of the cloud resource to use for deploying the vm.
  late final pulumi.Output<String?> cloudId;

  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// Gets or sets the generation for the vm.
  late final pulumi.Output<int?> generation;

  /// Guest agent status properties.
  late final pulumi.Output<GuestAgentProfileResponse?> guestAgentProfile;

  /// Hardware properties.
  late final pulumi.Output<HardwareProfileResponse?> hardwareProfile;

  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// Gets or sets the inventory Item ID for the resource.
  late final pulumi.Output<String?> inventoryItemId;

  /// Last restored checkpoint in the vm.
  late final pulumi.Output<CheckpointResponse> lastRestoredVMCheckpoint;

  /// Gets or sets the location.
  late final pulumi.Output<String> location;

  /// Resource Name
  late final pulumi.Output<String> name;

  /// Network properties.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;

  /// OS properties.
  late final pulumi.Output<OsProfileResponse?> osProfile;

  /// Gets the power state of the virtual machine.
  late final pulumi.Output<String> powerState;

  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Storage properties.
  late final pulumi.Output<StorageProfileResponse?> storageProfile;

  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// ARM Id of the template resource to use for deploying the vm.
  late final pulumi.Output<String?> templateId;

  /// Resource Type
  late final pulumi.Output<String> type;

  /// Unique ID of the virtual machine.
  late final pulumi.Output<String?> uuid;

  /// VMName is the name of VM on the SCVMM server.
  late final pulumi.Output<String?> vmName;

  /// ARM Id of the vmmServer resource in which this resource resides.
  late final pulumi.Output<String?> vmmServerId;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_scvmm_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:scvmm:VirtualMachine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    availabilitySets = registerOutput<List<Map<String, dynamic>>?>(
      'availabilitySets',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    checkpointType = registerOutput<String?>('checkpointType');
    checkpoints = registerOutput<List<Map<String, dynamic>>?>('checkpoints');
    cloudId = registerOutput<String?>('cloudId');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
    );
    generation = registerOutput<int?>('generation');
    guestAgentProfile = registerOutput<GuestAgentProfileResponse?>(
      'guestAgentProfile',
    );
    hardwareProfile = registerOutput<HardwareProfileResponse?>(
      'hardwareProfile',
    );
    identity = registerOutput<IdentityResponse?>('identity');
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    lastRestoredVMCheckpoint = registerOutput<CheckpointResponse>(
      'lastRestoredVMCheckpoint',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile');
    osProfile = registerOutput<OsProfileResponse?>('osProfile');
    powerState = registerOutput<String>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    templateId = registerOutput<String?>('templateId');
    type = registerOutput<String>('type');
    uuid = registerOutput<String?>('uuid');
    vmName = registerOutput<String?>('vmName');
    vmmServerId = registerOutput<String?>('vmmServerId');
  }
}

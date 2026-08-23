import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'hardware_profile_response.dart';
import 'infrastructure_profile_response.dart';
import 'network_profile_response.dart';
import 'os_profile_for_vminstance_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_instance_args.dart';

/// Define the virtualMachineInstance.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var virtualMachineInstance = new AzureNative.ScVmm.VirtualMachineInstance("virtualMachineInstance", new()
///     {
///         ExtendedLocation = new AzureNative.ScVmm.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
///         HardwareProfile = new AzureNative.ScVmm.Inputs.HardwareProfileArgs
///         {
///             CpuCount = 4,
///             MemoryMB = 4196,
///         },
///         InfrastructureProfile = new AzureNative.ScVmm.Inputs.InfrastructureProfileArgs
///         {
///             CloudId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud",
///             TemplateId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate",
///             VmmServerId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer",
///         },
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// 		_, err := scvmm.NewVirtualMachineInstance(ctx, "virtualMachineInstance", &scvmm.VirtualMachineInstanceArgs{
/// 			ExtendedLocation: &scvmm.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			HardwareProfile: &scvmm.HardwareProfileArgs{
/// 				CpuCount: pulumi.Int(4),
/// 				MemoryMB: pulumi.Int(4196),
/// 			},
/// 			InfrastructureProfile: &scvmm.InfrastructureProfileArgs{
/// 				CloudId:     pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud"),
/// 				TemplateId:  pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate"),
/// 				VmmServerId: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
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
/// resource "azure-native_scvmm_virtualmachineinstance" "virtualMachineInstance" {
///   extended_location = {
///     name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"
///     type = "customLocation"
///   }
///   hardware_profile = {
///     cpu_count = 4
///     memory_mb = 4196
///   }
///   infrastructure_profile = {
///     cloud_id      = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud"
///     template_id   = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate"
///     vmm_server_id = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer"
///   }
///   resource_uri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"
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
/// import com.pulumi.azurenative.scvmm.VirtualMachineInstance;
/// import com.pulumi.azurenative.scvmm.VirtualMachineInstanceArgs;
/// import com.pulumi.azurenative.scvmm.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.scvmm.inputs.HardwareProfileArgs;
/// import com.pulumi.azurenative.scvmm.inputs.InfrastructureProfileArgs;
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
///         var virtualMachineInstance = new VirtualMachineInstance("virtualMachineInstance", VirtualMachineInstanceArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .hardwareProfile(HardwareProfileArgs.builder()
///                 .cpuCount(4)
///                 .memoryMB(4196)
///                 .build())
///             .infrastructureProfile(InfrastructureProfileArgs.builder()
///                 .cloudId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud")
///                 .templateId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate")
///                 .vmmServerId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer")
///                 .build())
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
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
/// const virtualMachineInstance = new azure_native.scvmm.VirtualMachineInstance("virtualMachineInstance", {
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     hardwareProfile: {
///         cpuCount: 4,
///         memoryMB: 4196,
///     },
///     infrastructureProfile: {
///         cloudId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud",
///         templateId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate",
///         vmmServerId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer",
///     },
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_instance = azure_native.scvmm.VirtualMachineInstance("virtualMachineInstance",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     hardware_profile={
///         "cpu_count": 4,
///         "memory_mb": 4196,
///     },
///     infrastructure_profile={
///         "cloud_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud",
///         "template_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate",
///         "vmm_server_id": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer",
///     },
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineInstance:
///     type: azure-native:scvmm:VirtualMachineInstance
///     properties:
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       hardwareProfile:
///         cpuCount: 4
///         memoryMB: 4196
///       infrastructureProfile:
///         cloudId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/Clouds/HRCloud
///         templateId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VirtualMachineTemplates/HRVirtualMachineTemplate
///         vmmServerId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
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
/// $ pulumi import azure-native:scvmm:VirtualMachineInstance default /{resourceUri}/providers/Microsoft.ScVmm/virtualMachineInstances/default
/// ```
class VirtualMachineInstance extends pulumi.CustomResource {
  /// Availability Sets in vm.
  late final pulumi.Output<List<Map<String, dynamic>>?> availabilitySets;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// Hardware properties.
  late final pulumi.Output<HardwareProfileResponse?> hardwareProfile;
  /// Gets the infrastructure profile.
  late final pulumi.Output<InfrastructureProfileResponse?> infrastructureProfile;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network properties.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// OS properties.
  late final pulumi.Output<OsProfileForVMInstanceResponse?> osProfile;
  /// Gets the power state of the virtual machine.
  late final pulumi.Output<String> powerState;
  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Storage properties.
  late final pulumi.Output<StorageProfileResponse?> storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualMachineInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineInstance]. {@macro pulumi_scvmm_virtual_machine_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineInstance(
    String name, {
    VirtualMachineInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scvmm:VirtualMachineInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilitySets = registerOutput<List<Map<String, dynamic>>?>('availabilitySets');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareProfile = registerOutput<HardwareProfileResponse?>('hardwareProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureProfile = registerOutput<InfrastructureProfileResponse?>('infrastructureProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InfrastructureProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfile = registerOutput<OsProfileForVMInstanceResponse?>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OsProfileForVMInstanceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    powerState = registerOutput<String>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

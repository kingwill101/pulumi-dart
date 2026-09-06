import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_set_args.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// The AvailabilitySets resource definition.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-21-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateAvailabilitySet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var availabilitySet = new AzureNative.ScVmm.AvailabilitySet("availabilitySet", new()
///     {
///         AvailabilitySetName = "hr-avset",
///         ExtendedLocation = new AzureNative.ScVmm.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Location = "East US",
///         ResourceGroupName = "testrg",
///         VmmServerId = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ScVmm/VMMServers/ContosoVMMServer",
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
/// 		_, err := scvmm.NewAvailabilitySet(ctx, "availabilitySet", &scvmm.AvailabilitySetArgs{
/// 			AvailabilitySetName: pulumi.String("hr-avset"),
/// 			ExtendedLocation: &scvmm.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			VmmServerId:       pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ScVmm/VMMServers/ContosoVMMServer"),
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
/// resource "azure-native_scvmm_availabilityset" "availabilitySet" {
///   availability_set_name = "hr-avset"
///   extended_location = {
///     name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso"
///     type = "customLocation"
///   }
///   location            = "East US"
///   resource_group_name = "testrg"
///   vmm_server_id       = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ScVmm/VMMServers/ContosoVMMServer"
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
/// import com.pulumi.azurenative.scvmm.AvailabilitySet;
/// import com.pulumi.azurenative.scvmm.AvailabilitySetArgs;
/// import com.pulumi.azurenative.scvmm.inputs.ExtendedLocationArgs;
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
///         var availabilitySet = new AvailabilitySet("availabilitySet", AvailabilitySetArgs.builder()
///             .availabilitySetName("hr-avset")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .location("East US")
///             .resourceGroupName("testrg")
///             .vmmServerId("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ScVmm/VMMServers/ContosoVMMServer")
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
/// const availabilitySet = new azure_native.scvmm.AvailabilitySet("availabilitySet", {
///     availabilitySetName: "hr-avset",
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         type: "customLocation",
///     },
///     location: "East US",
///     resourceGroupName: "testrg",
///     vmmServerId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ScVmm/VMMServers/ContosoVMMServer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// availability_set = azure_native.scvmm.AvailabilitySet("availabilitySet",
///     availability_set_name="hr-avset",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         "type": "customLocation",
///     },
///     location="East US",
///     resource_group_name="testrg",
///     vmm_server_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ScVmm/VMMServers/ContosoVMMServer")
///
/// ```
///
/// ```yaml
/// resources:
///   availabilitySet:
///     type: azure-native:scvmm:AvailabilitySet
///     properties:
///       availabilitySetName: hr-avset
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso
///         type: customLocation
///       location: East US
///       resourceGroupName: testrg
///       vmmServerId: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.ScVmm/VMMServers/ContosoVMMServer
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
/// $ pulumi import azure-native:scvmm:AvailabilitySet HRAvailabilitySet /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ScVmm/availabilitySets/{availabilitySetName}
/// ```
class AvailabilitySet extends pulumi.CustomResource {
  /// Name of the availability set.
  late final pulumi.Output<String?> availabilitySetName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// Gets or sets the location.
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource Type
  late final pulumi.Output<String> type;
  /// ARM Id of the vmmServer resource in which this resource resides.
  late final pulumi.Output<String?> vmmServerId;

  /// Creates a new [AvailabilitySet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AvailabilitySet]. {@macro pulumi_scvmm_availability_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AvailabilitySet(
    String name, {
    AvailabilitySetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scvmm:AvailabilitySet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilitySetName = registerOutput<String?>('availabilitySetName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vmmServerId = registerOutput<String?>('vmmServerId');
  }

  /// Creates a typed reference to an existing [AvailabilitySet] resource.
  AvailabilitySet.reference(String urn)
    : super(
        'azure-native:scvmm:AvailabilitySet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    availabilitySetName = registerOutput<String?>('availabilitySetName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vmmServerId = registerOutput<String?>('vmmServerId');
  }
}

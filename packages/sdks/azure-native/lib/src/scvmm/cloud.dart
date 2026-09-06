import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_args.dart';
import 'cloud_capacity_response.dart';
import 'extended_location_response.dart';
import 'storage_qo_spolicy_response.dart';
import 'system_data_response.dart';

/// The Clouds resource definition.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-21-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateCloud
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloud = new AzureNative.ScVmm.Cloud("cloud", new()
///     {
///         CloudName = "HRCloud",
///         ExtendedLocation = new AzureNative.ScVmm.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Location = "East US",
///         ResourceGroupName = "testrg",
///         Uuid = "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
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
/// 		_, err := scvmm.NewCloud(ctx, "cloud", &scvmm.CloudArgs{
/// 			CloudName: pulumi.String("HRCloud"),
/// 			ExtendedLocation: &scvmm.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Uuid:              pulumi.String("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 			VmmServerId:       pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer"),
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
/// resource "azure-native_scvmm_cloud" "cloud" {
///   cloud_name = "HRCloud"
///   extended_location = {
///     name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso"
///     type = "customLocation"
///   }
///   location            = "East US"
///   resource_group_name = "testrg"
///   uuid                = "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
///   vmm_server_id       = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer"
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
/// import com.pulumi.azurenative.scvmm.Cloud;
/// import com.pulumi.azurenative.scvmm.CloudArgs;
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
///         var cloud = new Cloud("cloud", CloudArgs.builder()
///             .cloudName("HRCloud")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .location("East US")
///             .resourceGroupName("testrg")
///             .uuid("aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
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
/// const cloud = new azure_native.scvmm.Cloud("cloud", {
///     cloudName: "HRCloud",
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         type: "customLocation",
///     },
///     location: "East US",
///     resourceGroupName: "testrg",
///     uuid: "aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     vmmServerId: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud = azure_native.scvmm.Cloud("cloud",
///     cloud_name="HRCloud",
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso",
///         "type": "customLocation",
///     },
///     location="East US",
///     resource_group_name="testrg",
///     uuid="aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     vmm_server_id="/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.SCVMM/VMMServers/ContosoVMMServer")
///
/// ```
///
/// ```yaml
/// resources:
///   cloud:
///     type: azure-native:scvmm:Cloud
///     properties:
///       cloudName: HRCloud
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.Arc/customLocations/contoso
///         type: customLocation
///       location: East US
///       resourceGroupName: testrg
///       uuid: aaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
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
/// $ pulumi import azure-native:scvmm:Cloud HRCloud /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ScVmm/clouds/{cloudName}
/// ```
class Cloud extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Capacity of the cloud.
  late final pulumi.Output<CloudCapacityResponse> cloudCapacity;
  /// Name of the cloud in VMMServer.
  late final pulumi.Output<String> cloudName;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// Gets or sets the inventory Item ID for the resource.
  late final pulumi.Output<String?> inventoryItemId;
  /// Gets or sets the location.
  late final pulumi.Output<String> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// Gets or sets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// List of QoS policies available for the cloud.
  late final pulumi.Output<List<StorageQoSPolicyResponse>> storageQoSPolicies;
  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource Type
  late final pulumi.Output<String> type;
  /// Unique ID of the cloud.
  late final pulumi.Output<String?> uuid;
  /// ARM Id of the vmmServer resource in which this resource resides.
  late final pulumi.Output<String?> vmmServerId;

  /// Creates a new [Cloud].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cloud]. {@macro pulumi_scvmm_cloud_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cloud(
    String name, {
    CloudArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scvmm:Cloud',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudCapacity = registerOutput<CloudCapacityResponse>('cloudCapacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudCapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudName = registerOutput<String>('cloudName');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storageQoSPolicies = registerOutput<List<StorageQoSPolicyResponse>>('storageQoSPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageQoSPolicyResponse>(guardedValue, (value) => StorageQoSPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String?>('uuid');
    vmmServerId = registerOutput<String?>('vmmServerId');
  }

  /// Creates a typed reference to an existing [Cloud] resource.
  Cloud.reference(String urn)
    : super(
        'azure-native:scvmm:Cloud',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudCapacity = registerOutput<CloudCapacityResponse>('cloudCapacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudCapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cloudName = registerOutput<String>('cloudName');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inventoryItemId = registerOutput<String?>('inventoryItemId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storageQoSPolicies = registerOutput<List<StorageQoSPolicyResponse>>('storageQoSPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageQoSPolicyResponse>(guardedValue, (value) => StorageQoSPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String?>('uuid');
    vmmServerId = registerOutput<String?>('vmmServerId');
  }
}

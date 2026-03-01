import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'volume_args.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01-preview, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update volume
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume = new AzureNative.NetworkCloud.Volume("volume", new()
///     {
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         Location = "location",
///         ResourceGroupName = "resourceGroupName",
///         SizeMiB = 10000,
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
///         VolumeName = "volumeName",
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
/// 		_, err := networkcloud.NewVolume(ctx, "volume", &networkcloud.VolumeArgs{
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("location"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			SizeMiB:           pulumi.Float64(10000),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
/// 			VolumeName: pulumi.String("volumeName"),
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
/// import com.pulumi.azurenative.networkcloud.Volume;
/// import com.pulumi.azurenative.networkcloud.VolumeArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
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
///         var volume = new Volume("volume", VolumeArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .location("location")
///             .resourceGroupName("resourceGroupName")
///             .sizeMiB(10000.0)
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
///             .volumeName("volumeName")
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
/// const volume = new azure_native.networkcloud.Volume("volume", {
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     location: "location",
///     resourceGroupName: "resourceGroupName",
///     sizeMiB: 10000,
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
///     volumeName: "volumeName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume = azure_native.networkcloud.Volume("volume",
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     location="location",
///     resource_group_name="resourceGroupName",
///     size_mi_b=10000,
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     },
///     volume_name="volumeName")
///
/// ```
///
/// ```yaml
/// resources:
///   volume:
///     type: azure-native:networkcloud:Volume
///     properties:
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       location: location
///       resourceGroupName: resourceGroupName
///       sizeMiB: 10000
///       tags:
///         key1: myvalue1
///         key2: myvalue2
///       volumeName: volumeName
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
/// $ pulumi import azure-native:networkcloud:Volume volumeName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/volumes/{volumeName}
/// ```
class Volume extends pulumi.CustomResource {
  /// The list of resource IDs that attach the volume. It may include virtual machines and Hybrid AKS clusters.
  late final pulumi.Output<List<String>> attachedTo;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The more detailed status of the volume.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;
  /// Resource ETag.
  late final pulumi.Output<String> etag;
  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the volume.
  late final pulumi.Output<String> provisioningState;
  /// The unique identifier of the volume.
  late final pulumi.Output<String> serialNumber;
  /// The size of the allocation for this volume in Mebibytes.
  late final pulumi.Output<double> sizeMiB;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_networkcloud_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachedTo = registerOutput<List<String>>('attachedTo');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.detailedStatus = registerOutput<String>('detailedStatus');
    this.detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    this.etag = registerOutput<String>('etag');
    this.extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.serialNumber = registerOutput<String>('serialNumber');
    this.sizeMiB = registerOutput<double>('sizeMiB');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'rack_args.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update rack
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rack = new AzureNative.NetworkCloud.Rack("rack", new()
///     {
///         AvailabilityZone = "1",
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         Location = "location",
///         RackLocation = "Rack 28",
///         RackName = "rackName",
///         RackSerialNumber = "RACK_SERIAL_NUMBER",
///         RackSkuId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/rackSkus/rackSkuName",
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
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
/// 		_, err := networkcloud.NewRack(ctx, "rack", &networkcloud.RackArgs{
/// 			AvailabilityZone: pulumi.String("1"),
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("location"),
/// 			RackLocation:      pulumi.String("Rack 28"),
/// 			RackName:          pulumi.String("rackName"),
/// 			RackSerialNumber:  pulumi.String("RACK_SERIAL_NUMBER"),
/// 			RackSkuId:         pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/rackSkus/rackSkuName"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
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
/// resource "azure-native_networkcloud_rack" "rack" {
///   availability_zone = "1"
///   extended_location = {
///     name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"
///     type = "CustomLocation"
///   }
///   location            = "location"
///   rack_location       = "Rack 28"
///   rack_name           = "rackName"
///   rack_serial_number  = "RACK_SERIAL_NUMBER"
///   rack_sku_id         = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/rackSkus/rackSkuName"
///   resource_group_name = "resourceGroupName"
///   tags = {
///     "key1" = "myvalue1"
///     "key2" = "myvalue2"
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
/// import com.pulumi.azurenative.networkcloud.Rack;
/// import com.pulumi.azurenative.networkcloud.RackArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
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
///         var rack = new Rack("rack", RackArgs.builder()
///             .availabilityZone("1")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .location("location")
///             .rackLocation("Rack 28")
///             .rackName("rackName")
///             .rackSerialNumber("RACK_SERIAL_NUMBER")
///             .rackSkuId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/rackSkus/rackSkuName")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
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
/// const rack = new azure_native.networkcloud.Rack("rack", {
///     availabilityZone: "1",
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     location: "location",
///     rackLocation: "Rack 28",
///     rackName: "rackName",
///     rackSerialNumber: "RACK_SERIAL_NUMBER",
///     rackSkuId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/rackSkus/rackSkuName",
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rack = azure_native.networkcloud.Rack("rack",
///     availability_zone="1",
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     location="location",
///     rack_location="Rack 28",
///     rack_name="rackName",
///     rack_serial_number="RACK_SERIAL_NUMBER",
///     rack_sku_id="/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/rackSkus/rackSkuName",
///     resource_group_name="resourceGroupName",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   rack:
///     type: azure-native:networkcloud:Rack
///     properties:
///       availabilityZone: '1'
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       location: location
///       rackLocation: Rack 28
///       rackName: rackName
///       rackSerialNumber: RACK_SERIAL_NUMBER
///       rackSkuId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/rackSkus/rackSkuName
///       resourceGroupName: resourceGroupName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
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
/// $ pulumi import azure-native:networkcloud:Rack rackName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/racks/{rackName}
/// ```
class Rack extends pulumi.CustomResource {
  /// The value that will be used for machines in this rack to represent the availability zones that can be referenced by Hybrid AKS Clusters for node arrangement.
  late final pulumi.Output<String> availabilityZone;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource ID of the cluster the rack is created for. This value is set when the rack is created by the cluster.
  late final pulumi.Output<String> clusterId;
  /// The more detailed status of the rack.
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
  /// The provisioning state of the rack resource.
  late final pulumi.Output<String> provisioningState;
  /// The free-form description of the rack location. (e.g. “DTN Datacenter, Floor 3, Isle 9, Rack 2B”)
  late final pulumi.Output<String> rackLocation;
  /// The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  late final pulumi.Output<String> rackSerialNumber;
  /// The SKU for the rack.
  late final pulumi.Output<String> rackSkuId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Rack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rack]. {@macro pulumi_networkcloud_rack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rack(
    String name, {
    RackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:Rack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityZone = registerOutput<String>('availabilityZone');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterId = registerOutput<String>('clusterId');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    rackLocation = registerOutput<String>('rackLocation');
    rackSerialNumber = registerOutput<String>('rackSerialNumber');
    rackSkuId = registerOutput<String>('rackSkuId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Rack] resource.
  Rack.reference(String urn)
    : super(
        'azure-native:networkcloud:Rack',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    availabilityZone = registerOutput<String>('availabilityZone');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterId = registerOutput<String>('clusterId');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    rackLocation = registerOutput<String>('rackLocation');
    rackSerialNumber = registerOutput<String>('rackSerialNumber');
    rackSkuId = registerOutput<String>('rackSkuId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials_response.dart';
import 'extended_location_response.dart';
import 'storage_appliance_args.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update storage appliance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageAppliance = new AzureNative.NetworkCloud.StorageAppliance("storageAppliance", new()
///     {
///         AdministratorCredentials = new AzureNative.NetworkCloud.Inputs.AdministrativeCredentialsArgs
///         {
///             Password = "{password}",
///             Username = "adminUser",
///         },
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         Location = "location",
///         RackId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///         RackSlot = 1,
///         ResourceGroupName = "resourceGroupName",
///         SerialNumber = "BM1219XXX",
///         StorageApplianceName = "storageApplianceName",
///         StorageApplianceSkuId = "684E-3B16-399E",
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
/// 		_, err := networkcloud.NewStorageAppliance(ctx, "storageAppliance", &networkcloud.StorageApplianceArgs{
/// 			AdministratorCredentials: &networkcloud.AdministrativeCredentialsArgs{
/// 				Password: pulumi.String("{password}"),
/// 				Username: pulumi.String("adminUser"),
/// 			},
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:              pulumi.String("location"),
/// 			RackId:                pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName"),
/// 			RackSlot:              pulumi.Float64(1),
/// 			ResourceGroupName:     pulumi.String("resourceGroupName"),
/// 			SerialNumber:          pulumi.String("BM1219XXX"),
/// 			StorageApplianceName:  pulumi.String("storageApplianceName"),
/// 			StorageApplianceSkuId: pulumi.String("684E-3B16-399E"),
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
/// resource "azure-native_networkcloud_storageappliance" "storageAppliance" {
///   administrator_credentials = {
///     password = "{password}"
///     username = "adminUser"
///   }
///   extended_location = {
///     name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"
///     type = "CustomLocation"
///   }
///   location                 = "location"
///   rack_id                  = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName"
///   rack_slot                = 1
///   resource_group_name      = "resourceGroupName"
///   serial_number            = "BM1219XXX"
///   storage_appliance_name   = "storageApplianceName"
///   storage_appliance_sku_id = "684E-3B16-399E"
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
/// import com.pulumi.azurenative.networkcloud.StorageAppliance;
/// import com.pulumi.azurenative.networkcloud.StorageApplianceArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AdministrativeCredentialsArgs;
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
///         var storageAppliance = new StorageAppliance("storageAppliance", StorageApplianceArgs.builder()
///             .administratorCredentials(AdministrativeCredentialsArgs.builder()
///                 .password("{password}")
///                 .username("adminUser")
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .location("location")
///             .rackId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName")
///             .rackSlot(1.0)
///             .resourceGroupName("resourceGroupName")
///             .serialNumber("BM1219XXX")
///             .storageApplianceName("storageApplianceName")
///             .storageApplianceSkuId("684E-3B16-399E")
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
/// const storageAppliance = new azure_native.networkcloud.StorageAppliance("storageAppliance", {
///     administratorCredentials: {
///         password: "{password}",
///         username: "adminUser",
///     },
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     location: "location",
///     rackId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///     rackSlot: 1,
///     resourceGroupName: "resourceGroupName",
///     serialNumber: "BM1219XXX",
///     storageApplianceName: "storageApplianceName",
///     storageApplianceSkuId: "684E-3B16-399E",
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
/// storage_appliance = azure_native.networkcloud.StorageAppliance("storageAppliance",
///     administrator_credentials={
///         "password": "{password}",
///         "username": "adminUser",
///     },
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     location="location",
///     rack_id="/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///     rack_slot=float(1),
///     resource_group_name="resourceGroupName",
///     serial_number="BM1219XXX",
///     storage_appliance_name="storageApplianceName",
///     storage_appliance_sku_id="684E-3B16-399E",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageAppliance:
///     type: azure-native:networkcloud:StorageAppliance
///     properties:
///       administratorCredentials:
///         password: '{password}'
///         username: adminUser
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       location: location
///       rackId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName
///       rackSlot: 1
///       resourceGroupName: resourceGroupName
///       serialNumber: BM1219XXX
///       storageApplianceName: storageApplianceName
///       storageApplianceSkuId: 684E-3B16-399E
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
/// $ pulumi import azure-native:networkcloud:StorageAppliance storageApplianceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/storageAppliances/{storageApplianceName}
/// ```
class StorageAppliance extends pulumi.CustomResource {
  /// The credentials of the administrative interface on this storage appliance.
  late final pulumi.Output<AdministrativeCredentialsResponse> administratorCredentials;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The total capacity of the storage appliance. Measured in GiB.
  late final pulumi.Output<double> capacity;
  /// The amount of storage consumed.
  late final pulumi.Output<double> capacityUsed;
  /// The resource ID of the cluster this storage appliance is associated with. Measured in GiB.
  late final pulumi.Output<String> clusterId;
  /// The detailed status of the storage appliance.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;
  /// Resource ETag.
  late final pulumi.Output<String> etag;
  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The endpoint for the management interface of the storage appliance.
  late final pulumi.Output<String> managementIpv4Address;
  /// The manufacturer of the storage appliance.
  late final pulumi.Output<String> manufacturer;
  /// The model of the storage appliance.
  late final pulumi.Output<String> model;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the storage appliance.
  late final pulumi.Output<String> provisioningState;
  /// The resource ID of the rack where this storage appliance resides.
  late final pulumi.Output<String> rackId;
  /// The slot the storage appliance is in the rack based on the BOM configuration.
  late final pulumi.Output<double> rackSlot;
  /// The indicator of whether the storage appliance supports remote vendor management.
  late final pulumi.Output<String> remoteVendorManagementFeature;
  /// The indicator of whether the remote vendor management feature is enabled or disabled, or unsupported if it is an unsupported feature.
  late final pulumi.Output<String> remoteVendorManagementStatus;
  /// The list of statuses that represent secret rotation activity.
  late final pulumi.Output<List<Map<String, dynamic>>> secretRotationStatus;
  /// The serial number for the storage appliance.
  late final pulumi.Output<String> serialNumber;
  /// The SKU for the storage appliance.
  late final pulumi.Output<String> storageApplianceSkuId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The version of the storage appliance.
  late final pulumi.Output<String> version;

  /// Creates a new [StorageAppliance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageAppliance]. {@macro pulumi_networkcloud_storage_appliance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageAppliance(
    String name, {
    StorageApplianceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:StorageAppliance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorCredentials = registerOutput<AdministrativeCredentialsResponse>('administratorCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdministrativeCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    capacity = registerOutput<double>('capacity');
    capacityUsed = registerOutput<double>('capacityUsed');
    clusterId = registerOutput<String>('clusterId');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managementIpv4Address = registerOutput<String>('managementIpv4Address');
    manufacturer = registerOutput<String>('manufacturer');
    model = registerOutput<String>('model');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    rackId = registerOutput<String>('rackId');
    rackSlot = registerOutput<double>('rackSlot');
    remoteVendorManagementFeature = registerOutput<String>('remoteVendorManagementFeature');
    remoteVendorManagementStatus = registerOutput<String>('remoteVendorManagementStatus');
    secretRotationStatus = registerOutput<List<Map<String, dynamic>>>('secretRotationStatus');
    serialNumber = registerOutput<String>('serialNumber');
    storageApplianceSkuId = registerOutput<String>('storageApplianceSkuId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}

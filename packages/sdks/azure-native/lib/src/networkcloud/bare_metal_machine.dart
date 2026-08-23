import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials_response.dart';
import 'bare_metal_machine_args.dart';
import 'extended_location_response.dart';
import 'hardware_inventory_response.dart';
import 'hardware_validation_status_response.dart';
import 'runtime_protection_status_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update bare metal machine
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bareMetalMachine = new AzureNative.NetworkCloud.BareMetalMachine("bareMetalMachine", new()
///     {
///         BareMetalMachineName = "bareMetalMachineName",
///         BmcConnectionString = "bmcconnectionstring",
///         BmcCredentials = new AzureNative.NetworkCloud.Inputs.AdministrativeCredentialsArgs
///         {
///             Password = "{password}",
///             Username = "bmcuser",
///         },
///         BmcMacAddress = "00:00:4f:00:57:00",
///         BootMacAddress = "00:00:4e:00:58:af",
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         Location = "location",
///         MachineDetails = "User-provided machine details.",
///         MachineName = "r01c001",
///         MachineSkuId = "684E-3B16-399E",
///         RackId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///         RackSlot = 1,
///         ResourceGroupName = "resourceGroupName",
///         SerialNumber = "BM1219XXX",
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
/// 		_, err := networkcloud.NewBareMetalMachine(ctx, "bareMetalMachine", &networkcloud.BareMetalMachineArgs{
/// 			BareMetalMachineName: pulumi.String("bareMetalMachineName"),
/// 			BmcConnectionString:  pulumi.String("bmcconnectionstring"),
/// 			BmcCredentials: &networkcloud.AdministrativeCredentialsArgs{
/// 				Password: pulumi.String("{password}"),
/// 				Username: pulumi.String("bmcuser"),
/// 			},
/// 			BmcMacAddress:  pulumi.String("00:00:4f:00:57:00"),
/// 			BootMacAddress: pulumi.String("00:00:4e:00:58:af"),
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("location"),
/// 			MachineDetails:    pulumi.String("User-provided machine details."),
/// 			MachineName:       pulumi.String("r01c001"),
/// 			MachineSkuId:      pulumi.String("684E-3B16-399E"),
/// 			RackId:            pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName"),
/// 			RackSlot:          pulumi.Float64(1),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			SerialNumber:      pulumi.String("BM1219XXX"),
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
/// resource "azure-native_networkcloud_baremetalmachine" "bareMetalMachine" {
///   bare_metal_machine_name = "bareMetalMachineName"
///   bmc_connection_string   = "bmcconnectionstring"
///   bmc_credentials = {
///     password = "{password}"
///     username = "bmcuser"
///   }
///   bmc_mac_address  = "00:00:4f:00:57:00"
///   boot_mac_address = "00:00:4e:00:58:af"
///   extended_location = {
///     name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"
///     type = "CustomLocation"
///   }
///   location            = "location"
///   machine_details     = "User-provided machine details."
///   machine_name        = "r01c001"
///   machine_sku_id      = "684E-3B16-399E"
///   rack_id             = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName"
///   rack_slot           = 1
///   resource_group_name = "resourceGroupName"
///   serial_number       = "BM1219XXX"
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
/// import com.pulumi.azurenative.networkcloud.BareMetalMachine;
/// import com.pulumi.azurenative.networkcloud.BareMetalMachineArgs;
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
///         var bareMetalMachine = new BareMetalMachine("bareMetalMachine", BareMetalMachineArgs.builder()
///             .bareMetalMachineName("bareMetalMachineName")
///             .bmcConnectionString("bmcconnectionstring")
///             .bmcCredentials(AdministrativeCredentialsArgs.builder()
///                 .password("{password}")
///                 .username("bmcuser")
///                 .build())
///             .bmcMacAddress("00:00:4f:00:57:00")
///             .bootMacAddress("00:00:4e:00:58:af")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .location("location")
///             .machineDetails("User-provided machine details.")
///             .machineName("r01c001")
///             .machineSkuId("684E-3B16-399E")
///             .rackId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName")
///             .rackSlot(1.0)
///             .resourceGroupName("resourceGroupName")
///             .serialNumber("BM1219XXX")
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
/// const bareMetalMachine = new azure_native.networkcloud.BareMetalMachine("bareMetalMachine", {
///     bareMetalMachineName: "bareMetalMachineName",
///     bmcConnectionString: "bmcconnectionstring",
///     bmcCredentials: {
///         password: "{password}",
///         username: "bmcuser",
///     },
///     bmcMacAddress: "00:00:4f:00:57:00",
///     bootMacAddress: "00:00:4e:00:58:af",
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     location: "location",
///     machineDetails: "User-provided machine details.",
///     machineName: "r01c001",
///     machineSkuId: "684E-3B16-399E",
///     rackId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///     rackSlot: 1,
///     resourceGroupName: "resourceGroupName",
///     serialNumber: "BM1219XXX",
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
/// bare_metal_machine = azure_native.networkcloud.BareMetalMachine("bareMetalMachine",
///     bare_metal_machine_name="bareMetalMachineName",
///     bmc_connection_string="bmcconnectionstring",
///     bmc_credentials={
///         "password": "{password}",
///         "username": "bmcuser",
///     },
///     bmc_mac_address="00:00:4f:00:57:00",
///     boot_mac_address="00:00:4e:00:58:af",
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     location="location",
///     machine_details="User-provided machine details.",
///     machine_name="r01c001",
///     machine_sku_id="684E-3B16-399E",
///     rack_id="/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName",
///     rack_slot=float(1),
///     resource_group_name="resourceGroupName",
///     serial_number="BM1219XXX",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   bareMetalMachine:
///     type: azure-native:networkcloud:BareMetalMachine
///     properties:
///       bareMetalMachineName: bareMetalMachineName
///       bmcConnectionString: bmcconnectionstring
///       bmcCredentials:
///         password: '{password}'
///         username: bmcuser
///       bmcMacAddress: 00:00:4f:00:57:00
///       bootMacAddress: 00:00:4e:00:58:af
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       location: location
///       machineDetails: User-provided machine details.
///       machineName: r01c001
///       machineSkuId: 684E-3B16-399E
///       rackId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/racks/rackName
///       rackSlot: 1
///       resourceGroupName: resourceGroupName
///       serialNumber: BM1219XXX
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
/// $ pulumi import azure-native:networkcloud:BareMetalMachine bareMetalMachineName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/bareMetalMachines/{bareMetalMachineName}
/// ```
class BareMetalMachine extends pulumi.CustomResource {
  /// The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  late final pulumi.Output<List<String>> associatedResourceIds;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The connection string for the baseboard management controller including IP address and protocol.
  late final pulumi.Output<String> bmcConnectionString;
  /// The credentials of the baseboard management controller on this bare metal machine.
  late final pulumi.Output<AdministrativeCredentialsResponse> bmcCredentials;
  /// The MAC address of the BMC device.
  late final pulumi.Output<String> bmcMacAddress;
  /// The MAC address of a NIC connected to the PXE network.
  late final pulumi.Output<String> bootMacAddress;
  /// The resource ID of the cluster this bare metal machine is associated with.
  late final pulumi.Output<String> clusterId;
  /// The cordon status of the bare metal machine.
  late final pulumi.Output<String> cordonStatus;
  /// The more detailed status of the bare metal machine.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;
  /// Resource ETag.
  late final pulumi.Output<String> etag;
  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The hardware inventory, including information acquired from the model/sku information and from the ironic inspector.
  late final pulumi.Output<HardwareInventoryResponse> hardwareInventory;
  /// The details of the latest hardware validation performed for this bare metal machine.
  late final pulumi.Output<HardwareValidationStatusResponse> hardwareValidationStatus;
  /// Field Deprecated. These fields will be empty/omitted. The list of the resource IDs for the HybridAksClusters that have nodes hosted on this bare metal machine.
  late final pulumi.Output<List<String>> hybridAksClustersAssociatedIds;
  /// The name of this machine represented by the host object in the Cluster's Kubernetes control plane.
  late final pulumi.Output<String> kubernetesNodeName;
  /// The version of Kubernetes running on this machine.
  late final pulumi.Output<String> kubernetesVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The cluster version that has been applied to this machine during deployment or a version update.
  late final pulumi.Output<String?> machineClusterVersion;
  /// The custom details provided by the customer.
  late final pulumi.Output<String> machineDetails;
  /// The OS-level hostname assigned to this machine.
  late final pulumi.Output<String> machineName;
  /// The list of roles that are assigned to the cluster node running on this machine.
  late final pulumi.Output<List<String>> machineRoles;
  /// The unique internal identifier of the bare metal machine SKU.
  late final pulumi.Output<String> machineSkuId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The IPv4 address that is assigned to the bare metal machine during the cluster deployment.
  late final pulumi.Output<String> oamIpv4Address;
  /// The IPv6 address that is assigned to the bare metal machine during the cluster deployment.
  late final pulumi.Output<String> oamIpv6Address;
  /// The image that is currently provisioned to the OS disk.
  late final pulumi.Output<String> osImage;
  /// The power state derived from the baseboard management controller.
  late final pulumi.Output<String> powerState;
  /// The provisioning state of the bare metal machine.
  late final pulumi.Output<String> provisioningState;
  /// The resource ID of the rack where this bare metal machine resides.
  late final pulumi.Output<String> rackId;
  /// The rack slot in which this bare metal machine is located, ordered from the bottom up i.e. the lowest slot is 1.
  late final pulumi.Output<double> rackSlot;
  /// The indicator of whether the bare metal machine is ready to receive workloads.
  late final pulumi.Output<String> readyState;
  /// The runtime protection status of the bare metal machine.
  late final pulumi.Output<RuntimeProtectionStatusResponse> runtimeProtectionStatus;
  /// The list of statuses that represent secret rotation activity.
  late final pulumi.Output<List<Map<String, dynamic>>> secretRotationStatus;
  /// The serial number of the bare metal machine.
  late final pulumi.Output<String> serialNumber;
  /// The discovered value of the machine's service tag.
  late final pulumi.Output<String> serviceTag;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Field Deprecated. These fields will be empty/omitted. The list of the resource IDs for the VirtualMachines that are hosted on this bare metal machine.
  late final pulumi.Output<List<String>> virtualMachinesAssociatedIds;

  /// Creates a new [BareMetalMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BareMetalMachine]. {@macro pulumi_networkcloud_bare_metal_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BareMetalMachine(
    String name, {
    BareMetalMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:BareMetalMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedResourceIds = registerOutput<List<String>>('associatedResourceIds');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bmcConnectionString = registerOutput<String>('bmcConnectionString');
    bmcCredentials = registerOutput<AdministrativeCredentialsResponse>('bmcCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdministrativeCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bmcMacAddress = registerOutput<String>('bmcMacAddress');
    bootMacAddress = registerOutput<String>('bootMacAddress');
    clusterId = registerOutput<String>('clusterId');
    cordonStatus = registerOutput<String>('cordonStatus');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareInventory = registerOutput<HardwareInventoryResponse>('hardwareInventory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HardwareInventoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hardwareValidationStatus = registerOutput<HardwareValidationStatusResponse>('hardwareValidationStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HardwareValidationStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hybridAksClustersAssociatedIds = registerOutput<List<String>>('hybridAksClustersAssociatedIds');
    kubernetesNodeName = registerOutput<String>('kubernetesNodeName');
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    location = registerOutput<String>('location');
    machineClusterVersion = registerOutput<String?>('machineClusterVersion');
    machineDetails = registerOutput<String>('machineDetails');
    machineName = registerOutput<String>('machineName');
    machineRoles = registerOutput<List<String>>('machineRoles');
    machineSkuId = registerOutput<String>('machineSkuId');
    this.name = registerOutput<String>('name');
    oamIpv4Address = registerOutput<String>('oamIpv4Address');
    oamIpv6Address = registerOutput<String>('oamIpv6Address');
    osImage = registerOutput<String>('osImage');
    powerState = registerOutput<String>('powerState');
    provisioningState = registerOutput<String>('provisioningState');
    rackId = registerOutput<String>('rackId');
    rackSlot = registerOutput<double>('rackSlot');
    readyState = registerOutput<String>('readyState');
    runtimeProtectionStatus = registerOutput<RuntimeProtectionStatusResponse>('runtimeProtectionStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeProtectionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretRotationStatus = registerOutput<List<Map<String, dynamic>>>('secretRotationStatus');
    serialNumber = registerOutput<String>('serialNumber');
    serviceTag = registerOutput<String>('serviceTag');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualMachinesAssociatedIds = registerOutput<List<String>>('virtualMachinesAssociatedIds');
  }
}

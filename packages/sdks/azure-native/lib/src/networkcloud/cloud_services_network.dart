import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_services_network_args.dart';
import 'egress_endpoint_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Upon creation, the additional services that are provided by the platform will be allocated and
/// represented in the status of this resource. All resources associated with this cloud services network will be part
/// of the same layer 2 (L2) isolation domain. At least one service network must be created but may be reused across many
/// virtual machines and/or Hybrid AKS clusters.
///
/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2025-09-01, 2026-01-01-preview, 2026-05-01-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update cloud services network
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudServicesNetwork = new AzureNative.NetworkCloud.CloudServicesNetwork("cloudServicesNetwork", new()
///     {
///         AdditionalEgressEndpoints = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.EgressEndpointArgs
///             {
///                 Category = "azure-resource-management",
///                 Endpoints = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.EndpointDependencyArgs
///                     {
///                         DomainName = "storageaccountex.blob.core.windows.net",
///                         Port = 443,
///                     },
///                 },
///             },
///         },
///         CloudServicesNetworkName = "cloudServicesNetworkName",
///         EnableDefaultEgressEndpoints = AzureNative.NetworkCloud.CloudServicesNetworkEnableDefaultEgressEndpoints.False,
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         Location = "location",
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
/// 		_, err := networkcloud.NewCloudServicesNetwork(ctx, "cloudServicesNetwork", &networkcloud.CloudServicesNetworkArgs{
/// 			AdditionalEgressEndpoints: networkcloud.EgressEndpointArray{
/// 				&networkcloud.EgressEndpointArgs{
/// 					Category: pulumi.String("azure-resource-management"),
/// 					Endpoints: networkcloud.EndpointDependencyArray{
/// 						&networkcloud.EndpointDependencyArgs{
/// 							DomainName: pulumi.String("storageaccountex.blob.core.windows.net"),
/// 							Port:       pulumi.Float64(443),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			CloudServicesNetworkName:     pulumi.String("cloudServicesNetworkName"),
/// 			EnableDefaultEgressEndpoints: pulumi.String(networkcloud.CloudServicesNetworkEnableDefaultEgressEndpointsFalse),
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("location"),
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
/// resource "azure-native_networkcloud_cloudservicesnetwork" "cloudServicesNetwork" {
///   additional_egress_endpoints {
///     category = "azure-resource-management"
///     endpoints {
///       domain_name = "storageaccountex.blob.core.windows.net"
///       port        = 443
///     }
///   }
///   cloud_services_network_name     = "cloudServicesNetworkName"
///   enable_default_egress_endpoints = "False"
///   extended_location = {
///     name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"
///     type = "CustomLocation"
///   }
///   location            = "location"
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
/// import com.pulumi.azurenative.networkcloud.CloudServicesNetwork;
/// import com.pulumi.azurenative.networkcloud.CloudServicesNetworkArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.EgressEndpointArgs;
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
///         var cloudServicesNetwork = new CloudServicesNetwork("cloudServicesNetwork", CloudServicesNetworkArgs.builder()
///             .additionalEgressEndpoints(EgressEndpointArgs.builder()
///                 .category("azure-resource-management")
///                 .endpoints(EndpointDependencyArgs.builder()
///                     .domainName("storageaccountex.blob.core.windows.net")
///                     .port(443.0)
///                     .build())
///                 .build())
///             .cloudServicesNetworkName("cloudServicesNetworkName")
///             .enableDefaultEgressEndpoints("False")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .location("location")
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
/// const cloudServicesNetwork = new azure_native.networkcloud.CloudServicesNetwork("cloudServicesNetwork", {
///     additionalEgressEndpoints: [{
///         category: "azure-resource-management",
///         endpoints: [{
///             domainName: "storageaccountex.blob.core.windows.net",
///             port: 443,
///         }],
///     }],
///     cloudServicesNetworkName: "cloudServicesNetworkName",
///     enableDefaultEgressEndpoints: azure_native.networkcloud.CloudServicesNetworkEnableDefaultEgressEndpoints.False,
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     location: "location",
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
/// cloud_services_network = azure_native.networkcloud.CloudServicesNetwork("cloudServicesNetwork",
///     additional_egress_endpoints=[{
///         "category": "azure-resource-management",
///         "endpoints": [{
///             "domain_name": "storageaccountex.blob.core.windows.net",
///             "port": float(443),
///         }],
///     }],
///     cloud_services_network_name="cloudServicesNetworkName",
///     enable_default_egress_endpoints=azure_native.networkcloud.CloudServicesNetworkEnableDefaultEgressEndpoints.FALSE,
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     location="location",
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
///   cloudServicesNetwork:
///     type: azure-native:networkcloud:CloudServicesNetwork
///     properties:
///       additionalEgressEndpoints:
///         - category: azure-resource-management
///           endpoints:
///             - domainName: storageaccountex.blob.core.windows.net
///               port: 443
///       cloudServicesNetworkName: cloudServicesNetworkName
///       enableDefaultEgressEndpoints: False
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       location: location
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
/// $ pulumi import azure-native:networkcloud:CloudServicesNetwork cloudServicesNetworkName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/cloudServicesNetworks/{cloudServicesNetworkName}
/// ```
class CloudServicesNetwork extends pulumi.CustomResource {
  /// The list of egress endpoints. This allows for connection from a Hybrid AKS cluster to the specified endpoint.
  late final pulumi.Output<List<EgressEndpointResponse>?> additionalEgressEndpoints;
  /// The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  late final pulumi.Output<List<String>> associatedResourceIds;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource ID of the Network Cloud cluster this cloud services network is associated with.
  late final pulumi.Output<String> clusterId;
  /// The more detailed status of the cloud services network.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;
  /// The indicator of whether the platform default endpoints are allowed for the egress traffic.
  late final pulumi.Output<String?> enableDefaultEgressEndpoints;
  /// The full list of additional and default egress endpoints that are currently enabled.
  late final pulumi.Output<List<EgressEndpointResponse>> enabledEgressEndpoints;
  /// Resource ETag.
  late final pulumi.Output<String> etag;
  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// Field Deprecated. These fields will be empty/omitted. The list of Hybrid AKS cluster resource IDs that are associated with this cloud services network.
  late final pulumi.Output<List<String>> hybridAksClustersAssociatedIds;
  /// The name of the interface that will be present in the virtual machine to represent this network.
  late final pulumi.Output<String> interfaceName;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the cloud services network.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Field Deprecated. These fields will be empty/omitted. The list of virtual machine resource IDs, excluding any Hybrid AKS virtual machines, that are currently using this cloud services network.
  late final pulumi.Output<List<String>> virtualMachinesAssociatedIds;

  /// Creates a new [CloudServicesNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudServicesNetwork]. {@macro pulumi_networkcloud_cloud_services_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudServicesNetwork(
    String name, {
    CloudServicesNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:CloudServicesNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalEgressEndpoints = registerOutput<List<EgressEndpointResponse>?>('additionalEgressEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EgressEndpointResponse>(guardedValue, (value) => EgressEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); });
    associatedResourceIds = registerOutput<List<String>>('associatedResourceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterId = registerOutput<String>('clusterId');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    enableDefaultEgressEndpoints = registerOutput<String?>('enableDefaultEgressEndpoints');
    enabledEgressEndpoints = registerOutput<List<EgressEndpointResponse>>('enabledEgressEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EgressEndpointResponse>(guardedValue, (value) => EgressEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hybridAksClustersAssociatedIds = registerOutput<List<String>>('hybridAksClustersAssociatedIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    interfaceName = registerOutput<String>('interfaceName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualMachinesAssociatedIds = registerOutput<List<String>>('virtualMachinesAssociatedIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [CloudServicesNetwork] resource.
  CloudServicesNetwork.reference(String urn)
    : super(
        'azure-native:networkcloud:CloudServicesNetwork',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalEgressEndpoints = registerOutput<List<EgressEndpointResponse>?>('additionalEgressEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EgressEndpointResponse>(guardedValue, (value) => EgressEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); });
    associatedResourceIds = registerOutput<List<String>>('associatedResourceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterId = registerOutput<String>('clusterId');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    enableDefaultEgressEndpoints = registerOutput<String?>('enableDefaultEgressEndpoints');
    enabledEgressEndpoints = registerOutput<List<EgressEndpointResponse>>('enabledEgressEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EgressEndpointResponse>(guardedValue, (value) => EgressEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); });
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hybridAksClustersAssociatedIds = registerOutput<List<String>>('hybridAksClustersAssociatedIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    interfaceName = registerOutput<String>('interfaceName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualMachinesAssociatedIds = registerOutput<List<String>>('virtualMachinesAssociatedIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}

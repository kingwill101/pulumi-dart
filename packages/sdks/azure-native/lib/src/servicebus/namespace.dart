import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'geo_data_replication_properties_response.dart';
import 'identity_response.dart';
import 'namespace_args.dart';
import 'platform_capabilities_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sbsku_response.dart';
import 'system_data_response.dart';

/// Description of a namespace resource.
///
/// Uses Azure REST API version 2026-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NameSpaceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @namespace = new AzureNative.ServiceBus.Namespace("namespace", new()
///     {
///         GeoDataReplication = new AzureNative.ServiceBus.Inputs.GeoDataReplicationPropertiesArgs
///         {
///             Locations = new[]
///             {
///                 new AzureNative.ServiceBus.Inputs.NamespaceReplicaLocationArgs
///                 {
///                     LocationName = "eastus",
///                     RoleType = AzureNative.ServiceBus.GeoDRRoleType.Primary,
///                 },
///                 new AzureNative.ServiceBus.Inputs.NamespaceReplicaLocationArgs
///                 {
///                     LocationName = "southcentralus",
///                     RoleType = AzureNative.ServiceBus.GeoDRRoleType.Secondary,
///                 },
///             },
///             MaxReplicationLagDurationInSeconds = 300,
///         },
///         Location = "South Central US",
///         NamespaceName = "sdk-Namespace2924",
///         PremiumMessagingPartitions = 2,
///         ResourceGroupName = "ArunMonocle",
///         Sku = new AzureNative.ServiceBus.Inputs.SBSkuArgs
///         {
///             Capacity = 4,
///             Name = AzureNative.ServiceBus.SkuName.Premium,
///             Tier = AzureNative.ServiceBus.SkuTier.Premium,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewNamespace(ctx, "namespace", &servicebus.NamespaceArgs{
/// 			GeoDataReplication: &servicebus.GeoDataReplicationPropertiesArgs{
/// 				Locations: servicebus.NamespaceReplicaLocationArray{
/// 					&servicebus.NamespaceReplicaLocationArgs{
/// 						LocationName: pulumi.String("eastus"),
/// 						RoleType:     pulumi.String(servicebus.GeoDRRoleTypePrimary),
/// 					},
/// 					&servicebus.NamespaceReplicaLocationArgs{
/// 						LocationName: pulumi.String("southcentralus"),
/// 						RoleType:     pulumi.String(servicebus.GeoDRRoleTypeSecondary),
/// 					},
/// 				},
/// 				MaxReplicationLagDurationInSeconds: pulumi.Int(300),
/// 			},
/// 			Location:                   pulumi.String("South Central US"),
/// 			NamespaceName:              pulumi.String("sdk-Namespace2924"),
/// 			PremiumMessagingPartitions: pulumi.Int(2),
/// 			ResourceGroupName:          pulumi.String("ArunMonocle"),
/// 			Sku: &servicebus.SBSkuArgs{
/// 				Capacity: pulumi.Int(4),
/// 				Name:     servicebus.SkuNamePremium,
/// 				Tier:     servicebus.SkuTierPremium,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
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
/// resource "azure-native_servicebus_namespace" "namespace" {
///   geo_data_replication = {
///     locations = [{
///       "locationName" = "eastus"
///       "roleType"     = "Primary"
///       }, {
///       "locationName" = "southcentralus"
///       "roleType"     = "Secondary"
///     }]
///     max_replication_lag_duration_in_seconds = 300
///   }
///   location                     = "South Central US"
///   namespace_name               = "sdk-Namespace2924"
///   premium_messaging_partitions = 2
///   resource_group_name          = "ArunMonocle"
///   sku = {
///     capacity = 4
///     name     = "Premium"
///     tier     = "Premium"
///   }
///   tags = {
///     "tag1" = "value1"
///     "tag2" = "value2"
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
/// import com.pulumi.azurenative.servicebus.Namespace;
/// import com.pulumi.azurenative.servicebus.NamespaceArgs;
/// import com.pulumi.azurenative.servicebus.inputs.GeoDataReplicationPropertiesArgs;
/// import com.pulumi.azurenative.servicebus.inputs.SBSkuArgs;
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
///         var namespace = new Namespace("namespace", NamespaceArgs.builder()
///             .geoDataReplication(GeoDataReplicationPropertiesArgs.builder()
///                 .locations(
///                     NamespaceReplicaLocationArgs.builder()
///                         .locationName("eastus")
///                         .roleType("Primary")
///                         .build(),
///                     NamespaceReplicaLocationArgs.builder()
///                         .locationName("southcentralus")
///                         .roleType("Secondary")
///                         .build())
///                 .maxReplicationLagDurationInSeconds(300)
///                 .build())
///             .location("South Central US")
///             .namespaceName("sdk-Namespace2924")
///             .premiumMessagingPartitions(2)
///             .resourceGroupName("ArunMonocle")
///             .sku(SBSkuArgs.builder()
///                 .capacity(4)
///                 .name("Premium")
///                 .tier("Premium")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
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
/// const namespace = new azure_native.servicebus.Namespace("namespace", {
///     geoDataReplication: {
///         locations: [
///             {
///                 locationName: "eastus",
///                 roleType: azure_native.servicebus.GeoDRRoleType.Primary,
///             },
///             {
///                 locationName: "southcentralus",
///                 roleType: azure_native.servicebus.GeoDRRoleType.Secondary,
///             },
///         ],
///         maxReplicationLagDurationInSeconds: 300,
///     },
///     location: "South Central US",
///     namespaceName: "sdk-Namespace2924",
///     premiumMessagingPartitions: 2,
///     resourceGroupName: "ArunMonocle",
///     sku: {
///         capacity: 4,
///         name: azure_native.servicebus.SkuName.Premium,
///         tier: azure_native.servicebus.SkuTier.Premium,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace = azure_native.servicebus.Namespace("namespace",
///     geo_data_replication={
///         "locations": [
///             {
///                 "location_name": "eastus",
///                 "role_type": azure_native.servicebus.GeoDRRoleType.PRIMARY,
///             },
///             {
///                 "location_name": "southcentralus",
///                 "role_type": azure_native.servicebus.GeoDRRoleType.SECONDARY,
///             },
///         ],
///         "max_replication_lag_duration_in_seconds": 300,
///     },
///     location="South Central US",
///     namespace_name="sdk-Namespace2924",
///     premium_messaging_partitions=2,
///     resource_group_name="ArunMonocle",
///     sku={
///         "capacity": 4,
///         "name": azure_native.servicebus.SkuName.PREMIUM,
///         "tier": azure_native.servicebus.SkuTier.PREMIUM,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   namespace:
///     type: azure-native:servicebus:Namespace
///     properties:
///       geoDataReplication:
///         locations:
///           - locationName: eastus
///             roleType: Primary
///           - locationName: southcentralus
///             roleType: Secondary
///         maxReplicationLagDurationInSeconds: 300
///       location: South Central US
///       namespaceName: sdk-Namespace2924
///       premiumMessagingPartitions: 2
///       resourceGroupName: ArunMonocle
///       sku:
///         capacity: 4
///         name: Premium
///         tier: Premium
///       tags:
///         tag1: value1
///         tag2: value2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### NameSpaceCreateWithIpAddressTypeDualStack
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @namespace = new AzureNative.ServiceBus.Namespace("namespace", new()
///     {
///         GeoDataReplication = new AzureNative.ServiceBus.Inputs.GeoDataReplicationPropertiesArgs
///         {
///             Locations = new[]
///             {
///                 new AzureNative.ServiceBus.Inputs.NamespaceReplicaLocationArgs
///                 {
///                     LocationName = "eastus",
///                     RoleType = AzureNative.ServiceBus.GeoDRRoleType.Primary,
///                 },
///                 new AzureNative.ServiceBus.Inputs.NamespaceReplicaLocationArgs
///                 {
///                     LocationName = "southcentralus",
///                     RoleType = AzureNative.ServiceBus.GeoDRRoleType.Secondary,
///                 },
///             },
///             MaxReplicationLagDurationInSeconds = 300,
///         },
///         IpAddressType = AzureNative.ServiceBus.IpAddressType.DualStack,
///         Location = "South Central US",
///         NamespaceName = "sdk-Namespace2924",
///         PremiumMessagingPartitions = 2,
///         PublicNetworkAccess = AzureNative.ServiceBus.PublicNetworkAccess.Enabled,
///         ResourceGroupName = "ArunMonocle",
///         Sku = new AzureNative.ServiceBus.Inputs.SBSkuArgs
///         {
///             Capacity = 4,
///             Name = AzureNative.ServiceBus.SkuName.Premium,
///             Tier = AzureNative.ServiceBus.SkuTier.Premium,
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewNamespace(ctx, "namespace", &servicebus.NamespaceArgs{
/// 			GeoDataReplication: &servicebus.GeoDataReplicationPropertiesArgs{
/// 				Locations: servicebus.NamespaceReplicaLocationArray{
/// 					&servicebus.NamespaceReplicaLocationArgs{
/// 						LocationName: pulumi.String("eastus"),
/// 						RoleType:     pulumi.String(servicebus.GeoDRRoleTypePrimary),
/// 					},
/// 					&servicebus.NamespaceReplicaLocationArgs{
/// 						LocationName: pulumi.String("southcentralus"),
/// 						RoleType:     pulumi.String(servicebus.GeoDRRoleTypeSecondary),
/// 					},
/// 				},
/// 				MaxReplicationLagDurationInSeconds: pulumi.Int(300),
/// 			},
/// 			IpAddressType:              pulumi.String(servicebus.IpAddressTypeDualStack),
/// 			Location:                   pulumi.String("South Central US"),
/// 			NamespaceName:              pulumi.String("sdk-Namespace2924"),
/// 			PremiumMessagingPartitions: pulumi.Int(2),
/// 			PublicNetworkAccess:        pulumi.String(servicebus.PublicNetworkAccessEnabled),
/// 			ResourceGroupName:          pulumi.String("ArunMonocle"),
/// 			Sku: &servicebus.SBSkuArgs{
/// 				Capacity: pulumi.Int(4),
/// 				Name:     servicebus.SkuNamePremium,
/// 				Tier:     servicebus.SkuTierPremium,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
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
/// resource "azure-native_servicebus_namespace" "namespace" {
///   geo_data_replication = {
///     locations = [{
///       "locationName" = "eastus"
///       "roleType"     = "Primary"
///       }, {
///       "locationName" = "southcentralus"
///       "roleType"     = "Secondary"
///     }]
///     max_replication_lag_duration_in_seconds = 300
///   }
///   ip_address_type              = "DualStack"
///   location                     = "South Central US"
///   namespace_name               = "sdk-Namespace2924"
///   premium_messaging_partitions = 2
///   public_network_access        = "Enabled"
///   resource_group_name          = "ArunMonocle"
///   sku = {
///     capacity = 4
///     name     = "Premium"
///     tier     = "Premium"
///   }
///   tags = {
///     "tag1" = "value1"
///     "tag2" = "value2"
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
/// import com.pulumi.azurenative.servicebus.Namespace;
/// import com.pulumi.azurenative.servicebus.NamespaceArgs;
/// import com.pulumi.azurenative.servicebus.inputs.GeoDataReplicationPropertiesArgs;
/// import com.pulumi.azurenative.servicebus.inputs.SBSkuArgs;
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
///         var namespace = new Namespace("namespace", NamespaceArgs.builder()
///             .geoDataReplication(GeoDataReplicationPropertiesArgs.builder()
///                 .locations(
///                     NamespaceReplicaLocationArgs.builder()
///                         .locationName("eastus")
///                         .roleType("Primary")
///                         .build(),
///                     NamespaceReplicaLocationArgs.builder()
///                         .locationName("southcentralus")
///                         .roleType("Secondary")
///                         .build())
///                 .maxReplicationLagDurationInSeconds(300)
///                 .build())
///             .ipAddressType("DualStack")
///             .location("South Central US")
///             .namespaceName("sdk-Namespace2924")
///             .premiumMessagingPartitions(2)
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("ArunMonocle")
///             .sku(SBSkuArgs.builder()
///                 .capacity(4)
///                 .name("Premium")
///                 .tier("Premium")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
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
/// const namespace = new azure_native.servicebus.Namespace("namespace", {
///     geoDataReplication: {
///         locations: [
///             {
///                 locationName: "eastus",
///                 roleType: azure_native.servicebus.GeoDRRoleType.Primary,
///             },
///             {
///                 locationName: "southcentralus",
///                 roleType: azure_native.servicebus.GeoDRRoleType.Secondary,
///             },
///         ],
///         maxReplicationLagDurationInSeconds: 300,
///     },
///     ipAddressType: azure_native.servicebus.IpAddressType.DualStack,
///     location: "South Central US",
///     namespaceName: "sdk-Namespace2924",
///     premiumMessagingPartitions: 2,
///     publicNetworkAccess: azure_native.servicebus.PublicNetworkAccess.Enabled,
///     resourceGroupName: "ArunMonocle",
///     sku: {
///         capacity: 4,
///         name: azure_native.servicebus.SkuName.Premium,
///         tier: azure_native.servicebus.SkuTier.Premium,
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace = azure_native.servicebus.Namespace("namespace",
///     geo_data_replication={
///         "locations": [
///             {
///                 "location_name": "eastus",
///                 "role_type": azure_native.servicebus.GeoDRRoleType.PRIMARY,
///             },
///             {
///                 "location_name": "southcentralus",
///                 "role_type": azure_native.servicebus.GeoDRRoleType.SECONDARY,
///             },
///         ],
///         "max_replication_lag_duration_in_seconds": 300,
///     },
///     ip_address_type=azure_native.servicebus.IpAddressType.DUAL_STACK,
///     location="South Central US",
///     namespace_name="sdk-Namespace2924",
///     premium_messaging_partitions=2,
///     public_network_access=azure_native.servicebus.PublicNetworkAccess.ENABLED,
///     resource_group_name="ArunMonocle",
///     sku={
///         "capacity": 4,
///         "name": azure_native.servicebus.SkuName.PREMIUM,
///         "tier": azure_native.servicebus.SkuTier.PREMIUM,
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   namespace:
///     type: azure-native:servicebus:Namespace
///     properties:
///       geoDataReplication:
///         locations:
///           - locationName: eastus
///             roleType: Primary
///           - locationName: southcentralus
///             roleType: Secondary
///         maxReplicationLagDurationInSeconds: 300
///       ipAddressType: DualStack
///       location: South Central US
///       namespaceName: sdk-Namespace2924
///       premiumMessagingPartitions: 2
///       publicNetworkAccess: Enabled
///       resourceGroupName: ArunMonocle
///       sku:
///         capacity: 4
///         name: Premium
///         tier: Premium
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:servicebus:Namespace sdk-Namespace-2924 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}
/// ```
class Namespace extends pulumi.CustomResource {
  /// Alternate name for namespace
  late final pulumi.Output<String?> alternateName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the namespace was created
  late final pulumi.Output<String> createdAt;
  /// This property disables SAS authentication for the Service Bus namespace.
  late final pulumi.Output<bool?> disableLocalAuth;
  /// Properties of BYOK Encryption description
  late final pulumi.Output<EncryptionResponse?> encryption;
  /// Geo Data Replication settings for the namespace
  late final pulumi.Output<GeoDataReplicationPropertiesResponse?> geoDataReplication;
  /// Properties of BYOK Identity description
  late final pulumi.Output<IdentityResponse?> identity;
  /// The IP address type for the namespace. Determines whether the namespace supports IPv4 only or both IPv4 and IPv6 (dual stack).
  late final pulumi.Output<String?> ipAddressType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Identifier for Azure Insights metrics
  late final pulumi.Output<String> metricId;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'
  late final pulumi.Output<String?> minimumTlsVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<PlatformCapabilitiesResponse?> platformCapabilities;
  /// The number of partitions of a Service Bus namespace. This property is only applicable to Premium SKU namespaces. The default value is 1 and possible values are 1, 2 and 4
  late final pulumi.Output<int?> premiumMessagingPartitions;
  /// List of private endpoint connections.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>?> privateEndpointConnections;
  /// Provisioning state of the namespace.
  late final pulumi.Output<String> provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Endpoint you can use to perform Service Bus operations.
  late final pulumi.Output<String> serviceBusEndpoint;
  /// Properties of SKU
  late final pulumi.Output<SBSkuResponse?> sku;
  /// Status of the namespace.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The time the namespace was updated.
  late final pulumi.Output<String> updatedAt;
  /// Enabling this property creates a Premium Service Bus Namespace in regions supported availability zones.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_servicebus_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alternateName = registerOutput<String?>('alternateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    encryption = registerOutput<EncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    geoDataReplication = registerOutput<GeoDataReplicationPropertiesResponse?>('geoDataReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeoDataReplicationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipAddressType = registerOutput<String?>('ipAddressType');
    location = registerOutput<String>('location');
    metricId = registerOutput<String>('metricId');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    platformCapabilities = registerOutput<PlatformCapabilitiesResponse?>('platformCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlatformCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    premiumMessagingPartitions = registerOutput<int?>('premiumMessagingPartitions');
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>?>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    serviceBusEndpoint = registerOutput<String>('serviceBusEndpoint');
    sku = registerOutput<SBSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SBSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }

  /// Creates a typed reference to an existing [Namespace] resource.
  Namespace.reference(String urn)
    : super(
        'azure-native:servicebus:Namespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alternateName = registerOutput<String?>('alternateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    encryption = registerOutput<EncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    geoDataReplication = registerOutput<GeoDataReplicationPropertiesResponse?>('geoDataReplication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GeoDataReplicationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipAddressType = registerOutput<String?>('ipAddressType');
    location = registerOutput<String>('location');
    metricId = registerOutput<String>('metricId');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    platformCapabilities = registerOutput<PlatformCapabilitiesResponse?>('platformCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlatformCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    premiumMessagingPartitions = registerOutput<int?>('premiumMessagingPartitions');
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>?>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    serviceBusEndpoint = registerOutput<String>('serviceBusEndpoint');
    sku = registerOutput<SBSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SBSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}

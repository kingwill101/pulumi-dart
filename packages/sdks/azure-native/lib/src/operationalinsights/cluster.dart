import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_workspace_response.dart';
import 'capacity_reservation_properties_response.dart';
import 'cluster_args.dart';
import 'cluster_sku_response.dart';
import 'key_vault_properties_response.dart';
import 'managed_service_identity_response.dart';

/// The top level Log Analytics cluster resource container.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2019-08-01-preview, 2020-03-01-preview, 2020-08-01, 2020-10-01, 2021-06-01, 2022-10-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ClustersCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.OperationalInsights.Cluster("cluster", new()
///     {
///         ClusterName = "oiautorest6685",
///         Location = "australiasoutheast",
///         ResourceGroupName = "oiautorest6685",
///         Sku = new AzureNative.OperationalInsights.Inputs.ClusterSkuArgs
///         {
///             Capacity = 1000,
///             Name = AzureNative.OperationalInsights.ClusterSkuNameEnum.CapacityReservation,
///         },
///         Tags =
///         {
///             { "tag1", "val1" },
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
/// 	operationalinsights "github.com/pulumi/pulumi-azure-native-sdk/operationalinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationalinsights.NewCluster(ctx, "cluster", &operationalinsights.ClusterArgs{
/// 			ClusterName:       pulumi.String("oiautorest6685"),
/// 			Location:          pulumi.String("australiasoutheast"),
/// 			ResourceGroupName: pulumi.String("oiautorest6685"),
/// 			Sku: &operationalinsights.ClusterSkuArgs{
/// 				Capacity: pulumi.Float64(1000),
/// 				Name:     pulumi.String(operationalinsights.ClusterSkuNameEnumCapacityReservation),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("val1"),
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
/// resource "azure-native_operationalinsights_cluster" "cluster" {
///   cluster_name        = "oiautorest6685"
///   location            = "australiasoutheast"
///   resource_group_name = "oiautorest6685"
///   sku = {
///     capacity = 1000
///     name     = "CapacityReservation"
///   }
///   tags = {
///     "tag1" = "val1"
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
/// import com.pulumi.azurenative.operationalinsights.Cluster;
/// import com.pulumi.azurenative.operationalinsights.ClusterArgs;
/// import com.pulumi.azurenative.operationalinsights.inputs.ClusterSkuArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("oiautorest6685")
///             .location("australiasoutheast")
///             .resourceGroupName("oiautorest6685")
///             .sku(ClusterSkuArgs.builder()
///                 .capacity(1000.0)
///                 .name("CapacityReservation")
///                 .build())
///             .tags(Map.of("tag1", "val1"))
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
/// const cluster = new azure_native.operationalinsights.Cluster("cluster", {
///     clusterName: "oiautorest6685",
///     location: "australiasoutheast",
///     resourceGroupName: "oiautorest6685",
///     sku: {
///         capacity: 1000,
///         name: azure_native.operationalinsights.ClusterSkuNameEnum.CapacityReservation,
///     },
///     tags: {
///         tag1: "val1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.operationalinsights.Cluster("cluster",
///     cluster_name="oiautorest6685",
///     location="australiasoutheast",
///     resource_group_name="oiautorest6685",
///     sku={
///         "capacity": float(1000),
///         "name": azure_native.operationalinsights.ClusterSkuNameEnum.CAPACITY_RESERVATION,
///     },
///     tags={
///         "tag1": "val1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:operationalinsights:Cluster
///     properties:
///       clusterName: oiautorest6685
///       location: australiasoutheast
///       resourceGroupName: oiautorest6685
///       sku:
///         capacity: 1000
///         name: CapacityReservation
///       tags:
///         tag1: val1
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
/// $ pulumi import azure-native:operationalinsights:Cluster oiautorest6685 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/clusters/{clusterName}
/// ```
class Cluster extends pulumi.CustomResource {
  /// The list of Log Analytics workspaces associated with the cluster
  late final pulumi.Output<List<AssociatedWorkspaceResponse>?> associatedWorkspaces;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The cluster's billing type.
  late final pulumi.Output<String?> billingType;
  /// Additional properties for capacity reservation
  late final pulumi.Output<CapacityReservationPropertiesResponse?> capacityReservationProperties;
  /// The ID associated with the cluster.
  late final pulumi.Output<String> clusterId;
  /// The cluster creation time
  late final pulumi.Output<String> createdDate;
  /// Resource's identity.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Sets whether the cluster will support availability zones. This can be set as true only in regions where Azure Data Explorer support Availability Zones. This Property can not be modified after cluster creation. Default value is 'true' if region supports Availability Zones.
  late final pulumi.Output<bool?> isAvailabilityZonesEnabled;
  /// Configures whether cluster will use double encryption. This Property can not be modified after cluster creation. Default value is 'true'
  late final pulumi.Output<bool?> isDoubleEncryptionEnabled;
  /// The associated key properties.
  late final pulumi.Output<KeyVaultPropertiesResponse?> keyVaultProperties;
  /// The last time the cluster was updated.
  late final pulumi.Output<String> lastModifiedDate;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the cluster.
  late final pulumi.Output<String> provisioningState;
  /// The sku properties.
  late final pulumi.Output<ClusterSkuResponse?> sku;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_operationalinsights_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedWorkspaces = registerOutput<List<AssociatedWorkspaceResponse>?>('associatedWorkspaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssociatedWorkspaceResponse>(guardedValue, (value) => AssociatedWorkspaceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingType = registerOutput<String?>('billingType');
    capacityReservationProperties = registerOutput<CapacityReservationPropertiesResponse?>('capacityReservationProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityReservationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    createdDate = registerOutput<String>('createdDate');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isAvailabilityZonesEnabled = registerOutput<bool?>('isAvailabilityZonesEnabled');
    isDoubleEncryptionEnabled = registerOutput<bool?>('isDoubleEncryptionEnabled');
    keyVaultProperties = registerOutput<KeyVaultPropertiesResponse?>('keyVaultProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedDate = registerOutput<String>('lastModifiedDate');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<ClusterSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Cluster] resource.
  Cluster.reference(String urn)
    : super(
        'azure-native:operationalinsights:Cluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    associatedWorkspaces = registerOutput<List<AssociatedWorkspaceResponse>?>('associatedWorkspaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssociatedWorkspaceResponse>(guardedValue, (value) => AssociatedWorkspaceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingType = registerOutput<String?>('billingType');
    capacityReservationProperties = registerOutput<CapacityReservationPropertiesResponse?>('capacityReservationProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityReservationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterId = registerOutput<String>('clusterId');
    createdDate = registerOutput<String>('createdDate');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isAvailabilityZonesEnabled = registerOutput<bool?>('isAvailabilityZonesEnabled');
    isDoubleEncryptionEnabled = registerOutput<bool?>('isDoubleEncryptionEnabled');
    keyVaultProperties = registerOutput<KeyVaultPropertiesResponse?>('keyVaultProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedDate = registerOutput<String>('lastModifiedDate');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<ClusterSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}

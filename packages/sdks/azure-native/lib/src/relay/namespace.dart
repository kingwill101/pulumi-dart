import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Description of a namespace resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-11-01, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RelayNamespaceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @namespace = new AzureNative.Relay.Namespace("namespace", new()
///     {
///         Location = "South Central US",
///         NamespaceName = "example-RelayNamespace-5849",
///         ResourceGroupName = "resourcegroup",
///         Sku = new AzureNative.Relay.Inputs.SkuArgs
///         {
///             Name = AzureNative.Relay.SkuName.Standard,
///             Tier = AzureNative.Relay.SkuTier.Standard,
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
/// 	relay "github.com/pulumi/pulumi-azure-native-sdk/relay/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := relay.NewNamespace(ctx, "namespace", &relay.NamespaceArgs{
/// 			Location:          pulumi.String("South Central US"),
/// 			NamespaceName:     pulumi.String("example-RelayNamespace-5849"),
/// 			ResourceGroupName: pulumi.String("resourcegroup"),
/// 			Sku: &relay.SkuArgs{
/// 				Name: pulumi.String(relay.SkuNameStandard),
/// 				Tier: pulumi.String(relay.SkuTierStandard),
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
/// resource "azure-native_relay_namespace" "namespace" {
///   location            = "South Central US"
///   namespace_name      = "example-RelayNamespace-5849"
///   resource_group_name = "resourcegroup"
///   sku = {
///     name = "Standard"
///     tier = "Standard"
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
/// import com.pulumi.azurenative.relay.Namespace;
/// import com.pulumi.azurenative.relay.NamespaceArgs;
/// import com.pulumi.azurenative.relay.inputs.SkuArgs;
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
///             .location("South Central US")
///             .namespaceName("example-RelayNamespace-5849")
///             .resourceGroupName("resourcegroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .tier("Standard")
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
/// const namespace = new azure_native.relay.Namespace("namespace", {
///     location: "South Central US",
///     namespaceName: "example-RelayNamespace-5849",
///     resourceGroupName: "resourcegroup",
///     sku: {
///         name: azure_native.relay.SkuName.Standard,
///         tier: azure_native.relay.SkuTier.Standard,
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
/// namespace = azure_native.relay.Namespace("namespace",
///     location="South Central US",
///     namespace_name="example-RelayNamespace-5849",
///     resource_group_name="resourcegroup",
///     sku={
///         "name": azure_native.relay.SkuName.STANDARD,
///         "tier": azure_native.relay.SkuTier.STANDARD,
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
///     type: azure-native:relay:Namespace
///     properties:
///       location: South Central US
///       namespaceName: example-RelayNamespace-5849
///       resourceGroupName: resourcegroup
///       sku:
///         name: Standard
///         tier: Standard
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
/// $ pulumi import azure-native:relay:Namespace example-RelayNamespace-5849 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Relay/namespaces/{namespaceName}
/// ```
class Namespace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the namespace was created.
  late final pulumi.Output<String> createdAt;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Identifier for Azure Insights metrics.
  late final pulumi.Output<String> metricId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connections.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>?> privateEndpointConnections;
  /// Provisioning state of the Namespace.
  late final pulumi.Output<String> provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Endpoint you can use to perform Service Bus operations.
  late final pulumi.Output<String> serviceBusEndpoint;
  /// SKU of the namespace.
  late final pulumi.Output<SkuResponse?> sku;
  /// Status of the Namespace.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The time the namespace was updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_relay_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:relay:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    location = registerOutput<String>('location');
    metricId = registerOutput<String>('metricId');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>?>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    serviceBusEndpoint = registerOutput<String>('serviceBusEndpoint');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [Namespace] resource.
  Namespace.reference(String urn)
    : super(
        'azure-native:relay:Namespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    location = registerOutput<String>('location');
    metricId = registerOutput<String>('metricId');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>?>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    serviceBusEndpoint = registerOutput<String>('serviceBusEndpoint');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}

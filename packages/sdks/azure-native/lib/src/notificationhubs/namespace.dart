import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'network_acls_response.dart';
import 'pns_credentials_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Notification Hubs Namespace Resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Namespaces_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @namespace = new AzureNative.NotificationHubs.Namespace("namespace", new()
///     {
///         Location = "South Central US",
///         NamespaceName = "nh-sdk-ns",
///         NetworkAcls = new AzureNative.NotificationHubs.Inputs.NetworkAclsArgs
///         {
///             IpRules = new[]
///             {
///                 new AzureNative.NotificationHubs.Inputs.IpRuleArgs
///                 {
///                     IpMask = "185.48.100.00/24",
///                     Rights = new[]
///                     {
///                         AzureNative.NotificationHubs.AccessRights.Manage,
///                         AzureNative.NotificationHubs.AccessRights.Send,
///                         AzureNative.NotificationHubs.AccessRights.Listen,
///                     },
///                 },
///             },
///             PublicNetworkRule = new AzureNative.NotificationHubs.Inputs.PublicInternetAuthorizationRuleArgs
///             {
///                 Rights = new[]
///                 {
///                     AzureNative.NotificationHubs.AccessRights.Listen,
///                 },
///             },
///         },
///         ResourceGroupName = "5ktrial",
///         Sku = new AzureNative.NotificationHubs.Inputs.SkuArgs
///         {
///             Name = AzureNative.NotificationHubs.SkuName.Standard,
///             Tier = "Standard",
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
///         ZoneRedundancy = AzureNative.NotificationHubs.ZoneRedundancyPreference.Enabled,
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
/// 	notificationhubs "github.com/pulumi/pulumi-azure-native-sdk/notificationhubs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notificationhubs.NewNamespace(ctx, "namespace", &notificationhubs.NamespaceArgs{
/// 			Location:      pulumi.String("South Central US"),
/// 			NamespaceName: pulumi.String("nh-sdk-ns"),
/// 			NetworkAcls: &notificationhubs.NetworkAclsArgs{
/// 				IpRules: notificationhubs.IpRuleArray{
/// 					&notificationhubs.IpRuleArgs{
/// 						IpMask: pulumi.String("185.48.100.00/24"),
/// 						Rights: pulumi.StringArray{
/// 							pulumi.String(notificationhubs.AccessRightsManage),
/// 							pulumi.String(notificationhubs.AccessRightsSend),
/// 							pulumi.String(notificationhubs.AccessRightsListen),
/// 						},
/// 					},
/// 				},
/// 				PublicNetworkRule: &notificationhubs.PublicInternetAuthorizationRuleArgs{
/// 					Rights: pulumi.StringArray{
/// 						pulumi.String(notificationhubs.AccessRightsListen),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("5ktrial"),
/// 			Sku: &notificationhubs.SkuArgs{
/// 				Name: pulumi.String(notificationhubs.SkuNameStandard),
/// 				Tier: pulumi.String("Standard"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
/// 			ZoneRedundancy: pulumi.String(notificationhubs.ZoneRedundancyPreferenceEnabled),
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
/// import com.pulumi.azurenative.notificationhubs.Namespace;
/// import com.pulumi.azurenative.notificationhubs.NamespaceArgs;
/// import com.pulumi.azurenative.notificationhubs.inputs.NetworkAclsArgs;
/// import com.pulumi.azurenative.notificationhubs.inputs.PublicInternetAuthorizationRuleArgs;
/// import com.pulumi.azurenative.notificationhubs.inputs.SkuArgs;
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
///         var namespace = new Namespace("namespace", NamespaceArgs.builder()
///             .location("South Central US")
///             .namespaceName("nh-sdk-ns")
///             .networkAcls(NetworkAclsArgs.builder()
///                 .ipRules(IpRuleArgs.builder()
///                     .ipMask("185.48.100.00/24")
///                     .rights(
///                         "Manage",
///                         "Send",
///                         "Listen")
///                     .build())
///                 .publicNetworkRule(PublicInternetAuthorizationRuleArgs.builder()
///                     .rights("Listen")
///                     .build())
///                 .build())
///             .resourceGroupName("5ktrial")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
///             .zoneRedundancy("Enabled")
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
/// const namespace = new azure_native.notificationhubs.Namespace("namespace", {
///     location: "South Central US",
///     namespaceName: "nh-sdk-ns",
///     networkAcls: {
///         ipRules: [{
///             ipMask: "185.48.100.00/24",
///             rights: [
///                 azure_native.notificationhubs.AccessRights.Manage,
///                 azure_native.notificationhubs.AccessRights.Send,
///                 azure_native.notificationhubs.AccessRights.Listen,
///             ],
///         }],
///         publicNetworkRule: {
///             rights: [azure_native.notificationhubs.AccessRights.Listen],
///         },
///     },
///     resourceGroupName: "5ktrial",
///     sku: {
///         name: azure_native.notificationhubs.SkuName.Standard,
///         tier: "Standard",
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
///     zoneRedundancy: azure_native.notificationhubs.ZoneRedundancyPreference.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace = azure_native.notificationhubs.Namespace("namespace",
///     location="South Central US",
///     namespace_name="nh-sdk-ns",
///     network_acls={
///         "ip_rules": [{
///             "ip_mask": "185.48.100.00/24",
///             "rights": [
///                 azure_native.notificationhubs.AccessRights.MANAGE,
///                 azure_native.notificationhubs.AccessRights.SEND,
///                 azure_native.notificationhubs.AccessRights.LISTEN,
///             ],
///         }],
///         "public_network_rule": {
///             "rights": [azure_native.notificationhubs.AccessRights.LISTEN],
///         },
///     },
///     resource_group_name="5ktrial",
///     sku={
///         "name": azure_native.notificationhubs.SkuName.STANDARD,
///         "tier": "Standard",
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     },
///     zone_redundancy=azure_native.notificationhubs.ZoneRedundancyPreference.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   namespace:
///     type: azure-native:notificationhubs:Namespace
///     properties:
///       location: South Central US
///       namespaceName: nh-sdk-ns
///       networkAcls:
///         ipRules:
///           - ipMask: 185.48.100.00/24
///             rights:
///               - Manage
///               - Send
///               - Listen
///         publicNetworkRule:
///           rights:
///             - Listen
///       resourceGroupName: 5ktrial
///       sku:
///         name: Standard
///         tier: Standard
///       tags:
///         tag1: value1
///         tag2: value2
///       zoneRedundancy: Enabled
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
/// $ pulumi import azure-native:notificationhubs:Namespace nh-sdk-ns /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NotificationHubs/namespaces/{namespaceName}
/// ```
class Namespace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time when the namespace was created.
  late final pulumi.Output<String> createdAt;
  /// Gets or sets whether or not the namespace is set as Critical.
  late final pulumi.Output<bool> critical;
  /// Deprecated.
  late final pulumi.Output<String?> dataCenter;
  /// Gets or sets whether or not the namespace is currently enabled.
  late final pulumi.Output<bool> enabled;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Azure Insights Metrics id.
  late final pulumi.Output<String> metricId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Defines values for NamespaceType.
  late final pulumi.Output<String?> namespaceType;
  /// A collection of network authorization rules.
  late final pulumi.Output<NetworkAclsResponse?> networkAcls;
  /// Collection of Notification Hub or Notification Hub Namespace PNS credentials.
  late final pulumi.Output<PnsCredentialsResponse?> pnsCredentials;
  /// Private Endpoint Connections for namespace
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Defines values for OperationProvisioningState.
  late final pulumi.Output<String?> provisioningState;
  /// Type of public network access.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Region. The value is always set to the same value as Namespace.Location, so we are deprecating
  /// this property.
  late final pulumi.Output<String> region;
  /// Allowed replication region
  late final pulumi.Output<String?> replicationRegion;
  /// Gets or sets scaleUnit where the namespace gets created
  late final pulumi.Output<String?> scaleUnit;
  /// Gets or sets endpoint you can use to perform NotificationHub
  /// operations.
  late final pulumi.Output<String> serviceBusEndpoint;
  /// The Sku description for a namespace
  late final pulumi.Output<SkuResponse> sku;
  /// Namespace status.
  late final pulumi.Output<String?> status;
  /// Namespace subscription id.
  late final pulumi.Output<String> subscriptionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Time when the namespace was updated.
  late final pulumi.Output<String> updatedAt;
  /// Namespace SKU name.
  late final pulumi.Output<String?> zoneRedundancy;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_notificationhubs_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:notificationhubs:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    critical = registerOutput<bool>('critical');
    dataCenter = registerOutput<String?>('dataCenter');
    enabled = registerOutput<bool>('enabled');
    location = registerOutput<String>('location');
    metricId = registerOutput<String>('metricId');
    this.name = registerOutput<String>('name');
    namespaceType = registerOutput<String?>('namespaceType');
    networkAcls = registerOutput<NetworkAclsResponse?>('networkAcls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkAclsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pnsCredentials = registerOutput<PnsCredentialsResponse?>('pnsCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PnsCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String?>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    region = registerOutput<String>('region');
    replicationRegion = registerOutput<String?>('replicationRegion');
    scaleUnit = registerOutput<String?>('scaleUnit');
    serviceBusEndpoint = registerOutput<String>('serviceBusEndpoint');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String?>('status');
    subscriptionId = registerOutput<String>('subscriptionId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    zoneRedundancy = registerOutput<String?>('zoneRedundancy');
  }
}

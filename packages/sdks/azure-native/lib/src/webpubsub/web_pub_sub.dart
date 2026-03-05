import 'package:pulumi/pulumi.dart' as pulumi;
import 'live_trace_configuration_response.dart';
import 'managed_identity_response.dart';
import 'resource_log_configuration_response.dart';
import 'resource_sku_response.dart';
import 'system_data_response.dart';
import 'web_pub_sub_args.dart';
import 'web_pub_sub_network_acls_response.dart';
import 'web_pub_sub_socket_iosettings_response.dart';
import 'web_pub_sub_tls_settings_response.dart';

/// A class represent a resource.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebPubSub_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webPubSub = new AzureNative.WebPubSub.WebPubSub("webPubSub", new()
///     {
///         DisableAadAuth = false,
///         DisableLocalAuth = false,
///         Identity = new AzureNative.WebPubSub.Inputs.ManagedIdentityArgs
///         {
///             Type = AzureNative.WebPubSub.ManagedIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.WebPubSub.ServiceKind.WebPubSub,
///         LiveTraceConfiguration = new AzureNative.WebPubSub.Inputs.LiveTraceConfigurationArgs
///         {
///             Categories = new[]
///             {
///                 new AzureNative.WebPubSub.Inputs.LiveTraceCategoryArgs
///                 {
///                     Enabled = "true",
///                     Name = "ConnectivityLogs",
///                 },
///             },
///             Enabled = "false",
///         },
///         Location = "eastus",
///         NetworkACLs = new AzureNative.WebPubSub.Inputs.WebPubSubNetworkACLsArgs
///         {
///             DefaultAction = AzureNative.WebPubSub.ACLAction.Deny,
///             PrivateEndpoints = new[]
///             {
///                 new AzureNative.WebPubSub.Inputs.PrivateEndpointACLArgs
///                 {
///                     Allow = new[]
///                     {
///                         AzureNative.WebPubSub.WebPubSubRequestType.ServerConnection,
///                     },
///                     Name = "mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///                 },
///             },
///             PublicNetwork = new AzureNative.WebPubSub.Inputs.NetworkACLArgs
///             {
///                 Allow = new[]
///                 {
///                     AzureNative.WebPubSub.WebPubSubRequestType.ClientConnection,
///                 },
///             },
///         },
///         PublicNetworkAccess = "Enabled",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "myWebPubSubService",
///         Sku = new AzureNative.WebPubSub.Inputs.ResourceSkuArgs
///         {
///             Capacity = 1,
///             Name = "Premium_P1",
///             Tier = AzureNative.WebPubSub.WebPubSubSkuTier.Premium,
///         },
///         SocketIO = new AzureNative.WebPubSub.Inputs.WebPubSubSocketIOSettingsArgs
///         {
///             ServiceMode = "Serverless",
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         Tls = new AzureNative.WebPubSub.Inputs.WebPubSubTlsSettingsArgs
///         {
///             ClientCertEnabled = false,
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
/// 	webpubsub "github.com/pulumi/pulumi-azure-native-sdk/webpubsub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := webpubsub.NewWebPubSub(ctx, "webPubSub", &webpubsub.WebPubSubArgs{
/// 			DisableAadAuth:   pulumi.Bool(false),
/// 			DisableLocalAuth: pulumi.Bool(false),
/// 			Identity: &webpubsub.ManagedIdentityArgs{
/// 				Type: pulumi.String(webpubsub.ManagedIdentityTypeSystemAssigned),
/// 			},
/// 			Kind: pulumi.String(webpubsub.ServiceKindWebPubSub),
/// 			LiveTraceConfiguration: &webpubsub.LiveTraceConfigurationArgs{
/// 				Categories: webpubsub.LiveTraceCategoryArray{
/// 					&webpubsub.LiveTraceCategoryArgs{
/// 						Enabled: pulumi.String("true"),
/// 						Name:    pulumi.String("ConnectivityLogs"),
/// 					},
/// 				},
/// 				Enabled: pulumi.String("false"),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			NetworkACLs: &webpubsub.WebPubSubNetworkACLsArgs{
/// 				DefaultAction: pulumi.String(webpubsub.ACLActionDeny),
/// 				PrivateEndpoints: webpubsub.PrivateEndpointACLArray{
/// 					&webpubsub.PrivateEndpointACLArgs{
/// 						Allow: pulumi.StringArray{
/// 							pulumi.String(webpubsub.WebPubSubRequestTypeServerConnection),
/// 						},
/// 						Name: pulumi.String("mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e"),
/// 					},
/// 				},
/// 				PublicNetwork: &webpubsub.NetworkACLArgs{
/// 					Allow: pulumi.StringArray{
/// 						pulumi.String(webpubsub.WebPubSubRequestTypeClientConnection),
/// 					},
/// 				},
/// 			},
/// 			PublicNetworkAccess: pulumi.String("Enabled"),
/// 			ResourceGroupName:   pulumi.String("myResourceGroup"),
/// 			ResourceName:        pulumi.String("myWebPubSubService"),
/// 			Sku: &webpubsub.ResourceSkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String("Premium_P1"),
/// 				Tier:     pulumi.String(webpubsub.WebPubSubSkuTierPremium),
/// 			},
/// 			SocketIO: &webpubsub.WebPubSubSocketIOSettingsArgs{
/// 				ServiceMode: pulumi.String("Serverless"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			Tls: &webpubsub.WebPubSubTlsSettingsArgs{
/// 				ClientCertEnabled: pulumi.Bool(false),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.webpubsub.WebPubSub;
/// import com.pulumi.azurenative.webpubsub.WebPubSubArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.ManagedIdentityArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.LiveTraceConfigurationArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.WebPubSubNetworkACLsArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.NetworkACLArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.ResourceSkuArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.WebPubSubSocketIOSettingsArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.WebPubSubTlsSettingsArgs;
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
///         var webPubSub = new WebPubSub("webPubSub", WebPubSubArgs.builder()
///             .disableAadAuth(false)
///             .disableLocalAuth(false)
///             .identity(ManagedIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("WebPubSub")
///             .liveTraceConfiguration(LiveTraceConfigurationArgs.builder()
///                 .categories(LiveTraceCategoryArgs.builder()
///                     .enabled("true")
///                     .name("ConnectivityLogs")
///                     .build())
///                 .enabled("false")
///                 .build())
///             .location("eastus")
///             .networkACLs(WebPubSubNetworkACLsArgs.builder()
///                 .defaultAction("Deny")
///                 .privateEndpoints(PrivateEndpointACLArgs.builder()
///                     .allow("ServerConnection")
///                     .name("mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e")
///                     .build())
///                 .publicNetwork(NetworkACLArgs.builder()
///                     .allow("ClientConnection")
///                     .build())
///                 .build())
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("myWebPubSubService")
///             .sku(ResourceSkuArgs.builder()
///                 .capacity(1)
///                 .name("Premium_P1")
///                 .tier("Premium")
///                 .build())
///             .socketIO(WebPubSubSocketIOSettingsArgs.builder()
///                 .serviceMode("Serverless")
///                 .build())
///             .tags(Map.of("key1", "value1"))
///             .tls(WebPubSubTlsSettingsArgs.builder()
///                 .clientCertEnabled(false)
///                 .build())
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
/// const webPubSub = new azure_native.webpubsub.WebPubSub("webPubSub", {
///     disableAadAuth: false,
///     disableLocalAuth: false,
///     identity: {
///         type: azure_native.webpubsub.ManagedIdentityType.SystemAssigned,
///     },
///     kind: azure_native.webpubsub.ServiceKind.WebPubSub,
///     liveTraceConfiguration: {
///         categories: [{
///             enabled: "true",
///             name: "ConnectivityLogs",
///         }],
///         enabled: "false",
///     },
///     location: "eastus",
///     networkACLs: {
///         defaultAction: azure_native.webpubsub.ACLAction.Deny,
///         privateEndpoints: [{
///             allow: [azure_native.webpubsub.WebPubSubRequestType.ServerConnection],
///             name: "mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///         }],
///         publicNetwork: {
///             allow: [azure_native.webpubsub.WebPubSubRequestType.ClientConnection],
///         },
///     },
///     publicNetworkAccess: "Enabled",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "myWebPubSubService",
///     sku: {
///         capacity: 1,
///         name: "Premium_P1",
///         tier: azure_native.webpubsub.WebPubSubSkuTier.Premium,
///     },
///     socketIO: {
///         serviceMode: "Serverless",
///     },
///     tags: {
///         key1: "value1",
///     },
///     tls: {
///         clientCertEnabled: false,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_pub_sub = azure_native.webpubsub.WebPubSub("webPubSub",
///     disable_aad_auth=False,
///     disable_local_auth=False,
///     identity={
///         "type": azure_native.webpubsub.ManagedIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.webpubsub.ServiceKind.WEB_PUB_SUB,
///     live_trace_configuration={
///         "categories": [{
///             "enabled": "true",
///             "name": "ConnectivityLogs",
///         }],
///         "enabled": "false",
///     },
///     location="eastus",
///     network_acls={
///         "default_action": azure_native.webpubsub.ACLAction.DENY,
///         "private_endpoints": [{
///             "allow": [azure_native.webpubsub.WebPubSubRequestType.SERVER_CONNECTION],
///             "name": "mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///         }],
///         "public_network": {
///             "allow": [azure_native.webpubsub.WebPubSubRequestType.CLIENT_CONNECTION],
///         },
///     },
///     public_network_access="Enabled",
///     resource_group_name="myResourceGroup",
///     resource_name_="myWebPubSubService",
///     sku={
///         "capacity": 1,
///         "name": "Premium_P1",
///         "tier": azure_native.webpubsub.WebPubSubSkuTier.PREMIUM,
///     },
///     socket_io={
///         "service_mode": "Serverless",
///     },
///     tags={
///         "key1": "value1",
///     },
///     tls={
///         "client_cert_enabled": False,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   webPubSub:
///     type: azure-native:webpubsub:WebPubSub
///     properties:
///       disableAadAuth: false
///       disableLocalAuth: false
///       identity:
///         type: SystemAssigned
///       kind: WebPubSub
///       liveTraceConfiguration:
///         categories:
///           - enabled: 'true'
///             name: ConnectivityLogs
///         enabled: 'false'
///       location: eastus
///       networkACLs:
///         defaultAction: Deny
///         privateEndpoints:
///           - allow:
///               - ServerConnection
///             name: mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e
///         publicNetwork:
///           allow:
///             - ClientConnection
///       publicNetworkAccess: Enabled
///       resourceGroupName: myResourceGroup
///       resourceName: myWebPubSubService
///       sku:
///         capacity: 1
///         name: Premium_P1
///         tier: Premium
///       socketIO:
///         serviceMode: Serverless
///       tags:
///         key1: value1
///       tls:
///         clientCertEnabled: false
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
/// $ pulumi import azure-native:webpubsub:WebPubSub myWebPubSubService /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/webPubSub/{resourceName}
/// ```
class WebPubSub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// DisableLocalAuth
  /// Enable or disable aad auth
  /// When set as true, connection with AuthType=aad won't work.
  late final pulumi.Output<bool?> disableAadAuth;

  /// DisableLocalAuth
  /// Enable or disable local auth with AccessKey
  /// When set as true, connection with AccessKey=xxx won't work.
  late final pulumi.Output<bool?> disableLocalAuth;

  /// The publicly accessible IP of the resource.
  late final pulumi.Output<String> externalIP;

  /// FQDN of the service instance.
  late final pulumi.Output<String> hostName;

  /// Deprecated.
  late final pulumi.Output<String> hostNamePrefix;

  /// A class represent managed identities used for request and response
  late final pulumi.Output<ManagedIdentityResponse?> identity;

  /// The kind of the service
  late final pulumi.Output<String?> kind;

  /// Live trace configuration of a Microsoft.SignalRService resource.
  late final pulumi.Output<LiveTraceConfigurationResponse?>
  liveTraceConfiguration;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Network ACLs for the resource
  late final pulumi.Output<WebPubSubNetworkACLsResponse?> networkACLs;

  /// Private endpoint connections to the resource.
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Enable or disable public network access. Default to "Enabled".
  /// When it's Enabled, network ACLs still apply.
  /// When it's Disabled, public network access is always disabled no matter what you set in network ACLs.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// The publicly accessible port of the resource which is designed for browser/client side usage.
  late final pulumi.Output<int> publicPort;

  /// Enable or disable the regional endpoint. Default to "Enabled".
  /// When it's Disabled, new connections will not be routed to this endpoint, however existing connections will not be affected.
  /// This property is replica specific. Disable the regional endpoint without replica is not allowed.
  late final pulumi.Output<String?> regionEndpointEnabled;

  /// Resource log configuration of a Microsoft.SignalRService resource.
  late final pulumi.Output<ResourceLogConfigurationResponse?>
  resourceLogConfiguration;

  /// Stop or start the resource.  Default to "False".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  late final pulumi.Output<String?> resourceStopped;

  /// The publicly accessible port of the resource which is designed for customer server side usage.
  late final pulumi.Output<int> serverPort;

  /// The list of shared private link resources.
  late final pulumi.Output<List<Map<String, dynamic>>>
  sharedPrivateLinkResources;

  /// The billing information of the resource.
  late final pulumi.Output<ResourceSkuResponse?> sku;

  /// SocketIO settings for the resource
  late final pulumi.Output<WebPubSubSocketIOSettingsResponse?> socketIO;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// TLS settings for the resource
  late final pulumi.Output<WebPubSubTlsSettingsResponse?> tls;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Version of the resource. Probably you need the same or higher version of client SDKs.
  late final pulumi.Output<String> version;

  /// Creates a new [WebPubSub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebPubSub]. {@macro pulumi_webpubsub_web_pub_sub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebPubSub(
    String name, {
    WebPubSubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:webpubsub:WebPubSub',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disableAadAuth = registerOutput<bool?>('disableAadAuth');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    externalIP = registerOutput<String>('externalIP');
    hostName = registerOutput<String>('hostName');
    hostNamePrefix = registerOutput<String>('hostNamePrefix');
    identity = registerOutput<ManagedIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kind = registerOutput<String?>('kind');
    liveTraceConfiguration = registerOutput<LiveTraceConfigurationResponse?>(
      'liveTraceConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LiveTraceConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkACLs = registerOutput<WebPubSubNetworkACLsResponse?>(
      'networkACLs',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WebPubSubNetworkACLsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    publicPort = registerOutput<int>('publicPort');
    regionEndpointEnabled = registerOutput<String?>('regionEndpointEnabled');
    resourceLogConfiguration =
        registerOutput<ResourceLogConfigurationResponse?>(
          'resourceLogConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ResourceLogConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    resourceStopped = registerOutput<String?>('resourceStopped');
    serverPort = registerOutput<int>('serverPort');
    sharedPrivateLinkResources = registerOutput<List<Map<String, dynamic>>>(
      'sharedPrivateLinkResources',
    );
    sku = registerOutput<ResourceSkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourceSkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    socketIO = registerOutput<WebPubSubSocketIOSettingsResponse?>(
      'socketIO',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WebPubSubSocketIOSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tls = registerOutput<WebPubSubTlsSettingsResponse?>(
      'tls',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WebPubSubTlsSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}

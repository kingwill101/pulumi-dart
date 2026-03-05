import 'package:pulumi/pulumi.dart' as pulumi;
import 'live_trace_configuration_response.dart';
import 'managed_identity_response.dart';
import 'resource_log_configuration_response.dart';
import 'resource_sku_response.dart';
import 'serverless_settings_response.dart';
import 'serverless_upstream_settings_response.dart';
import 'signal_rargs.dart';
import 'signal_rcors_settings_response.dart';
import 'signal_rnetwork_acls_response.dart';
import 'signal_rtls_settings_response.dart';
import 'system_data_response.dart';

/// A class represent a resource.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SignalR_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var signalR = new AzureNative.SignalRService.SignalR("signalR", new()
///     {
///         Cors = new AzureNative.SignalRService.Inputs.SignalRCorsSettingsArgs
///         {
///             AllowedOrigins = new[]
///             {
///                 "https://foo.com",
///                 "https://bar.com",
///             },
///         },
///         DisableAadAuth = false,
///         DisableLocalAuth = false,
///         Features = new[]
///         {
///             new AzureNative.SignalRService.Inputs.SignalRFeatureArgs
///             {
///                 Flag = AzureNative.SignalRService.FeatureFlags.ServiceMode,
///                 Properties = null,
///                 Value = "Serverless",
///             },
///             new AzureNative.SignalRService.Inputs.SignalRFeatureArgs
///             {
///                 Flag = AzureNative.SignalRService.FeatureFlags.EnableConnectivityLogs,
///                 Properties = null,
///                 Value = "True",
///             },
///             new AzureNative.SignalRService.Inputs.SignalRFeatureArgs
///             {
///                 Flag = AzureNative.SignalRService.FeatureFlags.EnableMessagingLogs,
///                 Properties = null,
///                 Value = "False",
///             },
///             new AzureNative.SignalRService.Inputs.SignalRFeatureArgs
///             {
///                 Flag = AzureNative.SignalRService.FeatureFlags.EnableLiveTrace,
///                 Properties = null,
///                 Value = "False",
///             },
///         },
///         Identity = new AzureNative.SignalRService.Inputs.ManagedIdentityArgs
///         {
///             Type = AzureNative.SignalRService.ManagedIdentityType.SystemAssigned,
///         },
///         Kind = AzureNative.SignalRService.ServiceKind.SignalR,
///         LiveTraceConfiguration = new AzureNative.SignalRService.Inputs.LiveTraceConfigurationArgs
///         {
///             Categories = new[]
///             {
///                 new AzureNative.SignalRService.Inputs.LiveTraceCategoryArgs
///                 {
///                     Enabled = "true",
///                     Name = "ConnectivityLogs",
///                 },
///             },
///             Enabled = "false",
///         },
///         Location = "eastus",
///         NetworkACLs = new AzureNative.SignalRService.Inputs.SignalRNetworkACLsArgs
///         {
///             DefaultAction = AzureNative.SignalRService.ACLAction.Deny,
///             PrivateEndpoints = new[]
///             {
///                 new AzureNative.SignalRService.Inputs.PrivateEndpointACLArgs
///                 {
///                     Allow = new[]
///                     {
///                         AzureNative.SignalRService.SignalRRequestType.ServerConnection,
///                     },
///                     Name = "mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///                 },
///             },
///             PublicNetwork = new AzureNative.SignalRService.Inputs.NetworkACLArgs
///             {
///                 Allow = new[]
///                 {
///                     AzureNative.SignalRService.SignalRRequestType.ClientConnection,
///                 },
///             },
///         },
///         PublicNetworkAccess = "Enabled",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "mySignalRService",
///         Serverless = new AzureNative.SignalRService.Inputs.ServerlessSettingsArgs
///         {
///             ConnectionTimeoutInSeconds = 5,
///         },
///         Sku = new AzureNative.SignalRService.Inputs.ResourceSkuArgs
///         {
///             Capacity = 1,
///             Name = "Premium_P1",
///             Tier = AzureNative.SignalRService.SignalRSkuTier.Premium,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         Tls = new AzureNative.SignalRService.Inputs.SignalRTlsSettingsArgs
///         {
///             ClientCertEnabled = false,
///         },
///         Upstream = new AzureNative.SignalRService.Inputs.ServerlessUpstreamSettingsArgs
///         {
///             Templates = new[]
///             {
///                 new AzureNative.SignalRService.Inputs.UpstreamTemplateArgs
///                 {
///                     Auth = new AzureNative.SignalRService.Inputs.UpstreamAuthSettingsArgs
///                     {
///                         ManagedIdentity = new AzureNative.SignalRService.Inputs.ManagedIdentitySettingsArgs
///                         {
///                             Resource = "api://example",
///                         },
///                         Type = AzureNative.SignalRService.UpstreamAuthType.ManagedIdentity,
///                     },
///                     CategoryPattern = "*",
///                     EventPattern = "connect,disconnect",
///                     HubPattern = "*",
///                     UrlTemplate = "https://example.com/chat/api/connect",
///                 },
///             },
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
/// 	signalrservice "github.com/pulumi/pulumi-azure-native-sdk/signalrservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := signalrservice.NewSignalR(ctx, "signalR", &signalrservice.SignalRArgs{
/// 			Cors: &signalrservice.SignalRCorsSettingsArgs{
/// 				AllowedOrigins: pulumi.StringArray{
/// 					pulumi.String("https://foo.com"),
/// 					pulumi.String("https://bar.com"),
/// 				},
/// 			},
/// 			DisableAadAuth:   pulumi.Bool(false),
/// 			DisableLocalAuth: pulumi.Bool(false),
/// 			Features: signalrservice.SignalRFeatureArray{
/// 				&signalrservice.SignalRFeatureArgs{
/// 					Flag:       pulumi.String(signalrservice.FeatureFlagsServiceMode),
/// 					Properties: pulumi.StringMap{},
/// 					Value:      pulumi.String("Serverless"),
/// 				},
/// 				&signalrservice.SignalRFeatureArgs{
/// 					Flag:       pulumi.String(signalrservice.FeatureFlagsEnableConnectivityLogs),
/// 					Properties: pulumi.StringMap{},
/// 					Value:      pulumi.String("True"),
/// 				},
/// 				&signalrservice.SignalRFeatureArgs{
/// 					Flag:       pulumi.String(signalrservice.FeatureFlagsEnableMessagingLogs),
/// 					Properties: pulumi.StringMap{},
/// 					Value:      pulumi.String("False"),
/// 				},
/// 				&signalrservice.SignalRFeatureArgs{
/// 					Flag:       pulumi.String(signalrservice.FeatureFlagsEnableLiveTrace),
/// 					Properties: pulumi.StringMap{},
/// 					Value:      pulumi.String("False"),
/// 				},
/// 			},
/// 			Identity: &signalrservice.ManagedIdentityArgs{
/// 				Type: pulumi.String(signalrservice.ManagedIdentityTypeSystemAssigned),
/// 			},
/// 			Kind: pulumi.String(signalrservice.ServiceKindSignalR),
/// 			LiveTraceConfiguration: &signalrservice.LiveTraceConfigurationArgs{
/// 				Categories: signalrservice.LiveTraceCategoryArray{
/// 					&signalrservice.LiveTraceCategoryArgs{
/// 						Enabled: pulumi.String("true"),
/// 						Name:    pulumi.String("ConnectivityLogs"),
/// 					},
/// 				},
/// 				Enabled: pulumi.String("false"),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			NetworkACLs: &signalrservice.SignalRNetworkACLsArgs{
/// 				DefaultAction: pulumi.String(signalrservice.ACLActionDeny),
/// 				PrivateEndpoints: signalrservice.PrivateEndpointACLArray{
/// 					&signalrservice.PrivateEndpointACLArgs{
/// 						Allow: pulumi.StringArray{
/// 							pulumi.String(signalrservice.SignalRRequestTypeServerConnection),
/// 						},
/// 						Name: pulumi.String("mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e"),
/// 					},
/// 				},
/// 				PublicNetwork: &signalrservice.NetworkACLArgs{
/// 					Allow: pulumi.StringArray{
/// 						pulumi.String(signalrservice.SignalRRequestTypeClientConnection),
/// 					},
/// 				},
/// 			},
/// 			PublicNetworkAccess: pulumi.String("Enabled"),
/// 			ResourceGroupName:   pulumi.String("myResourceGroup"),
/// 			ResourceName:        pulumi.String("mySignalRService"),
/// 			Serverless: &signalrservice.ServerlessSettingsArgs{
/// 				ConnectionTimeoutInSeconds: pulumi.Int(5),
/// 			},
/// 			Sku: &signalrservice.ResourceSkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String("Premium_P1"),
/// 				Tier:     pulumi.String(signalrservice.SignalRSkuTierPremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			Tls: &signalrservice.SignalRTlsSettingsArgs{
/// 				ClientCertEnabled: pulumi.Bool(false),
/// 			},
/// 			Upstream: &signalrservice.ServerlessUpstreamSettingsArgs{
/// 				Templates: signalrservice.UpstreamTemplateArray{
/// 					&signalrservice.UpstreamTemplateArgs{
/// 						Auth: &signalrservice.UpstreamAuthSettingsArgs{
/// 							ManagedIdentity: &signalrservice.ManagedIdentitySettingsArgs{
/// 								Resource: pulumi.String("api://example"),
/// 							},
/// 							Type: pulumi.String(signalrservice.UpstreamAuthTypeManagedIdentity),
/// 						},
/// 						CategoryPattern: pulumi.String("*"),
/// 						EventPattern:    pulumi.String("connect,disconnect"),
/// 						HubPattern:      pulumi.String("*"),
/// 						UrlTemplate:     pulumi.String("https://example.com/chat/api/connect"),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.signalrservice.SignalR;
/// import com.pulumi.azurenative.signalrservice.SignalRArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.SignalRCorsSettingsArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.SignalRFeatureArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.ManagedIdentityArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.LiveTraceConfigurationArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.SignalRNetworkACLsArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.NetworkACLArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.ServerlessSettingsArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.ResourceSkuArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.SignalRTlsSettingsArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.ServerlessUpstreamSettingsArgs;
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
///         var signalR = new SignalR("signalR", SignalRArgs.builder()
///             .cors(SignalRCorsSettingsArgs.builder()
///                 .allowedOrigins(
///                     "https://foo.com",
///                     "https://bar.com")
///                 .build())
///             .disableAadAuth(false)
///             .disableLocalAuth(false)
///             .features(
///                 SignalRFeatureArgs.builder()
///                     .flag("ServiceMode")
///                     .properties(Map.ofEntries(
///                     ))
///                     .value("Serverless")
///                     .build(),
///                 SignalRFeatureArgs.builder()
///                     .flag("EnableConnectivityLogs")
///                     .properties(Map.ofEntries(
///                     ))
///                     .value("True")
///                     .build(),
///                 SignalRFeatureArgs.builder()
///                     .flag("EnableMessagingLogs")
///                     .properties(Map.ofEntries(
///                     ))
///                     .value("False")
///                     .build(),
///                 SignalRFeatureArgs.builder()
///                     .flag("EnableLiveTrace")
///                     .properties(Map.ofEntries(
///                     ))
///                     .value("False")
///                     .build())
///             .identity(ManagedIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("SignalR")
///             .liveTraceConfiguration(LiveTraceConfigurationArgs.builder()
///                 .categories(LiveTraceCategoryArgs.builder()
///                     .enabled("true")
///                     .name("ConnectivityLogs")
///                     .build())
///                 .enabled("false")
///                 .build())
///             .location("eastus")
///             .networkACLs(SignalRNetworkACLsArgs.builder()
///                 .defaultAction("Deny")
///                 .privateEndpoints(PrivateEndpointACLArgs.builder()
///                     .allow("ServerConnection")
///                     .name("mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e")
///                     .build())
///                 .publicNetwork(NetworkACLArgs.builder()
///                     .allow("ClientConnection")
///                     .build())
///                 .build())
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("mySignalRService")
///             .serverless(ServerlessSettingsArgs.builder()
///                 .connectionTimeoutInSeconds(5)
///                 .build())
///             .sku(ResourceSkuArgs.builder()
///                 .capacity(1)
///                 .name("Premium_P1")
///                 .tier("Premium")
///                 .build())
///             .tags(Map.of("key1", "value1"))
///             .tls(SignalRTlsSettingsArgs.builder()
///                 .clientCertEnabled(false)
///                 .build())
///             .upstream(ServerlessUpstreamSettingsArgs.builder()
///                 .templates(UpstreamTemplateArgs.builder()
///                     .auth(UpstreamAuthSettingsArgs.builder()
///                         .managedIdentity(ManagedIdentitySettingsArgs.builder()
///                             .resource("api://example")
///                             .build())
///                         .type("ManagedIdentity")
///                         .build())
///                     .categoryPattern("*")
///                     .eventPattern("connect,disconnect")
///                     .hubPattern("*")
///                     .urlTemplate("https://example.com/chat/api/connect")
///                     .build())
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
/// const signalR = new azure_native.signalrservice.SignalR("signalR", {
///     cors: {
///         allowedOrigins: [
///             "https://foo.com",
///             "https://bar.com",
///         ],
///     },
///     disableAadAuth: false,
///     disableLocalAuth: false,
///     features: [
///         {
///             flag: azure_native.signalrservice.FeatureFlags.ServiceMode,
///             properties: {},
///             value: "Serverless",
///         },
///         {
///             flag: azure_native.signalrservice.FeatureFlags.EnableConnectivityLogs,
///             properties: {},
///             value: "True",
///         },
///         {
///             flag: azure_native.signalrservice.FeatureFlags.EnableMessagingLogs,
///             properties: {},
///             value: "False",
///         },
///         {
///             flag: azure_native.signalrservice.FeatureFlags.EnableLiveTrace,
///             properties: {},
///             value: "False",
///         },
///     ],
///     identity: {
///         type: azure_native.signalrservice.ManagedIdentityType.SystemAssigned,
///     },
///     kind: azure_native.signalrservice.ServiceKind.SignalR,
///     liveTraceConfiguration: {
///         categories: [{
///             enabled: "true",
///             name: "ConnectivityLogs",
///         }],
///         enabled: "false",
///     },
///     location: "eastus",
///     networkACLs: {
///         defaultAction: azure_native.signalrservice.ACLAction.Deny,
///         privateEndpoints: [{
///             allow: [azure_native.signalrservice.SignalRRequestType.ServerConnection],
///             name: "mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///         }],
///         publicNetwork: {
///             allow: [azure_native.signalrservice.SignalRRequestType.ClientConnection],
///         },
///     },
///     publicNetworkAccess: "Enabled",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "mySignalRService",
///     serverless: {
///         connectionTimeoutInSeconds: 5,
///     },
///     sku: {
///         capacity: 1,
///         name: "Premium_P1",
///         tier: azure_native.signalrservice.SignalRSkuTier.Premium,
///     },
///     tags: {
///         key1: "value1",
///     },
///     tls: {
///         clientCertEnabled: false,
///     },
///     upstream: {
///         templates: [{
///             auth: {
///                 managedIdentity: {
///                     resource: "api://example",
///                 },
///                 type: azure_native.signalrservice.UpstreamAuthType.ManagedIdentity,
///             },
///             categoryPattern: "*",
///             eventPattern: "connect,disconnect",
///             hubPattern: "*",
///             urlTemplate: "https://example.com/chat/api/connect",
///         }],
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// signal_r = azure_native.signalrservice.SignalR("signalR",
///     cors={
///         "allowed_origins": [
///             "https://foo.com",
///             "https://bar.com",
///         ],
///     },
///     disable_aad_auth=False,
///     disable_local_auth=False,
///     features=[
///         {
///             "flag": azure_native.signalrservice.FeatureFlags.SERVICE_MODE,
///             "properties": {},
///             "value": "Serverless",
///         },
///         {
///             "flag": azure_native.signalrservice.FeatureFlags.ENABLE_CONNECTIVITY_LOGS,
///             "properties": {},
///             "value": "True",
///         },
///         {
///             "flag": azure_native.signalrservice.FeatureFlags.ENABLE_MESSAGING_LOGS,
///             "properties": {},
///             "value": "False",
///         },
///         {
///             "flag": azure_native.signalrservice.FeatureFlags.ENABLE_LIVE_TRACE,
///             "properties": {},
///             "value": "False",
///         },
///     ],
///     identity={
///         "type": azure_native.signalrservice.ManagedIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind=azure_native.signalrservice.ServiceKind.SIGNAL_R,
///     live_trace_configuration={
///         "categories": [{
///             "enabled": "true",
///             "name": "ConnectivityLogs",
///         }],
///         "enabled": "false",
///     },
///     location="eastus",
///     network_acls={
///         "default_action": azure_native.signalrservice.ACLAction.DENY,
///         "private_endpoints": [{
///             "allow": [azure_native.signalrservice.SignalRRequestType.SERVER_CONNECTION],
///             "name": "mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///         }],
///         "public_network": {
///             "allow": [azure_native.signalrservice.SignalRRequestType.CLIENT_CONNECTION],
///         },
///     },
///     public_network_access="Enabled",
///     resource_group_name="myResourceGroup",
///     resource_name_="mySignalRService",
///     serverless={
///         "connection_timeout_in_seconds": 5,
///     },
///     sku={
///         "capacity": 1,
///         "name": "Premium_P1",
///         "tier": azure_native.signalrservice.SignalRSkuTier.PREMIUM,
///     },
///     tags={
///         "key1": "value1",
///     },
///     tls={
///         "client_cert_enabled": False,
///     },
///     upstream={
///         "templates": [{
///             "auth": {
///                 "managed_identity": {
///                     "resource": "api://example",
///                 },
///                 "type": azure_native.signalrservice.UpstreamAuthType.MANAGED_IDENTITY,
///             },
///             "category_pattern": "*",
///             "event_pattern": "connect,disconnect",
///             "hub_pattern": "*",
///             "url_template": "https://example.com/chat/api/connect",
///         }],
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   signalR:
///     type: azure-native:signalrservice:SignalR
///     properties:
///       cors:
///         allowedOrigins:
///           - https://foo.com
///           - https://bar.com
///       disableAadAuth: false
///       disableLocalAuth: false
///       features:
///         - flag: ServiceMode
///           properties: {}
///           value: Serverless
///         - flag: EnableConnectivityLogs
///           properties: {}
///           value: True
///         - flag: EnableMessagingLogs
///           properties: {}
///           value: False
///         - flag: EnableLiveTrace
///           properties: {}
///           value: False
///       identity:
///         type: SystemAssigned
///       kind: SignalR
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
///             name: mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e
///         publicNetwork:
///           allow:
///             - ClientConnection
///       publicNetworkAccess: Enabled
///       resourceGroupName: myResourceGroup
///       resourceName: mySignalRService
///       serverless:
///         connectionTimeoutInSeconds: 5
///       sku:
///         capacity: 1
///         name: Premium_P1
///         tier: Premium
///       tags:
///         key1: value1
///       tls:
///         clientCertEnabled: false
///       upstream:
///         templates:
///           - auth:
///               managedIdentity:
///                 resource: api://example
///               type: ManagedIdentity
///             categoryPattern: '*'
///             eventPattern: connect,disconnect
///             hubPattern: '*'
///             urlTemplate: https://example.com/chat/api/connect
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
/// $ pulumi import azure-native:signalrservice:SignalR mySignalRService /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/signalR/{resourceName}
/// ```
class SignalR extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Cross-Origin Resource Sharing (CORS) settings.
  late final pulumi.Output<SignalRCorsSettingsResponse?> cors;
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
  /// List of the featureFlags.
  ///
  /// FeatureFlags that are not included in the parameters for the update operation will not be modified.
  /// And the response will only include featureFlags that are explicitly set.
  /// When a featureFlag is not explicitly set, its globally default value will be used
  /// But keep in mind, the default value doesn't mean "false". It varies in terms of different FeatureFlags.
  late final pulumi.Output<List<Map<String, dynamic>>?> features;
  /// FQDN of the service instance.
  late final pulumi.Output<String> hostName;
  /// Deprecated.
  late final pulumi.Output<String> hostNamePrefix;
  /// A class represent managed identities used for request and response
  late final pulumi.Output<ManagedIdentityResponse?> identity;
  /// The kind of the service
  late final pulumi.Output<String?> kind;
  /// Live trace configuration of a Microsoft.SignalRService resource.
  late final pulumi.Output<LiveTraceConfigurationResponse?> liveTraceConfiguration;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network ACLs for the resource
  late final pulumi.Output<SignalRNetworkACLsResponse?> networkACLs;
  /// Private endpoint connections to the resource.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
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
  late final pulumi.Output<ResourceLogConfigurationResponse?> resourceLogConfiguration;
  /// Stop or start the resource.  Default to "False".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  late final pulumi.Output<String?> resourceStopped;
  /// The publicly accessible port of the resource which is designed for customer server side usage.
  late final pulumi.Output<int> serverPort;
  /// Serverless settings.
  late final pulumi.Output<ServerlessSettingsResponse?> serverless;
  /// The list of shared private link resources.
  late final pulumi.Output<List<Map<String, dynamic>>> sharedPrivateLinkResources;
  /// The billing information of the resource.
  late final pulumi.Output<ResourceSkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// TLS settings for the resource
  late final pulumi.Output<SignalRTlsSettingsResponse?> tls;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The settings for the Upstream when the service is in server-less mode.
  late final pulumi.Output<ServerlessUpstreamSettingsResponse?> upstream;
  /// Version of the resource. Probably you need the same or higher version of client SDKs.
  late final pulumi.Output<String> version;

  /// Creates a new [SignalR].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SignalR]. {@macro pulumi_signalrservice_signal_rargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  SignalR(
    String name, {
    SignalRArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:signalrservice:SignalR',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cors = registerOutput<SignalRCorsSettingsResponse?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignalRCorsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    disableAadAuth = registerOutput<bool?>('disableAadAuth');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    externalIP = registerOutput<String>('externalIP');
    features = registerOutput<List<Map<String, dynamic>>?>('features');
    hostName = registerOutput<String>('hostName');
    hostNamePrefix = registerOutput<String>('hostNamePrefix');
    identity = registerOutput<ManagedIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    liveTraceConfiguration = registerOutput<LiveTraceConfigurationResponse?>('liveTraceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LiveTraceConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkACLs = registerOutput<SignalRNetworkACLsResponse?>('networkACLs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignalRNetworkACLsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    publicPort = registerOutput<int>('publicPort');
    regionEndpointEnabled = registerOutput<String?>('regionEndpointEnabled');
    resourceLogConfiguration = registerOutput<ResourceLogConfigurationResponse?>('resourceLogConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceLogConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceStopped = registerOutput<String?>('resourceStopped');
    serverPort = registerOutput<int>('serverPort');
    serverless = registerOutput<ServerlessSettingsResponse?>('serverless', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sharedPrivateLinkResources = registerOutput<List<Map<String, dynamic>>>('sharedPrivateLinkResources');
    sku = registerOutput<ResourceSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tls = registerOutput<SignalRTlsSettingsResponse?>('tls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignalRTlsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    upstream = registerOutput<ServerlessUpstreamSettingsResponse?>('upstream', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessUpstreamSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
  }
}

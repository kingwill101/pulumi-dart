import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_pub_sub_hub_args.dart';
import 'web_pub_sub_hub_properties_response.dart';

/// A hub setting
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebPubSubHubs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webPubSubHub = new AzureNative.WebPubSub.WebPubSubHub("webPubSubHub", new()
///     {
///         HubName = "exampleHub",
///         Properties = new AzureNative.WebPubSub.Inputs.WebPubSubHubPropertiesArgs
///         {
///             AnonymousConnectPolicy = "allow",
///             EventHandlers = new[]
///             {
///                 new AzureNative.WebPubSub.Inputs.EventHandlerArgs
///                 {
///                     Auth = new AzureNative.WebPubSub.Inputs.UpstreamAuthSettingsArgs
///                     {
///                         ManagedIdentity = new AzureNative.WebPubSub.Inputs.ManagedIdentitySettingsArgs
///                         {
///                             Resource = "abc",
///                         },
///                         Type = AzureNative.WebPubSub.UpstreamAuthType.ManagedIdentity,
///                     },
///                     SystemEvents = new[]
///                     {
///                         "connect",
///                         "connected",
///                     },
///                     UrlTemplate = "http://host.com",
///                     UserEventPattern = "*",
///                 },
///             },
///             EventListeners = new[]
///             {
///                 new AzureNative.WebPubSub.Inputs.EventListenerArgs
///                 {
///                     Endpoint = new AzureNative.WebPubSub.Inputs.EventHubEndpointArgs
///                     {
///                         EventHubName = "eventHubName1",
///                         FullyQualifiedNamespace = "example.servicebus.windows.net",
///                         Type = "EventHub",
///                     },
///                     Filter = new AzureNative.WebPubSub.Inputs.EventNameFilterArgs
///                     {
///                         SystemEvents = new[]
///                         {
///                             "connected",
///                             "disconnected",
///                         },
///                         Type = "EventName",
///                         UserEventPattern = "*",
///                     },
///                 },
///             },
///             WebSocketKeepAliveIntervalInSeconds = 50,
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "myWebPubSubService",
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
/// 		_, err := webpubsub.NewWebPubSubHub(ctx, "webPubSubHub", &webpubsub.WebPubSubHubArgs{
/// 			HubName: pulumi.String("exampleHub"),
/// 			Properties: &webpubsub.WebPubSubHubPropertiesArgs{
/// 				AnonymousConnectPolicy: pulumi.String("allow"),
/// 				EventHandlers: webpubsub.EventHandlerArray{
/// 					&webpubsub.EventHandlerArgs{
/// 						Auth: &webpubsub.UpstreamAuthSettingsArgs{
/// 							ManagedIdentity: &webpubsub.ManagedIdentitySettingsArgs{
/// 								Resource: pulumi.String("abc"),
/// 							},
/// 							Type: pulumi.String(webpubsub.UpstreamAuthTypeManagedIdentity),
/// 						},
/// 						SystemEvents: pulumi.StringArray{
/// 							pulumi.String("connect"),
/// 							pulumi.String("connected"),
/// 						},
/// 						UrlTemplate:      pulumi.String("http://host.com"),
/// 						UserEventPattern: pulumi.String("*"),
/// 					},
/// 				},
/// 				EventListeners: webpubsub.EventListenerArray{
/// 					&webpubsub.EventListenerArgs{
/// 						Endpoint: &webpubsub.EventHubEndpointArgs{
/// 							EventHubName:            pulumi.String("eventHubName1"),
/// 							FullyQualifiedNamespace: pulumi.String("example.servicebus.windows.net"),
/// 							Type:                    pulumi.String("EventHub"),
/// 						},
/// 						Filter: &webpubsub.EventNameFilterArgs{
/// 							SystemEvents: pulumi.StringArray{
/// 								pulumi.String("connected"),
/// 								pulumi.String("disconnected"),
/// 							},
/// 							Type:             pulumi.String("EventName"),
/// 							UserEventPattern: pulumi.String("*"),
/// 						},
/// 					},
/// 				},
/// 				WebSocketKeepAliveIntervalInSeconds: pulumi.Int(50),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("myWebPubSubService"),
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
/// import com.pulumi.azurenative.webpubsub.WebPubSubHub;
/// import com.pulumi.azurenative.webpubsub.WebPubSubHubArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.WebPubSubHubPropertiesArgs;
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
///         var webPubSubHub = new WebPubSubHub("webPubSubHub", WebPubSubHubArgs.builder()
///             .hubName("exampleHub")
///             .properties(WebPubSubHubPropertiesArgs.builder()
///                 .anonymousConnectPolicy("allow")
///                 .eventHandlers(EventHandlerArgs.builder()
///                     .auth(UpstreamAuthSettingsArgs.builder()
///                         .managedIdentity(ManagedIdentitySettingsArgs.builder()
///                             .resource("abc")
///                             .build())
///                         .type("ManagedIdentity")
///                         .build())
///                     .systemEvents(
///                         "connect",
///                         "connected")
///                     .urlTemplate("http://host.com")
///                     .userEventPattern("*")
///                     .build())
///                 .eventListeners(EventListenerArgs.builder()
///                     .endpoint(Map.ofEntries(
///                         Map.entry("eventHubName", "eventHubName1"),
///                         Map.entry("fullyQualifiedNamespace", "example.servicebus.windows.net"),
///                         Map.entry("type", "EventHub")
///                     ))
///                     .filter(Map.ofEntries(
///                         Map.entry("systemEvents",
///                             "connected",
///                             "disconnected"),
///                         Map.entry("type", "EventName"),
///                         Map.entry("userEventPattern", "*")
///                     ))
///                     .build())
///                 .webSocketKeepAliveIntervalInSeconds(50)
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("myWebPubSubService")
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
/// const webPubSubHub = new azure_native.webpubsub.WebPubSubHub("webPubSubHub", {
///     hubName: "exampleHub",
///     properties: {
///         anonymousConnectPolicy: "allow",
///         eventHandlers: [{
///             auth: {
///                 managedIdentity: {
///                     resource: "abc",
///                 },
///                 type: azure_native.webpubsub.UpstreamAuthType.ManagedIdentity,
///             },
///             systemEvents: [
///                 "connect",
///                 "connected",
///             ],
///             urlTemplate: "http://host.com",
///             userEventPattern: "*",
///         }],
///         eventListeners: [{
///             endpoint: {
///                 eventHubName: "eventHubName1",
///                 fullyQualifiedNamespace: "example.servicebus.windows.net",
///                 type: "EventHub",
///             },
///             filter: {
///                 systemEvents: [
///                     "connected",
///                     "disconnected",
///                 ],
///                 type: "EventName",
///                 userEventPattern: "*",
///             },
///         }],
///         webSocketKeepAliveIntervalInSeconds: 50,
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "myWebPubSubService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_pub_sub_hub = azure_native.webpubsub.WebPubSubHub("webPubSubHub",
///     hub_name="exampleHub",
///     properties={
///         "anonymous_connect_policy": "allow",
///         "event_handlers": [{
///             "auth": {
///                 "managed_identity": {
///                     "resource": "abc",
///                 },
///                 "type": azure_native.webpubsub.UpstreamAuthType.MANAGED_IDENTITY,
///             },
///             "system_events": [
///                 "connect",
///                 "connected",
///             ],
///             "url_template": "http://host.com",
///             "user_event_pattern": "*",
///         }],
///         "event_listeners": [{
///             "endpoint": {
///                 "event_hub_name": "eventHubName1",
///                 "fully_qualified_namespace": "example.servicebus.windows.net",
///                 "type": "EventHub",
///             },
///             "filter": {
///                 "system_events": [
///                     "connected",
///                     "disconnected",
///                 ],
///                 "type": "EventName",
///                 "user_event_pattern": "*",
///             },
///         }],
///         "web_socket_keep_alive_interval_in_seconds": 50,
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="myWebPubSubService")
///
/// ```
///
/// ```yaml
/// resources:
///   webPubSubHub:
///     type: azure-native:webpubsub:WebPubSubHub
///     properties:
///       hubName: exampleHub
///       properties:
///         anonymousConnectPolicy: allow
///         eventHandlers:
///           - auth:
///               managedIdentity:
///                 resource: abc
///               type: ManagedIdentity
///             systemEvents:
///               - connect
///               - connected
///             urlTemplate: http://host.com
///             userEventPattern: '*'
///         eventListeners:
///           - endpoint:
///               eventHubName: eventHubName1
///               fullyQualifiedNamespace: example.servicebus.windows.net
///               type: EventHub
///             filter:
///               systemEvents:
///                 - connected
///                 - disconnected
///               type: EventName
///               userEventPattern: '*'
///         webSocketKeepAliveIntervalInSeconds: 50
///       resourceGroupName: myResourceGroup
///       resourceName: myWebPubSubService
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
/// $ pulumi import azure-native:webpubsub:WebPubSubHub exampleHub /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/webPubSub/{resourceName}/hubs/{hubName}
/// ```
class WebPubSubHub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of a hub.
  late final pulumi.Output<WebPubSubHubPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebPubSubHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebPubSubHub]. {@macro pulumi_webpubsub_web_pub_sub_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebPubSubHub(
    String name, {
    WebPubSubHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:webpubsub:WebPubSubHub',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WebPubSubHubPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WebPubSubHubPropertiesResponse.fromMap(
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
    type = registerOutput<String>('type');
  }
}

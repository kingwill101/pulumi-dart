import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_args.dart';
import 'hub_state.dart';

/// Manages the hub settings for a Web Pubsub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "terraform-webpubsub",
///     location: "east us",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "tfex-uai",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleService = new azure.webpubsub.Service("example", {
///     name: "tfex-webpubsub",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard_S1",
///     capacity: 1,
/// });
/// const exampleHub = new azure.webpubsub.Hub("example", {
///     name: "tfex_wpsh",
///     webPubsubId: exampleService.id,
///     eventHandlers: [
///         {
///             urlTemplate: "https://test.com/api/{hub}/{event}",
///             userEventPattern: "*",
///             systemEvents: [
///                 "connect",
///                 "connected",
///             ],
///         },
///         {
///             urlTemplate: "https://test.com/api/{hub}/{event}",
///             userEventPattern: "event1, event2",
///             systemEvents: ["connected"],
///             auth: {
///                 managedIdentityId: exampleUserAssignedIdentity.id,
///             },
///         },
///     ],
///     eventListeners: [
///         {
///             systemEventNameFilters: ["connected"],
///             userEventNameFilters: [
///                 "event1",
///                 "event2",
///             ],
///             eventhubNamespaceName: test.name,
///             eventhubName: test1.name,
///         },
///         {
///             systemEventNameFilters: ["connected"],
///             userEventNameFilters: ["*"],
///             eventhubNamespaceName: test.name,
///             eventhubName: test1.name,
///         },
///         {
///             systemEventNameFilters: ["connected"],
///             userEventNameFilters: ["event1"],
///             eventhubNamespaceName: test.name,
///             eventhubName: test1.name,
///         },
///     ],
///     anonymousConnectionsEnabled: true,
/// }, {
///     dependsOn: [exampleService],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="terraform-webpubsub",
///     location="east us")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="tfex-uai",
///     resource_group_name=example.name,
///     location=example.location)
/// example_service = azure.webpubsub.Service("example",
///     name="tfex-webpubsub",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard_S1",
///     capacity=1)
/// example_hub = azure.webpubsub.Hub("example",
///     name="tfex_wpsh",
///     web_pubsub_id=example_service.id,
///     event_handlers=[
///         {
///             "url_template": "https://test.com/api/{hub}/{event}",
///             "user_event_pattern": "*",
///             "system_events": [
///                 "connect",
///                 "connected",
///             ],
///         },
///         {
///             "url_template": "https://test.com/api/{hub}/{event}",
///             "user_event_pattern": "event1, event2",
///             "system_events": ["connected"],
///             "auth": {
///                 "managed_identity_id": example_user_assigned_identity.id,
///             },
///         },
///     ],
///     event_listeners=[
///         {
///             "system_event_name_filters": ["connected"],
///             "user_event_name_filters": [
///                 "event1",
///                 "event2",
///             ],
///             "eventhub_namespace_name": test["name"],
///             "eventhub_name": test1["name"],
///         },
///         {
///             "system_event_name_filters": ["connected"],
///             "user_event_name_filters": ["*"],
///             "eventhub_namespace_name": test["name"],
///             "eventhub_name": test1["name"],
///         },
///         {
///             "system_event_name_filters": ["connected"],
///             "user_event_name_filters": ["event1"],
///             "eventhub_namespace_name": test["name"],
///             "eventhub_name": test1["name"],
///         },
///     ],
///     anonymous_connections_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[example_service]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "terraform-webpubsub",
///         Location = "east us",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "tfex-uai",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleService = new Azure.WebPubSub.Service("example", new()
///     {
///         Name = "tfex-webpubsub",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard_S1",
///         Capacity = 1,
///     });
///
///     var exampleHub = new Azure.WebPubSub.Hub("example", new()
///     {
///         Name = "tfex_wpsh",
///         WebPubsubId = exampleService.Id,
///         EventHandlers = new[]
///         {
///             new Azure.WebPubSub.Inputs.HubEventHandlerArgs
///             {
///                 UrlTemplate = "https://test.com/api/{hub}/{event}",
///                 UserEventPattern = "*",
///                 SystemEvents = new[]
///                 {
///                     "connect",
///                     "connected",
///                 },
///             },
///             new Azure.WebPubSub.Inputs.HubEventHandlerArgs
///             {
///                 UrlTemplate = "https://test.com/api/{hub}/{event}",
///                 UserEventPattern = "event1, event2",
///                 SystemEvents = new[]
///                 {
///                     "connected",
///                 },
///                 Auth = new Azure.WebPubSub.Inputs.HubEventHandlerAuthArgs
///                 {
///                     ManagedIdentityId = exampleUserAssignedIdentity.Id,
///                 },
///             },
///         },
///         EventListeners = new[]
///         {
///             new Azure.WebPubSub.Inputs.HubEventListenerArgs
///             {
///                 SystemEventNameFilters = new[]
///                 {
///                     "connected",
///                 },
///                 UserEventNameFilters = new[]
///                 {
///                     "event1",
///                     "event2",
///                 },
///                 EventhubNamespaceName = test.Name,
///                 EventhubName = test1.Name,
///             },
///             new Azure.WebPubSub.Inputs.HubEventListenerArgs
///             {
///                 SystemEventNameFilters = new[]
///                 {
///                     "connected",
///                 },
///                 UserEventNameFilters = new[]
///                 {
///                     "*",
///                 },
///                 EventhubNamespaceName = test.Name,
///                 EventhubName = test1.Name,
///             },
///             new Azure.WebPubSub.Inputs.HubEventListenerArgs
///             {
///                 SystemEventNameFilters = new[]
///                 {
///                     "connected",
///                 },
///                 UserEventNameFilters = new[]
///                 {
///                     "event1",
///                 },
///                 EventhubNamespaceName = test.Name,
///                 EventhubName = test1.Name,
///             },
///         },
///         AnonymousConnectionsEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleService,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/webpubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("terraform-webpubsub"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("tfex-uai"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := webpubsub.NewService(ctx, "example", &webpubsub.ServiceArgs{
/// 			Name:              pulumi.String("tfex-webpubsub"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard_S1"),
/// 			Capacity:          pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = webpubsub.NewHub(ctx, "example", &webpubsub.HubArgs{
/// 			Name:        pulumi.String("tfex_wpsh"),
/// 			WebPubsubId: exampleService.ID(),
/// 			EventHandlers: webpubsub.HubEventHandlerArray{
/// 				&webpubsub.HubEventHandlerArgs{
/// 					UrlTemplate:      pulumi.String("https://test.com/api/{hub}/{event}"),
/// 					UserEventPattern: pulumi.String("*"),
/// 					SystemEvents: pulumi.StringArray{
/// 						pulumi.String("connect"),
/// 						pulumi.String("connected"),
/// 					},
/// 				},
/// 				&webpubsub.HubEventHandlerArgs{
/// 					UrlTemplate:      pulumi.String("https://test.com/api/{hub}/{event}"),
/// 					UserEventPattern: pulumi.String("event1, event2"),
/// 					SystemEvents: pulumi.StringArray{
/// 						pulumi.String("connected"),
/// 					},
/// 					Auth: &webpubsub.HubEventHandlerAuthArgs{
/// 						ManagedIdentityId: exampleUserAssignedIdentity.ID(),
/// 					},
/// 				},
/// 			},
/// 			EventListeners: webpubsub.HubEventListenerArray{
/// 				&webpubsub.HubEventListenerArgs{
/// 					SystemEventNameFilters: pulumi.StringArray{
/// 						pulumi.String("connected"),
/// 					},
/// 					UserEventNameFilters: pulumi.StringArray{
/// 						pulumi.String("event1"),
/// 						pulumi.String("event2"),
/// 					},
/// 					EventhubNamespaceName: pulumi.Any(test.Name),
/// 					EventhubName:          pulumi.Any(test1.Name),
/// 				},
/// 				&webpubsub.HubEventListenerArgs{
/// 					SystemEventNameFilters: pulumi.StringArray{
/// 						pulumi.String("connected"),
/// 					},
/// 					UserEventNameFilters: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					EventhubNamespaceName: pulumi.Any(test.Name),
/// 					EventhubName:          pulumi.Any(test1.Name),
/// 				},
/// 				&webpubsub.HubEventListenerArgs{
/// 					SystemEventNameFilters: pulumi.StringArray{
/// 						pulumi.String("connected"),
/// 					},
/// 					UserEventNameFilters: pulumi.StringArray{
/// 						pulumi.String("event1"),
/// 					},
/// 					EventhubNamespaceName: pulumi.Any(test.Name),
/// 					EventhubName:          pulumi.Any(test1.Name),
/// 				},
/// 			},
/// 			AnonymousConnectionsEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.webpubsub.Service;
/// import com.pulumi.azure.webpubsub.ServiceArgs;
/// import com.pulumi.azure.webpubsub.Hub;
/// import com.pulumi.azure.webpubsub.HubArgs;
/// import com.pulumi.azure.webpubsub.inputs.HubEventHandlerArgs;
/// import com.pulumi.azure.webpubsub.inputs.HubEventHandlerAuthArgs;
/// import com.pulumi.azure.webpubsub.inputs.HubEventListenerArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("terraform-webpubsub")
///             .location("east us")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("tfex-uai")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("tfex-webpubsub")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard_S1")
///             .capacity(1)
///             .build());
///
///         var exampleHub = new Hub("exampleHub", HubArgs.builder()
///             .name("tfex_wpsh")
///             .webPubsubId(exampleService.id())
///             .eventHandlers(
///                 HubEventHandlerArgs.builder()
///                     .urlTemplate("https://test.com/api/{hub}/{event}")
///                     .userEventPattern("*")
///                     .systemEvents(
///                         "connect",
///                         "connected")
///                     .build(),
///                 HubEventHandlerArgs.builder()
///                     .urlTemplate("https://test.com/api/{hub}/{event}")
///                     .userEventPattern("event1, event2")
///                     .systemEvents("connected")
///                     .auth(HubEventHandlerAuthArgs.builder()
///                         .managedIdentityId(exampleUserAssignedIdentity.id())
///                         .build())
///                     .build())
///             .eventListeners(
///                 HubEventListenerArgs.builder()
///                     .systemEventNameFilters("connected")
///                     .userEventNameFilters(
///                         "event1",
///                         "event2")
///                     .eventhubNamespaceName(test.name())
///                     .eventhubName(test1.name())
///                     .build(),
///                 HubEventListenerArgs.builder()
///                     .systemEventNameFilters("connected")
///                     .userEventNameFilters("*")
///                     .eventhubNamespaceName(test.name())
///                     .eventhubName(test1.name())
///                     .build(),
///                 HubEventListenerArgs.builder()
///                     .systemEventNameFilters("connected")
///                     .userEventNameFilters("event1")
///                     .eventhubNamespaceName(test.name())
///                     .eventhubName(test1.name())
///                     .build())
///             .anonymousConnectionsEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleService)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: terraform-webpubsub
///       location: east us
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: tfex-uai
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleService:
///     type: azure:webpubsub:Service
///     name: example
///     properties:
///       name: tfex-webpubsub
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard_S1
///       capacity: 1
///   exampleHub:
///     type: azure:webpubsub:Hub
///     name: example
///     properties:
///       name: tfex_wpsh
///       webPubsubId: ${exampleService.id}
///       eventHandlers:
///         - urlTemplate: https://test.com/api/{hub}/{event}
///           userEventPattern: '*'
///           systemEvents:
///             - connect
///             - connected
///         - urlTemplate: https://test.com/api/{hub}/{event}
///           userEventPattern: event1, event2
///           systemEvents:
///             - connected
///           auth:
///             managedIdentityId: ${exampleUserAssignedIdentity.id}
///       eventListeners:
///         - systemEventNameFilters:
///             - connected
///           userEventNameFilters:
///             - event1
///             - event2
///           eventhubNamespaceName: ${test.name}
///           eventhubName: ${test1.name}
///         - systemEventNameFilters:
///             - connected
///           userEventNameFilters:
///             - '*'
///           eventhubNamespaceName: ${test.name}
///           eventhubName: ${test1.name}
///         - systemEventNameFilters:
///             - connected
///           userEventNameFilters:
///             - event1
///           eventhubNamespaceName: ${test.name}
///           eventhubName: ${test1.name}
///       anonymousConnectionsEnabled: true
///     options:
///       dependsOn:
///         - ${exampleService}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
///
/// ## Import
///
/// Web Pubsub Hub can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:webpubsub/hub:Hub example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/webPubSub/webPubSub1/hubs/webPubSubhub1
/// ```
class Hub extends pulumi.CustomResource {
  /// Is anonymous connections are allowed for this hub? Defaults to `false`.
  /// Possible values are `true`, `false`.
  late final pulumi.Output<bool?> anonymousConnectionsEnabled;

  /// An `event_handler` block as defined below.
  ///
  /// &gt; **Note:** User can change the order of `event_handler` to change the priority accordingly.
  late final pulumi.Output<List<Map<String, dynamic>>?> eventHandlers;

  /// An `event_listener` block as defined below.
  ///
  /// &gt; **Note:** The managed identity of Web PubSub service must be enabled and the identity must have the "Azure Event Hubs Data sender" role to access the Event Hub.
  late final pulumi.Output<List<Map<String, dynamic>>?> eventListeners;

  /// The name of the Web Pubsub hub service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the id of the Web Pubsub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> webPubsubId;

  /// Creates a new [Hub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hub]. {@macro pulumi_webpubsub_hub_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hub(String name, {HubArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:webpubsub/hub:Hub',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    anonymousConnectionsEnabled = registerOutput<bool?>(
      'anonymousConnectionsEnabled',
    );
    eventHandlers = registerOutput<List<Map<String, dynamic>>?>(
      'eventHandlers',
    );
    eventListeners = registerOutput<List<Map<String, dynamic>>?>(
      'eventListeners',
    );
    this.name = registerOutput<String>('name');
    webPubsubId = registerOutput<String>('webPubsubId');
  }

  /// Gets an existing [Hub] resource's state with the given [name] and [id].
  static Hub get(String name, pulumi.Input<String> id, {HubState? state}) {
    return Hub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Hub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:webpubsub/hub:Hub',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    anonymousConnectionsEnabled = registerOutput<bool?>(
      'anonymousConnectionsEnabled',
    );
    eventHandlers = registerOutput<List<Map<String, dynamic>>?>(
      'eventHandlers',
    );
    eventListeners = registerOutput<List<Map<String, dynamic>>?>(
      'eventListeners',
    );
    this.name = registerOutput<String>('name');
    webPubsubId = registerOutput<String>('webPubsubId');
  }
}

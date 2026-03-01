import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_eventhub_args.dart';
import 'endpoint_eventhub_state.dart';

/// Manages an IotHub EventHub Endpoint
///
/// > **Note:** Endpoints can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azure.iot.IoTHub` resource is not supported.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "exampleEventHubNamespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Basic",
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "exampleEventHub",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: example.name,
///     partitionCount: 2,
///     messageRetention: 1,
/// });
/// const exampleAuthorizationRule = new azure.eventhub.AuthorizationRule("example", {
///     name: "exampleRule",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: example.name,
///     listen: false,
///     send: true,
///     manage: false,
/// });
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "exampleIothub",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "B1",
///         capacity: 1,
///     },
///     tags: {
///         purpose: "example",
///     },
/// });
/// const exampleEndpointEventhub = new azure.iot.EndpointEventhub("example", {
///     resourceGroupName: example.name,
///     iothubId: exampleIoTHub.id,
///     name: "example",
///     connectionString: exampleAuthorizationRule.primaryConnectionString,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="exampleEventHubNamespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Basic")
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="exampleEventHub",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example.name,
///     partition_count=2,
///     message_retention=1)
/// example_authorization_rule = azure.eventhub.AuthorizationRule("example",
///     name="exampleRule",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example.name,
///     listen=False,
///     send=True,
///     manage=False)
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="exampleIothub",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "B1",
///         "capacity": 1,
///     },
///     tags={
///         "purpose": "example",
///     })
/// example_endpoint_eventhub = azure.iot.EndpointEventhub("example",
///     resource_group_name=example.name,
///     iothub_id=example_io_t_hub.id,
///     name="example",
///     connection_string=example_authorization_rule.primary_connection_string)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "exampleEventHubNamespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Basic",
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "exampleEventHub",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = example.Name,
///         PartitionCount = 2,
///         MessageRetention = 1,
///     });
///
///     var exampleAuthorizationRule = new Azure.EventHub.AuthorizationRule("example", new()
///     {
///         Name = "exampleRule",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = example.Name,
///         Listen = false,
///         Send = true,
///         Manage = false,
///     });
///
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "exampleIothub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "B1",
///             Capacity = 1,
///         },
///         Tags =
///         {
///             { "purpose", "example" },
///         },
///     });
///
///     var exampleEndpointEventhub = new Azure.Iot.EndpointEventhub("example", new()
///     {
///         ResourceGroupName = example.Name,
///         IothubId = exampleIoTHub.Id,
///         Name = "example",
///         ConnectionString = exampleAuthorizationRule.PrimaryConnectionString,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("exampleEventHubNamespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("exampleEventHub"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			PartitionCount:    pulumi.Int(2),
/// 			MessageRetention:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAuthorizationRule, err := eventhub.NewAuthorizationRule(ctx, "example", &eventhub.AuthorizationRuleArgs{
/// 			Name:              pulumi.String("exampleRule"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: example.Name,
/// 			Listen:            pulumi.Bool(false),
/// 			Send:              pulumi.Bool(true),
/// 			Manage:            pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("exampleIothub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("B1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"purpose": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewEndpointEventhub(ctx, "example", &iot.EndpointEventhubArgs{
/// 			ResourceGroupName: example.Name,
/// 			IothubId:          exampleIoTHub.ID(),
/// 			Name:              pulumi.String("example"),
/// 			ConnectionString:  exampleAuthorizationRule.PrimaryConnectionString,
/// 		})
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
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.AuthorizationRule;
/// import com.pulumi.azure.eventhub.AuthorizationRuleArgs;
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.EndpointEventhub;
/// import com.pulumi.azure.iot.EndpointEventhubArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("exampleEventHubNamespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Basic")
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("exampleEventHub")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(example.name())
///             .partitionCount(2)
///             .messageRetention(1)
///             .build());
///
///         var exampleAuthorizationRule = new AuthorizationRule("exampleAuthorizationRule", AuthorizationRuleArgs.builder()
///             .name("exampleRule")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(example.name())
///             .listen(false)
///             .send(true)
///             .manage(false)
///             .build());
///
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("exampleIothub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("B1")
///                 .capacity(1)
///                 .build())
///             .tags(Map.of("purpose", "example"))
///             .build());
///
///         var exampleEndpointEventhub = new EndpointEventhub("exampleEndpointEventhub", EndpointEventhubArgs.builder()
///             .resourceGroupName(example.name())
///             .iothubId(exampleIoTHub.id())
///             .name("example")
///             .connectionString(exampleAuthorizationRule.primaryConnectionString())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: exampleEventHubNamespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Basic
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: exampleEventHub
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${example.name}
///       partitionCount: 2
///       messageRetention: 1
///   exampleAuthorizationRule:
///     type: azure:eventhub:AuthorizationRule
///     name: example
///     properties:
///       name: exampleRule
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${example.name}
///       listen: false
///       send: true
///       manage: false
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: exampleIothub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: B1
///         capacity: '1'
///       tags:
///         purpose: example
///   exampleEndpointEventhub:
///     type: azure:iot:EndpointEventhub
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       iothubId: ${exampleIoTHub.id}
///       name: example
///       connectionString: ${exampleAuthorizationRule.primaryConnectionString}
/// ```
///
///
/// ## Import
///
/// IoTHub EventHub Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/endpointEventhub:EndpointEventhub eventhub1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/endpoints/eventhub_endpoint1
/// ```
class EndpointEventhub extends pulumi.CustomResource {
  /// Type used to authenticate against the Event Hub endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  late final pulumi.Output<String?> authenticationType;
  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  late final pulumi.Output<String?> connectionString;
  /// URI of the Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  late final pulumi.Output<String?> endpointUri;
  /// Name of the Event Hub. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  late final pulumi.Output<String?> entityPath;
  /// ID of the User Managed Identity used to authenticate against the Event Hub endpoint.
  ///
  /// > **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the Iot Hub. If not specified when `authentication_type` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  late final pulumi.Output<String?> identityId;
  /// The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubId;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group under which the Event Hub has been created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// > **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [EndpointEventhub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointEventhub]. {@macro pulumi_iot_endpoint_eventhub_endpoint_eventhub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointEventhub(
    String name, {
    EndpointEventhubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointEventhub:EndpointEventhub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationType = registerOutput<String?>('authenticationType');
    this.connectionString = registerOutput<String?>('connectionString');
    this.endpointUri = registerOutput<String?>('endpointUri');
    this.entityPath = registerOutput<String?>('entityPath');
    this.identityId = registerOutput<String?>('identityId');
    this.iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [EndpointEventhub] resource's state with the given [name] and [id].
  static EndpointEventhub get(
    String name,
    pulumi.Input<String> id, {
    EndpointEventhubState? state,
  }) {
    return EndpointEventhub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointEventhub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointEventhub:EndpointEventhub',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationType = registerOutput<String?>('authenticationType');
    this.connectionString = registerOutput<String?>('connectionString');
    this.endpointUri = registerOutput<String?>('endpointUri');
    this.entityPath = registerOutput<String?>('entityPath');
    this.identityId = registerOutput<String?>('identityId');
    this.iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}

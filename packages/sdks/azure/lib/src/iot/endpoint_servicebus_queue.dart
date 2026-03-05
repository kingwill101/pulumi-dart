import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_servicebus_queue_args.dart';
import 'endpoint_servicebus_queue_state.dart';

/// Manages an IotHub ServiceBus Queue Endpoint
///
/// &gt; **Note:** Endpoints can be defined either directly on the `azure.iot.IoTHub` resource, or using the `azurerm_iothub_endpoint_*` resources - but the two ways of defining the endpoints cannot be used together. If both are used against the same IoTHub, spurious changes will occur. Also, defining a `azurerm_iothub_endpoint_*` resource and another endpoint of a different type directly on the `azure.iot.IoTHub` resource is not supported.
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
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "exampleNamespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleQueue = new azure.servicebus.Queue("example", {
///     name: "exampleQueue",
///     namespaceId: exampleNamespace.id,
///     enablePartitioning: true,
/// });
/// const exampleQueueAuthorizationRule = new azure.servicebus.QueueAuthorizationRule("example", {
///     name: "exampleRule",
///     queueId: exampleQueue.id,
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
/// const exampleEndpointServicebusQueue = new azure.iot.EndpointServicebusQueue("example", {
///     resourceGroupName: example.name,
///     iothubId: exampleIoTHub.id,
///     name: "example",
///     connectionString: exampleQueueAuthorizationRule.primaryConnectionString,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="exampleNamespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_queue = azure.servicebus.Queue("example",
///     name="exampleQueue",
///     namespace_id=example_namespace.id,
///     enable_partitioning=True)
/// example_queue_authorization_rule = azure.servicebus.QueueAuthorizationRule("example",
///     name="exampleRule",
///     queue_id=example_queue.id,
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
/// example_endpoint_servicebus_queue = azure.iot.EndpointServicebusQueue("example",
///     resource_group_name=example.name,
///     iothub_id=example_io_t_hub.id,
///     name="example",
///     connection_string=example_queue_authorization_rule.primary_connection_string)
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
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "exampleNamespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleQueue = new Azure.ServiceBus.Queue("example", new()
///     {
///         Name = "exampleQueue",
///         NamespaceId = exampleNamespace.Id,
///         EnablePartitioning = true,
///     });
///
///     var exampleQueueAuthorizationRule = new Azure.ServiceBus.QueueAuthorizationRule("example", new()
///     {
///         Name = "exampleRule",
///         QueueId = exampleQueue.Id,
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
///     var exampleEndpointServicebusQueue = new Azure.Iot.EndpointServicebusQueue("example", new()
///     {
///         ResourceGroupName = example.Name,
///         IothubId = exampleIoTHub.Id,
///         Name = "example",
///         ConnectionString = exampleQueueAuthorizationRule.PrimaryConnectionString,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
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
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("exampleNamespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleQueue, err := servicebus.NewQueue(ctx, "example", &servicebus.QueueArgs{
/// 			Name:               pulumi.String("exampleQueue"),
/// 			NamespaceId:        exampleNamespace.ID(),
/// 			EnablePartitioning: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleQueueAuthorizationRule, err := servicebus.NewQueueAuthorizationRule(ctx, "example", &servicebus.QueueAuthorizationRuleArgs{
/// 			Name:    pulumi.String("exampleRule"),
/// 			QueueId: exampleQueue.ID(),
/// 			Listen:  pulumi.Bool(false),
/// 			Send:    pulumi.Bool(true),
/// 			Manage:  pulumi.Bool(false),
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
/// 		_, err = iot.NewEndpointServicebusQueue(ctx, "example", &iot.EndpointServicebusQueueArgs{
/// 			ResourceGroupName: example.Name,
/// 			IothubId:          exampleIoTHub.ID(),
/// 			Name:              pulumi.String("example"),
/// 			ConnectionString:  exampleQueueAuthorizationRule.PrimaryConnectionString,
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
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.Queue;
/// import com.pulumi.azure.servicebus.QueueArgs;
/// import com.pulumi.azure.servicebus.QueueAuthorizationRule;
/// import com.pulumi.azure.servicebus.QueueAuthorizationRuleArgs;
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.EndpointServicebusQueue;
/// import com.pulumi.azure.iot.EndpointServicebusQueueArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("exampleNamespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleQueue = new Queue("exampleQueue", QueueArgs.builder()
///             .name("exampleQueue")
///             .namespaceId(exampleNamespace.id())
///             .enablePartitioning(true)
///             .build());
///
///         var exampleQueueAuthorizationRule = new QueueAuthorizationRule("exampleQueueAuthorizationRule", QueueAuthorizationRuleArgs.builder()
///             .name("exampleRule")
///             .queueId(exampleQueue.id())
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
///         var exampleEndpointServicebusQueue = new EndpointServicebusQueue("exampleEndpointServicebusQueue", EndpointServicebusQueueArgs.builder()
///             .resourceGroupName(example.name())
///             .iothubId(exampleIoTHub.id())
///             .name("example")
///             .connectionString(exampleQueueAuthorizationRule.primaryConnectionString())
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
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: exampleNamespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleQueue:
///     type: azure:servicebus:Queue
///     name: example
///     properties:
///       name: exampleQueue
///       namespaceId: ${exampleNamespace.id}
///       enablePartitioning: true
///   exampleQueueAuthorizationRule:
///     type: azure:servicebus:QueueAuthorizationRule
///     name: example
///     properties:
///       name: exampleRule
///       queueId: ${exampleQueue.id}
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
///   exampleEndpointServicebusQueue:
///     type: azure:iot:EndpointServicebusQueue
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       iothubId: ${exampleIoTHub.id}
///       name: example
///       connectionString: ${exampleQueueAuthorizationRule.primaryConnectionString}
/// ```
///
///
/// ## Import
///
/// IoTHub ServiceBus Queue Endpoint can be imported using the `resource id`, e.g.
/// g
/// ```sh
/// $ pulumi import azure:iot/endpointServicebusQueue:EndpointServicebusQueue servicebus_queue1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/endpoints/servicebusqueue_endpoint1
/// ```
class EndpointServicebusQueue extends pulumi.CustomResource {
  /// Type used to authenticate against the Service Bus Queue endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  late final pulumi.Output<String?> authenticationType;
  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  late final pulumi.Output<String?> connectionString;
  /// URI of the Service Bus endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  late final pulumi.Output<String?> endpointUri;
  /// Name of the Service Bus Queue. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  late final pulumi.Output<String?> entityPath;
  /// ID of the User Managed Identity used to authenticate against the Service Bus Queue endpoint.
  ///
  /// &gt; **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the Iot Hub. If not specified when `authentication_type` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  late final pulumi.Output<String?> identityId;
  /// The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubId;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group under which the Service Bus Queue has been created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// &gt; **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [EndpointServicebusQueue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointServicebusQueue]. {@macro pulumi_iot_endpoint_servicebus_queue_endpoint_servicebus_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointServicebusQueue(
    String name, {
    EndpointServicebusQueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointServicebusQueue:EndpointServicebusQueue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationType = registerOutput<String?>('authenticationType');
    connectionString = registerOutput<String?>('connectionString');
    endpointUri = registerOutput<String?>('endpointUri');
    entityPath = registerOutput<String?>('entityPath');
    identityId = registerOutput<String?>('identityId');
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [EndpointServicebusQueue] resource's state with the given [name] and [id].
  static EndpointServicebusQueue get(
    String name,
    pulumi.Input<String> id, {
    EndpointServicebusQueueState? state,
  }) {
    return EndpointServicebusQueue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointServicebusQueue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iot/endpointServicebusQueue:EndpointServicebusQueue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationType = registerOutput<String?>('authenticationType');
    connectionString = registerOutput<String?>('connectionString');
    endpointUri = registerOutput<String?>('endpointUri');
    entityPath = registerOutput<String?>('entityPath');
    identityId = registerOutput<String?>('identityId');
    iothubId = registerOutput<String>('iothubId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subscriptionId = registerOutput<String>('subscriptionId');
  }
}

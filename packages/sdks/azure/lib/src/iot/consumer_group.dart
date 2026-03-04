import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_group_args.dart';
import 'consumer_group_state.dart';

/// Manages a Consumer Group within an IotHub
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
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "test",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: {
///         name: "S1",
///         capacity: 1,
///     },
///     tags: {
///         purpose: "testing",
///     },
/// });
/// const exampleConsumerGroup = new azure.iot.ConsumerGroup("example", {
///     name: "group",
///     iothubName: exampleIoTHub.name,
///     eventhubEndpointName: "events",
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="test",
///     resource_group_name=example.name,
///     location=example.location,
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     },
///     tags={
///         "purpose": "testing",
///     })
/// example_consumer_group = azure.iot.ConsumerGroup("example",
///     name="group",
///     iothub_name=example_io_t_hub.name,
///     eventhub_endpoint_name="events",
///     resource_group_name=example.name)
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
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "test",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
///         },
///         Tags =
///         {
///             { "purpose", "testing" },
///         },
///     });
///
///     var exampleConsumerGroup = new Azure.Iot.ConsumerGroup("example", new()
///     {
///         Name = "group",
///         IothubName = exampleIoTHub.Name,
///         EventhubEndpointName = "events",
///         ResourceGroupName = example.Name,
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
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("test"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"purpose": pulumi.String("testing"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewConsumerGroup(ctx, "example", &iot.ConsumerGroupArgs{
/// 			Name:                 pulumi.String("group"),
/// 			IothubName:           exampleIoTHub.Name,
/// 			EventhubEndpointName: pulumi.String("events"),
/// 			ResourceGroupName:    example.Name,
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
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.iot.ConsumerGroup;
/// import com.pulumi.azure.iot.ConsumerGroupArgs;
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
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("test")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
///                 .build())
///             .tags(Map.of("purpose", "testing"))
///             .build());
///
///         var exampleConsumerGroup = new ConsumerGroup("exampleConsumerGroup", ConsumerGroupArgs.builder()
///             .name("group")
///             .iothubName(exampleIoTHub.name())
///             .eventhubEndpointName("events")
///             .resourceGroupName(example.name())
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
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: test
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku:
///         name: S1
///         capacity: '1'
///       tags:
///         purpose: testing
///   exampleConsumerGroup:
///     type: azure:iot:ConsumerGroup
///     name: example
///     properties:
///       name: group
///       iothubName: ${exampleIoTHub.name}
///       eventhubEndpointName: events
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## Import
///
/// IoTHub Consumer Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iot/consumerGroup:ConsumerGroup group1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Devices/iotHubs/hub1/eventHubEndpoints/events/consumerGroups/group1
/// ```
class ConsumerGroup extends pulumi.CustomResource {
  /// The name of the Event Hub-compatible endpoint in the IoT hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubEndpointName;

  /// The name of the IoT Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iothubName;

  /// The name of this Consumer Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group that contains the IoT hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ConsumerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsumerGroup]. {@macro pulumi_iot_consumer_group_consumer_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsumerGroup(
    String name, {
    ConsumerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/consumerGroup:ConsumerGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    eventhubEndpointName = registerOutput<String>('eventhubEndpointName');
    iothubName = registerOutput<String>('iothubName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ConsumerGroup] resource's state with the given [name] and [id].
  static ConsumerGroup get(
    String name,
    pulumi.Input<String> id, {
    ConsumerGroupState? state,
  }) {
    return ConsumerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConsumerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:iot/consumerGroup:ConsumerGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    eventhubEndpointName = registerOutput<String>('eventhubEndpointName');
    iothubName = registerOutput<String>('iothubName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}

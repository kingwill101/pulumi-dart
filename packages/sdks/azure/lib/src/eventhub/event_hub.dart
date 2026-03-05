import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_args.dart';
import 'event_hub_capture_description.dart';
import 'event_hub_retention_description.dart';
import 'event_hub_state.dart';

/// Manages a Event Hubs as a nested resource within a Event Hubs namespace.
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
///     name: "acceptanceTestEventHubNamespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     capacity: 1,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "acceptanceTestEventHub",
///     namespaceId: exampleEventHubNamespace.id,
///     partitionCount: 2,
///     messageRetention: 1,
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
///     name="acceptanceTestEventHubNamespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     capacity=1,
///     tags={
///         "environment": "Production",
///     })
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="acceptanceTestEventHub",
///     namespace_id=example_event_hub_namespace.id,
///     partition_count=2,
///     message_retention=1)
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
///         Name = "acceptanceTestEventHubNamespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Capacity = 1,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "acceptanceTestEventHub",
///         NamespaceId = exampleEventHubNamespace.Id,
///         PartitionCount = 2,
///         MessageRetention = 1,
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
/// 			Name:              pulumi.String("acceptanceTestEventHubNamespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Capacity:          pulumi.Int(1),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:             pulumi.String("acceptanceTestEventHub"),
/// 			NamespaceId:      exampleEventHubNamespace.ID(),
/// 			PartitionCount:   pulumi.Int(2),
/// 			MessageRetention: pulumi.Int(1),
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
///             .name("acceptanceTestEventHubNamespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .capacity(1)
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("acceptanceTestEventHub")
///             .namespaceId(exampleEventHubNamespace.id())
///             .partitionCount(2)
///             .messageRetention(1)
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
///       name: acceptanceTestEventHubNamespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       capacity: 1
///       tags:
///         environment: Production
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: acceptanceTestEventHub
///       namespaceId: ${exampleEventHubNamespace.id}
///       partitionCount: 2
///       messageRetention: 1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
///
/// ## Import
///
/// EventHubs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/eventHub:EventHub eventhub1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventHub/namespaces/namespace1/eventhubs/eventhub1
/// ```
class EventHub extends pulumi.CustomResource {
  /// A `capture_description` block as defined below.
  late final pulumi.Output<EventHubCaptureDescription?> captureDescription;

  /// Specifies the number of days to retain the events for this Event Hub.
  ///
  /// &gt; **Note:** When using a dedicated Event Hubs cluster, maximum value of `message_retention` is 90 days. When using a shared parent EventHub Namespace, maximum value is 7 days; or 1 day when using a Basic SKU for the shared parent EventHub Namespace.
  late final pulumi.Output<int> messageRetention;

  /// Specifies the name of the EventHub resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the ID of the EventHub Namespace.
  late final pulumi.Output<String> namespaceId;
  late final pulumi.Output<String> namespaceName;

  /// Specifies the current number of shards on the Event Hub.
  ///
  /// &gt; **Note:** When using a shared parent EventHub Namespace, `partition_count` cannot be changed unless the Eventhub Namespace SKU is `Premium`. When using a dedicated Event Hubs cluster, this restriction doesn't apply. In either case though, the `partition_count` cannot be decreased.
  ///
  /// &gt; **Note:** When using a dedicated Event Hubs cluster, maximum value of `partition_count` is 1024. When using a shared parent EventHub Namespace, maximum value is 32.
  late final pulumi.Output<int> partitionCount;

  /// The identifiers for partitions created for Event Hubs.
  late final pulumi.Output<List<String>> partitionIds;
  late final pulumi.Output<String> resourceGroupName;

  /// A `retention_description` block as defined below.
  late final pulumi.Output<EventHubRetentionDescription> retentionDescription;

  /// Specifies the status of the Event Hub resource. Possible values are `Active`, `Disabled` and `SendDisabled`. Defaults to `Active`.
  late final pulumi.Output<String?> status;

  /// Creates a new [EventHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHub]. {@macro pulumi_eventhub_event_hub_event_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHub(
    String name, {
    EventHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:eventhub/eventHub:EventHub',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    captureDescription = registerOutput<EventHubCaptureDescription?>(
      'captureDescription',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventHubCaptureDescription.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    messageRetention = registerOutput<int>('messageRetention');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    partitionCount = registerOutput<int>('partitionCount');
    partitionIds = registerOutput<List<String>>('partitionIds');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionDescription = registerOutput<EventHubRetentionDescription>(
      'retentionDescription',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventHubRetentionDescription.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String?>('status');
  }

  /// Gets an existing [EventHub] resource's state with the given [name] and [id].
  static EventHub get(
    String name,
    pulumi.Input<String> id, {
    EventHubState? state,
  }) {
    return EventHub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventHub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:eventhub/eventHub:EventHub',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    captureDescription = registerOutput<EventHubCaptureDescription?>(
      'captureDescription',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventHubCaptureDescription.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    messageRetention = registerOutput<int>('messageRetention');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    partitionCount = registerOutput<int>('partitionCount');
    partitionIds = registerOutput<List<String>>('partitionIds');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionDescription = registerOutput<EventHubRetentionDescription>(
      'retentionDescription',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventHubRetentionDescription.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String?>('status');
  }
}

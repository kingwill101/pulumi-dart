import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';
import 'topic_state.dart';

/// Manages a ServiceBus Topic.
///
/// &gt; **Note:** Topics can only be created in Namespaces with an SKU of `Standard` or higher.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-servicebus-topic",
///     location: "West Europe",
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "tfex-servicebus-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     tags: {
///         source: "example",
///     },
/// });
/// const exampleTopic = new azure.servicebus.Topic("example", {
///     name: "tfex_servicebus_topic",
///     namespaceId: exampleNamespace.id,
///     partitioningEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-servicebus-topic",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="tfex-servicebus-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     tags={
///         "source": "example",
///     })
/// example_topic = azure.servicebus.Topic("example",
///     name="tfex_servicebus_topic",
///     namespace_id=example_namespace.id,
///     partitioning_enabled=True)
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
///         Name = "tfex-servicebus-topic",
///         Location = "West Europe",
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "tfex-servicebus-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Tags =
///         {
///             { "source", "example" },
///         },
///     });
///
///     var exampleTopic = new Azure.ServiceBus.Topic("example", new()
///     {
///         Name = "tfex_servicebus_topic",
///         NamespaceId = exampleNamespace.Id,
///         PartitioningEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-servicebus-topic"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("tfex-servicebus-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewTopic(ctx, "example", &servicebus.TopicArgs{
/// 			Name:                pulumi.String("tfex_servicebus_topic"),
/// 			NamespaceId:         exampleNamespace.ID(),
/// 			PartitioningEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "tfex-servicebus-topic"
///   location = "West Europe"
/// }
/// resource "azure_servicebus_namespace" "example" {
///   name                = "tfex-servicebus-namespace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
///   tags = {
///     "source" = "example"
///   }
/// }
/// resource "azure_servicebus_topic" "example" {
///   name                 = "tfex_servicebus_topic"
///   namespace_id         = azure_servicebus_namespace.example.id
///   partitioning_enabled = true
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
/// import com.pulumi.azure.servicebus.Topic;
/// import com.pulumi.azure.servicebus.TopicArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("tfex-servicebus-topic")
///             .location("West Europe")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("tfex-servicebus-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .tags(Map.of("source", "example"))
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("tfex_servicebus_topic")
///             .namespaceId(exampleNamespace.id())
///             .partitioningEnabled(true)
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
///       name: tfex-servicebus-topic
///       location: West Europe
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: tfex-servicebus-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       tags:
///         source: example
///   exampleTopic:
///     type: azure:servicebus:Topic
///     name: example
///     properties:
///       name: tfex_servicebus_topic
///       namespaceId: ${exampleNamespace.id}
///       partitioningEnabled: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceBus` - 2024-01-01
///
/// ## Import
///
/// Service Bus Topics can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:servicebus/topic:Topic example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ServiceBus/namespaces/sbns1/topics/sntopic1
/// ```
class Topic extends pulumi.CustomResource {
  /// The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes. Defaults to `P10675199DT2H48M5.4775807S`.
  late final pulumi.Output<String?> autoDeleteOnIdle;
  /// Boolean flag which controls if server-side batched operations are enabled.
  late final pulumi.Output<bool?> batchedOperationsEnabled;
  /// The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself. Defaults to `P10675199DT2H48M5.4775807S`.
  late final pulumi.Output<String?> defaultMessageTtl;
  /// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to `PT10M` (10 Minutes).
  late final pulumi.Output<String?> duplicateDetectionHistoryTimeWindow;
  /// Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  late final pulumi.Output<bool?> expressEnabled;
  /// Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview). Defaults to `256`.
  late final pulumi.Output<int> maxMessageSizeInKilobytes;
  /// Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas). Defaults to `5120`.
  late final pulumi.Output<int> maxSizeInMegabytes;
  /// Specifies the name of the ServiceBus Topic resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the ServiceBus Namespace to create this topic in. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceId;
  late final pulumi.Output<String> namespaceName;
  /// Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Partitioning is available at entity creation for all queues and topics in Basic or Standard SKUs. It is not available for the Premium messaging SKU, but any previously existing partitioned entities in Premium namespaces continue to work as expected. For premium namespaces, partitioning is available at namespace creation and all queues and topics in the partitioned namespace will be partitioned. Premium namespaces that have `premiumMessagingPartitions` set to `1` are not partitioned. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-partitioning) for more information.
  late final pulumi.Output<bool?> partitioningEnabled;
  /// Boolean flag which controls whether the Topic requires duplicate detection. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> requiresDuplicateDetection;
  late final pulumi.Output<String> resourceGroupName;
  /// The Status of the Service Bus Topic. Acceptable values are `Active` or `Disabled`. Defaults to `Active`.
  late final pulumi.Output<String?> status;
  /// Boolean flag which controls whether the Topic supports ordering.
  late final pulumi.Output<bool?> supportOrdering;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_servicebus_topic_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicebus/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoDeleteOnIdle = registerOutput<String?>('autoDeleteOnIdle');
    batchedOperationsEnabled = registerOutput<bool?>('batchedOperationsEnabled');
    defaultMessageTtl = registerOutput<String?>('defaultMessageTtl');
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>('duplicateDetectionHistoryTimeWindow');
    expressEnabled = registerOutput<bool?>('expressEnabled');
    maxMessageSizeInKilobytes = registerOutput<int>('maxMessageSizeInKilobytes');
    maxSizeInMegabytes = registerOutput<int>('maxSizeInMegabytes');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    partitioningEnabled = registerOutput<bool?>('partitioningEnabled');
    requiresDuplicateDetection = registerOutput<bool?>('requiresDuplicateDetection');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    status = registerOutput<String?>('status');
    supportOrdering = registerOutput<bool?>('supportOrdering');
  }

  /// Gets an existing [Topic] resource's state with the given [name] and [id].
  static Topic get(
    String name,
    pulumi.Input<String> id, {
    TopicState? state,
  }) {
    return Topic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Topic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicebus/topic:Topic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoDeleteOnIdle = registerOutput<String?>('autoDeleteOnIdle');
    batchedOperationsEnabled = registerOutput<bool?>('batchedOperationsEnabled');
    defaultMessageTtl = registerOutput<String?>('defaultMessageTtl');
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>('duplicateDetectionHistoryTimeWindow');
    expressEnabled = registerOutput<bool?>('expressEnabled');
    maxMessageSizeInKilobytes = registerOutput<int>('maxMessageSizeInKilobytes');
    maxSizeInMegabytes = registerOutput<int>('maxSizeInMegabytes');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    partitioningEnabled = registerOutput<bool?>('partitioningEnabled');
    requiresDuplicateDetection = registerOutput<bool?>('requiresDuplicateDetection');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    status = registerOutput<String?>('status');
    supportOrdering = registerOutput<bool?>('supportOrdering');
  }
}

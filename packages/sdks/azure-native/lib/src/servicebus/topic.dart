import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_count_details_response.dart';
import 'system_data_response.dart';
import 'topic_args.dart';

/// Description of topic resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TopicCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topic = new AzureNative.ServiceBus.Topic("topic", new()
///     {
///         EnableExpress = true,
///         NamespaceName = "sdk-Namespace-1617",
///         ResourceGroupName = "ArunMonocle",
///         TopicName = "sdk-Topics-5488",
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewTopic(ctx, "topic", &servicebus.TopicArgs{
/// 			EnableExpress:     pulumi.Bool(true),
/// 			NamespaceName:     pulumi.String("sdk-Namespace-1617"),
/// 			ResourceGroupName: pulumi.String("ArunMonocle"),
/// 			TopicName:         pulumi.String("sdk-Topics-5488"),
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
/// import com.pulumi.azurenative.servicebus.Topic;
/// import com.pulumi.azurenative.servicebus.TopicArgs;
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
///         var topic = new Topic("topic", TopicArgs.builder()
///             .enableExpress(true)
///             .namespaceName("sdk-Namespace-1617")
///             .resourceGroupName("ArunMonocle")
///             .topicName("sdk-Topics-5488")
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
/// const topic = new azure_native.servicebus.Topic("topic", {
///     enableExpress: true,
///     namespaceName: "sdk-Namespace-1617",
///     resourceGroupName: "ArunMonocle",
///     topicName: "sdk-Topics-5488",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// topic = azure_native.servicebus.Topic("topic",
///     enable_express=True,
///     namespace_name="sdk-Namespace-1617",
///     resource_group_name="ArunMonocle",
///     topic_name="sdk-Topics-5488")
///
/// ```
///
/// ```yaml
/// resources:
///   topic:
///     type: azure-native:servicebus:Topic
///     properties:
///       enableExpress: true
///       namespaceName: sdk-Namespace-1617
///       resourceGroupName: ArunMonocle
///       topicName: sdk-Topics-5488
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
/// $ pulumi import azure-native:servicebus:Topic sdk-Topics-5488 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}
/// ```
class Topic extends pulumi.CustomResource {
  /// Last time the message was sent, or a request was received, for this topic.
  late final pulumi.Output<String> accessedAt;

  /// ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  late final pulumi.Output<String?> autoDeleteOnIdle;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Message count details
  late final pulumi.Output<MessageCountDetailsResponse> countDetails;

  /// Exact time the message was created.
  late final pulumi.Output<String> createdAt;

  /// ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  late final pulumi.Output<String?> defaultMessageTimeToLive;

  /// ISO8601 timespan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  late final pulumi.Output<String?> duplicateDetectionHistoryTimeWindow;

  /// Value that indicates whether server-side batched operations are enabled.
  late final pulumi.Output<bool?> enableBatchedOperations;

  /// Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  late final pulumi.Output<bool?> enableExpress;

  /// Value that indicates whether the topic to be partitioned across multiple message brokers is enabled.
  late final pulumi.Output<bool?> enablePartitioning;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024.
  late final pulumi.Output<double?> maxMessageSizeInKilobytes;

  /// Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024.
  late final pulumi.Output<int?> maxSizeInMegabytes;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Value indicating if this topic requires duplicate detection.
  late final pulumi.Output<bool?> requiresDuplicateDetection;

  /// Size of the topic, in bytes.
  late final pulumi.Output<double> sizeInBytes;

  /// Enumerates the possible values for the status of a messaging entity.
  late final pulumi.Output<String?> status;

  /// Number of subscriptions.
  late final pulumi.Output<int> subscriptionCount;

  /// Value that indicates whether the topic supports ordering.
  late final pulumi.Output<bool?> supportOrdering;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// The exact time the message was updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_servicebus_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(String name, {TopicArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:servicebus:Topic',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accessedAt = registerOutput<String>('accessedAt');
    autoDeleteOnIdle = registerOutput<String?>('autoDeleteOnIdle');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    countDetails = registerOutput<MessageCountDetailsResponse>('countDetails');
    createdAt = registerOutput<String>('createdAt');
    defaultMessageTimeToLive = registerOutput<String?>(
      'defaultMessageTimeToLive',
    );
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>(
      'duplicateDetectionHistoryTimeWindow',
    );
    enableBatchedOperations = registerOutput<bool?>('enableBatchedOperations');
    enableExpress = registerOutput<bool?>('enableExpress');
    enablePartitioning = registerOutput<bool?>('enablePartitioning');
    location = registerOutput<String>('location');
    maxMessageSizeInKilobytes = registerOutput<double?>(
      'maxMessageSizeInKilobytes',
    );
    maxSizeInMegabytes = registerOutput<int?>('maxSizeInMegabytes');
    this.name = registerOutput<String>('name');
    requiresDuplicateDetection = registerOutput<bool?>(
      'requiresDuplicateDetection',
    );
    sizeInBytes = registerOutput<double>('sizeInBytes');
    status = registerOutput<String?>('status');
    subscriptionCount = registerOutput<int>('subscriptionCount');
    supportOrdering = registerOutput<bool?>('supportOrdering');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}

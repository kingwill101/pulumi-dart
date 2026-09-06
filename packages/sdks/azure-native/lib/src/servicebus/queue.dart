import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_count_details_response.dart';
import 'queue_args.dart';
import 'system_data_response.dart';

/// Description of queue Resource.
///
/// Uses Azure REST API version 2026-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-01-01, 2025-05-01-preview, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### QueueCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queue = new AzureNative.ServiceBus.Queue("queue", new()
///     {
///         EnablePartitioning = true,
///         NamespaceName = "sdk-Namespace-3174",
///         QueueName = "sdk-Queues-5647",
///         ResourceGroupName = "ArunMonocle",
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
/// 		_, err := servicebus.NewQueue(ctx, "queue", &servicebus.QueueArgs{
/// 			EnablePartitioning: pulumi.Bool(true),
/// 			NamespaceName:      pulumi.String("sdk-Namespace-3174"),
/// 			QueueName:          pulumi.String("sdk-Queues-5647"),
/// 			ResourceGroupName:  pulumi.String("ArunMonocle"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_servicebus_queue" "queue" {
///   enable_partitioning = true
///   namespace_name      = "sdk-Namespace-3174"
///   queue_name          = "sdk-Queues-5647"
///   resource_group_name = "ArunMonocle"
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
/// import com.pulumi.azurenative.servicebus.Queue;
/// import com.pulumi.azurenative.servicebus.QueueArgs;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .enablePartitioning(true)
///             .namespaceName("sdk-Namespace-3174")
///             .queueName("sdk-Queues-5647")
///             .resourceGroupName("ArunMonocle")
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
/// const queue = new azure_native.servicebus.Queue("queue", {
///     enablePartitioning: true,
///     namespaceName: "sdk-Namespace-3174",
///     queueName: "sdk-Queues-5647",
///     resourceGroupName: "ArunMonocle",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// queue = azure_native.servicebus.Queue("queue",
///     enable_partitioning=True,
///     namespace_name="sdk-Namespace-3174",
///     queue_name="sdk-Queues-5647",
///     resource_group_name="ArunMonocle")
///
/// ```
///
/// ```yaml
/// resources:
///   queue:
///     type: azure-native:servicebus:Queue
///     properties:
///       enablePartitioning: true
///       namespaceName: sdk-Namespace-3174
///       queueName: sdk-Queues-5647
///       resourceGroupName: ArunMonocle
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
/// $ pulumi import azure-native:servicebus:Queue sdk-Queues-5647 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/queues/{queueName}
/// ```
class Queue extends pulumi.CustomResource {
  /// Last time a message was sent, or the last time there was a receive request to this queue.
  late final pulumi.Output<String> accessedAt;
  /// ISO 8061 timeSpan idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes.
  late final pulumi.Output<String?> autoDeleteOnIdle;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Message Count Details.
  late final pulumi.Output<MessageCountDetailsResponse> countDetails;
  /// The exact time the message was created.
  late final pulumi.Output<String> createdAt;
  /// A value that indicates whether this queue has dead letter support when a message expires.
  late final pulumi.Output<bool?> deadLetteringOnMessageExpiration;
  /// ISO 8601 default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  late final pulumi.Output<String?> defaultMessageTimeToLive;
  /// ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  late final pulumi.Output<String?> duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  late final pulumi.Output<bool?> enableBatchedOperations;
  /// A value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  late final pulumi.Output<bool?> enableExpress;
  /// A value that indicates whether the queue is to be partitioned across multiple message brokers.
  late final pulumi.Output<bool?> enablePartitioning;
  /// Queue/Topic name to forward the Dead Letter message
  late final pulumi.Output<String?> forwardDeadLetteredMessagesTo;
  /// Queue/Topic name to forward the messages
  late final pulumi.Output<String?> forwardTo;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute.
  late final pulumi.Output<String?> lockDuration;
  /// The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10.
  late final pulumi.Output<int?> maxDeliveryCount;
  /// Maximum size (in KB) of the message payload that can be accepted by the queue. This property is only used in Premium today and default is 1024.
  late final pulumi.Output<double?> maxMessageSizeInKilobytes;
  /// The maximum size of the queue in megabytes, which is the size of memory allocated for the queue. Default is 1024.
  late final pulumi.Output<int?> maxSizeInMegabytes;
  /// The number of messages in the queue.
  late final pulumi.Output<double> messageCount;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A value indicating if this queue requires duplicate detection.
  late final pulumi.Output<bool?> requiresDuplicateDetection;
  /// A value that indicates whether the queue supports the concept of sessions.
  late final pulumi.Output<bool?> requiresSession;
  /// The size of the queue, in bytes.
  late final pulumi.Output<double> sizeInBytes;
  /// Enumerates the possible values for the status of a messaging entity.
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The exact time the message was updated.
  late final pulumi.Output<String> updatedAt;
  /// Gets and Sets Metadata of User.
  late final pulumi.Output<String?> userMetadata;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_servicebus_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessedAt = registerOutput<String>('accessedAt');
    autoDeleteOnIdle = registerOutput<String?>('autoDeleteOnIdle');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    countDetails = registerOutput<MessageCountDetailsResponse>('countDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MessageCountDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    deadLetteringOnMessageExpiration = registerOutput<bool?>('deadLetteringOnMessageExpiration');
    defaultMessageTimeToLive = registerOutput<String?>('defaultMessageTimeToLive');
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>('duplicateDetectionHistoryTimeWindow');
    enableBatchedOperations = registerOutput<bool?>('enableBatchedOperations');
    enableExpress = registerOutput<bool?>('enableExpress');
    enablePartitioning = registerOutput<bool?>('enablePartitioning');
    forwardDeadLetteredMessagesTo = registerOutput<String?>('forwardDeadLetteredMessagesTo');
    forwardTo = registerOutput<String?>('forwardTo');
    location = registerOutput<String>('location');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int?>('maxDeliveryCount');
    maxMessageSizeInKilobytes = registerOutput<double?>('maxMessageSizeInKilobytes');
    maxSizeInMegabytes = registerOutput<int?>('maxSizeInMegabytes');
    messageCount = registerOutput<double>('messageCount');
    this.name = registerOutput<String>('name');
    requiresDuplicateDetection = registerOutput<bool?>('requiresDuplicateDetection');
    requiresSession = registerOutput<bool?>('requiresSession');
    sizeInBytes = registerOutput<double>('sizeInBytes');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    userMetadata = registerOutput<String?>('userMetadata');
  }

  /// Creates a typed reference to an existing [Queue] resource.
  Queue.reference(String urn)
    : super(
        'azure-native:servicebus:Queue',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessedAt = registerOutput<String>('accessedAt');
    autoDeleteOnIdle = registerOutput<String?>('autoDeleteOnIdle');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    countDetails = registerOutput<MessageCountDetailsResponse>('countDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MessageCountDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    deadLetteringOnMessageExpiration = registerOutput<bool?>('deadLetteringOnMessageExpiration');
    defaultMessageTimeToLive = registerOutput<String?>('defaultMessageTimeToLive');
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>('duplicateDetectionHistoryTimeWindow');
    enableBatchedOperations = registerOutput<bool?>('enableBatchedOperations');
    enableExpress = registerOutput<bool?>('enableExpress');
    enablePartitioning = registerOutput<bool?>('enablePartitioning');
    forwardDeadLetteredMessagesTo = registerOutput<String?>('forwardDeadLetteredMessagesTo');
    forwardTo = registerOutput<String?>('forwardTo');
    location = registerOutput<String>('location');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int?>('maxDeliveryCount');
    maxMessageSizeInKilobytes = registerOutput<double?>('maxMessageSizeInKilobytes');
    maxSizeInMegabytes = registerOutput<int?>('maxSizeInMegabytes');
    messageCount = registerOutput<double>('messageCount');
    this.name = registerOutput<String>('name');
    requiresDuplicateDetection = registerOutput<bool?>('requiresDuplicateDetection');
    requiresSession = registerOutput<bool?>('requiresSession');
    sizeInBytes = registerOutput<double>('sizeInBytes');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    userMetadata = registerOutput<String?>('userMetadata');
  }
}

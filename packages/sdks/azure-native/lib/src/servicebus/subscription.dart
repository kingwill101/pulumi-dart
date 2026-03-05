import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_count_details_response.dart';
import 'sbclient_affine_properties_response.dart';
import 'subscription_args.dart';
import 'system_data_response.dart';

/// Description of subscription resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SubscriptionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscription = new AzureNative.ServiceBus.Subscription("subscription", new()
///     {
///         EnableBatchedOperations = true,
///         NamespaceName = "sdk-Namespace-1349",
///         ResourceGroupName = "ResourceGroup",
///         SubscriptionName = "sdk-Subscriptions-2178",
///         TopicName = "sdk-Topics-8740",
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
/// 		_, err := servicebus.NewSubscription(ctx, "subscription", &servicebus.SubscriptionArgs{
/// 			EnableBatchedOperations: pulumi.Bool(true),
/// 			NamespaceName:           pulumi.String("sdk-Namespace-1349"),
/// 			ResourceGroupName:       pulumi.String("ResourceGroup"),
/// 			SubscriptionName:        pulumi.String("sdk-Subscriptions-2178"),
/// 			TopicName:               pulumi.String("sdk-Topics-8740"),
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
/// import com.pulumi.azurenative.servicebus.Subscription;
/// import com.pulumi.azurenative.servicebus.SubscriptionArgs;
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
///         var subscription = new Subscription("subscription", SubscriptionArgs.builder()
///             .enableBatchedOperations(true)
///             .namespaceName("sdk-Namespace-1349")
///             .resourceGroupName("ResourceGroup")
///             .subscriptionName("sdk-Subscriptions-2178")
///             .topicName("sdk-Topics-8740")
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
/// const subscription = new azure_native.servicebus.Subscription("subscription", {
///     enableBatchedOperations: true,
///     namespaceName: "sdk-Namespace-1349",
///     resourceGroupName: "ResourceGroup",
///     subscriptionName: "sdk-Subscriptions-2178",
///     topicName: "sdk-Topics-8740",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// subscription = azure_native.servicebus.Subscription("subscription",
///     enable_batched_operations=True,
///     namespace_name="sdk-Namespace-1349",
///     resource_group_name="ResourceGroup",
///     subscription_name="sdk-Subscriptions-2178",
///     topic_name="sdk-Topics-8740")
///
/// ```
///
/// ```yaml
/// resources:
///   subscription:
///     type: azure-native:servicebus:Subscription
///     properties:
///       enableBatchedOperations: true
///       namespaceName: sdk-Namespace-1349
///       resourceGroupName: ResourceGroup
///       subscriptionName: sdk-Subscriptions-2178
///       topicName: sdk-Topics-8740
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
/// $ pulumi import azure-native:servicebus:Subscription sdk-Subscriptions-2178 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}
/// ```
class Subscription extends pulumi.CustomResource {
  /// Last time there was a receive request to this subscription.
  late final pulumi.Output<String> accessedAt;
  /// ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  late final pulumi.Output<String?> autoDeleteOnIdle;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Properties specific to client affine subscriptions.
  late final pulumi.Output<SBClientAffinePropertiesResponse?> clientAffineProperties;
  /// Message count details
  late final pulumi.Output<MessageCountDetailsResponse> countDetails;
  /// Exact time the message was created.
  late final pulumi.Output<String> createdAt;
  /// Value that indicates whether a subscription has dead letter support on filter evaluation exceptions.
  late final pulumi.Output<bool?> deadLetteringOnFilterEvaluationExceptions;
  /// Value that indicates whether a subscription has dead letter support when a message expires.
  late final pulumi.Output<bool?> deadLetteringOnMessageExpiration;
  /// ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  late final pulumi.Output<String?> defaultMessageTimeToLive;
  /// ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  late final pulumi.Output<String?> duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  late final pulumi.Output<bool?> enableBatchedOperations;
  /// Queue/Topic name to forward the Dead Letter message
  late final pulumi.Output<String?> forwardDeadLetteredMessagesTo;
  /// Queue/Topic name to forward the messages
  late final pulumi.Output<String?> forwardTo;
  /// Value that indicates whether the subscription has an affinity to the client id.
  late final pulumi.Output<bool?> isClientAffine;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// ISO 8061 lock duration timespan for the subscription. The default value is 1 minute.
  late final pulumi.Output<String?> lockDuration;
  /// Number of maximum deliveries.
  late final pulumi.Output<int?> maxDeliveryCount;
  /// Number of messages.
  late final pulumi.Output<double> messageCount;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Value indicating if a subscription supports the concept of sessions.
  late final pulumi.Output<bool?> requiresSession;
  /// Enumerates the possible values for the status of a messaging entity.
  late final pulumi.Output<String?> status;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;
  /// The exact time the message was updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_servicebus_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessedAt = registerOutput<String>('accessedAt');
    autoDeleteOnIdle = registerOutput<String?>('autoDeleteOnIdle');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientAffineProperties = registerOutput<SBClientAffinePropertiesResponse?>('clientAffineProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SBClientAffinePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    countDetails = registerOutput<MessageCountDetailsResponse>('countDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MessageCountDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    deadLetteringOnFilterEvaluationExceptions = registerOutput<bool?>('deadLetteringOnFilterEvaluationExceptions');
    deadLetteringOnMessageExpiration = registerOutput<bool?>('deadLetteringOnMessageExpiration');
    defaultMessageTimeToLive = registerOutput<String?>('defaultMessageTimeToLive');
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>('duplicateDetectionHistoryTimeWindow');
    enableBatchedOperations = registerOutput<bool?>('enableBatchedOperations');
    forwardDeadLetteredMessagesTo = registerOutput<String?>('forwardDeadLetteredMessagesTo');
    forwardTo = registerOutput<String?>('forwardTo');
    isClientAffine = registerOutput<bool?>('isClientAffine');
    location = registerOutput<String>('location');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int?>('maxDeliveryCount');
    messageCount = registerOutput<double>('messageCount');
    this.name = registerOutput<String>('name');
    requiresSession = registerOutput<bool?>('requiresSession');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}

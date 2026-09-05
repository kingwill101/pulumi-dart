import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_consumer_args.dart';
import 'queue_consumer_settings.dart';
import 'queue_consumer_state.dart';

/// Accepted Permissions
///
/// - `Queues Read`
/// - `Queues Write`
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleQueueConsumer = new cloudflare.QueueConsumer("example_queue_consumer", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     queueId: "023e105f4ecef8ad9ca31a8372d0c353",
///     scriptName: "my-consumer-worker",
///     type: "worker",
///     deadLetterQueue: "example-queue",
///     settings: {
///         batchSize: 50,
///         maxConcurrency: 10,
///         maxRetries: 3,
///         maxWaitTimeMs: 5000,
///         retryDelay: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_queue_consumer = cloudflare.QueueConsumer("example_queue_consumer",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     queue_id="023e105f4ecef8ad9ca31a8372d0c353",
///     script_name="my-consumer-worker",
///     type="worker",
///     dead_letter_queue="example-queue",
///     settings={
///         "batch_size": float(50),
///         "max_concurrency": float(10),
///         "max_retries": float(3),
///         "max_wait_time_ms": float(5000),
///         "retry_delay": float(10),
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleQueueConsumer = new Cloudflare.QueueConsumer("example_queue_consumer", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         QueueId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ScriptName = "my-consumer-worker",
///         Type = "worker",
///         DeadLetterQueue = "example-queue",
///         Settings = new Cloudflare.Inputs.QueueConsumerSettingsArgs
///         {
///             BatchSize = 50,
///             MaxConcurrency = 10,
///             MaxRetries = 3,
///             MaxWaitTimeMs = 5000,
///             RetryDelay = 10,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewQueueConsumer(ctx, "example_queue_consumer", &cloudflare.QueueConsumerArgs{
/// 			AccountId:       pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			QueueId:         pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ScriptName:      pulumi.String("my-consumer-worker"),
/// 			Type:            pulumi.String("worker"),
/// 			DeadLetterQueue: pulumi.String("example-queue"),
/// 			Settings: &cloudflare.QueueConsumerSettingsArgs{
/// 				BatchSize:      pulumi.Float64(50),
/// 				MaxConcurrency: pulumi.Float64(10),
/// 				MaxRetries:     pulumi.Float64(3),
/// 				MaxWaitTimeMs:  pulumi.Float64(5000),
/// 				RetryDelay:     pulumi.Float64(10),
/// 			},
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_queueconsumer" "example_queue_consumer" {
///   account_id        = "023e105f4ecef8ad9ca31a8372d0c353"
///   queue_id          = "023e105f4ecef8ad9ca31a8372d0c353"
///   script_name       = "my-consumer-worker"
///   type              = "worker"
///   dead_letter_queue = "example-queue"
///   settings = {
///     batch_size       = 50
///     max_concurrency  = 10
///     max_retries      = 3
///     max_wait_time_ms = 5000
///     retry_delay      = 10
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.QueueConsumer;
/// import com.pulumi.cloudflare.QueueConsumerArgs;
/// import com.pulumi.cloudflare.inputs.QueueConsumerSettingsArgs;
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
///         var exampleQueueConsumer = new QueueConsumer("exampleQueueConsumer", QueueConsumerArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .queueId("023e105f4ecef8ad9ca31a8372d0c353")
///             .scriptName("my-consumer-worker")
///             .type("worker")
///             .deadLetterQueue("example-queue")
///             .settings(QueueConsumerSettingsArgs.builder()
///                 .batchSize(50.0)
///                 .maxConcurrency(10.0)
///                 .maxRetries(3.0)
///                 .maxWaitTimeMs(5000.0)
///                 .retryDelay(10.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleQueueConsumer:
///     type: cloudflare:QueueConsumer
///     name: example_queue_consumer
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       queueId: 023e105f4ecef8ad9ca31a8372d0c353
///       scriptName: my-consumer-worker
///       type: worker
///       deadLetterQueue: example-queue
///       settings:
///         batchSize: 50
///         maxConcurrency: 10
///         maxRetries: 3
///         maxWaitTimeMs: 5000
///         retryDelay: 10
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class QueueConsumerResource extends pulumi.CustomResource {
  /// A Resource identifier.
  late final pulumi.Output<String> accountId;
  /// A Resource identifier.
  late final pulumi.Output<String> consumerId;
  late final pulumi.Output<String> createdOn;
  late final pulumi.Output<String?> deadLetterQueue;
  /// A Resource identifier.
  late final pulumi.Output<String> queueId;
  late final pulumi.Output<String> queueName;
  /// Name of a Worker
  late final pulumi.Output<String> scriptName;
  late final pulumi.Output<QueueConsumerSettings> settings;
  /// Available values: "worker", "httpPull".
  late final pulumi.Output<String> type;

  /// Creates a new [QueueConsumerResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueueConsumerResource]. {@macro pulumi_index_queue_consumer_queue_consumer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueueConsumerResource(
    String name, {
    QueueConsumerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/queueConsumer:QueueConsumer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    consumerId = registerOutput<String>('consumerId');
    createdOn = registerOutput<String>('createdOn');
    deadLetterQueue = registerOutput<String?>('deadLetterQueue');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    scriptName = registerOutput<String>('scriptName');
    settings = registerOutput<QueueConsumerSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueConsumerSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [QueueConsumerResource] resource's state with the given [name] and [id].
  static QueueConsumerResource get(
    String name,
    pulumi.Input<String> id, {
    QueueConsumerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return QueueConsumerResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  QueueConsumerResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/queueConsumer:QueueConsumer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    consumerId = registerOutput<String>('consumerId');
    createdOn = registerOutput<String>('createdOn');
    deadLetterQueue = registerOutput<String?>('deadLetterQueue');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    scriptName = registerOutput<String>('scriptName');
    settings = registerOutput<QueueConsumerSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueConsumerSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [QueueConsumerResource] resource.
  QueueConsumerResource.reference(String urn)
    : super(
        'cloudflare:index/queueConsumer:QueueConsumer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    consumerId = registerOutput<String>('consumerId');
    createdOn = registerOutput<String>('createdOn');
    deadLetterQueue = registerOutput<String?>('deadLetterQueue');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    scriptName = registerOutput<String>('scriptName');
    settings = registerOutput<QueueConsumerSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueConsumerSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

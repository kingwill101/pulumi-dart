import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';
import 'queue_consumer.dart';
import 'queue_producer.dart';
import 'queue_settings.dart';
import 'queue_state.dart';

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
/// const exampleQueue = new cloudflare.Queue("example_queue", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     queueName: "example-queue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_queue = cloudflare.Queue("example_queue",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     queue_name="example-queue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleQueue = new Cloudflare.Queue("example_queue", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         QueueName = "example-queue",
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
/// 		_, err := cloudflare.NewQueue(ctx, "example_queue", &cloudflare.QueueArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			QueueName: pulumi.String("example-queue"),
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
/// resource "cloudflare_queue" "example_queue" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   queue_name = "example-queue"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Queue;
/// import com.pulumi.cloudflare.QueueArgs;
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
///         var exampleQueue = new Queue("exampleQueue", QueueArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .queueName("example-queue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleQueue:
///     type: cloudflare:Queue
///     name: example_queue
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       queueName: example-queue
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/queue:Queue example '<account_id>/<queue_id>'
/// ```
class Queue extends pulumi.CustomResource {
  /// A Resource identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<List<QueueConsumer>> consumers;
  late final pulumi.Output<double> consumersTotalCount;
  late final pulumi.Output<String> createdOn;
  late final pulumi.Output<String> modifiedOn;
  late final pulumi.Output<List<QueueProducer>> producers;
  late final pulumi.Output<double> producersTotalCount;
  late final pulumi.Output<String> queueId;
  late final pulumi.Output<String> queueName;
  late final pulumi.Output<QueueSettings> settings;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_index_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    consumers = registerOutput<List<QueueConsumer>>('consumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QueueConsumer>(guardedValue, (value) => QueueConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    consumersTotalCount = registerOutput<double>('consumersTotalCount');
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    producers = registerOutput<List<QueueProducer>>('producers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QueueProducer>(guardedValue, (value) => QueueProducer.fromMap((value as Map).cast<String, dynamic>())); });
    producersTotalCount = registerOutput<double>('producersTotalCount');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    settings = registerOutput<QueueSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Queue] resource's state with the given [name] and [id].
  static Queue get(
    String name,
    pulumi.Input<String> id, {
    QueueState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Queue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Queue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/queue:Queue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    consumers = registerOutput<List<QueueConsumer>>('consumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QueueConsumer>(guardedValue, (value) => QueueConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    consumersTotalCount = registerOutput<double>('consumersTotalCount');
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    producers = registerOutput<List<QueueProducer>>('producers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QueueProducer>(guardedValue, (value) => QueueProducer.fromMap((value as Map).cast<String, dynamic>())); });
    producersTotalCount = registerOutput<double>('producersTotalCount');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    settings = registerOutput<QueueSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Queue] resource.
  Queue.reference(String urn)
    : super(
        'cloudflare:index/queue:Queue',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    consumers = registerOutput<List<QueueConsumer>>('consumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QueueConsumer>(guardedValue, (value) => QueueConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    consumersTotalCount = registerOutput<double>('consumersTotalCount');
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    producers = registerOutput<List<QueueProducer>>('producers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QueueProducer>(guardedValue, (value) => QueueProducer.fromMap((value as Map).cast<String, dynamic>())); });
    producersTotalCount = registerOutput<double>('producersTotalCount');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String>('queueName');
    settings = registerOutput<QueueSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueueSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_args.dart';
import 'worker_observability.dart';
import 'worker_references.dart';
import 'worker_state.dart';
import 'worker_subdomain.dart';
import 'worker_tail_consumer.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorker = new cloudflare.Worker("example_worker", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "my-worker",
///     logpush: true,
///     observability: {
///         enabled: true,
///         headSamplingRate: 1,
///         logs: {
///             destinations: ["string"],
///             enabled: true,
///             headSamplingRate: 1,
///             invocationLogs: true,
///             persist: true,
///         },
///         traces: {
///             destinations: ["string"],
///             enabled: true,
///             headSamplingRate: 1,
///             persist: true,
///         },
///     },
///     subdomain: {
///         enabled: true,
///         previewsEnabled: true,
///     },
///     tags: [
///         "my-team",
///         "my-public-api",
///     ],
///     tailConsumers: [{
///         name: "my-tail-consumer",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_worker = cloudflare.Worker("example_worker",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="my-worker",
///     logpush=True,
///     observability={
///         "enabled": True,
///         "head_sampling_rate": float(1),
///         "logs": {
///             "destinations": ["string"],
///             "enabled": True,
///             "head_sampling_rate": float(1),
///             "invocation_logs": True,
///             "persist": True,
///         },
///         "traces": {
///             "destinations": ["string"],
///             "enabled": True,
///             "head_sampling_rate": float(1),
///             "persist": True,
///         },
///     },
///     subdomain={
///         "enabled": True,
///         "previews_enabled": True,
///     },
///     tags=[
///         "my-team",
///         "my-public-api",
///     ],
///     tail_consumers=[{
///         "name": "my-tail-consumer",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorker = new Cloudflare.Worker("example_worker", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "my-worker",
///         Logpush = true,
///         Observability = new Cloudflare.Inputs.WorkerObservabilityArgs
///         {
///             Enabled = true,
///             HeadSamplingRate = 1,
///             Logs = new Cloudflare.Inputs.WorkerObservabilityLogsArgs
///             {
///                 Destinations = new[]
///                 {
///                     "string",
///                 },
///                 Enabled = true,
///                 HeadSamplingRate = 1,
///                 InvocationLogs = true,
///                 Persist = true,
///             },
///             Traces = new Cloudflare.Inputs.WorkerObservabilityTracesArgs
///             {
///                 Destinations = new[]
///                 {
///                     "string",
///                 },
///                 Enabled = true,
///                 HeadSamplingRate = 1,
///                 Persist = true,
///             },
///         },
///         Subdomain = new Cloudflare.Inputs.WorkerSubdomainArgs
///         {
///             Enabled = true,
///             PreviewsEnabled = true,
///         },
///         Tags = new[]
///         {
///             "my-team",
///             "my-public-api",
///         },
///         TailConsumers = new[]
///         {
///             new Cloudflare.Inputs.WorkerTailConsumerArgs
///             {
///                 Name = "my-tail-consumer",
///             },
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
/// 		_, err := cloudflare.NewWorker(ctx, "example_worker", &cloudflare.WorkerArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("my-worker"),
/// 			Logpush:   pulumi.Bool(true),
/// 			Observability: &cloudflare.WorkerObservabilityArgs{
/// 				Enabled:          pulumi.Bool(true),
/// 				HeadSamplingRate: pulumi.Float64(1),
/// 				Logs: &cloudflare.WorkerObservabilityLogsArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("string"),
/// 					},
/// 					Enabled:          pulumi.Bool(true),
/// 					HeadSamplingRate: pulumi.Float64(1),
/// 					InvocationLogs:   pulumi.Bool(true),
/// 					Persist:          pulumi.Bool(true),
/// 				},
/// 				Traces: &cloudflare.WorkerObservabilityTracesArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("string"),
/// 					},
/// 					Enabled:          pulumi.Bool(true),
/// 					HeadSamplingRate: pulumi.Float64(1),
/// 					Persist:          pulumi.Bool(true),
/// 				},
/// 			},
/// 			Subdomain: &cloudflare.WorkerSubdomainArgs{
/// 				Enabled:         pulumi.Bool(true),
/// 				PreviewsEnabled: pulumi.Bool(true),
/// 			},
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("my-team"),
/// 				pulumi.String("my-public-api"),
/// 			},
/// 			TailConsumers: cloudflare.WorkerTailConsumerArray{
/// 				&cloudflare.WorkerTailConsumerArgs{
/// 					Name: pulumi.String("my-tail-consumer"),
/// 				},
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
/// resource "cloudflare_worker" "example_worker" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "my-worker"
///   logpush    = true
///   observability = {
///     enabled            = true
///     head_sampling_rate = 1
///     logs = {
///       destinations       = ["string"]
///       enabled            = true
///       head_sampling_rate = 1
///       invocation_logs    = true
///       persist            = true
///     }
///     traces = {
///       destinations       = ["string"]
///       enabled            = true
///       head_sampling_rate = 1
///       persist            = true
///     }
///   }
///   subdomain = {
///     enabled          = true
///     previews_enabled = true
///   }
///   tags = ["my-team", "my-public-api"]
///   tail_consumers {
///     name = "my-tail-consumer"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Worker;
/// import com.pulumi.cloudflare.WorkerArgs;
/// import com.pulumi.cloudflare.inputs.WorkerObservabilityArgs;
/// import com.pulumi.cloudflare.inputs.WorkerObservabilityLogsArgs;
/// import com.pulumi.cloudflare.inputs.WorkerObservabilityTracesArgs;
/// import com.pulumi.cloudflare.inputs.WorkerSubdomainArgs;
/// import com.pulumi.cloudflare.inputs.WorkerTailConsumerArgs;
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
///         var exampleWorker = new Worker("exampleWorker", WorkerArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("my-worker")
///             .logpush(true)
///             .observability(WorkerObservabilityArgs.builder()
///                 .enabled(true)
///                 .headSamplingRate(1.0)
///                 .logs(WorkerObservabilityLogsArgs.builder()
///                     .destinations("string")
///                     .enabled(true)
///                     .headSamplingRate(1.0)
///                     .invocationLogs(true)
///                     .persist(true)
///                     .build())
///                 .traces(WorkerObservabilityTracesArgs.builder()
///                     .destinations("string")
///                     .enabled(true)
///                     .headSamplingRate(1.0)
///                     .persist(true)
///                     .build())
///                 .build())
///             .subdomain(WorkerSubdomainArgs.builder()
///                 .enabled(true)
///                 .previewsEnabled(true)
///                 .build())
///             .tags(
///                 "my-team",
///                 "my-public-api")
///             .tailConsumers(WorkerTailConsumerArgs.builder()
///                 .name("my-tail-consumer")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorker:
///     type: cloudflare:Worker
///     name: example_worker
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: my-worker
///       logpush: true
///       observability:
///         enabled: true
///         headSamplingRate: 1
///         logs:
///           destinations:
///             - string
///           enabled: true
///           headSamplingRate: 1
///           invocationLogs: true
///           persist: true
///         traces:
///           destinations:
///             - string
///           enabled: true
///           headSamplingRate: 1
///           persist: true
///       subdomain:
///         enabled: true
///         previewsEnabled: true
///       tags:
///         - my-team
///         - my-public-api
///       tailConsumers:
///         - name: my-tail-consumer
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/worker:Worker example '<account_id>/<worker_id>'
/// ```
class Worker extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// When the Worker was created.
  late final pulumi.Output<String> createdOn;
  /// When the Worker's most recent deployment was created. `null` if the Worker has never been deployed.
  late final pulumi.Output<String> deployedOn;
  /// Whether logpush is enabled for the Worker.
  late final pulumi.Output<bool> logpush;
  /// Name of the Worker.
  late final pulumi.Output<String> name;
  /// Observability settings for the Worker.
  late final pulumi.Output<WorkerObservability> observability;
  /// Other resources that reference the Worker and depend on it existing.
  late final pulumi.Output<WorkerReferences> references;
  /// Subdomain settings for the Worker.
  late final pulumi.Output<WorkerSubdomain> subdomain;
  /// Tags associated with the Worker.
  late final pulumi.Output<List<String>> tags;
  /// Other Workers that should consume logs from the Worker.
  late final pulumi.Output<List<WorkerTailConsumer>> tailConsumers;
  /// When the Worker was most recently updated.
  late final pulumi.Output<String> updatedOn;

  /// Creates a new [Worker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Worker]. {@macro pulumi_index_worker_worker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Worker(
    String name, {
    WorkerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/worker:Worker',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    deployedOn = registerOutput<String>('deployedOn');
    logpush = registerOutput<bool>('logpush');
    this.name = registerOutput<String>('name');
    observability = registerOutput<WorkerObservability>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    references = registerOutput<WorkerReferences>('references', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerReferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subdomain = registerOutput<WorkerSubdomain>('subdomain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerSubdomain.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tailConsumers = registerOutput<List<WorkerTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerTailConsumer>(guardedValue, (value) => WorkerTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    updatedOn = registerOutput<String>('updatedOn');
  }

  /// Gets an existing [Worker] resource's state with the given [name] and [id].
  static Worker get(
    String name,
    pulumi.Input<String> id, {
    WorkerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Worker._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Worker._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/worker:Worker',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    deployedOn = registerOutput<String>('deployedOn');
    logpush = registerOutput<bool>('logpush');
    this.name = registerOutput<String>('name');
    observability = registerOutput<WorkerObservability>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    references = registerOutput<WorkerReferences>('references', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerReferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subdomain = registerOutput<WorkerSubdomain>('subdomain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerSubdomain.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tailConsumers = registerOutput<List<WorkerTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerTailConsumer>(guardedValue, (value) => WorkerTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    updatedOn = registerOutput<String>('updatedOn');
  }

  /// Creates a typed reference to an existing [Worker] resource.
  Worker.reference(String urn)
    : super(
        'cloudflare:index/worker:Worker',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    deployedOn = registerOutput<String>('deployedOn');
    logpush = registerOutput<bool>('logpush');
    this.name = registerOutput<String>('name');
    observability = registerOutput<WorkerObservability>('observability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerObservability.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    references = registerOutput<WorkerReferences>('references', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerReferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subdomain = registerOutput<WorkerSubdomain>('subdomain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkerSubdomain.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tailConsumers = registerOutput<List<WorkerTailConsumer>>('tailConsumers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerTailConsumer>(guardedValue, (value) => WorkerTailConsumer.fromMap((value as Map).cast<String, dynamic>())); });
    updatedOn = registerOutput<String>('updatedOn');
  }
}

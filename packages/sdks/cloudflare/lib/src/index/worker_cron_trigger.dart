import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_cron_trigger_args.dart';
import 'worker_cron_trigger_schedule.dart';
import 'worker_cron_trigger_state.dart';

/// Accepted Permissions
///
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
/// const exampleWorkersCronTrigger = new cloudflare.WorkersCronTrigger("example_workers_cron_trigger", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     scriptName: "this-is_my_script-01",
///     body: [{
///         cron: "*/30 * * * *",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_cron_trigger = cloudflare.WorkersCronTrigger("example_workers_cron_trigger",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     script_name="this-is_my_script-01",
///     body=[{
///         "cron": "*/30 * * * *",
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
///     var exampleWorkersCronTrigger = new Cloudflare.WorkersCronTrigger("example_workers_cron_trigger", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ScriptName = "this-is_my_script-01",
///         Body = new[]
///         {
///
///             {
///                 { "cron", "*/30 * * * *" },
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
/// 		_, err := cloudflare.NewWorkersCronTrigger(ctx, "example_workers_cron_trigger", &cloudflare.WorkersCronTriggerArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ScriptName: pulumi.String("this-is_my_script-01"),
/// 			Body: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"cron": "*/30 * * * *",
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
/// resource "cloudflare_workerscrontrigger" "example_workers_cron_trigger" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   script_name = "this-is_my_script-01"
///   body = [{
///     "cron" = "*/30 * * * *"
///   }]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkersCronTrigger;
/// import com.pulumi.cloudflare.WorkersCronTriggerArgs;
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
///         var exampleWorkersCronTrigger = new WorkersCronTrigger("exampleWorkersCronTrigger", WorkersCronTriggerArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .scriptName("this-is_my_script-01")
///             .body(Arrays.asList(Map.of("cron", "*/30 * * * *")))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersCronTrigger:
///     type: cloudflare:WorkersCronTrigger
///     name: example_workers_cron_trigger
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       scriptName: this-is_my_script-01
///       body:
///         - cron: '*/30 * * * *'
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workerCronTrigger:WorkerCronTrigger example '<account_id>/<script_name>'
/// ```
class WorkerCronTrigger extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<List<WorkerCronTriggerSchedule>> schedules;
  /// Name of the script, used in URLs and route configuration.
  late final pulumi.Output<String> scriptName;

  /// Creates a new [WorkerCronTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerCronTrigger]. {@macro pulumi_index_worker_cron_trigger_worker_cron_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerCronTrigger(
    String name, {
    WorkerCronTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workerCronTrigger:WorkerCronTrigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    schedules = registerOutput<List<WorkerCronTriggerSchedule>>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerCronTriggerSchedule>(guardedValue, (value) => WorkerCronTriggerSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    scriptName = registerOutput<String>('scriptName');
  }

  /// Gets an existing [WorkerCronTrigger] resource's state with the given [name] and [id].
  static WorkerCronTrigger get(
    String name,
    pulumi.Input<String> id, {
    WorkerCronTriggerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkerCronTrigger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkerCronTrigger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workerCronTrigger:WorkerCronTrigger',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    schedules = registerOutput<List<WorkerCronTriggerSchedule>>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerCronTriggerSchedule>(guardedValue, (value) => WorkerCronTriggerSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    scriptName = registerOutput<String>('scriptName');
  }

  /// Creates a typed reference to an existing [WorkerCronTrigger] resource.
  WorkerCronTrigger.reference(String urn)
    : super(
        'cloudflare:index/workerCronTrigger:WorkerCronTrigger',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    schedules = registerOutput<List<WorkerCronTriggerSchedule>>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerCronTriggerSchedule>(guardedValue, (value) => WorkerCronTriggerSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    scriptName = registerOutput<String>('scriptName');
  }
}

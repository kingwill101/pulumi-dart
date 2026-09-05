import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_args.dart';
import 'pipeline_state.dart';
import 'pipeline_table.dart';

/// Accepted Permissions
///
/// - `Pipelines Read`
/// - `Pipelines Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const examplePipeline = new cloudflare.Pipeline("example_pipeline", {
///     accountId: "0123105f4ecef8ad9ca31a8372d0c353",
///     name: "my_pipeline",
///     sql: "insert into sink select * from source;",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_pipeline = cloudflare.Pipeline("example_pipeline",
///     account_id="0123105f4ecef8ad9ca31a8372d0c353",
///     name="my_pipeline",
///     sql="insert into sink select * from source;")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplePipeline = new Cloudflare.Pipeline("example_pipeline", new()
///     {
///         AccountId = "0123105f4ecef8ad9ca31a8372d0c353",
///         Name = "my_pipeline",
///         Sql = "insert into sink select * from source;",
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
/// 		_, err := cloudflare.NewPipeline(ctx, "example_pipeline", &cloudflare.PipelineArgs{
/// 			AccountId: pulumi.String("0123105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("my_pipeline"),
/// 			Sql:       pulumi.String("insert into sink select * from source;"),
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
/// resource "cloudflare_pipeline" "example_pipeline" {
///   account_id = "0123105f4ecef8ad9ca31a8372d0c353"
///   name       = "my_pipeline"
///   sql        = "insert into sink select * from source;"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Pipeline;
/// import com.pulumi.cloudflare.PipelineArgs;
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
///         var examplePipeline = new Pipeline("examplePipeline", PipelineArgs.builder()
///             .accountId("0123105f4ecef8ad9ca31a8372d0c353")
///             .name("my_pipeline")
///             .sql("insert into sink select * from source;")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePipeline:
///     type: cloudflare:Pipeline
///     name: example_pipeline
///     properties:
///       accountId: 0123105f4ecef8ad9ca31a8372d0c353
///       name: my_pipeline
///       sql: insert into sink select * from source;
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/pipeline:Pipeline example '<account_id>/<pipeline_id>'
/// ```
class Pipeline extends pulumi.CustomResource {
  /// Specifies the public ID of the account.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Indicates the reason for the failure of the Pipeline.
  late final pulumi.Output<String> failureReason;
  late final pulumi.Output<String> modifiedAt;
  /// Specifies the name of the Pipeline.
  late final pulumi.Output<String> name;
  /// Specifies SQL for the Pipeline processing flow.
  late final pulumi.Output<String> sql;
  /// Indicates the current status of the Pipeline.
  late final pulumi.Output<String> status;
  /// List of streams and sinks used by this pipeline.
  late final pulumi.Output<List<PipelineTable>> tables;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_index_pipeline_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    failureReason = registerOutput<String>('failureReason');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    sql = registerOutput<String>('sql');
    status = registerOutput<String>('status');
    tables = registerOutput<List<PipelineTable>>('tables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTable>(guardedValue, (value) => PipelineTable.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Pipeline] resource's state with the given [name] and [id].
  static Pipeline get(
    String name,
    pulumi.Input<String> id, {
    PipelineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Pipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Pipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    failureReason = registerOutput<String>('failureReason');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    sql = registerOutput<String>('sql');
    status = registerOutput<String>('status');
    tables = registerOutput<List<PipelineTable>>('tables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTable>(guardedValue, (value) => PipelineTable.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Pipeline] resource.
  Pipeline.reference(String urn)
    : super(
        'cloudflare:index/pipeline:Pipeline',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    failureReason = registerOutput<String>('failureReason');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    sql = registerOutput<String>('sql');
    status = registerOutput<String>('status');
    tables = registerOutput<List<PipelineTable>>('tables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PipelineTable>(guardedValue, (value) => PipelineTable.fromMap((value as Map).cast<String, dynamic>())); });
  }
}

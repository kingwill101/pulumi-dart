import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stream_args.dart';
import 'pipeline_stream_format.dart';
import 'pipeline_stream_http.dart';
import 'pipeline_stream_schema.dart';
import 'pipeline_stream_state.dart';
import 'pipeline_stream_worker_binding.dart';

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
/// const examplePipelineStream = new cloudflare.PipelineStream("example_pipeline_stream", {
///     accountId: "0123105f4ecef8ad9ca31a8372d0c353",
///     name: "my_stream",
///     format: {
///         type: "json",
///         decimalEncoding: "number",
///         timestampFormat: "rfc3339",
///         unstructured: true,
///     },
///     http: {
///         authentication: false,
///         enabled: true,
///         cors: {
///             origins: ["string"],
///         },
///     },
///     schema: {
///         fields: [{
///             type: "int32",
///             metadataKey: "metadata_key",
///             name: "name",
///             required: true,
///             sqlName: "sql_name",
///         }],
///         format: {
///             type: "json",
///             decimalEncoding: "number",
///             timestampFormat: "rfc3339",
///             unstructured: true,
///         },
///         inferred: true,
///     },
///     workerBinding: {
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_pipeline_stream = cloudflare.PipelineStream("example_pipeline_stream",
///     account_id="0123105f4ecef8ad9ca31a8372d0c353",
///     name="my_stream",
///     format={
///         "type": "json",
///         "decimal_encoding": "number",
///         "timestamp_format": "rfc3339",
///         "unstructured": True,
///     },
///     http={
///         "authentication": False,
///         "enabled": True,
///         "cors": {
///             "origins": ["string"],
///         },
///     },
///     schema={
///         "fields": [{
///             "type": "int32",
///             "metadata_key": "metadata_key",
///             "name": "name",
///             "required": True,
///             "sql_name": "sql_name",
///         }],
///         "format": {
///             "type": "json",
///             "decimal_encoding": "number",
///             "timestamp_format": "rfc3339",
///             "unstructured": True,
///         },
///         "inferred": True,
///     },
///     worker_binding={
///         "enabled": True,
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
///     var examplePipelineStream = new Cloudflare.PipelineStream("example_pipeline_stream", new()
///     {
///         AccountId = "0123105f4ecef8ad9ca31a8372d0c353",
///         Name = "my_stream",
///         Format = new Cloudflare.Inputs.PipelineStreamFormatArgs
///         {
///             Type = "json",
///             DecimalEncoding = "number",
///             TimestampFormat = "rfc3339",
///             Unstructured = true,
///         },
///         Http = new Cloudflare.Inputs.PipelineStreamHttpArgs
///         {
///             Authentication = false,
///             Enabled = true,
///             Cors = new Cloudflare.Inputs.PipelineStreamHttpCorsArgs
///             {
///                 Origins = new[]
///                 {
///                     "string",
///                 },
///             },
///         },
///         Schema = new Cloudflare.Inputs.PipelineStreamSchemaArgs
///         {
///             Fields = new[]
///             {
///                 new Cloudflare.Inputs.PipelineStreamSchemaFieldArgs
///                 {
///                     Type = "int32",
///                     MetadataKey = "metadata_key",
///                     Name = "name",
///                     Required = true,
///                     SqlName = "sql_name",
///                 },
///             },
///             Format = new Cloudflare.Inputs.PipelineStreamSchemaFormatArgs
///             {
///                 Type = "json",
///                 DecimalEncoding = "number",
///                 TimestampFormat = "rfc3339",
///                 Unstructured = true,
///             },
///             Inferred = true,
///         },
///         WorkerBinding = new Cloudflare.Inputs.PipelineStreamWorkerBindingArgs
///         {
///             Enabled = true,
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
/// 		_, err := cloudflare.NewPipelineStream(ctx, "example_pipeline_stream", &cloudflare.PipelineStreamArgs{
/// 			AccountId: pulumi.String("0123105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("my_stream"),
/// 			Format: &cloudflare.PipelineStreamFormatArgs{
/// 				Type:            pulumi.String("json"),
/// 				DecimalEncoding: pulumi.String("number"),
/// 				TimestampFormat: pulumi.String("rfc3339"),
/// 				Unstructured:    pulumi.Bool(true),
/// 			},
/// 			Http: &cloudflare.PipelineStreamHttpArgs{
/// 				Authentication: pulumi.Bool(false),
/// 				Enabled:        pulumi.Bool(true),
/// 				Cors: &cloudflare.PipelineStreamHttpCorsArgs{
/// 					Origins: pulumi.StringArray{
/// 						pulumi.String("string"),
/// 					},
/// 				},
/// 			},
/// 			Schema: &cloudflare.PipelineStreamSchemaArgs{
/// 				Fields: cloudflare.PipelineStreamSchemaFieldArray{
/// 					&cloudflare.PipelineStreamSchemaFieldArgs{
/// 						Type:        pulumi.String("int32"),
/// 						MetadataKey: pulumi.String("metadata_key"),
/// 						Name:        pulumi.String("name"),
/// 						Required:    pulumi.Bool(true),
/// 						SqlName:     pulumi.String("sql_name"),
/// 					},
/// 				},
/// 				Format: &cloudflare.PipelineStreamSchemaFormatArgs{
/// 					Type:            pulumi.String("json"),
/// 					DecimalEncoding: pulumi.String("number"),
/// 					TimestampFormat: pulumi.String("rfc3339"),
/// 					Unstructured:    pulumi.Bool(true),
/// 				},
/// 				Inferred: pulumi.Bool(true),
/// 			},
/// 			WorkerBinding: &cloudflare.PipelineStreamWorkerBindingArgs{
/// 				Enabled: pulumi.Bool(true),
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
/// resource "cloudflare_pipelinestream" "example_pipeline_stream" {
///   account_id = "0123105f4ecef8ad9ca31a8372d0c353"
///   name       = "my_stream"
///   format = {
///     type             = "json"
///     decimal_encoding = "number"
///     timestamp_format = "rfc3339"
///     unstructured     = true
///   }
///   http = {
///     authentication = false
///     enabled        = true
///     cors = {
///       origins = ["string"]
///     }
///   }
///   schema = {
///     fields = [{
///       "type"        = "int32"
///       "metadataKey" = "metadata_key"
///       "name"        = "name"
///       "required"    = true
///       "sqlName"     = "sql_name"
///     }]
///     format = {
///       type             = "json"
///       decimal_encoding = "number"
///       timestamp_format = "rfc3339"
///       unstructured     = true
///     }
///     inferred = true
///   }
///   worker_binding = {
///     enabled = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.PipelineStream;
/// import com.pulumi.cloudflare.PipelineStreamArgs;
/// import com.pulumi.cloudflare.inputs.PipelineStreamFormatArgs;
/// import com.pulumi.cloudflare.inputs.PipelineStreamHttpArgs;
/// import com.pulumi.cloudflare.inputs.PipelineStreamHttpCorsArgs;
/// import com.pulumi.cloudflare.inputs.PipelineStreamSchemaArgs;
/// import com.pulumi.cloudflare.inputs.PipelineStreamSchemaFieldArgs;
/// import com.pulumi.cloudflare.inputs.PipelineStreamSchemaFormatArgs;
/// import com.pulumi.cloudflare.inputs.PipelineStreamWorkerBindingArgs;
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
///         var examplePipelineStream = new PipelineStream("examplePipelineStream", PipelineStreamArgs.builder()
///             .accountId("0123105f4ecef8ad9ca31a8372d0c353")
///             .name("my_stream")
///             .format(PipelineStreamFormatArgs.builder()
///                 .type("json")
///                 .decimalEncoding("number")
///                 .timestampFormat("rfc3339")
///                 .unstructured(true)
///                 .build())
///             .http(PipelineStreamHttpArgs.builder()
///                 .authentication(false)
///                 .enabled(true)
///                 .cors(PipelineStreamHttpCorsArgs.builder()
///                     .origins("string")
///                     .build())
///                 .build())
///             .schema(PipelineStreamSchemaArgs.builder()
///                 .fields(PipelineStreamSchemaFieldArgs.builder()
///                     .type("int32")
///                     .metadataKey("metadata_key")
///                     .name("name")
///                     .required(true)
///                     .sqlName("sql_name")
///                     .build())
///                 .format(PipelineStreamSchemaFormatArgs.builder()
///                     .type("json")
///                     .decimalEncoding("number")
///                     .timestampFormat("rfc3339")
///                     .unstructured(true)
///                     .build())
///                 .inferred(true)
///                 .build())
///             .workerBinding(PipelineStreamWorkerBindingArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePipelineStream:
///     type: cloudflare:PipelineStream
///     name: example_pipeline_stream
///     properties:
///       accountId: 0123105f4ecef8ad9ca31a8372d0c353
///       name: my_stream
///       format:
///         type: json
///         decimalEncoding: number
///         timestampFormat: rfc3339
///         unstructured: true
///       http:
///         authentication: false
///         enabled: true
///         cors:
///           origins:
///             - string
///       schema:
///         fields:
///           - type: int32
///             metadataKey: metadata_key
///             name: name
///             required: true
///             sqlName: sql_name
///         format:
///           type: json
///           decimalEncoding: number
///           timestampFormat: rfc3339
///           unstructured: true
///         inferred: true
///       workerBinding:
///         enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/pipelineStream:PipelineStream example '<account_id>/<stream_id>'
/// ```
class PipelineStream extends pulumi.CustomResource {
  /// Specifies the public ID of the account.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Indicates the endpoint URL of this stream.
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<PipelineStreamFormat?> format;
  late final pulumi.Output<PipelineStreamHttp> http;
  late final pulumi.Output<String> modifiedAt;
  /// Specifies the name of the Stream.
  late final pulumi.Output<String> name;
  late final pulumi.Output<PipelineStreamSchema?> schema;
  /// Indicates the current version of this stream.
  late final pulumi.Output<int> version;
  late final pulumi.Output<PipelineStreamWorkerBinding> workerBinding;

  /// Creates a new [PipelineStream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineStream]. {@macro pulumi_index_pipeline_stream_pipeline_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineStream(
    String name, {
    PipelineStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pipelineStream:PipelineStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    endpoint = registerOutput<String>('endpoint');
    format = registerOutput<PipelineStreamFormat?>('format', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    http = registerOutput<PipelineStreamHttp>('http', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    schema = registerOutput<PipelineStreamSchema?>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<int>('version');
    workerBinding = registerOutput<PipelineStreamWorkerBinding>('workerBinding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamWorkerBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [PipelineStream] resource's state with the given [name] and [id].
  static PipelineStream get(
    String name,
    pulumi.Input<String> id, {
    PipelineStreamState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PipelineStream._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PipelineStream._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pipelineStream:PipelineStream',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    endpoint = registerOutput<String>('endpoint');
    format = registerOutput<PipelineStreamFormat?>('format', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    http = registerOutput<PipelineStreamHttp>('http', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    schema = registerOutput<PipelineStreamSchema?>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<int>('version');
    workerBinding = registerOutput<PipelineStreamWorkerBinding>('workerBinding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamWorkerBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PipelineStream] resource.
  PipelineStream.reference(String urn)
    : super(
        'cloudflare:index/pipelineStream:PipelineStream',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    endpoint = registerOutput<String>('endpoint');
    format = registerOutput<PipelineStreamFormat?>('format', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    http = registerOutput<PipelineStreamHttp>('http', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    schema = registerOutput<PipelineStreamSchema?>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<int>('version');
    workerBinding = registerOutput<PipelineStreamWorkerBinding>('workerBinding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineStreamWorkerBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

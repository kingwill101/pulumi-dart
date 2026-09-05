import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_sink_args.dart';
import 'pipeline_sink_config.dart';
import 'pipeline_sink_format.dart';
import 'pipeline_sink_schema.dart';
import 'pipeline_sink_state.dart';

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
/// const examplePipelineSink = new cloudflare.PipelineSink("example_pipeline_sink", {
///     accountId: "0123105f4ecef8ad9ca31a8372d0c353",
///     name: "my_sink",
///     type: "r2",
///     config: {
///         accountId: "account_id",
///         bucket: "bucket",
///         credentials: {
///             accessKeyId: "access_key_id",
///             secretAccessKey: "secret_access_key",
///         },
///         fileNaming: {
///             prefix: "prefix",
///             strategy: "serial",
///             suffix: "suffix",
///         },
///         jurisdiction: "jurisdiction",
///         partitioning: {
///             timePattern: "year=%Y/month=%m/day=%d/hour=%H",
///         },
///         path: "path",
///         rollingPolicy: {
///             fileSizeBytes: 0,
///             inactivitySeconds: 1,
///             intervalSeconds: 1,
///         },
///     },
///     format: {
///         type: "json",
///         decimalEncoding: "number",
///         timestampFormat: "rfc3339",
///         unstructured: true,
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_pipeline_sink = cloudflare.PipelineSink("example_pipeline_sink",
///     account_id="0123105f4ecef8ad9ca31a8372d0c353",
///     name="my_sink",
///     type="r2",
///     config={
///         "account_id": "account_id",
///         "bucket": "bucket",
///         "credentials": {
///             "access_key_id": "access_key_id",
///             "secret_access_key": "secret_access_key",
///         },
///         "file_naming": {
///             "prefix": "prefix",
///             "strategy": "serial",
///             "suffix": "suffix",
///         },
///         "jurisdiction": "jurisdiction",
///         "partitioning": {
///             "time_pattern": "year=%Y/month=%m/day=%d/hour=%H",
///         },
///         "path": "path",
///         "rolling_policy": {
///             "file_size_bytes": 0,
///             "inactivity_seconds": 1,
///             "interval_seconds": 1,
///         },
///     },
///     format={
///         "type": "json",
///         "decimal_encoding": "number",
///         "timestamp_format": "rfc3339",
///         "unstructured": True,
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
///     var examplePipelineSink = new Cloudflare.PipelineSink("example_pipeline_sink", new()
///     {
///         AccountId = "0123105f4ecef8ad9ca31a8372d0c353",
///         Name = "my_sink",
///         Type = "r2",
///         Config = new Cloudflare.Inputs.PipelineSinkConfigArgs
///         {
///             AccountId = "account_id",
///             Bucket = "bucket",
///             Credentials = new Cloudflare.Inputs.PipelineSinkConfigCredentialsArgs
///             {
///                 AccessKeyId = "access_key_id",
///                 SecretAccessKey = "secret_access_key",
///             },
///             FileNaming = new Cloudflare.Inputs.PipelineSinkConfigFileNamingArgs
///             {
///                 Prefix = "prefix",
///                 Strategy = "serial",
///                 Suffix = "suffix",
///             },
///             Jurisdiction = "jurisdiction",
///             Partitioning = new Cloudflare.Inputs.PipelineSinkConfigPartitioningArgs
///             {
///                 TimePattern = "year=%Y/month=%m/day=%d/hour=%H",
///             },
///             Path = "path",
///             RollingPolicy = new Cloudflare.Inputs.PipelineSinkConfigRollingPolicyArgs
///             {
///                 FileSizeBytes = 0,
///                 InactivitySeconds = 1,
///                 IntervalSeconds = 1,
///             },
///         },
///         Format = new Cloudflare.Inputs.PipelineSinkFormatArgs
///         {
///             Type = "json",
///             DecimalEncoding = "number",
///             TimestampFormat = "rfc3339",
///             Unstructured = true,
///         },
///         Schema = new Cloudflare.Inputs.PipelineSinkSchemaArgs
///         {
///             Fields = new[]
///             {
///                 new Cloudflare.Inputs.PipelineSinkSchemaFieldArgs
///                 {
///                     Type = "int32",
///                     MetadataKey = "metadata_key",
///                     Name = "name",
///                     Required = true,
///                     SqlName = "sql_name",
///                 },
///             },
///             Format = new Cloudflare.Inputs.PipelineSinkSchemaFormatArgs
///             {
///                 Type = "json",
///                 DecimalEncoding = "number",
///                 TimestampFormat = "rfc3339",
///                 Unstructured = true,
///             },
///             Inferred = true,
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
/// 		_, err := cloudflare.NewPipelineSink(ctx, "example_pipeline_sink", &cloudflare.PipelineSinkArgs{
/// 			AccountId: pulumi.String("0123105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("my_sink"),
/// 			Type:      pulumi.String("r2"),
/// 			Config: &cloudflare.PipelineSinkConfigArgs{
/// 				AccountId: pulumi.String("account_id"),
/// 				Bucket:    pulumi.String("bucket"),
/// 				Credentials: &cloudflare.PipelineSinkConfigCredentialsArgs{
/// 					AccessKeyId:     pulumi.String("access_key_id"),
/// 					SecretAccessKey: pulumi.String("secret_access_key"),
/// 				},
/// 				FileNaming: &cloudflare.PipelineSinkConfigFileNamingArgs{
/// 					Prefix:   pulumi.String("prefix"),
/// 					Strategy: pulumi.String("serial"),
/// 					Suffix:   pulumi.String("suffix"),
/// 				},
/// 				Jurisdiction: pulumi.String("jurisdiction"),
/// 				Partitioning: &cloudflare.PipelineSinkConfigPartitioningArgs{
/// 					TimePattern: pulumi.String("year=%Y/month=%m/day=%d/hour=%H"),
/// 				},
/// 				Path: pulumi.String("path"),
/// 				RollingPolicy: &cloudflare.PipelineSinkConfigRollingPolicyArgs{
/// 					FileSizeBytes:     pulumi.Int(0),
/// 					InactivitySeconds: pulumi.Int(1),
/// 					IntervalSeconds:   pulumi.Int(1),
/// 				},
/// 			},
/// 			Format: &cloudflare.PipelineSinkFormatArgs{
/// 				Type:            pulumi.String("json"),
/// 				DecimalEncoding: pulumi.String("number"),
/// 				TimestampFormat: pulumi.String("rfc3339"),
/// 				Unstructured:    pulumi.Bool(true),
/// 			},
/// 			Schema: &cloudflare.PipelineSinkSchemaArgs{
/// 				Fields: cloudflare.PipelineSinkSchemaFieldArray{
/// 					&cloudflare.PipelineSinkSchemaFieldArgs{
/// 						Type:        pulumi.String("int32"),
/// 						MetadataKey: pulumi.String("metadata_key"),
/// 						Name:        pulumi.String("name"),
/// 						Required:    pulumi.Bool(true),
/// 						SqlName:     pulumi.String("sql_name"),
/// 					},
/// 				},
/// 				Format: &cloudflare.PipelineSinkSchemaFormatArgs{
/// 					Type:            pulumi.String("json"),
/// 					DecimalEncoding: pulumi.String("number"),
/// 					TimestampFormat: pulumi.String("rfc3339"),
/// 					Unstructured:    pulumi.Bool(true),
/// 				},
/// 				Inferred: pulumi.Bool(true),
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
/// resource "cloudflare_pipelinesink" "example_pipeline_sink" {
///   account_id = "0123105f4ecef8ad9ca31a8372d0c353"
///   name       = "my_sink"
///   type       = "r2"
///   config = {
///     account_id = "account_id"
///     bucket     = "bucket"
///     credentials = {
///       access_key_id     = "access_key_id"
///       secret_access_key = "secret_access_key"
///     }
///     file_naming = {
///       prefix   = "prefix"
///       strategy = "serial"
///       suffix   = "suffix"
///     }
///     jurisdiction = "jurisdiction"
///     partitioning = {
///       time_pattern = "year=%Y/month=%m/day=%d/hour=%H"
///     }
///     path = "path"
///     rolling_policy = {
///       file_size_bytes    = 0
///       inactivity_seconds = 1
///       interval_seconds   = 1
///     }
///   }
///   format = {
///     type             = "json"
///     decimal_encoding = "number"
///     timestamp_format = "rfc3339"
///     unstructured     = true
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
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.PipelineSink;
/// import com.pulumi.cloudflare.PipelineSinkArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkConfigArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkConfigCredentialsArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkConfigFileNamingArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkConfigPartitioningArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkConfigRollingPolicyArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkFormatArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkSchemaArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkSchemaFieldArgs;
/// import com.pulumi.cloudflare.inputs.PipelineSinkSchemaFormatArgs;
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
///         var examplePipelineSink = new PipelineSink("examplePipelineSink", PipelineSinkArgs.builder()
///             .accountId("0123105f4ecef8ad9ca31a8372d0c353")
///             .name("my_sink")
///             .type("r2")
///             .config(PipelineSinkConfigArgs.builder()
///                 .accountId("account_id")
///                 .bucket("bucket")
///                 .credentials(PipelineSinkConfigCredentialsArgs.builder()
///                     .accessKeyId("access_key_id")
///                     .secretAccessKey("secret_access_key")
///                     .build())
///                 .fileNaming(PipelineSinkConfigFileNamingArgs.builder()
///                     .prefix("prefix")
///                     .strategy("serial")
///                     .suffix("suffix")
///                     .build())
///                 .jurisdiction("jurisdiction")
///                 .partitioning(PipelineSinkConfigPartitioningArgs.builder()
///                     .timePattern("year=%Y/month=%m/day=%d/hour=%H")
///                     .build())
///                 .path("path")
///                 .rollingPolicy(PipelineSinkConfigRollingPolicyArgs.builder()
///                     .fileSizeBytes(0)
///                     .inactivitySeconds(1)
///                     .intervalSeconds(1)
///                     .build())
///                 .build())
///             .format(PipelineSinkFormatArgs.builder()
///                 .type("json")
///                 .decimalEncoding("number")
///                 .timestampFormat("rfc3339")
///                 .unstructured(true)
///                 .build())
///             .schema(PipelineSinkSchemaArgs.builder()
///                 .fields(PipelineSinkSchemaFieldArgs.builder()
///                     .type("int32")
///                     .metadataKey("metadata_key")
///                     .name("name")
///                     .required(true)
///                     .sqlName("sql_name")
///                     .build())
///                 .format(PipelineSinkSchemaFormatArgs.builder()
///                     .type("json")
///                     .decimalEncoding("number")
///                     .timestampFormat("rfc3339")
///                     .unstructured(true)
///                     .build())
///                 .inferred(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePipelineSink:
///     type: cloudflare:PipelineSink
///     name: example_pipeline_sink
///     properties:
///       accountId: 0123105f4ecef8ad9ca31a8372d0c353
///       name: my_sink
///       type: r2
///       config:
///         accountId: account_id
///         bucket: bucket
///         credentials:
///           accessKeyId: access_key_id
///           secretAccessKey: secret_access_key
///         fileNaming:
///           prefix: prefix
///           strategy: serial
///           suffix: suffix
///         jurisdiction: jurisdiction
///         partitioning:
///           timePattern: year=%Y/month=%m/day=%d/hour=%H
///         path: path
///         rollingPolicy:
///           fileSizeBytes: 0
///           inactivitySeconds: 1
///           intervalSeconds: 1
///       format:
///         type: json
///         decimalEncoding: number
///         timestampFormat: rfc3339
///         unstructured: true
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
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/pipelineSink:PipelineSink example '<account_id>/<sink_id>'
/// ```
class PipelineSink extends pulumi.CustomResource {
  /// Specifies the public ID of the account.
  late final pulumi.Output<String> accountId;
  /// Defines the configuration of the R2 Sink.
  late final pulumi.Output<PipelineSinkConfig?> config;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<PipelineSinkFormat?> format;
  late final pulumi.Output<String> modifiedAt;
  /// Defines the name of the Sink.
  late final pulumi.Output<String> name;
  late final pulumi.Output<PipelineSinkSchema?> schema;
  /// Specifies the type of sink.
  /// Available values: "r2", "r2*data*catalog".
  late final pulumi.Output<String> type;

  /// Creates a new [PipelineSink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineSink]. {@macro pulumi_index_pipeline_sink_pipeline_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineSink(
    String name, {
    PipelineSinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pipelineSink:PipelineSink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<PipelineSinkConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    format = registerOutput<PipelineSinkFormat?>('format', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    schema = registerOutput<PipelineSinkSchema?>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [PipelineSink] resource's state with the given [name] and [id].
  static PipelineSink get(
    String name,
    pulumi.Input<String> id, {
    PipelineSinkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PipelineSink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PipelineSink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/pipelineSink:PipelineSink',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<PipelineSinkConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    format = registerOutput<PipelineSinkFormat?>('format', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    schema = registerOutput<PipelineSinkSchema?>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PipelineSink] resource.
  PipelineSink.reference(String urn)
    : super(
        'cloudflare:index/pipelineSink:PipelineSink',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<PipelineSinkConfig?>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    format = registerOutput<PipelineSinkFormat?>('format', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    schema = registerOutput<PipelineSinkSchema?>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineSinkSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

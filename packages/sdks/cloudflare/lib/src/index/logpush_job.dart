import 'package:pulumi/pulumi.dart' as pulumi;
import 'logpush_job_args.dart';
import 'logpush_job_output_options.dart';
import 'logpush_job_state.dart';

/// Accepted Permissions
///
/// - `Logs Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLogpushJob = new cloudflare.LogpushJob("example_logpush_job", {
///     destinationConf: "s3://mybucket/logs?region=us-west-2",
///     zoneId: "zone_id",
///     dataset: "gateway_dns",
///     enabled: false,
///     filter: "{\"where\":{\"and\":[{\"key\":\"ClientRequestPath\",\"operator\":\"contains\",\"value\":\"/static\"},{\"key\":\"ClientRequestHost\",\"operator\":\"eq\",\"value\":\"example.com\"}]}}",
///     frequency: "high",
///     kind: "",
///     logpullOptions: "fields=RayID,ClientIP,EdgeStartTimestamp&timestamps=rfc3339",
///     maxUploadBytes: 5000000,
///     maxUploadIntervalSeconds: 30,
///     maxUploadRecords: 1000,
///     name: "example.com",
///     outputOptions: {
///         batchPrefix: "",
///         batchSuffix: "",
///         cve202144228: false,
///         fieldDelimiter: ",",
///         fieldNames: [
///             "Datetime",
///             "DstIP",
///             "SrcIP",
///         ],
///         mergeSubrequests: true,
///         outputType: "ndjson",
///         recordDelimiter: "",
///         recordPrefix: "{",
///         recordSuffix: `    }
///
/// `,
///         recordTemplate: "record_template",
///         sampleRate: 1,
///         timestampFormat: "unixnano",
///     },
///     ownershipChallenge: "00000000000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_logpush_job = cloudflare.LogpushJob("example_logpush_job",
///     destination_conf="s3://mybucket/logs?region=us-west-2",
///     zone_id="zone_id",
///     dataset="gateway_dns",
///     enabled=False,
///     filter="{\"where\":{\"and\":[{\"key\":\"ClientRequestPath\",\"operator\":\"contains\",\"value\":\"/static\"},{\"key\":\"ClientRequestHost\",\"operator\":\"eq\",\"value\":\"example.com\"}]}}",
///     frequency="high",
///     kind="",
///     logpull_options="fields=RayID,ClientIP,EdgeStartTimestamp&timestamps=rfc3339",
///     max_upload_bytes=5000000,
///     max_upload_interval_seconds=30,
///     max_upload_records=1000,
///     name="example.com",
///     output_options={
///         "batch_prefix": "",
///         "batch_suffix": "",
///         "cve202144228": False,
///         "field_delimiter": ",",
///         "field_names": [
///             "Datetime",
///             "DstIP",
///             "SrcIP",
///         ],
///         "merge_subrequests": True,
///         "output_type": "ndjson",
///         "record_delimiter": "",
///         "record_prefix": "{",
///         "record_suffix": """    }
///
/// """,
///         "record_template": "record_template",
///         "sample_rate": float(1),
///         "timestamp_format": "unixnano",
///     },
///     ownership_challenge="00000000000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLogpushJob = new Cloudflare.LogpushJob("example_logpush_job", new()
///     {
///         DestinationConf = "s3://mybucket/logs?region=us-west-2",
///         ZoneId = "zone_id",
///         Dataset = "gateway_dns",
///         Enabled = false,
///         Filter = "{\"where\":{\"and\":[{\"key\":\"ClientRequestPath\",\"operator\":\"contains\",\"value\":\"/static\"},{\"key\":\"ClientRequestHost\",\"operator\":\"eq\",\"value\":\"example.com\"}]}}",
///         Frequency = "high",
///         Kind = "",
///         LogpullOptions = "fields=RayID,ClientIP,EdgeStartTimestamp&timestamps=rfc3339",
///         MaxUploadBytes = 5000000,
///         MaxUploadIntervalSeconds = 30,
///         MaxUploadRecords = 1000,
///         Name = "example.com",
///         OutputOptions = new Cloudflare.Inputs.LogpushJobOutputOptionsArgs
///         {
///             BatchPrefix = "",
///             BatchSuffix = "",
///             Cve202144228 = false,
///             FieldDelimiter = ",",
///             FieldNames = new[]
///             {
///                 "Datetime",
///                 "DstIP",
///                 "SrcIP",
///             },
///             MergeSubrequests = true,
///             OutputType = "ndjson",
///             RecordDelimiter = "",
///             RecordPrefix = "{",
///             RecordSuffix = @"    }
///
/// ",
///             RecordTemplate = "record_template",
///             SampleRate = 1,
///             TimestampFormat = "unixnano",
///         },
///         OwnershipChallenge = "00000000000000000000",
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
/// 		_, err := cloudflare.NewLogpushJob(ctx, "example_logpush_job", &cloudflare.LogpushJobArgs{
/// 			DestinationConf:          pulumi.String("s3://mybucket/logs?region=us-west-2"),
/// 			ZoneId:                   pulumi.String("zone_id"),
/// 			Dataset:                  pulumi.String("gateway_dns"),
/// 			Enabled:                  pulumi.Bool(false),
/// 			Filter:                   pulumi.String("{\"where\":{\"and\":[{\"key\":\"ClientRequestPath\",\"operator\":\"contains\",\"value\":\"/static\"},{\"key\":\"ClientRequestHost\",\"operator\":\"eq\",\"value\":\"example.com\"}]}}"),
/// 			Frequency:                pulumi.String("high"),
/// 			Kind:                     pulumi.String(""),
/// 			LogpullOptions:           pulumi.String("fields=RayID,ClientIP,EdgeStartTimestamp&timestamps=rfc3339"),
/// 			MaxUploadBytes:           pulumi.Int(5000000),
/// 			MaxUploadIntervalSeconds: pulumi.Int(30),
/// 			MaxUploadRecords:         pulumi.Int(1000),
/// 			Name:                     pulumi.String("example.com"),
/// 			OutputOptions: &cloudflare.LogpushJobOutputOptionsArgs{
/// 				BatchPrefix:    pulumi.String(""),
/// 				BatchSuffix:    pulumi.String(""),
/// 				Cve202144228:   pulumi.Bool(false),
/// 				FieldDelimiter: pulumi.String(","),
/// 				FieldNames: pulumi.StringArray{
/// 					pulumi.String("Datetime"),
/// 					pulumi.String("DstIP"),
/// 					pulumi.String("SrcIP"),
/// 				},
/// 				MergeSubrequests: pulumi.Bool(true),
/// 				OutputType:       pulumi.String("ndjson"),
/// 				RecordDelimiter:  pulumi.String(""),
/// 				RecordPrefix:     pulumi.String("{"),
/// 				RecordSuffix:     pulumi.String("    }\n\n"),
/// 				RecordTemplate:   pulumi.String("record_template"),
/// 				SampleRate:       pulumi.Float64(1),
/// 				TimestampFormat:  pulumi.String("unixnano"),
/// 			},
/// 			OwnershipChallenge: pulumi.String("00000000000000000000"),
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
/// resource "cloudflare_logpushjob" "example_logpush_job" {
///   destination_conf            = "s3://mybucket/logs?region=us-west-2"
///   zone_id                     = "zone_id"
///   dataset                     = "gateway_dns"
///   enabled                     = false
///   filter                      = "{\"where\":{\"and\":[{\"key\":\"ClientRequestPath\",\"operator\":\"contains\",\"value\":\"/static\"},{\"key\":\"ClientRequestHost\",\"operator\":\"eq\",\"value\":\"example.com\"}]}}"
///   frequency                   = "high"
///   kind                        = ""
///   logpull_options             = "fields=RayID,ClientIP,EdgeStartTimestamp&timestamps=rfc3339"
///   max_upload_bytes            = 5000000
///   max_upload_interval_seconds = 30
///   max_upload_records          = 1000
///   name                        = "example.com"
///   output_options = {
///     batch_prefix      = ""
///     batch_suffix      = ""
///     cve202144228      = false
///     field_delimiter   = ","
///     field_names       = ["Datetime", "DstIP", "SrcIP"]
///     merge_subrequests = true
///     output_type       = "ndjson"
///     record_delimiter  = ""
///     record_prefix     = "{"
///     record_suffix     = "    }\n\n"
///     record_template   = "record_template"
///     sample_rate       = 1
///     timestamp_format  = "unixnano"
///   }
///   ownership_challenge = "00000000000000000000"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LogpushJob;
/// import com.pulumi.cloudflare.LogpushJobArgs;
/// import com.pulumi.cloudflare.inputs.LogpushJobOutputOptionsArgs;
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
///         var exampleLogpushJob = new LogpushJob("exampleLogpushJob", LogpushJobArgs.builder()
///             .destinationConf("s3://mybucket/logs?region=us-west-2")
///             .zoneId("zone_id")
///             .dataset("gateway_dns")
///             .enabled(false)
///             .filter("{\"where\":{\"and\":[{\"key\":\"ClientRequestPath\",\"operator\":\"contains\",\"value\":\"/static\"},{\"key\":\"ClientRequestHost\",\"operator\":\"eq\",\"value\":\"example.com\"}]}}")
///             .frequency("high")
///             .kind("")
///             .logpullOptions("fields=RayID,ClientIP,EdgeStartTimestamp&timestamps=rfc3339")
///             .maxUploadBytes(5000000)
///             .maxUploadIntervalSeconds(30)
///             .maxUploadRecords(1000)
///             .name("example.com")
///             .outputOptions(LogpushJobOutputOptionsArgs.builder()
///                 .batchPrefix("")
///                 .batchSuffix("")
///                 .cve202144228(false)
///                 .fieldDelimiter(",")
///                 .fieldNames(
///                     "Datetime",
///                     "DstIP",
///                     "SrcIP")
///                 .mergeSubrequests(true)
///                 .outputType("ndjson")
///                 .recordDelimiter("")
///                 .recordPrefix("{")
///                 .recordSuffix("""
///     }
///
///                 """)
///                 .recordTemplate("record_template")
///                 .sampleRate(1.0)
///                 .timestampFormat("unixnano")
///                 .build())
///             .ownershipChallenge("00000000000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLogpushJob:
///     type: cloudflare:LogpushJob
///     name: example_logpush_job
///     properties:
///       destinationConf: s3://mybucket/logs?region=us-west-2
///       zoneId: zone_id
///       dataset: gateway_dns
///       enabled: false
///       filter: '{"where":{"and":[{"key":"ClientRequestPath","operator":"contains","value":"/static"},{"key":"ClientRequestHost","operator":"eq","value":"example.com"}]}}'
///       frequency: high
///       kind: ""
///       logpullOptions: fields=RayID,ClientIP,EdgeStartTimestamp&timestamps=rfc3339
///       maxUploadBytes: 5e+06
///       maxUploadIntervalSeconds: 30
///       maxUploadRecords: 1000
///       name: example.com
///       outputOptions:
///         batchPrefix: ""
///         batchSuffix: ""
///         cve202144228: false
///         fieldDelimiter: ','
///         fieldNames:
///           - Datetime
///           - DstIP
///           - SrcIP
///         mergeSubrequests: true
///         outputType: ndjson
///         recordDelimiter: ""
///         recordPrefix: '{'
///         recordSuffix: |2+
///               }
///
///         recordTemplate: record_template
///         sampleRate: 1
///         timestampFormat: unixnano
///       ownershipChallenge: '00000000000000000000'
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/logpushJob:LogpushJob example '<{accounts|zones}/{account_id|zone_id}>/<job_id>'
/// ```
class LogpushJob extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
  /// Available values: "access*requests", "audit*logs", "audit*logs*v2", "biso*user*actions", "casb*findings", "device*posture*results", "dex*application*tests", "dex*device*state*events", "dlp*forensic*copies", "dns*firewall*logs", "dns*logs", "email*security*alerts", "email*security*post*delivery*events", "firewall*events", "gateway*dns", "gateway*http", "gateway*network", "http*requests", "ipsec*logs", "magic*ids*detections", "mcp*portal*logs", "mnm*flow*logs", "nel*reports", "network*analytics*logs", "page*shield*events", "sinkhole*http*logs", "spectrum*events", "ssh*logs", "turnstile*events", "warp*config*changes", "warp*toggle*changes", "websocket*analytics", "workers*trace*events", "zaraz*events", "zero*trust*network*sessions".
  late final pulumi.Output<String> dataset;
  /// Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
  late final pulumi.Output<String> destinationConf;
  /// Flag that indicates if the job is enabled.
  late final pulumi.Output<bool> enabled;
  /// If not null, the job is currently failing. Failures are usually. repetitive (example: no permissions to write to destination bucket). Only the last failure is recorded. On successful execution of a job the error*message and last*error are set to null.
  late final pulumi.Output<String> errorMessage;
  /// The filters to select the events to include and/or remove from your logs. For more information, refer to [Filters](https://developers.cloudflare.com/logs/reference/filters/).
  late final pulumi.Output<String> filter;
  /// This field is deprecated. Please use `max_upload_*` parameters instead. . The frequency at which Cloudflare sends batches of logs to your destination. Setting frequency to high sends your logs in larger quantities of smaller files. Setting frequency to low sends logs in smaller quantities of larger files.
  /// Available values: "high", "low".
  late final pulumi.Output<String> frequency;
  /// The kind parameter (optional) is used to differentiate between Logpush and Edge Log Delivery jobs (when supported by the dataset).
  /// Available values: "", "edge".
  late final pulumi.Output<String> kind;
  /// Records the last time for which logs have been successfully pushed. If the last successful push was for logs range 2018-07-23T10:00:00Z to 2018-07-23T10:01:00Z then the value of this field will be 2018-07-23T10:01:00Z. If the job has never run or has just been enabled and hasn't run yet then the field will be empty.
  late final pulumi.Output<String> lastComplete;
  /// Records the last time the job failed. If not null, the job is currently. failing. If null, the job has either never failed or has run successfully at least once since last failure. See also the errorMessage field.
  late final pulumi.Output<String> lastError;
  /// This field is deprecated. Use `outputOptions` instead. Configuration string. It specifies things like requested fields and timestamp formats. If migrating from the logpull api, copy the url (full url or just the query string) of your call here, and logpush will keep on making this call for you, setting start and end times appropriately.
  late final pulumi.Output<String> logpullOptions;
  /// The maximum uncompressed file size of a batch of logs. This setting value must be between `5 MB` and `1 GB`, or `0` to disable it. Note that you cannot set a minimum file size; this means that log files may be much smaller than this batch size.
  late final pulumi.Output<int> maxUploadBytes;
  /// The maximum interval in seconds for log batches. This setting must be between 30 and 300 seconds (5 minutes), or `0` to disable it. Note that you cannot specify a minimum interval for log batches; this means that log files may be sent in shorter intervals than this.
  late final pulumi.Output<int> maxUploadIntervalSeconds;
  /// The maximum number of log lines per batch. This setting must be between 1000 and 1,000,000 lines, or `0` to disable it. Note that you cannot specify a minimum number of log lines per batch; this means that log files may contain many fewer lines than this.
  late final pulumi.Output<int> maxUploadRecords;
  /// Optional human readable job name. Not unique. Cloudflare suggests. that you set this to a meaningful string, like the domain name, to make it easier to identify your job.
  late final pulumi.Output<String> name;
  /// The structured replacement for `logpullOptions`. When including this field, the `logpullOption` field will be ignored.
  late final pulumi.Output<LogpushJobOutputOptions?> outputOptions;
  /// Ownership challenge token to prove destination ownership.
  late final pulumi.Output<String?> ownershipChallenge;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [LogpushJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogpushJob]. {@macro pulumi_index_logpush_job_logpush_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogpushJob(
    String name, {
    LogpushJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/logpushJob:LogpushJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['destinationConf', 'ownershipChallenge'],
        ) {
    accountId = registerOutput<String?>('accountId');
    dataset = registerOutput<String>('dataset');
    destinationConf = registerOutput<String>('destinationConf', isSecret: true);
    enabled = registerOutput<bool>('enabled');
    errorMessage = registerOutput<String>('errorMessage');
    filter = registerOutput<String>('filter');
    frequency = registerOutput<String>('frequency');
    kind = registerOutput<String>('kind');
    lastComplete = registerOutput<String>('lastComplete');
    lastError = registerOutput<String>('lastError');
    logpullOptions = registerOutput<String>('logpullOptions');
    maxUploadBytes = registerOutput<int>('maxUploadBytes');
    maxUploadIntervalSeconds = registerOutput<int>('maxUploadIntervalSeconds');
    maxUploadRecords = registerOutput<int>('maxUploadRecords');
    this.name = registerOutput<String>('name');
    outputOptions = registerOutput<LogpushJobOutputOptions?>('outputOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogpushJobOutputOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownershipChallenge = registerOutput<String?>('ownershipChallenge', isSecret: true);
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [LogpushJob] resource's state with the given [name] and [id].
  static LogpushJob get(
    String name,
    pulumi.Input<String> id, {
    LogpushJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogpushJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogpushJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/logpushJob:LogpushJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    dataset = registerOutput<String>('dataset');
    destinationConf = registerOutput<String>('destinationConf', isSecret: true);
    enabled = registerOutput<bool>('enabled');
    errorMessage = registerOutput<String>('errorMessage');
    filter = registerOutput<String>('filter');
    frequency = registerOutput<String>('frequency');
    kind = registerOutput<String>('kind');
    lastComplete = registerOutput<String>('lastComplete');
    lastError = registerOutput<String>('lastError');
    logpullOptions = registerOutput<String>('logpullOptions');
    maxUploadBytes = registerOutput<int>('maxUploadBytes');
    maxUploadIntervalSeconds = registerOutput<int>('maxUploadIntervalSeconds');
    maxUploadRecords = registerOutput<int>('maxUploadRecords');
    this.name = registerOutput<String>('name');
    outputOptions = registerOutput<LogpushJobOutputOptions?>('outputOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogpushJobOutputOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownershipChallenge = registerOutput<String?>('ownershipChallenge', isSecret: true);
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [LogpushJob] resource.
  LogpushJob.reference(String urn)
    : super(
        'cloudflare:index/logpushJob:LogpushJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['destinationConf', 'ownershipChallenge'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    dataset = registerOutput<String>('dataset');
    destinationConf = registerOutput<String>('destinationConf', isSecret: true);
    enabled = registerOutput<bool>('enabled');
    errorMessage = registerOutput<String>('errorMessage');
    filter = registerOutput<String>('filter');
    frequency = registerOutput<String>('frequency');
    kind = registerOutput<String>('kind');
    lastComplete = registerOutput<String>('lastComplete');
    lastError = registerOutput<String>('lastError');
    logpullOptions = registerOutput<String>('logpullOptions');
    maxUploadBytes = registerOutput<int>('maxUploadBytes');
    maxUploadIntervalSeconds = registerOutput<int>('maxUploadIntervalSeconds');
    maxUploadRecords = registerOutput<int>('maxUploadRecords');
    this.name = registerOutput<String>('name');
    outputOptions = registerOutput<LogpushJobOutputOptions?>('outputOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogpushJobOutputOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ownershipChallenge = registerOutput<String?>('ownershipChallenge', isSecret: true);
    zoneId = registerOutput<String?>('zoneId');
  }
}

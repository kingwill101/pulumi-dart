import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_sink_args.dart';
import 'billing_account_sink_bigquery_options.dart';
import 'billing_account_sink_state.dart';

/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/billingAccounts.sinks)
/// * How-to Guides
/// * [Exporting Logs](https://cloud.google.com/logging/docs/export)
///
/// &gt; **Note** You must have the "Logs Configuration Writer" IAM role (`roles/logging.configWriter`)
/// [granted on the billing account](https://cloud.google.com/billing/reference/rest/v1/billingAccounts/getIamPolicy) to
/// the credentials used with this provider. [IAM roles granted on a billing account](https://cloud.google.com/billing/docs/how-to/billing-access) are separate from the
/// typical IAM roles granted on a project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const log_bucket = new gcp.storage.Bucket("log-bucket", {
///     name: "billing-logging-bucket",
///     location: "US",
/// });
/// const my_sink = new gcp.logging.BillingAccountSink("my-sink", {
///     name: "my-sink",
///     description: "some explanation on what this is",
///     billingAccount: "ABCDEF-012345-GHIJKL",
///     destination: pulumi.interpolate`storage.googleapis.com/${log_bucket.name}`,
/// });
/// const log_writer = new gcp.projects.IAMBinding("log-writer", {
///     project: "your-project-id",
///     role: "roles/storage.objectCreator",
///     members: [my_sink.writerIdentity],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// log_bucket = gcp.storage.Bucket("log-bucket",
///     name="billing-logging-bucket",
///     location="US")
/// my_sink = gcp.logging.BillingAccountSink("my-sink",
///     name="my-sink",
///     description="some explanation on what this is",
///     billing_account="ABCDEF-012345-GHIJKL",
///     destination=log_bucket.name.apply(lambda name: f"storage.googleapis.com/{name}"))
/// log_writer = gcp.projects.IAMBinding("log-writer",
///     project="your-project-id",
///     role="roles/storage.objectCreator",
///     members=[my_sink.writer_identity])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var log_bucket = new Gcp.Storage.Bucket("log-bucket", new()
///     {
///         Name = "billing-logging-bucket",
///         Location = "US",
///     });
///
///     var my_sink = new Gcp.Logging.BillingAccountSink("my-sink", new()
///     {
///         Name = "my-sink",
///         Description = "some explanation on what this is",
///         BillingAccount = "ABCDEF-012345-GHIJKL",
///         Destination = log_bucket.Name.Apply(name => $"storage.googleapis.com/{name}"),
///     });
///
///     var log_writer = new Gcp.Projects.IAMBinding("log-writer", new()
///     {
///         Project = "your-project-id",
///         Role = "roles/storage.objectCreator",
///         Members = new[]
///         {
///             my_sink.WriterIdentity,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		log_bucket, err := storage.NewBucket(ctx, "log-bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("billing-logging-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_sink, err := logging.NewBillingAccountSink(ctx, "my-sink", &logging.BillingAccountSinkArgs{
/// 			Name:           pulumi.String("my-sink"),
/// 			Description:    pulumi.String("some explanation on what this is"),
/// 			BillingAccount: pulumi.String("ABCDEF-012345-GHIJKL"),
/// 			Destination: log_bucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("storage.googleapis.com/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMBinding(ctx, "log-writer", &projects.IAMBindingArgs{
/// 			Project: pulumi.String("your-project-id"),
/// 			Role:    pulumi.String("roles/storage.objectCreator"),
/// 			Members: pulumi.StringArray{
/// 				my_sink.WriterIdentity,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.logging.BillingAccountSink;
/// import com.pulumi.gcp.logging.BillingAccountSinkArgs;
/// import com.pulumi.gcp.projects.IAMBinding;
/// import com.pulumi.gcp.projects.IAMBindingArgs;
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
///         var log_bucket = new Bucket("log-bucket", BucketArgs.builder()
///             .name("billing-logging-bucket")
///             .location("US")
///             .build());
///
///         var my_sink = new BillingAccountSink("my-sink", BillingAccountSinkArgs.builder()
///             .name("my-sink")
///             .description("some explanation on what this is")
///             .billingAccount("ABCDEF-012345-GHIJKL")
///             .destination(log_bucket.name().applyValue(_name -> String.format("storage.googleapis.com/%s", _name)))
///             .build());
///
///         var log_writer = new IAMBinding("log-writer", IAMBindingArgs.builder()
///             .project("your-project-id")
///             .role("roles/storage.objectCreator")
///             .members(my_sink.writerIdentity())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-sink:
///     type: gcp:logging:BillingAccountSink
///     properties:
///       name: my-sink
///       description: some explanation on what this is
///       billingAccount: ABCDEF-012345-GHIJKL
///       destination: storage.googleapis.com/${["log-bucket"].name}
///   log-bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: billing-logging-bucket
///       location: US
///   log-writer:
///     type: gcp:projects:IAMBinding
///     properties:
///       project: your-project-id
///       role: roles/storage.objectCreator
///       members:
///         - ${["my-sink"].writerIdentity}
/// ```
///
///
/// ## Import
///
/// Billing account logging sinks can be imported using this format:
///
/// * `billingAccounts/{{billing_account_id}}/sinks/{{sink_id}}`
///
/// When using the `pulumi import` command, billing account logging sinks can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/billingAccountSink:BillingAccountSink default billingAccounts/{{billing_account_id}}/sinks/{{sink_id}}
/// ```
class BillingAccountSink extends pulumi.CustomResource {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  late final pulumi.Output<BillingAccountSinkBigqueryOptions> bigqueryOptions;

  /// The billing account exported to the sink.
  late final pulumi.Output<String> billingAccount;

  /// A description of this sink. The maximum length of the description is 8000 characters.
  late final pulumi.Output<String?> description;

  /// The destination of the sink (or, in other words, where logs are written to). Can be a
  /// Cloud Storage bucket, a PubSub topic, a BigQuery dataset or a Cloud Logging bucket. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]]/locations/global/buckets/[BUCKET_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  late final pulumi.Output<String> destination;

  /// If set to True, then this sink is disabled and it does not export any log entries.
  late final pulumi.Output<bool?> disabled;

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String?> filter;

  /// The name of the logging sink.
  late final pulumi.Output<String> name;

  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  late final pulumi.Output<String> writerIdentity;

  /// Creates a new [BillingAccountSink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BillingAccountSink]. {@macro pulumi_logging_billing_account_sink_billing_account_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BillingAccountSink(
    String name, {
    BillingAccountSinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:logging/billingAccountSink:BillingAccountSink',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bigqueryOptions = registerOutput<BillingAccountSinkBigqueryOptions>(
      'bigqueryOptions',
    );
    billingAccount = registerOutput<String>('billingAccount');
    description = registerOutput<String?>('description');
    destination = registerOutput<String>('destination');
    disabled = registerOutput<bool?>('disabled');
    exclusions = registerOutput<List<Map<String, dynamic>>?>('exclusions');
    filter = registerOutput<String?>('filter');
    this.name = registerOutput<String>('name');
    writerIdentity = registerOutput<String>('writerIdentity');
  }

  /// Gets an existing [BillingAccountSink] resource's state with the given [name] and [id].
  static BillingAccountSink get(
    String name,
    pulumi.Input<String> id, {
    BillingAccountSinkState? state,
  }) {
    return BillingAccountSink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BillingAccountSink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:logging/billingAccountSink:BillingAccountSink',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bigqueryOptions = registerOutput<BillingAccountSinkBigqueryOptions>(
      'bigqueryOptions',
    );
    billingAccount = registerOutput<String>('billingAccount');
    description = registerOutput<String?>('description');
    destination = registerOutput<String>('destination');
    disabled = registerOutput<bool?>('disabled');
    exclusions = registerOutput<List<Map<String, dynamic>>?>('exclusions');
    filter = registerOutput<String?>('filter');
    this.name = registerOutput<String>('name');
    writerIdentity = registerOutput<String>('writerIdentity');
  }
}

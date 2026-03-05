import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_identity.dart';
import 'job_state.dart';

/// Manages a Stream Analytics Job.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleJob = new azure.streamanalytics.Job("example", {
///     name: "example-job",
///     resourceGroupName: example.name,
///     location: example.location,
///     compatibilityLevel: "1.2",
///     dataLocale: "en-GB",
///     eventsLateArrivalMaxDelayInSeconds: 60,
///     eventsOutOfOrderMaxDelayInSeconds: 50,
///     eventsOutOfOrderPolicy: "Adjust",
///     outputErrorPolicy: "Drop",
///     streamingUnits: 3,
///     skuName: "StandardV2",
///     tags: {
///         environment: "Example",
///     },
///     transformationQuery: `    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_job = azure.streamanalytics.Job("example",
///     name="example-job",
///     resource_group_name=example.name,
///     location=example.location,
///     compatibility_level="1.2",
///     data_locale="en-GB",
///     events_late_arrival_max_delay_in_seconds=60,
///     events_out_of_order_max_delay_in_seconds=50,
///     events_out_of_order_policy="Adjust",
///     output_error_policy="Drop",
///     streaming_units=3,
///     sku_name="StandardV2",
///     tags={
///         "environment": "Example",
///     },
///     transformation_query="""    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleJob = new Azure.StreamAnalytics.Job("example", new()
///     {
///         Name = "example-job",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CompatibilityLevel = "1.2",
///         DataLocale = "en-GB",
///         EventsLateArrivalMaxDelayInSeconds = 60,
///         EventsOutOfOrderMaxDelayInSeconds = 50,
///         EventsOutOfOrderPolicy = "Adjust",
///         OutputErrorPolicy = "Drop",
///         StreamingUnits = 3,
///         SkuName = "StandardV2",
///         Tags =
///         {
///             { "environment", "Example" },
///         },
///         TransformationQuery = @"    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/streamanalytics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewJob(ctx, "example", &streamanalytics.JobArgs{
/// 			Name:                               pulumi.String("example-job"),
/// 			ResourceGroupName:                  example.Name,
/// 			Location:                           example.Location,
/// 			CompatibilityLevel:                 pulumi.String("1.2"),
/// 			DataLocale:                         pulumi.String("en-GB"),
/// 			EventsLateArrivalMaxDelayInSeconds: pulumi.Int(60),
/// 			EventsOutOfOrderMaxDelayInSeconds:  pulumi.Int(50),
/// 			EventsOutOfOrderPolicy:             pulumi.String("Adjust"),
/// 			OutputErrorPolicy:                  pulumi.String("Drop"),
/// 			StreamingUnits:                     pulumi.Int(3),
/// 			SkuName:                            pulumi.String("StandardV2"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Example"),
/// 			},
/// 			TransformationQuery: pulumi.String("    SELECT *\n    INTO [YourOutputAlias]\n    FROM [YourInputAlias]\n"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.streamanalytics.Job;
/// import com.pulumi.azure.streamanalytics.JobArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleJob = new Job("exampleJob", JobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .compatibilityLevel("1.2")
///             .dataLocale("en-GB")
///             .eventsLateArrivalMaxDelayInSeconds(60)
///             .eventsOutOfOrderMaxDelayInSeconds(50)
///             .eventsOutOfOrderPolicy("Adjust")
///             .outputErrorPolicy("Drop")
///             .streamingUnits(3)
///             .skuName("StandardV2")
///             .tags(Map.of("environment", "Example"))
///             .transformationQuery("""
///     SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleJob:
///     type: azure:streamanalytics:Job
///     name: example
///     properties:
///       name: example-job
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       compatibilityLevel: '1.2'
///       dataLocale: en-GB
///       eventsLateArrivalMaxDelayInSeconds: 60
///       eventsOutOfOrderMaxDelayInSeconds: 50
///       eventsOutOfOrderPolicy: Adjust
///       outputErrorPolicy: Drop
///       streamingUnits: 3
///       skuName: StandardV2
///       tags:
///         environment: Example
///       transformationQuery: |2
///             SELECT *
///             INTO [YourOutputAlias]
///             FROM [YourInputAlias]
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview, 2020-03-01
///
/// ## Import
///
/// Stream Analytics Job's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/job:Job example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1
/// ```
class Job extends pulumi.CustomResource {
  /// Specifies the compatibility level for this job - which controls certain runtime behaviours of the streaming job. Possible values are `1.0`, `1.1` and `1.2`.
  ///
  /// &gt; **Note:** Support for Compatibility Level 1.2 is dependent on a new version of the Stream Analytics API, which [being tracked in this issue](https://github.com/Azure/azure-rest-api-specs/issues/5604).
  late final pulumi.Output<String> compatibilityLevel;

  /// The policy for storing stream analytics content. Possible values are `JobStorageAccount`, `SystemAccount`. Defaults to `SystemAccount`.
  late final pulumi.Output<String?> contentStoragePolicy;

  /// Specifies the Data Locale of the Job, which [should be a supported .NET Culture](https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx). Defaults to `en-US`.
  late final pulumi.Output<String?> dataLocale;

  /// Specifies the maximum tolerable delay in seconds where events arriving late could be included. Supported range is `-1` (indefinite) to `1814399` (20d 23h 59m 59s). Default is `5`.
  late final pulumi.Output<int?> eventsLateArrivalMaxDelayInSeconds;

  /// Specifies the maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order. Supported range is `0` to `599` (9m 59s). Default is `0`.
  late final pulumi.Output<int?> eventsOutOfOrderMaxDelayInSeconds;

  /// Specifies the policy which should be applied to events which arrive out of order in the input event stream. Possible values are `Adjust` and `Drop`. Default is `Adjust`.
  late final pulumi.Output<String?> eventsOutOfOrderPolicy;

  /// An `identity` block as defined below.
  late final pulumi.Output<JobIdentity?> identity;

  /// The Job ID assigned by the Stream Analytics Job.
  late final pulumi.Output<String> jobId;

  /// The details of the job storage account. A `job_storage_account` block as defined below.
  ///
  /// &gt; **Note:** `content_storage_policy` must be set to `JobStorageAccount` when specifying `job_storage_account`.
  late final pulumi.Output<List<Map<String, dynamic>>?> jobStorageAccounts;

  /// The Azure Region in which the Resource Group exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size). Possible values are `Drop` and `Stop`. Default is `Drop`.
  late final pulumi.Output<String?> outputErrorPolicy;

  /// The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The SKU Name to use for the Stream Analytics Job. Possible values are `Standard`, `StandardV2`. Defaults to `Standard`.
  late final pulumi.Output<String?> skuName;

  /// The ID of an existing Stream Analytics Cluster where the Stream Analytics Job should run.
  late final pulumi.Output<String?> streamAnalyticsClusterId;

  /// Specifies the number of streaming units that the streaming job uses. Supported values are `1`, `3`, `6` and multiples of `6` up to `120`. A conversion table for V2 streaming units can be found [here](https://learn.microsoft.com/azure/stream-analytics/stream-analytics-streaming-unit-consumption#understand-streaming-unit-conversions-and-where-they-apply)
  ///
  /// &gt; **Note:** `streaming_units` must be set when `type` is `Cloud`.
  late final pulumi.Output<int?> streamingUnits;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> transformationQuery;

  /// The type of the Stream Analytics Job. Possible values are `Cloud` and `Edge`. Defaults to `Cloud`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `Edge` doesn't support `stream_analytics_cluster_id` and `streaming_units`.
  late final pulumi.Output<String?> type;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_streamanalytics_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:streamanalytics/job:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    compatibilityLevel = registerOutput<String>('compatibilityLevel');
    contentStoragePolicy = registerOutput<String?>('contentStoragePolicy');
    dataLocale = registerOutput<String?>('dataLocale');
    eventsLateArrivalMaxDelayInSeconds = registerOutput<int?>(
      'eventsLateArrivalMaxDelayInSeconds',
    );
    eventsOutOfOrderMaxDelayInSeconds = registerOutput<int?>(
      'eventsOutOfOrderMaxDelayInSeconds',
    );
    eventsOutOfOrderPolicy = registerOutput<String?>('eventsOutOfOrderPolicy');
    identity = registerOutput<JobIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    jobId = registerOutput<String>('jobId');
    jobStorageAccounts = registerOutput<List<Map<String, dynamic>>?>(
      'jobStorageAccounts',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputErrorPolicy = registerOutput<String?>('outputErrorPolicy');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String?>('skuName');
    streamAnalyticsClusterId = registerOutput<String?>(
      'streamAnalyticsClusterId',
    );
    streamingUnits = registerOutput<int?>('streamingUnits');
    tags = registerOutput<Map<String, String>?>('tags');
    transformationQuery = registerOutput<String>('transformationQuery');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [Job] resource's state with the given [name] and [id].
  static Job get(String name, pulumi.Input<String> id, {JobState? state}) {
    return Job._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Job._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/job:Job',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    compatibilityLevel = registerOutput<String>('compatibilityLevel');
    contentStoragePolicy = registerOutput<String?>('contentStoragePolicy');
    dataLocale = registerOutput<String?>('dataLocale');
    eventsLateArrivalMaxDelayInSeconds = registerOutput<int?>(
      'eventsLateArrivalMaxDelayInSeconds',
    );
    eventsOutOfOrderMaxDelayInSeconds = registerOutput<int?>(
      'eventsOutOfOrderMaxDelayInSeconds',
    );
    eventsOutOfOrderPolicy = registerOutput<String?>('eventsOutOfOrderPolicy');
    identity = registerOutput<JobIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    jobId = registerOutput<String>('jobId');
    jobStorageAccounts = registerOutput<List<Map<String, dynamic>>?>(
      'jobStorageAccounts',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outputErrorPolicy = registerOutput<String?>('outputErrorPolicy');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String?>('skuName');
    streamAnalyticsClusterId = registerOutput<String?>(
      'streamAnalyticsClusterId',
    );
    streamingUnits = registerOutput<int?>('streamingUnits');
    tags = registerOutput<Map<String, String>?>('tags');
    transformationQuery = registerOutput<String>('transformationQuery');
    type = registerOutput<String?>('type');
  }
}

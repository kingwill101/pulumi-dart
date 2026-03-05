import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_schedule_args.dart';
import 'job_schedule_state.dart';

/// Manages a Stream Analytics Job Schedule.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleBlob = new azure.storage.Blob("example", {
///     name: "example",
///     storageAccountName: exampleAccount.name,
///     storageContainerName: exampleContainer.name,
///     type: "Block",
///     source: new pulumi.asset.FileAsset("example.csv"),
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
///     tags: {
///         environment: "Example",
///     },
///     transformationQuery: `    SELECT *
///     INTO [exampleoutput]
///     FROM [exampleinput]
/// `,
/// });
/// const exampleStreamInputBlob = new azure.streamanalytics.StreamInputBlob("example", {
///     name: "exampleinput",
///     streamAnalyticsJobName: exampleJob.name,
///     resourceGroupName: exampleJob.resourceGroupName,
///     storageAccountName: exampleAccount.name,
///     storageAccountKey: exampleAccount.primaryAccessKey,
///     storageContainerName: exampleContainer.name,
///     pathPattern: "",
///     dateFormat: "yyyy/MM/dd",
///     timeFormat: "HH",
///     serialization: {
///         type: "Csv",
///         encoding: "UTF8",
///         fieldDelimiter: ",",
///     },
/// });
/// const exampleOutputBlob = new azure.streamanalytics.OutputBlob("example", {
///     name: "exampleoutput",
///     streamAnalyticsJobName: exampleJob.name,
///     resourceGroupName: exampleJob.resourceGroupName,
///     storageAccountName: exampleAccount.name,
///     storageAccountKey: exampleAccount.primaryAccessKey,
///     storageContainerName: exampleContainer.name,
///     pathPattern: "example-{date}-{time}",
///     dateFormat: "yyyy-MM-dd",
///     timeFormat: "HH",
///     serialization: {
///         type: "Avro",
///     },
/// });
/// const exampleJobSchedule = new azure.streamanalytics.JobSchedule("example", {
///     streamAnalyticsJobId: exampleJob.id,
///     startMode: "CustomTime",
///     startTime: "2022-09-21T00:00:00Z",
/// }, {
///     dependsOn: [
///         exampleJob,
///         exampleStreamInputBlob,
///         exampleOutputBlob,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="example",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_blob = azure.storage.Blob("example",
///     name="example",
///     storage_account_name=example_account.name,
///     storage_container_name=example_container.name,
///     type="Block",
///     source=pulumi.FileAsset("example.csv"))
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
///     tags={
///         "environment": "Example",
///     },
///     transformation_query="""    SELECT *
///     INTO [exampleoutput]
///     FROM [exampleinput]
/// """)
/// example_stream_input_blob = azure.streamanalytics.StreamInputBlob("example",
///     name="exampleinput",
///     stream_analytics_job_name=example_job.name,
///     resource_group_name=example_job.resource_group_name,
///     storage_account_name=example_account.name,
///     storage_account_key=example_account.primary_access_key,
///     storage_container_name=example_container.name,
///     path_pattern="",
///     date_format="yyyy/MM/dd",
///     time_format="HH",
///     serialization={
///         "type": "Csv",
///         "encoding": "UTF8",
///         "field_delimiter": ",",
///     })
/// example_output_blob = azure.streamanalytics.OutputBlob("example",
///     name="exampleoutput",
///     stream_analytics_job_name=example_job.name,
///     resource_group_name=example_job.resource_group_name,
///     storage_account_name=example_account.name,
///     storage_account_key=example_account.primary_access_key,
///     storage_container_name=example_container.name,
///     path_pattern="example-{date}-{time}",
///     date_format="yyyy-MM-dd",
///     time_format="HH",
///     serialization={
///         "type": "Avro",
///     })
/// example_job_schedule = azure.streamanalytics.JobSchedule("example",
///     stream_analytics_job_id=example_job.id,
///     start_mode="CustomTime",
///     start_time="2022-09-21T00:00:00Z",
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_job,
///             example_stream_input_blob,
///             example_output_blob,
///         ]))
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleBlob = new Azure.Storage.Blob("example", new()
///     {
///         Name = "example",
///         StorageAccountName = exampleAccount.Name,
///         StorageContainerName = exampleContainer.Name,
///         Type = "Block",
///         Source = new FileAsset("example.csv"),
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
///         Tags =
///         {
///             { "environment", "Example" },
///         },
///         TransformationQuery = @"    SELECT *
///     INTO [exampleoutput]
///     FROM [exampleinput]
/// ",
///     });
///
///     var exampleStreamInputBlob = new Azure.StreamAnalytics.StreamInputBlob("example", new()
///     {
///         Name = "exampleinput",
///         StreamAnalyticsJobName = exampleJob.Name,
///         ResourceGroupName = exampleJob.ResourceGroupName,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountKey = exampleAccount.PrimaryAccessKey,
///         StorageContainerName = exampleContainer.Name,
///         PathPattern = "",
///         DateFormat = "yyyy/MM/dd",
///         TimeFormat = "HH",
///         Serialization = new Azure.StreamAnalytics.Inputs.StreamInputBlobSerializationArgs
///         {
///             Type = "Csv",
///             Encoding = "UTF8",
///             FieldDelimiter = ",",
///         },
///     });
///
///     var exampleOutputBlob = new Azure.StreamAnalytics.OutputBlob("example", new()
///     {
///         Name = "exampleoutput",
///         StreamAnalyticsJobName = exampleJob.Name,
///         ResourceGroupName = exampleJob.ResourceGroupName,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountKey = exampleAccount.PrimaryAccessKey,
///         StorageContainerName = exampleContainer.Name,
///         PathPattern = "example-{date}-{time}",
///         DateFormat = "yyyy-MM-dd",
///         TimeFormat = "HH",
///         Serialization = new Azure.StreamAnalytics.Inputs.OutputBlobSerializationArgs
///         {
///             Type = "Avro",
///         },
///     });
///
///     var exampleJobSchedule = new Azure.StreamAnalytics.JobSchedule("example", new()
///     {
///         StreamAnalyticsJobId = exampleJob.Id,
///         StartMode = "CustomTime",
///         StartTime = "2022-09-21T00:00:00Z",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleJob,
///             exampleStreamInputBlob,
///             exampleOutputBlob,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBlob(ctx, "example", &storage.BlobArgs{
/// 			Name:                 pulumi.String("example"),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageContainerName: exampleContainer.Name,
/// 			Type:                 pulumi.String("Block"),
/// 			Source:               pulumi.NewFileAsset("example.csv"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleJob, err := streamanalytics.NewJob(ctx, "example", &streamanalytics.JobArgs{
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
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Example"),
/// 			},
/// 			TransformationQuery: pulumi.String("    SELECT *\n    INTO [exampleoutput]\n    FROM [exampleinput]\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStreamInputBlob, err := streamanalytics.NewStreamInputBlob(ctx, "example", &streamanalytics.StreamInputBlobArgs{
/// 			Name:                   pulumi.String("exampleinput"),
/// 			StreamAnalyticsJobName: exampleJob.Name,
/// 			ResourceGroupName:      exampleJob.ResourceGroupName,
/// 			StorageAccountName:     exampleAccount.Name,
/// 			StorageAccountKey:      exampleAccount.PrimaryAccessKey,
/// 			StorageContainerName:   exampleContainer.Name,
/// 			PathPattern:            pulumi.String(""),
/// 			DateFormat:             pulumi.String("yyyy/MM/dd"),
/// 			TimeFormat:             pulumi.String("HH"),
/// 			Serialization: &streamanalytics.StreamInputBlobSerializationArgs{
/// 				Type:           pulumi.String("Csv"),
/// 				Encoding:       pulumi.String("UTF8"),
/// 				FieldDelimiter: pulumi.String(","),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleOutputBlob, err := streamanalytics.NewOutputBlob(ctx, "example", &streamanalytics.OutputBlobArgs{
/// 			Name:                   pulumi.String("exampleoutput"),
/// 			StreamAnalyticsJobName: exampleJob.Name,
/// 			ResourceGroupName:      exampleJob.ResourceGroupName,
/// 			StorageAccountName:     exampleAccount.Name,
/// 			StorageAccountKey:      exampleAccount.PrimaryAccessKey,
/// 			StorageContainerName:   exampleContainer.Name,
/// 			PathPattern:            pulumi.String("example-{date}-{time}"),
/// 			DateFormat:             pulumi.String("yyyy-MM-dd"),
/// 			TimeFormat:             pulumi.String("HH"),
/// 			Serialization: &streamanalytics.OutputBlobSerializationArgs{
/// 				Type: pulumi.String("Avro"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewJobSchedule(ctx, "example", &streamanalytics.JobScheduleArgs{
/// 			StreamAnalyticsJobId: exampleJob.ID(),
/// 			StartMode:            pulumi.String("CustomTime"),
/// 			StartTime:            pulumi.String("2022-09-21T00:00:00Z"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleJob,
/// 			exampleStreamInputBlob,
/// 			exampleOutputBlob,
/// 		}))
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.Blob;
/// import com.pulumi.azure.storage.BlobArgs;
/// import com.pulumi.azure.streamanalytics.Job;
/// import com.pulumi.azure.streamanalytics.JobArgs;
/// import com.pulumi.azure.streamanalytics.StreamInputBlob;
/// import com.pulumi.azure.streamanalytics.StreamInputBlobArgs;
/// import com.pulumi.azure.streamanalytics.inputs.StreamInputBlobSerializationArgs;
/// import com.pulumi.azure.streamanalytics.OutputBlob;
/// import com.pulumi.azure.streamanalytics.OutputBlobArgs;
/// import com.pulumi.azure.streamanalytics.inputs.OutputBlobSerializationArgs;
/// import com.pulumi.azure.streamanalytics.JobSchedule;
/// import com.pulumi.azure.streamanalytics.JobScheduleArgs;
/// import com.pulumi.asset.FileAsset;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleBlob = new Blob("exampleBlob", BlobArgs.builder()
///             .name("example")
///             .storageAccountName(exampleAccount.name())
///             .storageContainerName(exampleContainer.name())
///             .type("Block")
///             .source(new FileAsset("example.csv"))
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
///             .tags(Map.of("environment", "Example"))
///             .transformationQuery("""
///     SELECT *
///     INTO [exampleoutput]
///     FROM [exampleinput]
///             """)
///             .build());
///
///         var exampleStreamInputBlob = new StreamInputBlob("exampleStreamInputBlob", StreamInputBlobArgs.builder()
///             .name("exampleinput")
///             .streamAnalyticsJobName(exampleJob.name())
///             .resourceGroupName(exampleJob.resourceGroupName())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountKey(exampleAccount.primaryAccessKey())
///             .storageContainerName(exampleContainer.name())
///             .pathPattern("")
///             .dateFormat("yyyy/MM/dd")
///             .timeFormat("HH")
///             .serialization(StreamInputBlobSerializationArgs.builder()
///                 .type("Csv")
///                 .encoding("UTF8")
///                 .fieldDelimiter(",")
///                 .build())
///             .build());
///
///         var exampleOutputBlob = new OutputBlob("exampleOutputBlob", OutputBlobArgs.builder()
///             .name("exampleoutput")
///             .streamAnalyticsJobName(exampleJob.name())
///             .resourceGroupName(exampleJob.resourceGroupName())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountKey(exampleAccount.primaryAccessKey())
///             .storageContainerName(exampleContainer.name())
///             .pathPattern("example-{date}-{time}")
///             .dateFormat("yyyy-MM-dd")
///             .timeFormat("HH")
///             .serialization(OutputBlobSerializationArgs.builder()
///                 .type("Avro")
///                 .build())
///             .build());
///
///         var exampleJobSchedule = new JobSchedule("exampleJobSchedule", JobScheduleArgs.builder()
///             .streamAnalyticsJobId(exampleJob.id())
///             .startMode("CustomTime")
///             .startTime("2022-09-21T00:00:00Z")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleJob,
///                     exampleStreamInputBlob,
///                     exampleOutputBlob)
///                 .build());
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleBlob:
///     type: azure:storage:Blob
///     name: example
///     properties:
///       name: example
///       storageAccountName: ${exampleAccount.name}
///       storageContainerName: ${exampleContainer.name}
///       type: Block
///       source:
///         fn::FileAsset: example.csv
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
///       tags:
///         environment: Example
///       transformationQuery: |2
///             SELECT *
///             INTO [exampleoutput]
///             FROM [exampleinput]
///   exampleStreamInputBlob:
///     type: azure:streamanalytics:StreamInputBlob
///     name: example
///     properties:
///       name: exampleinput
///       streamAnalyticsJobName: ${exampleJob.name}
///       resourceGroupName: ${exampleJob.resourceGroupName}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountKey: ${exampleAccount.primaryAccessKey}
///       storageContainerName: ${exampleContainer.name}
///       pathPattern: ""
///       dateFormat: yyyy/MM/dd
///       timeFormat: HH
///       serialization:
///         type: Csv
///         encoding: UTF8
///         fieldDelimiter: ','
///   exampleOutputBlob:
///     type: azure:streamanalytics:OutputBlob
///     name: example
///     properties:
///       name: exampleoutput
///       streamAnalyticsJobName: ${exampleJob.name}
///       resourceGroupName: ${exampleJob.resourceGroupName}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountKey: ${exampleAccount.primaryAccessKey}
///       storageContainerName: ${exampleContainer.name}
///       pathPattern: example-{date}-{time}
///       dateFormat: yyyy-MM-dd
///       timeFormat: HH
///       serialization:
///         type: Avro
///   exampleJobSchedule:
///     type: azure:streamanalytics:JobSchedule
///     name: example
///     properties:
///       streamAnalyticsJobId: ${exampleJob.id}
///       startMode: CustomTime
///       startTime: 2022-09-21T00:00:00Z
///     options:
///       dependsOn:
///         - ${exampleJob}
///         - ${exampleStreamInputBlob}
///         - ${exampleOutputBlob}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview
///
/// ## Import
///
/// Stream Analytics Job's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/jobSchedule:JobSchedule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/schedule/default
/// ```
class JobSchedule extends pulumi.CustomResource {
  /// The time at which the Stream Analytics job last produced an output.
  late final pulumi.Output<String> lastOutputTime;
  /// The starting mode of the Stream Analytics Job. Possible values are `JobStartTime`, `CustomTime` and `LastOutputEventTime`.
  ///
  /// &gt; **Note:** Setting `start_mode` to `LastOutputEventTime` is only possible if the job had been previously started and produced output.
  late final pulumi.Output<String> startMode;
  /// The time in ISO8601 format at which the Stream Analytics Job should be started e.g. `2022-04-01T00:00:00Z`. This property can only be specified if `start_mode` is set to `CustomTime`
  late final pulumi.Output<String> startTime;
  /// The ID of the Stream Analytics Job that should be scheduled or started. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobId;

  /// Creates a new [JobSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobSchedule]. {@macro pulumi_streamanalytics_job_schedule_job_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobSchedule(
    String name, {
    JobScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/jobSchedule:JobSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    lastOutputTime = registerOutput<String>('lastOutputTime');
    startMode = registerOutput<String>('startMode');
    startTime = registerOutput<String>('startTime');
    streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }

  /// Gets an existing [JobSchedule] resource's state with the given [name] and [id].
  static JobSchedule get(
    String name,
    pulumi.Input<String> id, {
    JobScheduleState? state,
  }) {
    return JobSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/jobSchedule:JobSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    lastOutputTime = registerOutput<String>('lastOutputTime');
    startMode = registerOutput<String>('startMode');
    startTime = registerOutput<String>('startTime');
    streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }
}

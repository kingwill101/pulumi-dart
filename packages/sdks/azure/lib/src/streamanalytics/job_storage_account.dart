import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_storage_account_args.dart';
import 'job_storage_account_state.dart';

/// Manages a Stream Analytics Job Storage Account. Use this resource for managing the Job Storage Account using `Msi` authentication with a `SystemAssigned` identity.
///
/// > **Note:** The Job Storage Account for a Stream Analytics Job can be managed on the `azure.streamanalytics.Job` resource with the `job_storage_account` block, or with this resource. We do not recommend managing the Job Storage Account through both means as this can lead to conflicts.
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
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         environment: "Example",
///     },
///     transformationQuery: `    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// `,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "exampleaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleJobStorageAccount = new azure.streamanalytics.JobStorageAccount("example", {
///     streamAnalyticsJobId: exampleJob.id,
///     storageAccountName: exampleAccount.name,
///     authenticationMode: "Msi",
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
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "environment": "Example",
///     },
///     transformation_query="""    SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
/// """)
/// example_account = azure.storage.Account("example",
///     name="exampleaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_job_storage_account = azure.streamanalytics.JobStorageAccount("example",
///     stream_analytics_job_id=example_job.id,
///     storage_account_name=example_account.name,
///     authentication_mode="Msi")
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
///         Identity = new Azure.StreamAnalytics.Inputs.JobIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "exampleaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleJobStorageAccount = new Azure.StreamAnalytics.JobStorageAccount("example", new()
///     {
///         StreamAnalyticsJobId = exampleJob.Id,
///         StorageAccountName = exampleAccount.Name,
///         AuthenticationMode = "Msi",
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
/// 			SkuName:                            pulumi.String("StandardV2"),
/// 			Identity: &streamanalytics.JobIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Example"),
/// 			},
/// 			TransformationQuery: pulumi.String("    SELECT *\n    INTO [YourOutputAlias]\n    FROM [YourInputAlias]\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("exampleaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewJobStorageAccount(ctx, "example", &streamanalytics.JobStorageAccountArgs{
/// 			StreamAnalyticsJobId: exampleJob.ID(),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			AuthenticationMode:   pulumi.String("Msi"),
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
/// import com.pulumi.azure.streamanalytics.inputs.JobIdentityArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.streamanalytics.JobStorageAccount;
/// import com.pulumi.azure.streamanalytics.JobStorageAccountArgs;
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
///             .identity(JobIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("environment", "Example"))
///             .transformationQuery("""
///     SELECT *
///     INTO [YourOutputAlias]
///     FROM [YourInputAlias]
///             """)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("exampleaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleJobStorageAccount = new JobStorageAccount("exampleJobStorageAccount", JobStorageAccountArgs.builder()
///             .streamAnalyticsJobId(exampleJob.id())
///             .storageAccountName(exampleAccount.name())
///             .authenticationMode("Msi")
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
///       identity:
///         type: SystemAssigned
///       tags:
///         environment: Example
///       transformationQuery: |2
///             SELECT *
///             INTO [YourOutputAlias]
///             FROM [YourInputAlias]
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: exampleaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleJobStorageAccount:
///     type: azure:streamanalytics:JobStorageAccount
///     name: example
///     properties:
///       streamAnalyticsJobId: ${exampleJob.id}
///       storageAccountName: ${exampleAccount.name}
///       authenticationMode: Msi
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview
///
/// ## Import
///
/// Stream Analytics Job Storage Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/jobStorageAccount:JobStorageAccount example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1
/// ```
class JobStorageAccount extends pulumi.CustomResource {
  /// The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  late final pulumi.Output<String> authenticationMode;
  late final pulumi.Output<String?> storageAccountKey;
  late final pulumi.Output<String> storageAccountName;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobId;

  /// Creates a new [JobStorageAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobStorageAccount]. {@macro pulumi_streamanalytics_job_storage_account_job_storage_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobStorageAccount(
    String name, {
    JobStorageAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/jobStorageAccount:JobStorageAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String>('authenticationMode');
    this.storageAccountKey = registerOutput<String?>('storageAccountKey');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }

  /// Gets an existing [JobStorageAccount] resource's state with the given [name] and [id].
  static JobStorageAccount get(
    String name,
    pulumi.Input<String> id, {
    JobStorageAccountState? state,
  }) {
    return JobStorageAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobStorageAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/jobStorageAccount:JobStorageAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String>('authenticationMode');
    this.storageAccountKey = registerOutput<String?>('storageAccountKey');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }
}

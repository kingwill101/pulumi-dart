import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_input_blob_args.dart';
import 'stream_input_blob_serialization.dart';
import 'stream_input_blob_state.dart';

/// Manages a Stream Analytics Stream Input Blob.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.streamanalytics.getJobOutput({
///     name: "example-job",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestoracc",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleStreamInputBlob = new azure.streamanalytics.StreamInputBlob("example", {
///     name: "blob-stream-input",
///     streamAnalyticsJobName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     storageAccountName: exampleAccount.name,
///     storageAccountKey: exampleAccount.primaryAccessKey,
///     storageContainerName: exampleContainer.name,
///     pathPattern: "some-random-pattern",
///     dateFormat: "yyyy/MM/dd",
///     timeFormat: "HH",
///     serialization: {
///         type: "Json",
///         encoding: "UTF8",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.streamanalytics.get_job_output(name="example-job",
///     resource_group_name=example_resource_group.name)
/// example_account = azure.storage.Account("example",
///     name="examplestoracc",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="example",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_stream_input_blob = azure.streamanalytics.StreamInputBlob("example",
///     name="blob-stream-input",
///     stream_analytics_job_name=example.name,
///     resource_group_name=example.resource_group_name,
///     storage_account_name=example_account.name,
///     storage_account_key=example_account.primary_access_key,
///     storage_container_name=example_container.name,
///     path_pattern="some-random-pattern",
///     date_format="yyyy/MM/dd",
///     time_format="HH",
///     serialization={
///         "type": "Json",
///         "encoding": "UTF8",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.StreamAnalytics.GetJob.Invoke(new()
///     {
///         Name = "example-job",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestoracc",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
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
///     var exampleStreamInputBlob = new Azure.StreamAnalytics.StreamInputBlob("example", new()
///     {
///         Name = "blob-stream-input",
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountKey = exampleAccount.PrimaryAccessKey,
///         StorageContainerName = exampleContainer.Name,
///         PathPattern = "some-random-pattern",
///         DateFormat = "yyyy/MM/dd",
///         TimeFormat = "HH",
///         Serialization = new Azure.StreamAnalytics.Inputs.StreamInputBlobSerializationArgs
///         {
///             Type = "Json",
///             Encoding = "UTF8",
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
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := streamanalytics.LookupJobOutput(ctx, streamanalytics.GetJobOutputArgs{
/// 			Name:              pulumi.String("example-job"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestoracc"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
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
/// 		_, err = streamanalytics.NewStreamInputBlob(ctx, "example", &streamanalytics.StreamInputBlobArgs{
/// 			Name: pulumi.String("blob-stream-input"),
/// 			StreamAnalyticsJobName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageAccountKey:    exampleAccount.PrimaryAccessKey,
/// 			StorageContainerName: exampleContainer.Name,
/// 			PathPattern:          pulumi.String("some-random-pattern"),
/// 			DateFormat:           pulumi.String("yyyy/MM/dd"),
/// 			TimeFormat:           pulumi.String("HH"),
/// 			Serialization: &streamanalytics.StreamInputBlobSerializationArgs{
/// 				Type:     pulumi.String("Json"),
/// 				Encoding: pulumi.String("UTF8"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.streamanalytics.StreamanalyticsFunctions;
/// import com.pulumi.azure.streamanalytics.inputs.GetJobArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.streamanalytics.StreamInputBlob;
/// import com.pulumi.azure.streamanalytics.StreamInputBlobArgs;
/// import com.pulumi.azure.streamanalytics.inputs.StreamInputBlobSerializationArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = StreamanalyticsFunctions.getJob(GetJobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestoracc")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
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
///         var exampleStreamInputBlob = new StreamInputBlob("exampleStreamInputBlob", StreamInputBlobArgs.builder()
///             .name("blob-stream-input")
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .storageAccountName(exampleAccount.name())
///             .storageAccountKey(exampleAccount.primaryAccessKey())
///             .storageContainerName(exampleContainer.name())
///             .pathPattern("some-random-pattern")
///             .dateFormat("yyyy/MM/dd")
///             .timeFormat("HH")
///             .serialization(StreamInputBlobSerializationArgs.builder()
///                 .type("Json")
///                 .encoding("UTF8")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestoracc
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleStreamInputBlob:
///     type: azure:streamanalytics:StreamInputBlob
///     name: example
///     properties:
///       name: blob-stream-input
///       streamAnalyticsJobName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountKey: ${exampleAccount.primaryAccessKey}
///       storageContainerName: ${exampleContainer.name}
///       pathPattern: some-random-pattern
///       dateFormat: yyyy/MM/dd
///       timeFormat: HH
///       serialization:
///         type: Json
///         encoding: UTF8
/// variables:
///   example:
///     fn::invoke:
///       function: azure:streamanalytics:getJob
///       arguments:
///         name: example-job
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2020-03-01
///
/// ## Import
///
/// Stream Analytics Stream Input Blob's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/streamInputBlob:StreamInputBlob example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/inputs/input1
/// ```
class StreamInputBlob extends pulumi.CustomResource {
  /// The authentication mode for the Stream Analytics Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  late final pulumi.Output<String?> authenticationMode;
  /// The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead.
  late final pulumi.Output<String> dateFormat;
  /// The name of the Stream Input Blob. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  late final pulumi.Output<String> pathPattern;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `serialization` block as defined below.
  late final pulumi.Output<StreamInputBlobSerialization> serialization;
  /// The Access Key which should be used to connect to this Storage Account.
  late final pulumi.Output<String> storageAccountKey;
  /// The name of the Storage Account.
  late final pulumi.Output<String> storageAccountName;
  /// The name of the Container within the Storage Account.
  late final pulumi.Output<String> storageContainerName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;
  /// The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead.
  late final pulumi.Output<String> timeFormat;

  /// Creates a new [StreamInputBlob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamInputBlob]. {@macro pulumi_streamanalytics_stream_input_blob_stream_input_blob_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamInputBlob(
    String name, {
    StreamInputBlobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/streamInputBlob:StreamInputBlob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.dateFormat = registerOutput<String>('dateFormat');
    this.name = registerOutput<String>('name');
    this.pathPattern = registerOutput<String>('pathPattern');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serialization = registerOutput<StreamInputBlobSerialization>('serialization');
    this.storageAccountKey = registerOutput<String>('storageAccountKey');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.storageContainerName = registerOutput<String>('storageContainerName');
    this.streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    this.timeFormat = registerOutput<String>('timeFormat');
  }

  /// Gets an existing [StreamInputBlob] resource's state with the given [name] and [id].
  static StreamInputBlob get(
    String name,
    pulumi.Input<String> id, {
    StreamInputBlobState? state,
  }) {
    return StreamInputBlob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StreamInputBlob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/streamInputBlob:StreamInputBlob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.dateFormat = registerOutput<String>('dateFormat');
    this.name = registerOutput<String>('name');
    this.pathPattern = registerOutput<String>('pathPattern');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serialization = registerOutput<StreamInputBlobSerialization>('serialization');
    this.storageAccountKey = registerOutput<String>('storageAccountKey');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.storageContainerName = registerOutput<String>('storageContainerName');
    this.streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    this.timeFormat = registerOutput<String>('timeFormat');
  }
}

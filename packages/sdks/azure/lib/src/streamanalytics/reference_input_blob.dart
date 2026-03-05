import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_input_blob_args.dart';
import 'reference_input_blob_serialization.dart';
import 'reference_input_blob_state.dart';

/// Manages a Stream Analytics Reference Input Blob. Reference data (also known as a lookup table) is a finite data set that is static or slowly changing in nature, used to perform a lookup or to correlate with your data stream. Learn more [here](https://docs.microsoft.com/azure/stream-analytics/stream-analytics-use-reference-data#azure-blob-storage).
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
/// const test = new azure.streamanalytics.ReferenceInputBlob("test", {
///     name: "blob-reference-input",
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
/// test = azure.streamanalytics.ReferenceInputBlob("test",
///     name="blob-reference-input",
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
///     var test = new Azure.StreamAnalytics.ReferenceInputBlob("test", new()
///     {
///         Name = "blob-reference-input",
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountKey = exampleAccount.PrimaryAccessKey,
///         StorageContainerName = exampleContainer.Name,
///         PathPattern = "some-random-pattern",
///         DateFormat = "yyyy/MM/dd",
///         TimeFormat = "HH",
///         Serialization = new Azure.StreamAnalytics.Inputs.ReferenceInputBlobSerializationArgs
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
/// 		_, err = streamanalytics.NewReferenceInputBlob(ctx, "test", &streamanalytics.ReferenceInputBlobArgs{
/// 			Name: pulumi.String("blob-reference-input"),
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
/// 			Serialization: &streamanalytics.ReferenceInputBlobSerializationArgs{
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
/// import com.pulumi.azure.streamanalytics.ReferenceInputBlob;
/// import com.pulumi.azure.streamanalytics.ReferenceInputBlobArgs;
/// import com.pulumi.azure.streamanalytics.inputs.ReferenceInputBlobSerializationArgs;
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
///         var test = new ReferenceInputBlob("test", ReferenceInputBlobArgs.builder()
///             .name("blob-reference-input")
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .storageAccountName(exampleAccount.name())
///             .storageAccountKey(exampleAccount.primaryAccessKey())
///             .storageContainerName(exampleContainer.name())
///             .pathPattern("some-random-pattern")
///             .dateFormat("yyyy/MM/dd")
///             .timeFormat("HH")
///             .serialization(ReferenceInputBlobSerializationArgs.builder()
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
///   test:
///     type: azure:streamanalytics:ReferenceInputBlob
///     properties:
///       name: blob-reference-input
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2020-03-01
///
/// ## Import
///
/// Stream Analytics Reference Input Blob's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/referenceInputBlob:ReferenceInputBlob example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/inputs/input1
/// ```
class ReferenceInputBlob extends pulumi.CustomResource {
  /// The authentication mode for the Stream Analytics Reference Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  late final pulumi.Output<String?> authenticationMode;

  /// The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead.
  late final pulumi.Output<String> dateFormat;

  /// The name of the Reference Input Blob. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  late final pulumi.Output<String> pathPattern;

  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `serialization` block as defined below.
  late final pulumi.Output<ReferenceInputBlobSerialization> serialization;

  /// The Access Key which should be used to connect to this Storage Account. Required if `authentication_mode` is `ConnectionString`.
  late final pulumi.Output<String?> storageAccountKey;

  /// The name of the Storage Account that has the blob container with reference data.
  late final pulumi.Output<String> storageAccountName;

  /// The name of the Container within the Storage Account.
  late final pulumi.Output<String> storageContainerName;

  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;

  /// The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead.
  late final pulumi.Output<String> timeFormat;

  /// Creates a new [ReferenceInputBlob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReferenceInputBlob]. {@macro pulumi_streamanalytics_reference_input_blob_reference_input_blob_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReferenceInputBlob(
    String name, {
    ReferenceInputBlobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/referenceInputBlob:ReferenceInputBlob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authenticationMode = registerOutput<String?>('authenticationMode');
    dateFormat = registerOutput<String>('dateFormat');
    this.name = registerOutput<String>('name');
    pathPattern = registerOutput<String>('pathPattern');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serialization = registerOutput<ReferenceInputBlobSerialization>(
      'serialization',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ReferenceInputBlobSerialization.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storageAccountKey = registerOutput<String?>('storageAccountKey');
    storageAccountName = registerOutput<String>('storageAccountName');
    storageContainerName = registerOutput<String>('storageContainerName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    timeFormat = registerOutput<String>('timeFormat');
  }

  /// Gets an existing [ReferenceInputBlob] resource's state with the given [name] and [id].
  static ReferenceInputBlob get(
    String name,
    pulumi.Input<String> id, {
    ReferenceInputBlobState? state,
  }) {
    return ReferenceInputBlob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReferenceInputBlob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/referenceInputBlob:ReferenceInputBlob',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authenticationMode = registerOutput<String?>('authenticationMode');
    dateFormat = registerOutput<String>('dateFormat');
    this.name = registerOutput<String>('name');
    pathPattern = registerOutput<String>('pathPattern');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serialization = registerOutput<ReferenceInputBlobSerialization>(
      'serialization',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ReferenceInputBlobSerialization.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storageAccountKey = registerOutput<String?>('storageAccountKey');
    storageAccountName = registerOutput<String>('storageAccountName');
    storageContainerName = registerOutput<String>('storageContainerName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    timeFormat = registerOutput<String>('timeFormat');
  }
}

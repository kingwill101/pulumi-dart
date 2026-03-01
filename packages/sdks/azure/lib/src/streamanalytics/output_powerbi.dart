import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_powerbi_args.dart';
import 'output_powerbi_state.dart';

/// Manages a Stream Analytics Output powerBI.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getResourceGroup({
///     name: "example-resources",
/// });
/// const exampleGetJob = example.then(example => azure.streamanalytics.getJob({
///     name: "example-job",
///     resourceGroupName: example.name,
/// }));
/// const exampleOutputPowerbi = new azure.streamanalytics.OutputPowerbi("example", {
///     name: "output-to-powerbi",
///     streamAnalyticsJobId: exampleGetJob.then(exampleGetJob => exampleGetJob.id),
///     dataset: "example-dataset",
///     table: "example-table",
///     groupId: "00000000-0000-0000-0000-000000000000",
///     groupName: "some-group-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_resource_group(name="example-resources")
/// example_get_job = azure.streamanalytics.get_job(name="example-job",
///     resource_group_name=example.name)
/// example_output_powerbi = azure.streamanalytics.OutputPowerbi("example",
///     name="output-to-powerbi",
///     stream_analytics_job_id=example_get_job.id,
///     dataset="example-dataset",
///     table="example-table",
///     group_id="00000000-0000-0000-0000-000000000000",
///     group_name="some-group-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetResourceGroup.Invoke(new()
///     {
///         Name = "example-resources",
///     });
///
///     var exampleGetJob = Azure.StreamAnalytics.GetJob.Invoke(new()
///     {
///         Name = "example-job",
///         ResourceGroupName = example.Apply(getResourceGroupResult => getResourceGroupResult.Name),
///     });
///
///     var exampleOutputPowerbi = new Azure.StreamAnalytics.OutputPowerbi("example", new()
///     {
///         Name = "output-to-powerbi",
///         StreamAnalyticsJobId = exampleGetJob.Apply(getJobResult => getJobResult.Id),
///         Dataset = "example-dataset",
///         Table = "example-table",
///         GroupId = "00000000-0000-0000-0000-000000000000",
///         GroupName = "some-group-name",
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
/// 		example, err := core.LookupResourceGroup(ctx, &core.LookupResourceGroupArgs{
/// 			Name: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetJob, err := streamanalytics.LookupJob(ctx, &streamanalytics.LookupJobArgs{
/// 			Name:              "example-job",
/// 			ResourceGroupName: example.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewOutputPowerbi(ctx, "example", &streamanalytics.OutputPowerbiArgs{
/// 			Name:                 pulumi.String("output-to-powerbi"),
/// 			StreamAnalyticsJobId: pulumi.String(exampleGetJob.Id),
/// 			Dataset:              pulumi.String("example-dataset"),
/// 			Table:                pulumi.String("example-table"),
/// 			GroupId:              pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			GroupName:            pulumi.String("some-group-name"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetResourceGroupArgs;
/// import com.pulumi.azure.streamanalytics.StreamanalyticsFunctions;
/// import com.pulumi.azure.streamanalytics.inputs.GetJobArgs;
/// import com.pulumi.azure.streamanalytics.OutputPowerbi;
/// import com.pulumi.azure.streamanalytics.OutputPowerbiArgs;
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
///         final var example = CoreFunctions.getResourceGroup(GetResourceGroupArgs.builder()
///             .name("example-resources")
///             .build());
///
///         final var exampleGetJob = StreamanalyticsFunctions.getJob(GetJobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleOutputPowerbi = new OutputPowerbi("exampleOutputPowerbi", OutputPowerbiArgs.builder()
///             .name("output-to-powerbi")
///             .streamAnalyticsJobId(exampleGetJob.id())
///             .dataset("example-dataset")
///             .table("example-table")
///             .groupId("00000000-0000-0000-0000-000000000000")
///             .groupName("some-group-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleOutputPowerbi:
///     type: azure:streamanalytics:OutputPowerbi
///     name: example
///     properties:
///       name: output-to-powerbi
///       streamAnalyticsJobId: ${exampleGetJob.id}
///       dataset: example-dataset
///       table: example-table
///       groupId: 00000000-0000-0000-0000-000000000000
///       groupName: some-group-name
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getResourceGroup
///       arguments:
///         name: example-resources
///   exampleGetJob:
///     fn::invoke:
///       function: azure:streamanalytics:getJob
///       arguments:
///         name: example-job
///         resourceGroupName: ${example.name}
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
/// Stream Analytics Output to Power BI can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/outputPowerbi:OutputPowerbi example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/outputs/output1
/// ```
class OutputPowerbi extends pulumi.CustomResource {
  /// The name of the Power BI dataset.
  late final pulumi.Output<String> dataset;
  /// The ID of the Power BI group, this must be a valid UUID.
  late final pulumi.Output<String> groupId;
  /// The name of the Power BI group. Use this property to help remember which specific Power BI group id was used.
  late final pulumi.Output<String> groupName;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobId;
  /// The name of the Power BI table under the specified dataset.
  late final pulumi.Output<String> table;
  /// The user display name of the user that was used to obtain the refresh token.
  late final pulumi.Output<String?> tokenUserDisplayName;
  /// The user principal name (UPN) of the user that was used to obtain the refresh token.
  late final pulumi.Output<String?> tokenUserPrincipalName;

  /// Creates a new [OutputPowerbi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputPowerbi]. {@macro pulumi_streamanalytics_output_powerbi_output_powerbi_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputPowerbi(
    String name, {
    OutputPowerbiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputPowerbi:OutputPowerbi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataset = registerOutput<String>('dataset');
    this.groupId = registerOutput<String>('groupId');
    this.groupName = registerOutput<String>('groupName');
    this.name = registerOutput<String>('name');
    this.streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
    this.table = registerOutput<String>('table');
    this.tokenUserDisplayName = registerOutput<String?>('tokenUserDisplayName');
    this.tokenUserPrincipalName = registerOutput<String?>('tokenUserPrincipalName');
  }

  /// Gets an existing [OutputPowerbi] resource's state with the given [name] and [id].
  static OutputPowerbi get(
    String name,
    pulumi.Input<String> id, {
    OutputPowerbiState? state,
  }) {
    return OutputPowerbi._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OutputPowerbi._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputPowerbi:OutputPowerbi',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataset = registerOutput<String>('dataset');
    this.groupId = registerOutput<String>('groupId');
    this.groupName = registerOutput<String>('groupName');
    this.name = registerOutput<String>('name');
    this.streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
    this.table = registerOutput<String>('table');
    this.tokenUserDisplayName = registerOutput<String?>('tokenUserDisplayName');
    this.tokenUserPrincipalName = registerOutput<String?>('tokenUserPrincipalName');
  }
}

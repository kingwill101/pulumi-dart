import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_javascript_uda_args.dart';
import 'function_javascript_uda_output.dart';
import 'function_javascript_uda_state.dart';

/// Manages a JavaScript UDA Function within a Stream Analytics Streaming Job.
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
/// const exampleFunctionJavascriptUda = new azure.streamanalytics.FunctionJavascriptUda("example", {
///     name: "example-javascript-function",
///     streamAnalyticsJobId: exampleGetJob.then(exampleGetJob => exampleGetJob.id),
///     script: `function main() {
///     this.init = function () {
///         this.state = 0;
///     }
///
///     this.accumulate = function (value, timestamp) {
///         this.state += value;
///     }
///
///     this.computeResult = function () {
///         return this.state;
///     }
/// }
/// `,
///     inputs: [{
///         type: "bigint",
///     }],
///     output: {
///         type: "bigint",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_resource_group(name="example-resources")
/// example_get_job = azure.streamanalytics.get_job(name="example-job",
///     resource_group_name=example.name)
/// example_function_javascript_uda = azure.streamanalytics.FunctionJavascriptUda("example",
///     name="example-javascript-function",
///     stream_analytics_job_id=example_get_job.id,
///     script="""function main() {
///     this.init = function () {
///         this.state = 0;
///     }
///
///     this.accumulate = function (value, timestamp) {
///         this.state += value;
///     }
///
///     this.computeResult = function () {
///         return this.state;
///     }
/// }
/// """,
///     inputs=[{
///         "type": "bigint",
///     }],
///     output={
///         "type": "bigint",
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
///     var exampleFunctionJavascriptUda = new Azure.StreamAnalytics.FunctionJavascriptUda("example", new()
///     {
///         Name = "example-javascript-function",
///         StreamAnalyticsJobId = exampleGetJob.Apply(getJobResult => getJobResult.Id),
///         Script = @"function main() {
///     this.init = function () {
///         this.state = 0;
///     }
///
///     this.accumulate = function (value, timestamp) {
///         this.state += value;
///     }
///
///     this.computeResult = function () {
///         return this.state;
///     }
/// }
/// ",
///         Inputs = new[]
///         {
///             new Azure.StreamAnalytics.Inputs.FunctionJavascriptUdaInputArgs
///             {
///                 Type = "bigint",
///             },
///         },
///         Output = new Azure.StreamAnalytics.Inputs.FunctionJavascriptUdaOutputArgs
///         {
///             Type = "bigint",
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
/// 		_, err = streamanalytics.NewFunctionJavascriptUda(ctx, "example", &streamanalytics.FunctionJavascriptUdaArgs{
/// 			Name:                 pulumi.String("example-javascript-function"),
/// 			StreamAnalyticsJobId: pulumi.String(exampleGetJob.Id),
/// 			Script: pulumi.String(`function main() {
///     this.init = function () {
///         this.state = 0;
///     }
///
///     this.accumulate = function (value, timestamp) {
///         this.state += value;
///     }
///
///     this.computeResult = function () {
///         return this.state;
///     }
/// }
/// `),
/// 			Inputs: streamanalytics.FunctionJavascriptUdaInputTypeArray{
/// 				&streamanalytics.FunctionJavascriptUdaInputTypeArgs{
/// 					Type: pulumi.String("bigint"),
/// 				},
/// 			},
/// 			Output: &streamanalytics.FunctionJavascriptUdaOutputTypeArgs{
/// 				Type: pulumi.String("bigint"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetResourceGroupArgs;
/// import com.pulumi.azure.streamanalytics.StreamanalyticsFunctions;
/// import com.pulumi.azure.streamanalytics.inputs.GetJobArgs;
/// import com.pulumi.azure.streamanalytics.FunctionJavascriptUda;
/// import com.pulumi.azure.streamanalytics.FunctionJavascriptUdaArgs;
/// import com.pulumi.azure.streamanalytics.inputs.FunctionJavascriptUdaInputArgs;
/// import com.pulumi.azure.streamanalytics.inputs.FunctionJavascriptUdaOutputArgs;
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
///         var exampleFunctionJavascriptUda = new FunctionJavascriptUda("exampleFunctionJavascriptUda", FunctionJavascriptUdaArgs.builder()
///             .name("example-javascript-function")
///             .streamAnalyticsJobId(exampleGetJob.id())
///             .script("""
/// function main() {
///     this.init = function () {
///         this.state = 0;
///     }
///
///     this.accumulate = function (value, timestamp) {
///         this.state += value;
///     }
///
///     this.computeResult = function () {
///         return this.state;
///     }
/// }
///             """)
///             .inputs(FunctionJavascriptUdaInputArgs.builder()
///                 .type("bigint")
///                 .build())
///             .output(FunctionJavascriptUdaOutputArgs.builder()
///                 .type("bigint")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFunctionJavascriptUda:
///     type: azure:streamanalytics:FunctionJavascriptUda
///     name: example
///     properties:
///       name: example-javascript-function
///       streamAnalyticsJobId: ${exampleGetJob.id}
///       script: |
///         function main() {
///             this.init = function () {
///                 this.state = 0;
///             }
///
///             this.accumulate = function (value, timestamp) {
///                 this.state += value;
///             }
///
///             this.computeResult = function () {
///                 return this.state;
///             }
///         }
///       inputs:
///         - type: bigint
///       output:
///         type: bigint
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2020-03-01
///
/// ## Import
///
/// Stream Analytics JavaScript UDA Functions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/functionJavascriptUda:FunctionJavascriptUda example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/functions/func1
/// ```
class FunctionJavascriptUda extends pulumi.CustomResource {
  /// One or more `input` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> inputs;
  /// The name of the JavaScript UDA Function. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// An `output` block as defined below.
  late final pulumi.Output<FunctionJavascriptUdaOutput> output;
  /// The JavaScript of this UDA Function.
  late final pulumi.Output<String> script;
  /// The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobId;

  /// Creates a new [FunctionJavascriptUda].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionJavascriptUda]. {@macro pulumi_streamanalytics_function_javascript_uda_function_javascript_uda_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionJavascriptUda(
    String name, {
    FunctionJavascriptUdaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/functionJavascriptUda:FunctionJavascriptUda',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    inputs = registerOutput<List<Map<String, dynamic>>>('inputs');
    this.name = registerOutput<String>('name');
    output = registerOutput<FunctionJavascriptUdaOutput>('output', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionJavascriptUdaOutput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    script = registerOutput<String>('script');
    streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }

  /// Gets an existing [FunctionJavascriptUda] resource's state with the given [name] and [id].
  static FunctionJavascriptUda get(
    String name,
    pulumi.Input<String> id, {
    FunctionJavascriptUdaState? state,
  }) {
    return FunctionJavascriptUda._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionJavascriptUda._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/functionJavascriptUda:FunctionJavascriptUda',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    inputs = registerOutput<List<Map<String, dynamic>>>('inputs');
    this.name = registerOutput<String>('name');
    output = registerOutput<FunctionJavascriptUdaOutput>('output', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionJavascriptUdaOutput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    script = registerOutput<String>('script');
    streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_java_script_udfargs.dart';
import 'function_java_script_udfoutput.dart';
import 'function_java_script_udfstate.dart';

/// Manages a JavaScript UDF Function within Stream Analytics Streaming Job.
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
/// const exampleFunctionJavaScriptUDF = new azure.streamanalytics.FunctionJavaScriptUDF("example", {
///     name: "example-javascript-function",
///     streamAnalyticsJobName: exampleGetJob.then(exampleGetJob => exampleGetJob.name),
///     resourceGroupName: exampleGetJob.then(exampleGetJob => exampleGetJob.resourceGroupName),
///     script: `function getRandomNumber(in) {
///   return in;
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
/// example_function_java_script_udf = azure.streamanalytics.FunctionJavaScriptUDF("example",
///     name="example-javascript-function",
///     stream_analytics_job_name=example_get_job.name,
///     resource_group_name=example_get_job.resource_group_name,
///     script="""function getRandomNumber(in) {
///   return in;
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
///     var exampleFunctionJavaScriptUDF = new Azure.StreamAnalytics.FunctionJavaScriptUDF("example", new()
///     {
///         Name = "example-javascript-function",
///         StreamAnalyticsJobName = exampleGetJob.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = exampleGetJob.Apply(getJobResult => getJobResult.ResourceGroupName),
///         Script = @"function getRandomNumber(in) {
///   return in;
/// }
/// ",
///         Inputs = new[]
///         {
///             new Azure.StreamAnalytics.Inputs.FunctionJavaScriptUDFInputArgs
///             {
///                 Type = "bigint",
///             },
///         },
///         Output = new Azure.StreamAnalytics.Inputs.FunctionJavaScriptUDFOutputArgs
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
/// 		_, err = streamanalytics.NewFunctionJavaScriptUDF(ctx, "example", &streamanalytics.FunctionJavaScriptUDFArgs{
/// 			Name:                   pulumi.String("example-javascript-function"),
/// 			StreamAnalyticsJobName: pulumi.String(exampleGetJob.Name),
/// 			ResourceGroupName:      pulumi.String(exampleGetJob.ResourceGroupName),
/// 			Script:                 pulumi.String("function getRandomNumber(in) {\n  return in;\n}\n"),
/// 			Inputs: streamanalytics.FunctionJavaScriptUDFInputTypeArray{
/// 				&streamanalytics.FunctionJavaScriptUDFInputTypeArgs{
/// 					Type: pulumi.String("bigint"),
/// 				},
/// 			},
/// 			Output: &streamanalytics.FunctionJavaScriptUDFOutputTypeArgs{
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
/// import com.pulumi.azure.streamanalytics.FunctionJavaScriptUDF;
/// import com.pulumi.azure.streamanalytics.FunctionJavaScriptUDFArgs;
/// import com.pulumi.azure.streamanalytics.inputs.FunctionJavaScriptUDFInputArgs;
/// import com.pulumi.azure.streamanalytics.inputs.FunctionJavaScriptUDFOutputArgs;
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
///         var exampleFunctionJavaScriptUDF = new FunctionJavaScriptUDF("exampleFunctionJavaScriptUDF", FunctionJavaScriptUDFArgs.builder()
///             .name("example-javascript-function")
///             .streamAnalyticsJobName(exampleGetJob.name())
///             .resourceGroupName(exampleGetJob.resourceGroupName())
///             .script("""
/// function getRandomNumber(in) {
///   return in;
/// }
///             """)
///             .inputs(FunctionJavaScriptUDFInputArgs.builder()
///                 .type("bigint")
///                 .build())
///             .output(FunctionJavaScriptUDFOutputArgs.builder()
///                 .type("bigint")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFunctionJavaScriptUDF:
///     type: azure:streamanalytics:FunctionJavaScriptUDF
///     name: example
///     properties:
///       name: example-javascript-function
///       streamAnalyticsJobName: ${exampleGetJob.name}
///       resourceGroupName: ${exampleGetJob.resourceGroupName}
///       script: |
///         function getRandomNumber(in) {
///           return in;
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
/// Stream Analytics JavaScript UDF Functions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/functionJavaScriptUDF:FunctionJavaScriptUDF example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/functions/func1
/// ```
class FunctionJavaScriptUDF extends pulumi.CustomResource {
  /// One or more `input` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> inputs;

  /// The name of the JavaScript UDF Function. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// An `output` blocks as defined below.
  late final pulumi.Output<FunctionJavaScriptUDFOutput> output;

  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The JavaScript of this UDF Function.
  late final pulumi.Output<String> script;

  /// The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;

  /// Creates a new [FunctionJavaScriptUDF].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionJavaScriptUDF]. {@macro pulumi_streamanalytics_function_java_script_udf_function_java_script_udfargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionJavaScriptUDF(
    String name, {
    FunctionJavaScriptUDFArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/functionJavaScriptUDF:FunctionJavaScriptUDF',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    inputs = registerOutput<List<Map<String, dynamic>>>('inputs');
    this.name = registerOutput<String>('name');
    output = registerOutput<FunctionJavaScriptUDFOutput>('output');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    script = registerOutput<String>('script');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }

  /// Gets an existing [FunctionJavaScriptUDF] resource's state with the given [name] and [id].
  static FunctionJavaScriptUDF get(
    String name,
    pulumi.Input<String> id, {
    FunctionJavaScriptUDFState? state,
  }) {
    return FunctionJavaScriptUDF._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionJavaScriptUDF._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/functionJavaScriptUDF:FunctionJavaScriptUDF',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    inputs = registerOutput<List<Map<String, dynamic>>>('inputs');
    this.name = registerOutput<String>('name');
    output = registerOutput<FunctionJavaScriptUDFOutput>('output');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    script = registerOutput<String>('script');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }
}

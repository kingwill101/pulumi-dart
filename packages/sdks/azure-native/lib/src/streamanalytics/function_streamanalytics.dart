import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_function_properties_response.dart';
import 'function_args.dart';

/// A function object, containing all information associated with the named function. All functions are contained under a streaming job.
///
/// Uses Azure REST API version 2020-03-01. In version 2.x of the Azure Native provider, it used API version 2020-03-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native streamanalytics [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a JavaScript function
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var function = new AzureNative.StreamAnalytics.Function("function", new()
///     {
///         FunctionName = "function8197",
///         JobName = "sj8653",
///         Properties = new AzureNative.StreamAnalytics.Inputs.ScalarFunctionPropertiesArgs
///         {
///             Binding = new AzureNative.StreamAnalytics.Inputs.JavaScriptFunctionBindingArgs
///             {
///                 Script = "function (x, y) { return x + y; }",
///                 Type = "Microsoft.StreamAnalytics/JavascriptUdf",
///             },
///             Inputs = new[]
///             {
///                 new AzureNative.StreamAnalytics.Inputs.FunctionInputArgs
///                 {
///                     DataType = "Any",
///                 },
///             },
///             Output = new AzureNative.StreamAnalytics.Inputs.FunctionOutputArgs
///             {
///                 DataType = "Any",
///             },
///             Type = "Scalar",
///         },
///         ResourceGroupName = "sjrg1637",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	streamanalytics "github.com/pulumi/pulumi-azure-native-sdk/streamanalytics/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := streamanalytics.NewFunction(ctx, "function", &streamanalytics.FunctionArgs{
/// 			FunctionName: pulumi.String("function8197"),
/// 			JobName:      pulumi.String("sj8653"),
/// 			Properties: &streamanalytics.ScalarFunctionPropertiesArgs{
/// 				Binding: streamanalytics.JavaScriptFunctionBinding{
/// 					Script: "function (x, y) { return x + y; }",
/// 					Type:   "Microsoft.StreamAnalytics/JavascriptUdf",
/// 				},
/// 				Inputs: streamanalytics.FunctionInputTypeArray{
/// 					&streamanalytics.FunctionInputTypeArgs{
/// 						DataType: pulumi.String("Any"),
/// 					},
/// 				},
/// 				Output: &streamanalytics.FunctionOutputTypeArgs{
/// 					DataType: pulumi.String("Any"),
/// 				},
/// 				Type: pulumi.String("Scalar"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg1637"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_streamanalytics_function" "function" {
///   function_name = "function8197"
///   job_name      = "sj8653"
///   properties = {
///     "binding" = {
///       "script" = "function (x, y) { return x + y; }"
///       "type"   = "Microsoft.StreamAnalytics/JavascriptUdf"
///     }
///     "inputs" = [{
///       "dataType" = "Any"
///     }]
///     "output" = {
///       "dataType" = "Any"
///     }
///     "type" = "Scalar"
///   }
///   resource_group_name = "sjrg1637"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Function;
/// import com.pulumi.azurenative.streamanalytics.FunctionArgs;
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
///         var function = new Function("function", FunctionArgs.builder()
///             .functionName("function8197")
///             .jobName("sj8653")
///             .properties(ScalarFunctionPropertiesArgs.builder()
///                 .binding(JavaScriptFunctionBindingArgs.builder()
///                     .script("function (x, y) { return x + y; }")
///                     .type("Microsoft.StreamAnalytics/JavascriptUdf")
///                     .build())
///                 .inputs(FunctionInputArgs.builder()
///                     .dataType("Any")
///                     .build())
///                 .output(FunctionOutputArgs.builder()
///                     .dataType("Any")
///                     .build())
///                 .type("Scalar")
///                 .build())
///             .resourceGroupName("sjrg1637")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const _function = new azure_native.streamanalytics.Function("function", {
///     functionName: "function8197",
///     jobName: "sj8653",
///     properties: {
///         binding: {
///             script: "function (x, y) { return x + y; }",
///             type: "Microsoft.StreamAnalytics/JavascriptUdf",
///         },
///         inputs: [{
///             dataType: "Any",
///         }],
///         output: {
///             dataType: "Any",
///         },
///         type: "Scalar",
///     },
///     resourceGroupName: "sjrg1637",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// function = azure_native.streamanalytics.Function("function",
///     function_name="function8197",
///     job_name="sj8653",
///     properties={
///         "binding": {
///             "script": "function (x, y) { return x + y; }",
///             "type": "Microsoft.StreamAnalytics/JavascriptUdf",
///         },
///         "inputs": [{
///             "data_type": "Any",
///         }],
///         "output": {
///             "data_type": "Any",
///         },
///         "type": "Scalar",
///     },
///     resource_group_name="sjrg1637")
///
/// ```
///
/// ```yaml
/// resources:
///   function:
///     type: azure-native:streamanalytics:Function
///     properties:
///       functionName: function8197
///       jobName: sj8653
///       properties:
///         binding:
///           script: function (x, y) { return x + y; }
///           type: Microsoft.StreamAnalytics/JavascriptUdf
///         inputs:
///           - dataType: Any
///         output:
///           dataType: Any
///         type: Scalar
///       resourceGroupName: sjrg1637
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Azure ML function
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var function = new AzureNative.StreamAnalytics.Function("function", new()
///     {
///         FunctionName = "function588",
///         JobName = "sj9093",
///         Properties = new AzureNative.StreamAnalytics.Inputs.ScalarFunctionPropertiesArgs
///         {
///             Binding = new AzureNative.StreamAnalytics.Inputs.AzureMachineLearningWebServiceFunctionBindingArgs
///             {
///                 ApiKey = "someApiKey==",
///                 BatchSize = 1000,
///                 Endpoint = "someAzureMLEndpointURL",
///                 Inputs = new AzureNative.StreamAnalytics.Inputs.AzureMachineLearningWebServiceInputsArgs
///                 {
///                     ColumnNames = new[]
///                     {
///                         new AzureNative.StreamAnalytics.Inputs.AzureMachineLearningWebServiceInputColumnArgs
///                         {
///                             DataType = "string",
///                             MapTo = 0,
///                             Name = "tweet",
///                         },
///                     },
///                     Name = "input1",
///                 },
///                 Outputs = new[]
///                 {
///                     new AzureNative.StreamAnalytics.Inputs.AzureMachineLearningWebServiceOutputColumnArgs
///                     {
///                         DataType = "string",
///                         Name = "Sentiment",
///                     },
///                 },
///                 Type = "Microsoft.MachineLearning/WebService",
///             },
///             Inputs = new[]
///             {
///                 new AzureNative.StreamAnalytics.Inputs.FunctionInputArgs
///                 {
///                     DataType = "nvarchar(max)",
///                 },
///             },
///             Output = new AzureNative.StreamAnalytics.Inputs.FunctionOutputArgs
///             {
///                 DataType = "nvarchar(max)",
///             },
///             Type = "Scalar",
///         },
///         ResourceGroupName = "sjrg7",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	streamanalytics "github.com/pulumi/pulumi-azure-native-sdk/streamanalytics/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := streamanalytics.NewFunction(ctx, "function", &streamanalytics.FunctionArgs{
/// 			FunctionName: pulumi.String("function588"),
/// 			JobName:      pulumi.String("sj9093"),
/// 			Properties: &streamanalytics.ScalarFunctionPropertiesArgs{
/// 				Binding: streamanalytics.AzureMachineLearningWebServiceFunctionBinding{
/// 					ApiKey:    "someApiKey==",
/// 					BatchSize: 1000,
/// 					Endpoint:  "someAzureMLEndpointURL",
/// 					Inputs: streamanalytics.AzureMachineLearningWebServiceInputs{
/// 						ColumnNames: []streamanalytics.AzureMachineLearningWebServiceInputColumn{
/// 							{
/// 								DataType: "string",
/// 								MapTo:    0,
/// 								Name:     "tweet",
/// 							},
/// 						},
/// 						Name: "input1",
/// 					},
/// 					Outputs: []streamanalytics.AzureMachineLearningWebServiceOutputColumn{
/// 						{
/// 							DataType: "string",
/// 							Name:     "Sentiment",
/// 						},
/// 					},
/// 					Type: "Microsoft.MachineLearning/WebService",
/// 				},
/// 				Inputs: streamanalytics.FunctionInputTypeArray{
/// 					&streamanalytics.FunctionInputTypeArgs{
/// 						DataType: pulumi.String("nvarchar(max)"),
/// 					},
/// 				},
/// 				Output: &streamanalytics.FunctionOutputTypeArgs{
/// 					DataType: pulumi.String("nvarchar(max)"),
/// 				},
/// 				Type: pulumi.String("Scalar"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg7"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_streamanalytics_function" "function" {
///   function_name = "function588"
///   job_name      = "sj9093"
///   properties = {
///     "binding" = {
///       "apiKey"    = "someApiKey=="
///       "batchSize" = 1000
///       "endpoint"  = "someAzureMLEndpointURL"
///       "inputs" = {
///         "columnNames" = [{
///           "dataType" = "string"
///           "mapTo"    = 0
///           "name"     = "tweet"
///         }]
///         "name" = "input1"
///       }
///       "outputs" = [{
///         "dataType" = "string"
///         "name"     = "Sentiment"
///       }]
///       "type" = "Microsoft.MachineLearning/WebService"
///     }
///     "inputs" = [{
///       "dataType" = "nvarchar(max)"
///     }]
///     "output" = {
///       "dataType" = "nvarchar(max)"
///     }
///     "type" = "Scalar"
///   }
///   resource_group_name = "sjrg7"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Function;
/// import com.pulumi.azurenative.streamanalytics.FunctionArgs;
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
///         var function = new Function("function", FunctionArgs.builder()
///             .functionName("function588")
///             .jobName("sj9093")
///             .properties(ScalarFunctionPropertiesArgs.builder()
///                 .binding(AzureMachineLearningWebServiceFunctionBindingArgs.builder()
///                     .apiKey("someApiKey==")
///                     .batchSize(1000)
///                     .endpoint("someAzureMLEndpointURL")
///                     .inputs(AzureMachineLearningWebServiceInputsArgs.builder()
///                         .columnNames(AzureMachineLearningWebServiceInputColumnArgs.builder()
///                             .dataType("string")
///                             .mapTo(0)
///                             .name("tweet")
///                             .build())
///                         .name("input1")
///                         .build())
///                     .outputs(AzureMachineLearningWebServiceOutputColumnArgs.builder()
///                         .dataType("string")
///                         .name("Sentiment")
///                         .build())
///                     .type("Microsoft.MachineLearning/WebService")
///                     .build())
///                 .inputs(FunctionInputArgs.builder()
///                     .dataType("nvarchar(max)")
///                     .build())
///                 .output(FunctionOutputArgs.builder()
///                     .dataType("nvarchar(max)")
///                     .build())
///                 .type("Scalar")
///                 .build())
///             .resourceGroupName("sjrg7")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const _function = new azure_native.streamanalytics.Function("function", {
///     functionName: "function588",
///     jobName: "sj9093",
///     properties: {
///         binding: {
///             apiKey: "someApiKey==",
///             batchSize: 1000,
///             endpoint: "someAzureMLEndpointURL",
///             inputs: {
///                 columnNames: [{
///                     dataType: "string",
///                     mapTo: 0,
///                     name: "tweet",
///                 }],
///                 name: "input1",
///             },
///             outputs: [{
///                 dataType: "string",
///                 name: "Sentiment",
///             }],
///             type: "Microsoft.MachineLearning/WebService",
///         },
///         inputs: [{
///             dataType: "nvarchar(max)",
///         }],
///         output: {
///             dataType: "nvarchar(max)",
///         },
///         type: "Scalar",
///     },
///     resourceGroupName: "sjrg7",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// function = azure_native.streamanalytics.Function("function",
///     function_name="function588",
///     job_name="sj9093",
///     properties={
///         "binding": {
///             "api_key": "someApiKey==",
///             "batch_size": 1000,
///             "endpoint": "someAzureMLEndpointURL",
///             "inputs": {
///                 "column_names": [{
///                     "data_type": "string",
///                     "map_to": 0,
///                     "name": "tweet",
///                 }],
///                 "name": "input1",
///             },
///             "outputs": [{
///                 "data_type": "string",
///                 "name": "Sentiment",
///             }],
///             "type": "Microsoft.MachineLearning/WebService",
///         },
///         "inputs": [{
///             "data_type": "nvarchar(max)",
///         }],
///         "output": {
///             "data_type": "nvarchar(max)",
///         },
///         "type": "Scalar",
///     },
///     resource_group_name="sjrg7")
///
/// ```
///
/// ```yaml
/// resources:
///   function:
///     type: azure-native:streamanalytics:Function
///     properties:
///       functionName: function588
///       jobName: sj9093
///       properties:
///         binding:
///           apiKey: someApiKey==
///           batchSize: 1000
///           endpoint: someAzureMLEndpointURL
///           inputs:
///             columnNames:
///               - dataType: string
///                 mapTo: 0
///                 name: tweet
///             name: input1
///           outputs:
///             - dataType: string
///               name: Sentiment
///           type: Microsoft.MachineLearning/WebService
///         inputs:
///           - dataType: nvarchar(max)
///         output:
///           dataType: nvarchar(max)
///         type: Scalar
///       resourceGroupName: sjrg7
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:streamanalytics:Function function588 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/streamingjobs/{jobName}/functions/{functionName}
/// ```
class FunctionStreamanalytics extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name
  late final pulumi.Output<String?> name;
  /// The properties that are associated with a function.
  late final pulumi.Output<AggregateFunctionPropertiesResponse> properties;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [FunctionStreamanalytics].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionStreamanalytics]. {@macro pulumi_streamanalytics_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionStreamanalytics(
    String name, {
    FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:streamanalytics:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String?>('name');
    properties = registerOutput<AggregateFunctionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AggregateFunctionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

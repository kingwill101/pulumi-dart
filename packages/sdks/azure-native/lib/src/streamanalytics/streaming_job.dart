import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_info_response.dart';
import 'function_response.dart';
import 'identity_response.dart';
import 'input_response.dart';
import 'job_storage_account_response.dart';
import 'output_response.dart';
import 'sku_response.dart';
import 'streaming_job_args.dart';
import 'transformation_response.dart';

/// A streaming job object, containing all information associated with the named streaming job.
///
/// Uses Azure REST API version 2020-03-01. In version 2.x of the Azure Native provider, it used API version 2020-03-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native streamanalytics [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a complete streaming job (a streaming job with a transformation, at least 1 input and at least 1 output)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var streamingJob = new AzureNative.StreamAnalytics.StreamingJob("streamingJob", new()
///     {
///         CompatibilityLevel = AzureNative.StreamAnalytics.CompatibilityLevel.CompatibilityLevel_1_0,
///         DataLocale = "en-US",
///         EventsLateArrivalMaxDelayInSeconds = 5,
///         EventsOutOfOrderMaxDelayInSeconds = 0,
///         EventsOutOfOrderPolicy = AzureNative.StreamAnalytics.EventsOutOfOrderPolicy.Drop,
///         Functions = new[] {},
///         Inputs = new[]
///         {
///             new AzureNative.StreamAnalytics.Inputs.InputArgs
///             {
///                 Name = "inputtest",
///                 Properties = new AzureNative.StreamAnalytics.Inputs.StreamInputPropertiesArgs
///                 {
///                     Datasource = new AzureNative.StreamAnalytics.Inputs.BlobStreamInputDataSourceArgs
///                     {
///                         Container = "containerName",
///                         PathPattern = "",
///                         StorageAccounts = new[]
///                         {
///                             new AzureNative.StreamAnalytics.Inputs.StorageAccountArgs
///                             {
///                                 AccountKey = "yourAccountKey==",
///                                 AccountName = "yourAccountName",
///                             },
///                         },
///                         Type = "Microsoft.Storage/Blob",
///                     },
///                     Serialization = new AzureNative.StreamAnalytics.Inputs.JsonSerializationArgs
///                     {
///                         Encoding = AzureNative.StreamAnalytics.Encoding.UTF8,
///                         Type = "Json",
///                     },
///                     Type = "Stream",
///                 },
///             },
///         },
///         JobName = "sj7804",
///         Location = "West US",
///         OutputErrorPolicy = AzureNative.StreamAnalytics.OutputErrorPolicy.Drop,
///         Outputs = new[]
///         {
///             new AzureNative.StreamAnalytics.Inputs.OutputArgs
///             {
///                 Datasource = new AzureNative.StreamAnalytics.Inputs.AzureSqlDatabaseOutputDataSourceArgs
///                 {
///                     Database = "databaseName",
///                     Password = "userPassword",
///                     Server = "serverName",
///                     Table = "tableName",
///                     Type = "Microsoft.Sql/Server/Database",
///                     User = "<user>",
///                 },
///                 Name = "outputtest",
///             },
///         },
///         ResourceGroupName = "sjrg3276",
///         Sku = new AzureNative.StreamAnalytics.Inputs.SkuArgs
///         {
///             Name = AzureNative.StreamAnalytics.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key3", "value3" },
///             { "randomKey", "randomValue" },
///         },
///         Transformation = new AzureNative.StreamAnalytics.Inputs.TransformationArgs
///         {
///             Name = "transformationtest",
///             Query = "Select Id, Name from inputtest",
///             StreamingUnits = 1,
///         },
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
/// 		_, err := streamanalytics.NewStreamingJob(ctx, "streamingJob", &streamanalytics.StreamingJobArgs{
/// 			CompatibilityLevel:                 pulumi.String(streamanalytics.CompatibilityLevel_1_0),
/// 			DataLocale:                         pulumi.String("en-US"),
/// 			EventsLateArrivalMaxDelayInSeconds: pulumi.Int(5),
/// 			EventsOutOfOrderMaxDelayInSeconds:  pulumi.Int(0),
/// 			EventsOutOfOrderPolicy:             pulumi.String(streamanalytics.EventsOutOfOrderPolicyDrop),
/// 			Functions:                          streamanalytics.FunctionTypeArray{},
/// 			Inputs: streamanalytics.InputTypeArray{
/// 				&streamanalytics.InputTypeArgs{
/// 					Name: pulumi.String("inputtest"),
/// 					Properties: streamanalytics.StreamInputProperties{
/// 						Datasource: streamanalytics.BlobStreamInputDataSource{
/// 							Container:   "containerName",
/// 							PathPattern: "",
/// 							StorageAccounts: []streamanalytics.StorageAccount{
/// 								{
/// 									AccountKey:  "yourAccountKey==",
/// 									AccountName: "yourAccountName",
/// 								},
/// 							},
/// 							Type: "Microsoft.Storage/Blob",
/// 						},
/// 						Serialization: streamanalytics.JsonSerialization{
/// 							Encoding: streamanalytics.EncodingUTF8,
/// 							Type:     "Json",
/// 						},
/// 						Type: "Stream",
/// 					},
/// 				},
/// 			},
/// 			JobName:           pulumi.String("sj7804"),
/// 			Location:          pulumi.String("West US"),
/// 			OutputErrorPolicy: pulumi.String(streamanalytics.OutputErrorPolicyDrop),
/// 			Outputs: streamanalytics.OutputTypeArray{
/// 				&streamanalytics.OutputTypeArgs{
/// 					Datasource: streamanalytics.AzureSqlDatabaseOutputDataSource{
/// 						Database: "databaseName",
/// 						Password: "userPassword",
/// 						Server:   "serverName",
/// 						Table:    "tableName",
/// 						Type:     "Microsoft.Sql/Server/Database",
/// 						User:     "<user>",
/// 					},
/// 					Name: pulumi.String("outputtest"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg3276"),
/// 			Sku: &streamanalytics.SkuArgs{
/// 				Name: pulumi.String(streamanalytics.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1":      pulumi.String("value1"),
/// 				"key3":      pulumi.String("value3"),
/// 				"randomKey": pulumi.String("randomValue"),
/// 			},
/// 			Transformation: &streamanalytics.TransformationArgs{
/// 				Name:           pulumi.String("transformationtest"),
/// 				Query:          pulumi.String("Select Id, Name from inputtest"),
/// 				StreamingUnits: pulumi.Int(1),
/// 			},
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
/// resource "azure-native_streamanalytics_streamingjob" "streamingJob" {
///   compatibility_level                      = "1.0"
///   data_locale                              = "en-US"
///   events_late_arrival_max_delay_in_seconds = 5
///   events_out_of_order_max_delay_in_seconds = 0
///   events_out_of_order_policy               = "Drop"
///   inputs {
///     name = "inputtest"
///     properties = {
///       "datasource" = {
///         "container"   = "containerName"
///         "pathPattern" = ""
///         "storageAccounts" = [{
///           "accountKey"  = "yourAccountKey=="
///           "accountName" = "yourAccountName"
///         }]
///         "type" = "Microsoft.Storage/Blob"
///       }
///       "serialization" = {
///         "encoding" = "UTF8"
///         "type"     = "Json"
///       }
///       "type" = "Stream"
///     }
///   }
///   job_name            = "sj7804"
///   location            = "West US"
///   output_error_policy = "Drop"
///   outputs {
///     datasource = {
///       "database" = "databaseName"
///       "password" = "userPassword"
///       "server"   = "serverName"
///       "table"    = "tableName"
///       "type"     = "Microsoft.Sql/Server/Database"
///       "user"     = "<user>"
///     }
///     name = "outputtest"
///   }
///   resource_group_name = "sjrg3276"
///   sku = {
///     name = "Standard"
///   }
///   tags = {
///     "key1"      = "value1"
///     "key3"      = "value3"
///     "randomKey" = "randomValue"
///   }
///   transformation = {
///     name            = "transformationtest"
///     query           = "Select Id, Name from inputtest"
///     streaming_units = 1
///   }
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
/// import com.pulumi.azurenative.streamanalytics.StreamingJob;
/// import com.pulumi.azurenative.streamanalytics.StreamingJobArgs;
/// import com.pulumi.azurenative.streamanalytics.inputs.InputArgs;
/// import com.pulumi.azurenative.streamanalytics.inputs.OutputArgs;
/// import com.pulumi.azurenative.streamanalytics.inputs.SkuArgs;
/// import com.pulumi.azurenative.streamanalytics.inputs.TransformationArgs;
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
///         var streamingJob = new StreamingJob("streamingJob", StreamingJobArgs.builder()
///             .compatibilityLevel("1.0")
///             .dataLocale("en-US")
///             .eventsLateArrivalMaxDelayInSeconds(5)
///             .eventsOutOfOrderMaxDelayInSeconds(0)
///             .eventsOutOfOrderPolicy("Drop")
///             .functions()
///             .inputs(InputArgs.builder()
///                 .name("inputtest")
///                 .properties(StreamInputPropertiesArgs.builder()
///                     .datasource(BlobStreamInputDataSourceArgs.builder()
///                         .container("containerName")
///                         .pathPattern("")
///                         .storageAccounts(StorageAccountArgs.builder()
///                             .accountKey("yourAccountKey==")
///                             .accountName("yourAccountName")
///                             .build())
///                         .type("Microsoft.Storage/Blob")
///                         .build())
///                     .serialization(JsonSerializationArgs.builder()
///                         .encoding("UTF8")
///                         .type("Json")
///                         .build())
///                     .type("Stream")
///                     .build())
///                 .build())
///             .jobName("sj7804")
///             .location("West US")
///             .outputErrorPolicy("Drop")
///             .outputs(OutputArgs.builder()
///                 .datasource(AzureSqlDatabaseOutputDataSourceArgs.builder()
///                     .database("databaseName")
///                     .password("userPassword")
///                     .server("serverName")
///                     .table("tableName")
///                     .type("Microsoft.Sql/Server/Database")
///                     .user("<user>")
///                     .build())
///                 .name("outputtest")
///                 .build())
///             .resourceGroupName("sjrg3276")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key3", "value3"),
///                 Map.entry("randomKey", "randomValue")
///             ))
///             .transformation(TransformationArgs.builder()
///                 .name("transformationtest")
///                 .query("Select Id, Name from inputtest")
///                 .streamingUnits(1)
///                 .build())
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
/// const streamingJob = new azure_native.streamanalytics.StreamingJob("streamingJob", {
///     compatibilityLevel: azure_native.streamanalytics.CompatibilityLevel.CompatibilityLevel_1_0,
///     dataLocale: "en-US",
///     eventsLateArrivalMaxDelayInSeconds: 5,
///     eventsOutOfOrderMaxDelayInSeconds: 0,
///     eventsOutOfOrderPolicy: azure_native.streamanalytics.EventsOutOfOrderPolicy.Drop,
///     functions: [],
///     inputs: [{
///         name: "inputtest",
///         properties: {
///             datasource: {
///                 container: "containerName",
///                 pathPattern: "",
///                 storageAccounts: [{
///                     accountKey: "yourAccountKey==",
///                     accountName: "yourAccountName",
///                 }],
///                 type: "Microsoft.Storage/Blob",
///             },
///             serialization: {
///                 encoding: azure_native.streamanalytics.Encoding.UTF8,
///                 type: "Json",
///             },
///             type: "Stream",
///         },
///     }],
///     jobName: "sj7804",
///     location: "West US",
///     outputErrorPolicy: azure_native.streamanalytics.OutputErrorPolicy.Drop,
///     outputs: [{
///         datasource: {
///             database: "databaseName",
///             password: "userPassword",
///             server: "serverName",
///             table: "tableName",
///             type: "Microsoft.Sql/Server/Database",
///             user: "<user>",
///         },
///         name: "outputtest",
///     }],
///     resourceGroupName: "sjrg3276",
///     sku: {
///         name: azure_native.streamanalytics.SkuName.Standard,
///     },
///     tags: {
///         key1: "value1",
///         key3: "value3",
///         randomKey: "randomValue",
///     },
///     transformation: {
///         name: "transformationtest",
///         query: "Select Id, Name from inputtest",
///         streamingUnits: 1,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// streaming_job = azure_native.streamanalytics.StreamingJob("streamingJob",
///     compatibility_level=azure_native.streamanalytics.CompatibilityLevel.COMPATIBILITY_LEVEL_1_0,
///     data_locale="en-US",
///     events_late_arrival_max_delay_in_seconds=5,
///     events_out_of_order_max_delay_in_seconds=0,
///     events_out_of_order_policy=azure_native.streamanalytics.EventsOutOfOrderPolicy.DROP,
///     functions=[],
///     inputs=[{
///         "name": "inputtest",
///         "properties": {
///             "datasource": {
///                 "container": "containerName",
///                 "path_pattern": "",
///                 "storage_accounts": [{
///                     "account_key": "yourAccountKey==",
///                     "account_name": "yourAccountName",
///                 }],
///                 "type": "Microsoft.Storage/Blob",
///             },
///             "serialization": {
///                 "encoding": azure_native.streamanalytics.Encoding.UTF8,
///                 "type": "Json",
///             },
///             "type": "Stream",
///         },
///     }],
///     job_name="sj7804",
///     location="West US",
///     output_error_policy=azure_native.streamanalytics.OutputErrorPolicy.DROP,
///     outputs=[{
///         "datasource": {
///             "database": "databaseName",
///             "password": "userPassword",
///             "server": "serverName",
///             "table": "tableName",
///             "type": "Microsoft.Sql/Server/Database",
///             "user": "<user>",
///         },
///         "name": "outputtest",
///     }],
///     resource_group_name="sjrg3276",
///     sku={
///         "name": azure_native.streamanalytics.SkuName.STANDARD,
///     },
///     tags={
///         "key1": "value1",
///         "key3": "value3",
///         "randomKey": "randomValue",
///     },
///     transformation={
///         "name": "transformationtest",
///         "query": "Select Id, Name from inputtest",
///         "streaming_units": 1,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   streamingJob:
///     type: azure-native:streamanalytics:StreamingJob
///     properties:
///       compatibilityLevel: '1.0'
///       dataLocale: en-US
///       eventsLateArrivalMaxDelayInSeconds: 5
///       eventsOutOfOrderMaxDelayInSeconds: 0
///       eventsOutOfOrderPolicy: Drop
///       functions: []
///       inputs:
///         - name: inputtest
///           properties:
///             datasource:
///               container: containerName
///               pathPattern: ""
///               storageAccounts:
///                 - accountKey: yourAccountKey==
///                   accountName: yourAccountName
///               type: Microsoft.Storage/Blob
///             serialization:
///               encoding: UTF8
///               type: Json
///             type: Stream
///       jobName: sj7804
///       location: West US
///       outputErrorPolicy: Drop
///       outputs:
///         - datasource:
///             database: databaseName
///             password: userPassword
///             server: serverName
///             table: tableName
///             type: Microsoft.Sql/Server/Database
///             user: <user>
///           name: outputtest
///       resourceGroupName: sjrg3276
///       sku:
///         name: Standard
///       tags:
///         key1: value1
///         key3: value3
///         randomKey: randomValue
///       transformation:
///         name: transformationtest
///         query: Select Id, Name from inputtest
///         streamingUnits: 1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a streaming job shell (a streaming job with no inputs, outputs, transformation, or functions)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var streamingJob = new AzureNative.StreamAnalytics.StreamingJob("streamingJob", new()
///     {
///         CompatibilityLevel = AzureNative.StreamAnalytics.CompatibilityLevel.CompatibilityLevel_1_0,
///         DataLocale = "en-US",
///         EventsLateArrivalMaxDelayInSeconds = 16,
///         EventsOutOfOrderMaxDelayInSeconds = 5,
///         EventsOutOfOrderPolicy = AzureNative.StreamAnalytics.EventsOutOfOrderPolicy.Drop,
///         Functions = new[] {},
///         Inputs = new[] {},
///         JobName = "sj59",
///         Location = "West US",
///         OutputErrorPolicy = AzureNative.StreamAnalytics.OutputErrorPolicy.Drop,
///         Outputs = new[] {},
///         ResourceGroupName = "sjrg6936",
///         Sku = new AzureNative.StreamAnalytics.Inputs.SkuArgs
///         {
///             Name = AzureNative.StreamAnalytics.SkuName.Standard,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key3", "value3" },
///             { "randomKey", "randomValue" },
///         },
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
/// 		_, err := streamanalytics.NewStreamingJob(ctx, "streamingJob", &streamanalytics.StreamingJobArgs{
/// 			CompatibilityLevel:                 pulumi.String(streamanalytics.CompatibilityLevel_1_0),
/// 			DataLocale:                         pulumi.String("en-US"),
/// 			EventsLateArrivalMaxDelayInSeconds: pulumi.Int(16),
/// 			EventsOutOfOrderMaxDelayInSeconds:  pulumi.Int(5),
/// 			EventsOutOfOrderPolicy:             pulumi.String(streamanalytics.EventsOutOfOrderPolicyDrop),
/// 			Functions:                          streamanalytics.FunctionTypeArray{},
/// 			Inputs:                             streamanalytics.InputTypeArray{},
/// 			JobName:                            pulumi.String("sj59"),
/// 			Location:                           pulumi.String("West US"),
/// 			OutputErrorPolicy:                  pulumi.String(streamanalytics.OutputErrorPolicyDrop),
/// 			Outputs:                            streamanalytics.OutputTypeArray{},
/// 			ResourceGroupName:                  pulumi.String("sjrg6936"),
/// 			Sku: &streamanalytics.SkuArgs{
/// 				Name: pulumi.String(streamanalytics.SkuNameStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1":      pulumi.String("value1"),
/// 				"key3":      pulumi.String("value3"),
/// 				"randomKey": pulumi.String("randomValue"),
/// 			},
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
/// resource "azure-native_streamanalytics_streamingjob" "streamingJob" {
///   compatibility_level                      = "1.0"
///   data_locale                              = "en-US"
///   events_late_arrival_max_delay_in_seconds = 16
///   events_out_of_order_max_delay_in_seconds = 5
///   events_out_of_order_policy               = "Drop"
///   job_name                                 = "sj59"
///   location                                 = "West US"
///   output_error_policy                      = "Drop"
///   resource_group_name                      = "sjrg6936"
///   sku = {
///     name = "Standard"
///   }
///   tags = {
///     "key1"      = "value1"
///     "key3"      = "value3"
///     "randomKey" = "randomValue"
///   }
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
/// import com.pulumi.azurenative.streamanalytics.StreamingJob;
/// import com.pulumi.azurenative.streamanalytics.StreamingJobArgs;
/// import com.pulumi.azurenative.streamanalytics.inputs.SkuArgs;
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
///         var streamingJob = new StreamingJob("streamingJob", StreamingJobArgs.builder()
///             .compatibilityLevel("1.0")
///             .dataLocale("en-US")
///             .eventsLateArrivalMaxDelayInSeconds(16)
///             .eventsOutOfOrderMaxDelayInSeconds(5)
///             .eventsOutOfOrderPolicy("Drop")
///             .functions()
///             .inputs()
///             .jobName("sj59")
///             .location("West US")
///             .outputErrorPolicy("Drop")
///             .outputs()
///             .resourceGroupName("sjrg6936")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key3", "value3"),
///                 Map.entry("randomKey", "randomValue")
///             ))
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
/// const streamingJob = new azure_native.streamanalytics.StreamingJob("streamingJob", {
///     compatibilityLevel: azure_native.streamanalytics.CompatibilityLevel.CompatibilityLevel_1_0,
///     dataLocale: "en-US",
///     eventsLateArrivalMaxDelayInSeconds: 16,
///     eventsOutOfOrderMaxDelayInSeconds: 5,
///     eventsOutOfOrderPolicy: azure_native.streamanalytics.EventsOutOfOrderPolicy.Drop,
///     functions: [],
///     inputs: [],
///     jobName: "sj59",
///     location: "West US",
///     outputErrorPolicy: azure_native.streamanalytics.OutputErrorPolicy.Drop,
///     outputs: [],
///     resourceGroupName: "sjrg6936",
///     sku: {
///         name: azure_native.streamanalytics.SkuName.Standard,
///     },
///     tags: {
///         key1: "value1",
///         key3: "value3",
///         randomKey: "randomValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// streaming_job = azure_native.streamanalytics.StreamingJob("streamingJob",
///     compatibility_level=azure_native.streamanalytics.CompatibilityLevel.COMPATIBILITY_LEVEL_1_0,
///     data_locale="en-US",
///     events_late_arrival_max_delay_in_seconds=16,
///     events_out_of_order_max_delay_in_seconds=5,
///     events_out_of_order_policy=azure_native.streamanalytics.EventsOutOfOrderPolicy.DROP,
///     functions=[],
///     inputs=[],
///     job_name="sj59",
///     location="West US",
///     output_error_policy=azure_native.streamanalytics.OutputErrorPolicy.DROP,
///     outputs=[],
///     resource_group_name="sjrg6936",
///     sku={
///         "name": azure_native.streamanalytics.SkuName.STANDARD,
///     },
///     tags={
///         "key1": "value1",
///         "key3": "value3",
///         "randomKey": "randomValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   streamingJob:
///     type: azure-native:streamanalytics:StreamingJob
///     properties:
///       compatibilityLevel: '1.0'
///       dataLocale: en-US
///       eventsLateArrivalMaxDelayInSeconds: 16
///       eventsOutOfOrderMaxDelayInSeconds: 5
///       eventsOutOfOrderPolicy: Drop
///       functions: []
///       inputs: []
///       jobName: sj59
///       location: West US
///       outputErrorPolicy: Drop
///       outputs: []
///       resourceGroupName: sjrg6936
///       sku:
///         name: Standard
///       tags:
///         key1: value1
///         key3: value3
///         randomKey: randomValue
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
/// $ pulumi import azure-native:streamanalytics:StreamingJob sj59 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/streamingjobs/{jobName}
/// ```
class StreamingJob extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The cluster which streaming jobs will run on.
  late final pulumi.Output<ClusterInfoResponse?> cluster;
  /// Controls certain runtime behaviors of the streaming job.
  late final pulumi.Output<String?> compatibilityLevel;
  /// Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
  late final pulumi.Output<String?> contentStoragePolicy;
  /// Value is an ISO-8601 formatted UTC timestamp indicating when the streaming job was created.
  late final pulumi.Output<String> createdDate;
  /// The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to 'en-US' if none specified.
  late final pulumi.Output<String?> dataLocale;
  /// The current entity tag for the streaming job. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  late final pulumi.Output<String> etag;
  /// The maximum tolerable delay in seconds where events arriving late could be included.  Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1.
  late final pulumi.Output<int?> eventsLateArrivalMaxDelayInSeconds;
  /// The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order.
  late final pulumi.Output<int?> eventsOutOfOrderMaxDelayInSeconds;
  /// Indicates the policy to apply to events that arrive out of order in the input event stream.
  late final pulumi.Output<String?> eventsOutOfOrderPolicy;
  /// A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  late final pulumi.Output<List<FunctionResponse>?> functions;
  /// Describes the system-assigned managed identity assigned to this job that can be used to authenticate with inputs and outputs.
  late final pulumi.Output<IdentityResponse?> identity;
  /// A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input.
  late final pulumi.Output<List<InputResponse>?> inputs;
  /// A GUID uniquely identifying the streaming job. This GUID is generated upon creation of the streaming job.
  late final pulumi.Output<String> jobId;
  /// Describes the state of the streaming job.
  late final pulumi.Output<String> jobState;
  /// The properties that are associated with an Azure Storage account with MSI
  late final pulumi.Output<JobStorageAccountResponse?> jobStorageAccount;
  /// Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
  late final pulumi.Output<String?> jobType;
  /// Value is either an ISO-8601 formatted timestamp indicating the last output event time of the streaming job or null indicating that output has not yet been produced. In case of multiple outputs or multiple streams, this shows the latest value in that set.
  late final pulumi.Output<String> lastOutputEventTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).
  late final pulumi.Output<String?> outputErrorPolicy;
  /// This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.
  late final pulumi.Output<String?> outputStartMode;
  /// Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime.
  late final pulumi.Output<String?> outputStartTime;
  /// A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output.
  late final pulumi.Output<List<OutputResponse>?> outputs;
  /// Describes the provisioning status of the streaming job.
  late final pulumi.Output<String> provisioningState;
  /// Describes the SKU of the streaming job. Required on PUT (CreateOrReplace) requests.
  late final pulumi.Output<SkuResponse?> sku;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Indicates the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation.
  late final pulumi.Output<TransformationResponse?> transformation;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [StreamingJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamingJob]. {@macro pulumi_streamanalytics_streaming_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamingJob(
    String name, {
    StreamingJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:streamanalytics:StreamingJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cluster = registerOutput<ClusterInfoResponse?>('cluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityLevel = registerOutput<String?>('compatibilityLevel');
    contentStoragePolicy = registerOutput<String?>('contentStoragePolicy');
    createdDate = registerOutput<String>('createdDate');
    dataLocale = registerOutput<String?>('dataLocale');
    etag = registerOutput<String>('etag');
    eventsLateArrivalMaxDelayInSeconds = registerOutput<int?>('eventsLateArrivalMaxDelayInSeconds');
    eventsOutOfOrderMaxDelayInSeconds = registerOutput<int?>('eventsOutOfOrderMaxDelayInSeconds');
    eventsOutOfOrderPolicy = registerOutput<String?>('eventsOutOfOrderPolicy');
    functions = registerOutput<List<FunctionResponse>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FunctionResponse>(guardedValue, (value) => FunctionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputs = registerOutput<List<InputResponse>?>('inputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InputResponse>(guardedValue, (value) => InputResponse.fromMap((value as Map).cast<String, dynamic>())); });
    jobId = registerOutput<String>('jobId');
    jobState = registerOutput<String>('jobState');
    jobStorageAccount = registerOutput<JobStorageAccountResponse?>('jobStorageAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobStorageAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobType = registerOutput<String?>('jobType');
    lastOutputEventTime = registerOutput<String>('lastOutputEventTime');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    outputErrorPolicy = registerOutput<String?>('outputErrorPolicy');
    outputStartMode = registerOutput<String?>('outputStartMode');
    outputStartTime = registerOutput<String?>('outputStartTime');
    outputs = registerOutput<List<OutputResponse>?>('outputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OutputResponse>(guardedValue, (value) => OutputResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transformation = registerOutput<TransformationResponse?>('transformation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TransformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [StreamingJob] resource.
  StreamingJob.reference(String urn)
    : super(
        'azure-native:streamanalytics:StreamingJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cluster = registerOutput<ClusterInfoResponse?>('cluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compatibilityLevel = registerOutput<String?>('compatibilityLevel');
    contentStoragePolicy = registerOutput<String?>('contentStoragePolicy');
    createdDate = registerOutput<String>('createdDate');
    dataLocale = registerOutput<String?>('dataLocale');
    etag = registerOutput<String>('etag');
    eventsLateArrivalMaxDelayInSeconds = registerOutput<int?>('eventsLateArrivalMaxDelayInSeconds');
    eventsOutOfOrderMaxDelayInSeconds = registerOutput<int?>('eventsOutOfOrderMaxDelayInSeconds');
    eventsOutOfOrderPolicy = registerOutput<String?>('eventsOutOfOrderPolicy');
    functions = registerOutput<List<FunctionResponse>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FunctionResponse>(guardedValue, (value) => FunctionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputs = registerOutput<List<InputResponse>?>('inputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InputResponse>(guardedValue, (value) => InputResponse.fromMap((value as Map).cast<String, dynamic>())); });
    jobId = registerOutput<String>('jobId');
    jobState = registerOutput<String>('jobState');
    jobStorageAccount = registerOutput<JobStorageAccountResponse?>('jobStorageAccount', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobStorageAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobType = registerOutput<String?>('jobType');
    lastOutputEventTime = registerOutput<String>('lastOutputEventTime');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    outputErrorPolicy = registerOutput<String?>('outputErrorPolicy');
    outputStartMode = registerOutput<String?>('outputStartMode');
    outputStartTime = registerOutput<String?>('outputStartTime');
    outputs = registerOutput<List<OutputResponse>?>('outputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OutputResponse>(guardedValue, (value) => OutputResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transformation = registerOutput<TransformationResponse?>('transformation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TransformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

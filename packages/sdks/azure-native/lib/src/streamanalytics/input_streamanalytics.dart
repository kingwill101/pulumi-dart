import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_args_type.dart';
import 'reference_input_properties_response.dart';

/// An input object, containing all information associated with the named input. All inputs are contained under a streaming job.
///
/// Uses Azure REST API version 2020-03-01. In version 2.x of the Azure Native provider, it used API version 2020-03-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native streamanalytics [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Gateway Message Bus input
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var input = new AzureNative.StreamAnalytics.Input("input", new()
///     {
///         InputName = "input7970",
///         JobName = "sj9742",
///         Properties = new AzureNative.StreamAnalytics.Inputs.StreamInputPropertiesArgs
///         {
///             Datasource = new AzureNative.StreamAnalytics.Inputs.GatewayMessageBusStreamInputDataSourceArgs
///             {
///                 Topic = "EdgeTopic1",
///                 Type = "GatewayMessageBus",
///             },
///             Type = "Stream",
///         },
///         ResourceGroupName = "sjrg3467",
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
/// 		_, err := streamanalytics.NewInput(ctx, "input", &streamanalytics.InputArgs{
/// 			InputName: pulumi.String("input7970"),
/// 			JobName:   pulumi.String("sj9742"),
/// 			Properties: &streamanalytics.StreamInputPropertiesArgs{
/// 				Datasource: streamanalytics.GatewayMessageBusStreamInputDataSource{
/// 					Topic: "EdgeTopic1",
/// 					Type:  "GatewayMessageBus",
/// 				},
/// 				Type: pulumi.String("Stream"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg3467"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Input;
/// import com.pulumi.azurenative.streamanalytics.InputArgs;
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
///         var input = new Input("input", InputArgs.builder()
///             .inputName("input7970")
///             .jobName("sj9742")
///             .properties(StreamInputPropertiesArgs.builder()
///                 .datasource(GatewayMessageBusStreamInputDataSourceArgs.builder()
///                     .topic("EdgeTopic1")
///                     .type("GatewayMessageBus")
///                     .build())
///                 .type("Stream")
///                 .build())
///             .resourceGroupName("sjrg3467")
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
/// const input = new azure_native.streamanalytics.Input("input", {
///     inputName: "input7970",
///     jobName: "sj9742",
///     properties: {
///         datasource: {
///             topic: "EdgeTopic1",
///             type: "GatewayMessageBus",
///         },
///         type: "Stream",
///     },
///     resourceGroupName: "sjrg3467",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// input = azure_native.streamanalytics.Input("input",
///     input_name="input7970",
///     job_name="sj9742",
///     properties={
///         "datasource": {
///             "topic": "EdgeTopic1",
///             "type": "GatewayMessageBus",
///         },
///         "type": "Stream",
///     },
///     resource_group_name="sjrg3467")
///
/// ```
///
/// ```yaml
/// resources:
///   input:
///     type: azure-native:streamanalytics:Input
///     properties:
///       inputName: input7970
///       jobName: sj9742
///       properties:
///         datasource:
///           topic: EdgeTopic1
///           type: GatewayMessageBus
///         type: Stream
///       resourceGroupName: sjrg3467
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a reference blob input with CSV serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var input = new AzureNative.StreamAnalytics.Input("input", new()
///     {
///         InputName = "input7225",
///         JobName = "sj9597",
///         Properties = new AzureNative.StreamAnalytics.Inputs.ReferenceInputPropertiesArgs
///         {
///             Datasource = new AzureNative.StreamAnalytics.Inputs.BlobReferenceInputDataSourceArgs
///             {
///                 Container = "state",
///                 DateFormat = "yyyy/MM/dd",
///                 PathPattern = "{date}/{time}",
///                 StorageAccounts = new[]
///                 {
///                     new AzureNative.StreamAnalytics.Inputs.StorageAccountArgs
///                     {
///                         AccountKey = "someAccountKey==",
///                         AccountName = "someAccountName",
///                     },
///                 },
///                 TimeFormat = "HH",
///                 Type = "Microsoft.Storage/Blob",
///             },
///             Serialization = new AzureNative.StreamAnalytics.Inputs.CsvSerializationArgs
///             {
///                 Encoding = AzureNative.StreamAnalytics.Encoding.UTF8,
///                 FieldDelimiter = ",",
///                 Type = "Csv",
///             },
///             Type = "Reference",
///         },
///         ResourceGroupName = "sjrg8440",
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
/// 		_, err := streamanalytics.NewInput(ctx, "input", &streamanalytics.InputArgs{
/// 			InputName: pulumi.String("input7225"),
/// 			JobName:   pulumi.String("sj9597"),
/// 			Properties: &streamanalytics.ReferenceInputPropertiesArgs{
/// 				Datasource: streamanalytics.BlobReferenceInputDataSource{
/// 					Container:   "state",
/// 					DateFormat:  "yyyy/MM/dd",
/// 					PathPattern: "{date}/{time}",
/// 					StorageAccounts: []streamanalytics.StorageAccount{
/// 						{
/// 							AccountKey:  "someAccountKey==",
/// 							AccountName: "someAccountName",
/// 						},
/// 					},
/// 					TimeFormat: "HH",
/// 					Type:       "Microsoft.Storage/Blob",
/// 				},
/// 				Serialization: streamanalytics.CsvSerialization{
/// 					Encoding:       streamanalytics.EncodingUTF8,
/// 					FieldDelimiter: ",",
/// 					Type:           "Csv",
/// 				},
/// 				Type: pulumi.String("Reference"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg8440"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Input;
/// import com.pulumi.azurenative.streamanalytics.InputArgs;
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
///         var input = new Input("input", InputArgs.builder()
///             .inputName("input7225")
///             .jobName("sj9597")
///             .properties(ReferenceInputPropertiesArgs.builder()
///                 .datasource(BlobReferenceInputDataSourceArgs.builder()
///                     .container("state")
///                     .dateFormat("yyyy/MM/dd")
///                     .pathPattern("{date}/{time}")
///                     .storageAccounts(StorageAccountArgs.builder()
///                         .accountKey("someAccountKey==")
///                         .accountName("someAccountName")
///                         .build())
///                     .timeFormat("HH")
///                     .type("Microsoft.Storage/Blob")
///                     .build())
///                 .serialization(CsvSerializationArgs.builder()
///                     .encoding("UTF8")
///                     .fieldDelimiter(",")
///                     .type("Csv")
///                     .build())
///                 .type("Reference")
///                 .build())
///             .resourceGroupName("sjrg8440")
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
/// const input = new azure_native.streamanalytics.Input("input", {
///     inputName: "input7225",
///     jobName: "sj9597",
///     properties: {
///         datasource: {
///             container: "state",
///             dateFormat: "yyyy/MM/dd",
///             pathPattern: "{date}/{time}",
///             storageAccounts: [{
///                 accountKey: "someAccountKey==",
///                 accountName: "someAccountName",
///             }],
///             timeFormat: "HH",
///             type: "Microsoft.Storage/Blob",
///         },
///         serialization: {
///             encoding: azure_native.streamanalytics.Encoding.UTF8,
///             fieldDelimiter: ",",
///             type: "Csv",
///         },
///         type: "Reference",
///     },
///     resourceGroupName: "sjrg8440",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// input = azure_native.streamanalytics.Input("input",
///     input_name="input7225",
///     job_name="sj9597",
///     properties={
///         "datasource": {
///             "container": "state",
///             "date_format": "yyyy/MM/dd",
///             "path_pattern": "{date}/{time}",
///             "storage_accounts": [{
///                 "account_key": "someAccountKey==",
///                 "account_name": "someAccountName",
///             }],
///             "time_format": "HH",
///             "type": "Microsoft.Storage/Blob",
///         },
///         "serialization": {
///             "encoding": azure_native.streamanalytics.Encoding.UTF8,
///             "field_delimiter": ",",
///             "type": "Csv",
///         },
///         "type": "Reference",
///     },
///     resource_group_name="sjrg8440")
///
/// ```
///
/// ```yaml
/// resources:
///   input:
///     type: azure-native:streamanalytics:Input
///     properties:
///       inputName: input7225
///       jobName: sj9597
///       properties:
///         datasource:
///           container: state
///           dateFormat: yyyy/MM/dd
///           pathPattern: '{date}/{time}'
///           storageAccounts:
///             - accountKey: someAccountKey==
///               accountName: someAccountName
///           timeFormat: HH
///           type: Microsoft.Storage/Blob
///         serialization:
///           encoding: UTF8
///           fieldDelimiter: ','
///           type: Csv
///         type: Reference
///       resourceGroupName: sjrg8440
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a reference file input
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var input = new AzureNative.StreamAnalytics.Input("input", new()
///     {
///         InputName = "input7225",
///         JobName = "sj9597",
///         Properties = new AzureNative.StreamAnalytics.Inputs.ReferenceInputPropertiesArgs
///         {
///             Datasource = new AzureNative.StreamAnalytics.Inputs.FileReferenceInputDataSourceArgs
///             {
///                 Path = "my/path",
///                 Type = "File",
///             },
///             Type = "Reference",
///         },
///         ResourceGroupName = "sjrg8440",
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
/// 		_, err := streamanalytics.NewInput(ctx, "input", &streamanalytics.InputArgs{
/// 			InputName: pulumi.String("input7225"),
/// 			JobName:   pulumi.String("sj9597"),
/// 			Properties: &streamanalytics.ReferenceInputPropertiesArgs{
/// 				Datasource: streamanalytics.FileReferenceInputDataSource{
/// 					Path: "my/path",
/// 					Type: "File",
/// 				},
/// 				Type: pulumi.String("Reference"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg8440"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Input;
/// import com.pulumi.azurenative.streamanalytics.InputArgs;
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
///         var input = new Input("input", InputArgs.builder()
///             .inputName("input7225")
///             .jobName("sj9597")
///             .properties(ReferenceInputPropertiesArgs.builder()
///                 .datasource(FileReferenceInputDataSourceArgs.builder()
///                     .path("my/path")
///                     .type("File")
///                     .build())
///                 .type("Reference")
///                 .build())
///             .resourceGroupName("sjrg8440")
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
/// const input = new azure_native.streamanalytics.Input("input", {
///     inputName: "input7225",
///     jobName: "sj9597",
///     properties: {
///         datasource: {
///             path: "my/path",
///             type: "File",
///         },
///         type: "Reference",
///     },
///     resourceGroupName: "sjrg8440",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// input = azure_native.streamanalytics.Input("input",
///     input_name="input7225",
///     job_name="sj9597",
///     properties={
///         "datasource": {
///             "path": "my/path",
///             "type": "File",
///         },
///         "type": "Reference",
///     },
///     resource_group_name="sjrg8440")
///
/// ```
///
/// ```yaml
/// resources:
///   input:
///     type: azure-native:streamanalytics:Input
///     properties:
///       inputName: input7225
///       jobName: sj9597
///       properties:
///         datasource:
///           path: my/path
///           type: File
///         type: Reference
///       resourceGroupName: sjrg8440
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a stream Event Hub input with JSON serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var input = new AzureNative.StreamAnalytics.Input("input", new()
///     {
///         InputName = "input7425",
///         JobName = "sj197",
///         Properties = new AzureNative.StreamAnalytics.Inputs.StreamInputPropertiesArgs
///         {
///             Datasource = new AzureNative.StreamAnalytics.Inputs.EventHubStreamInputDataSourceArgs
///             {
///                 ConsumerGroupName = "sdkconsumergroup",
///                 EventHubName = "sdkeventhub",
///                 ServiceBusNamespace = "sdktest",
///                 SharedAccessPolicyKey = "someSharedAccessPolicyKey==",
///                 SharedAccessPolicyName = "RootManageSharedAccessKey",
///                 Type = "Microsoft.ServiceBus/EventHub",
///             },
///             Serialization = new AzureNative.StreamAnalytics.Inputs.JsonSerializationArgs
///             {
///                 Encoding = AzureNative.StreamAnalytics.Encoding.UTF8,
///                 Type = "Json",
///             },
///             Type = "Stream",
///         },
///         ResourceGroupName = "sjrg3139",
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
/// 		_, err := streamanalytics.NewInput(ctx, "input", &streamanalytics.InputArgs{
/// 			InputName: pulumi.String("input7425"),
/// 			JobName:   pulumi.String("sj197"),
/// 			Properties: &streamanalytics.StreamInputPropertiesArgs{
/// 				Datasource: streamanalytics.EventHubStreamInputDataSource{
/// 					ConsumerGroupName:      "sdkconsumergroup",
/// 					EventHubName:           "sdkeventhub",
/// 					ServiceBusNamespace:    "sdktest",
/// 					SharedAccessPolicyKey:  "someSharedAccessPolicyKey==",
/// 					SharedAccessPolicyName: "RootManageSharedAccessKey",
/// 					Type:                   "Microsoft.ServiceBus/EventHub",
/// 				},
/// 				Serialization: streamanalytics.JsonSerialization{
/// 					Encoding: streamanalytics.EncodingUTF8,
/// 					Type:     "Json",
/// 				},
/// 				Type: pulumi.String("Stream"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg3139"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Input;
/// import com.pulumi.azurenative.streamanalytics.InputArgs;
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
///         var input = new Input("input", InputArgs.builder()
///             .inputName("input7425")
///             .jobName("sj197")
///             .properties(StreamInputPropertiesArgs.builder()
///                 .datasource(EventHubStreamInputDataSourceArgs.builder()
///                     .consumerGroupName("sdkconsumergroup")
///                     .eventHubName("sdkeventhub")
///                     .serviceBusNamespace("sdktest")
///                     .sharedAccessPolicyKey("someSharedAccessPolicyKey==")
///                     .sharedAccessPolicyName("RootManageSharedAccessKey")
///                     .type("Microsoft.ServiceBus/EventHub")
///                     .build())
///                 .serialization(JsonSerializationArgs.builder()
///                     .encoding("UTF8")
///                     .type("Json")
///                     .build())
///                 .type("Stream")
///                 .build())
///             .resourceGroupName("sjrg3139")
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
/// const input = new azure_native.streamanalytics.Input("input", {
///     inputName: "input7425",
///     jobName: "sj197",
///     properties: {
///         datasource: {
///             consumerGroupName: "sdkconsumergroup",
///             eventHubName: "sdkeventhub",
///             serviceBusNamespace: "sdktest",
///             sharedAccessPolicyKey: "someSharedAccessPolicyKey==",
///             sharedAccessPolicyName: "RootManageSharedAccessKey",
///             type: "Microsoft.ServiceBus/EventHub",
///         },
///         serialization: {
///             encoding: azure_native.streamanalytics.Encoding.UTF8,
///             type: "Json",
///         },
///         type: "Stream",
///     },
///     resourceGroupName: "sjrg3139",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// input = azure_native.streamanalytics.Input("input",
///     input_name="input7425",
///     job_name="sj197",
///     properties={
///         "datasource": {
///             "consumer_group_name": "sdkconsumergroup",
///             "event_hub_name": "sdkeventhub",
///             "service_bus_namespace": "sdktest",
///             "shared_access_policy_key": "someSharedAccessPolicyKey==",
///             "shared_access_policy_name": "RootManageSharedAccessKey",
///             "type": "Microsoft.ServiceBus/EventHub",
///         },
///         "serialization": {
///             "encoding": azure_native.streamanalytics.Encoding.UTF8,
///             "type": "Json",
///         },
///         "type": "Stream",
///     },
///     resource_group_name="sjrg3139")
///
/// ```
///
/// ```yaml
/// resources:
///   input:
///     type: azure-native:streamanalytics:Input
///     properties:
///       inputName: input7425
///       jobName: sj197
///       properties:
///         datasource:
///           consumerGroupName: sdkconsumergroup
///           eventHubName: sdkeventhub
///           serviceBusNamespace: sdktest
///           sharedAccessPolicyKey: someSharedAccessPolicyKey==
///           sharedAccessPolicyName: RootManageSharedAccessKey
///           type: Microsoft.ServiceBus/EventHub
///         serialization:
///           encoding: UTF8
///           type: Json
///         type: Stream
///       resourceGroupName: sjrg3139
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a stream IoT Hub input with Avro serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var input = new AzureNative.StreamAnalytics.Input("input", new()
///     {
///         InputName = "input7970",
///         JobName = "sj9742",
///         Properties = new AzureNative.StreamAnalytics.Inputs.StreamInputPropertiesArgs
///         {
///             Datasource = new AzureNative.StreamAnalytics.Inputs.IoTHubStreamInputDataSourceArgs
///             {
///                 ConsumerGroupName = "sdkconsumergroup",
///                 Endpoint = "messages/events",
///                 IotHubNamespace = "iothub",
///                 SharedAccessPolicyKey = "sharedAccessPolicyKey=",
///                 SharedAccessPolicyName = "owner",
///                 Type = "Microsoft.Devices/IotHubs",
///             },
///             Serialization = new AzureNative.StreamAnalytics.Inputs.AvroSerializationArgs
///             {
///                 Type = "Avro",
///             },
///             Type = "Stream",
///         },
///         ResourceGroupName = "sjrg3467",
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
/// 		_, err := streamanalytics.NewInput(ctx, "input", &streamanalytics.InputArgs{
/// 			InputName: pulumi.String("input7970"),
/// 			JobName:   pulumi.String("sj9742"),
/// 			Properties: &streamanalytics.StreamInputPropertiesArgs{
/// 				Datasource: streamanalytics.IoTHubStreamInputDataSource{
/// 					ConsumerGroupName:      "sdkconsumergroup",
/// 					Endpoint:               "messages/events",
/// 					IotHubNamespace:        "iothub",
/// 					SharedAccessPolicyKey:  "sharedAccessPolicyKey=",
/// 					SharedAccessPolicyName: "owner",
/// 					Type:                   "Microsoft.Devices/IotHubs",
/// 				},
/// 				Serialization: streamanalytics.AvroSerialization{
/// 					Type: "Avro",
/// 				},
/// 				Type: pulumi.String("Stream"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg3467"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Input;
/// import com.pulumi.azurenative.streamanalytics.InputArgs;
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
///         var input = new Input("input", InputArgs.builder()
///             .inputName("input7970")
///             .jobName("sj9742")
///             .properties(StreamInputPropertiesArgs.builder()
///                 .datasource(IoTHubStreamInputDataSourceArgs.builder()
///                     .consumerGroupName("sdkconsumergroup")
///                     .endpoint("messages/events")
///                     .iotHubNamespace("iothub")
///                     .sharedAccessPolicyKey("sharedAccessPolicyKey=")
///                     .sharedAccessPolicyName("owner")
///                     .type("Microsoft.Devices/IotHubs")
///                     .build())
///                 .serialization(AvroSerializationArgs.builder()
///                     .type("Avro")
///                     .build())
///                 .type("Stream")
///                 .build())
///             .resourceGroupName("sjrg3467")
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
/// const input = new azure_native.streamanalytics.Input("input", {
///     inputName: "input7970",
///     jobName: "sj9742",
///     properties: {
///         datasource: {
///             consumerGroupName: "sdkconsumergroup",
///             endpoint: "messages/events",
///             iotHubNamespace: "iothub",
///             sharedAccessPolicyKey: "sharedAccessPolicyKey=",
///             sharedAccessPolicyName: "owner",
///             type: "Microsoft.Devices/IotHubs",
///         },
///         serialization: {
///             type: "Avro",
///         },
///         type: "Stream",
///     },
///     resourceGroupName: "sjrg3467",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// input = azure_native.streamanalytics.Input("input",
///     input_name="input7970",
///     job_name="sj9742",
///     properties={
///         "datasource": {
///             "consumer_group_name": "sdkconsumergroup",
///             "endpoint": "messages/events",
///             "iot_hub_namespace": "iothub",
///             "shared_access_policy_key": "sharedAccessPolicyKey=",
///             "shared_access_policy_name": "owner",
///             "type": "Microsoft.Devices/IotHubs",
///         },
///         "serialization": {
///             "type": "Avro",
///         },
///         "type": "Stream",
///     },
///     resource_group_name="sjrg3467")
///
/// ```
///
/// ```yaml
/// resources:
///   input:
///     type: azure-native:streamanalytics:Input
///     properties:
///       inputName: input7970
///       jobName: sj9742
///       properties:
///         datasource:
///           consumerGroupName: sdkconsumergroup
///           endpoint: messages/events
///           iotHubNamespace: iothub
///           sharedAccessPolicyKey: sharedAccessPolicyKey=
///           sharedAccessPolicyName: owner
///           type: Microsoft.Devices/IotHubs
///         serialization:
///           type: Avro
///         type: Stream
///       resourceGroupName: sjrg3467
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a stream blob input with CSV serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var input = new AzureNative.StreamAnalytics.Input("input", new()
///     {
///         InputName = "input8899",
///         JobName = "sj6695",
///         Properties = new AzureNative.StreamAnalytics.Inputs.StreamInputPropertiesArgs
///         {
///             Datasource = new AzureNative.StreamAnalytics.Inputs.BlobStreamInputDataSourceArgs
///             {
///                 Container = "state",
///                 DateFormat = "yyyy/MM/dd",
///                 PathPattern = "{date}/{time}",
///                 SourcePartitionCount = 16,
///                 StorageAccounts = new[]
///                 {
///                     new AzureNative.StreamAnalytics.Inputs.StorageAccountArgs
///                     {
///                         AccountKey = "someAccountKey==",
///                         AccountName = "someAccountName",
///                     },
///                 },
///                 TimeFormat = "HH",
///                 Type = "Microsoft.Storage/Blob",
///             },
///             Serialization = new AzureNative.StreamAnalytics.Inputs.CsvSerializationArgs
///             {
///                 Encoding = AzureNative.StreamAnalytics.Encoding.UTF8,
///                 FieldDelimiter = ",",
///                 Type = "Csv",
///             },
///             Type = "Stream",
///         },
///         ResourceGroupName = "sjrg8161",
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
/// 		_, err := streamanalytics.NewInput(ctx, "input", &streamanalytics.InputArgs{
/// 			InputName: pulumi.String("input8899"),
/// 			JobName:   pulumi.String("sj6695"),
/// 			Properties: &streamanalytics.StreamInputPropertiesArgs{
/// 				Datasource: streamanalytics.BlobStreamInputDataSource{
/// 					Container:            "state",
/// 					DateFormat:           "yyyy/MM/dd",
/// 					PathPattern:          "{date}/{time}",
/// 					SourcePartitionCount: 16,
/// 					StorageAccounts: []streamanalytics.StorageAccount{
/// 						{
/// 							AccountKey:  "someAccountKey==",
/// 							AccountName: "someAccountName",
/// 						},
/// 					},
/// 					TimeFormat: "HH",
/// 					Type:       "Microsoft.Storage/Blob",
/// 				},
/// 				Serialization: streamanalytics.CsvSerialization{
/// 					Encoding:       streamanalytics.EncodingUTF8,
/// 					FieldDelimiter: ",",
/// 					Type:           "Csv",
/// 				},
/// 				Type: pulumi.String("Stream"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sjrg8161"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Input;
/// import com.pulumi.azurenative.streamanalytics.InputArgs;
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
///         var input = new Input("input", InputArgs.builder()
///             .inputName("input8899")
///             .jobName("sj6695")
///             .properties(StreamInputPropertiesArgs.builder()
///                 .datasource(BlobStreamInputDataSourceArgs.builder()
///                     .container("state")
///                     .dateFormat("yyyy/MM/dd")
///                     .pathPattern("{date}/{time}")
///                     .sourcePartitionCount(16)
///                     .storageAccounts(StorageAccountArgs.builder()
///                         .accountKey("someAccountKey==")
///                         .accountName("someAccountName")
///                         .build())
///                     .timeFormat("HH")
///                     .type("Microsoft.Storage/Blob")
///                     .build())
///                 .serialization(CsvSerializationArgs.builder()
///                     .encoding("UTF8")
///                     .fieldDelimiter(",")
///                     .type("Csv")
///                     .build())
///                 .type("Stream")
///                 .build())
///             .resourceGroupName("sjrg8161")
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
/// const input = new azure_native.streamanalytics.Input("input", {
///     inputName: "input8899",
///     jobName: "sj6695",
///     properties: {
///         datasource: {
///             container: "state",
///             dateFormat: "yyyy/MM/dd",
///             pathPattern: "{date}/{time}",
///             sourcePartitionCount: 16,
///             storageAccounts: [{
///                 accountKey: "someAccountKey==",
///                 accountName: "someAccountName",
///             }],
///             timeFormat: "HH",
///             type: "Microsoft.Storage/Blob",
///         },
///         serialization: {
///             encoding: azure_native.streamanalytics.Encoding.UTF8,
///             fieldDelimiter: ",",
///             type: "Csv",
///         },
///         type: "Stream",
///     },
///     resourceGroupName: "sjrg8161",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// input = azure_native.streamanalytics.Input("input",
///     input_name="input8899",
///     job_name="sj6695",
///     properties={
///         "datasource": {
///             "container": "state",
///             "date_format": "yyyy/MM/dd",
///             "path_pattern": "{date}/{time}",
///             "source_partition_count": 16,
///             "storage_accounts": [{
///                 "account_key": "someAccountKey==",
///                 "account_name": "someAccountName",
///             }],
///             "time_format": "HH",
///             "type": "Microsoft.Storage/Blob",
///         },
///         "serialization": {
///             "encoding": azure_native.streamanalytics.Encoding.UTF8,
///             "field_delimiter": ",",
///             "type": "Csv",
///         },
///         "type": "Stream",
///     },
///     resource_group_name="sjrg8161")
///
/// ```
///
/// ```yaml
/// resources:
///   input:
///     type: azure-native:streamanalytics:Input
///     properties:
///       inputName: input8899
///       jobName: sj6695
///       properties:
///         datasource:
///           container: state
///           dateFormat: yyyy/MM/dd
///           pathPattern: '{date}/{time}'
///           sourcePartitionCount: 16
///           storageAccounts:
///             - accountKey: someAccountKey==
///               accountName: someAccountName
///           timeFormat: HH
///           type: Microsoft.Storage/Blob
///         serialization:
///           encoding: UTF8
///           fieldDelimiter: ','
///           type: Csv
///         type: Stream
///       resourceGroupName: sjrg8161
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
/// $ pulumi import azure-native:streamanalytics:Input input8899 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/streamingjobs/{jobName}/inputs/{inputName}
/// ```
class InputStreamanalytics extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name
  late final pulumi.Output<String?> name;
  /// The properties that are associated with an input. Required on PUT (CreateOrReplace) requests.
  late final pulumi.Output<ReferenceInputPropertiesResponse> properties;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [InputStreamanalytics].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InputStreamanalytics]. {@macro pulumi_streamanalytics_input_args_type_doc}
  /// [options] Resource options controlling this resource's behavior.
  InputStreamanalytics(
    String name, {
    InputArgsType? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:streamanalytics:Input',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String?>('name');
    this.properties = registerOutput<ReferenceInputPropertiesResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}

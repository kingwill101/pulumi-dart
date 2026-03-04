import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_serialization_response.dart';
import 'azure_data_lake_store_output_data_source_response.dart';
import 'diagnostics_response.dart';
import 'output_args.dart';

/// An output object, containing all information associated with the named output. All outputs are contained under a streaming job.
///
/// Uses Azure REST API version 2020-03-01. In version 2.x of the Azure Native provider, it used API version 2020-03-01.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native streamanalytics [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a DocumentDB output
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.DocumentDbOutputDataSourceArgs
///         {
///             AccountId = "someAccountId",
///             AccountKey = "accountKey==",
///             CollectionNamePattern = "collection",
///             Database = "db01",
///             DocumentId = "documentId",
///             PartitionKey = "key",
///             Type = "Microsoft.Storage/DocumentDB",
///         },
///         JobName = "sj2331",
///         OutputName = "output3022",
///         ResourceGroupName = "sjrg7983",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.DocumentDbOutputDataSourceArgs{
/// 				AccountId:             pulumi.String("someAccountId"),
/// 				AccountKey:            pulumi.String("accountKey=="),
/// 				CollectionNamePattern: pulumi.String("collection"),
/// 				Database:              pulumi.String("db01"),
/// 				DocumentId:            pulumi.String("documentId"),
/// 				PartitionKey:          pulumi.String("key"),
/// 				Type:                  pulumi.String("Microsoft.Storage/DocumentDB"),
/// 			},
/// 			JobName:           pulumi.String("sj2331"),
/// 			OutputName:        pulumi.String("output3022"),
/// 			ResourceGroupName: pulumi.String("sjrg7983"),
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
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(DocumentDbOutputDataSourceArgs.builder()
///                 .accountId("someAccountId")
///                 .accountKey("accountKey==")
///                 .collectionNamePattern("collection")
///                 .database("db01")
///                 .documentId("documentId")
///                 .partitionKey("key")
///                 .type("Microsoft.Storage/DocumentDB")
///                 .build())
///             .jobName("sj2331")
///             .outputName("output3022")
///             .resourceGroupName("sjrg7983")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         accountId: "someAccountId",
///         accountKey: "accountKey==",
///         collectionNamePattern: "collection",
///         database: "db01",
///         documentId: "documentId",
///         partitionKey: "key",
///         type: "Microsoft.Storage/DocumentDB",
///     },
///     jobName: "sj2331",
///     outputName: "output3022",
///     resourceGroupName: "sjrg7983",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "account_id": "someAccountId",
///         "account_key": "accountKey==",
///         "collection_name_pattern": "collection",
///         "database": "db01",
///         "document_id": "documentId",
///         "partition_key": "key",
///         "type": "Microsoft.Storage/DocumentDB",
///     },
///     job_name="sj2331",
///     output_name="output3022",
///     resource_group_name="sjrg7983")
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         accountId: someAccountId
///         accountKey: accountKey==
///         collectionNamePattern: collection
///         database: db01
///         documentId: documentId
///         partitionKey: key
///         type: Microsoft.Storage/DocumentDB
///       jobName: sj2331
///       outputName: output3022
///       resourceGroupName: sjrg7983
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Gateway Message Bus output
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.GatewayMessageBusOutputDataSourceArgs
///         {
///             Topic = "EdgeTopic1",
///             Type = "GatewayMessageBus",
///         },
///         JobName = "sj2331",
///         OutputName = "output3022",
///         ResourceGroupName = "sjrg7983",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.GatewayMessageBusOutputDataSourceArgs{
/// 				Topic: pulumi.String("EdgeTopic1"),
/// 				Type:  pulumi.String("GatewayMessageBus"),
/// 			},
/// 			JobName:           pulumi.String("sj2331"),
/// 			OutputName:        pulumi.String("output3022"),
/// 			ResourceGroupName: pulumi.String("sjrg7983"),
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
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(GatewayMessageBusOutputDataSourceArgs.builder()
///                 .topic("EdgeTopic1")
///                 .type("GatewayMessageBus")
///                 .build())
///             .jobName("sj2331")
///             .outputName("output3022")
///             .resourceGroupName("sjrg7983")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         topic: "EdgeTopic1",
///         type: "GatewayMessageBus",
///     },
///     jobName: "sj2331",
///     outputName: "output3022",
///     resourceGroupName: "sjrg7983",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "topic": "EdgeTopic1",
///         "type": "GatewayMessageBus",
///     },
///     job_name="sj2331",
///     output_name="output3022",
///     resource_group_name="sjrg7983")
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         topic: EdgeTopic1
///         type: GatewayMessageBus
///       jobName: sj2331
///       outputName: output3022
///       resourceGroupName: sjrg7983
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Power BI output
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.PowerBIOutputDataSourceArgs
///         {
///             Dataset = "someDataset",
///             GroupId = "ac40305e-3e8d-43ac-8161-c33799f43e95",
///             GroupName = "MyPowerBIGroup",
///             RefreshToken = "someRefreshToken==",
///             Table = "someTable",
///             TokenUserDisplayName = "Bob Smith",
///             TokenUserPrincipalName = "bobsmith@contoso.com",
///             Type = "PowerBI",
///         },
///         JobName = "sj2331",
///         OutputName = "output3022",
///         ResourceGroupName = "sjrg7983",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.PowerBIOutputDataSourceArgs{
/// 				Dataset:                pulumi.String("someDataset"),
/// 				GroupId:                pulumi.String("ac40305e-3e8d-43ac-8161-c33799f43e95"),
/// 				GroupName:              pulumi.String("MyPowerBIGroup"),
/// 				RefreshToken:           pulumi.String("someRefreshToken=="),
/// 				Table:                  pulumi.String("someTable"),
/// 				TokenUserDisplayName:   pulumi.String("Bob Smith"),
/// 				TokenUserPrincipalName: pulumi.String("bobsmith@contoso.com"),
/// 				Type:                   pulumi.String("PowerBI"),
/// 			},
/// 			JobName:           pulumi.String("sj2331"),
/// 			OutputName:        pulumi.String("output3022"),
/// 			ResourceGroupName: pulumi.String("sjrg7983"),
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
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(PowerBIOutputDataSourceArgs.builder()
///                 .dataset("someDataset")
///                 .groupId("ac40305e-3e8d-43ac-8161-c33799f43e95")
///                 .groupName("MyPowerBIGroup")
///                 .refreshToken("someRefreshToken==")
///                 .table("someTable")
///                 .tokenUserDisplayName("Bob Smith")
///                 .tokenUserPrincipalName("bobsmith@contoso.com")
///                 .type("PowerBI")
///                 .build())
///             .jobName("sj2331")
///             .outputName("output3022")
///             .resourceGroupName("sjrg7983")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         dataset: "someDataset",
///         groupId: "ac40305e-3e8d-43ac-8161-c33799f43e95",
///         groupName: "MyPowerBIGroup",
///         refreshToken: "someRefreshToken==",
///         table: "someTable",
///         tokenUserDisplayName: "Bob Smith",
///         tokenUserPrincipalName: "bobsmith@contoso.com",
///         type: "PowerBI",
///     },
///     jobName: "sj2331",
///     outputName: "output3022",
///     resourceGroupName: "sjrg7983",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "dataset": "someDataset",
///         "group_id": "ac40305e-3e8d-43ac-8161-c33799f43e95",
///         "group_name": "MyPowerBIGroup",
///         "refresh_token": "someRefreshToken==",
///         "table": "someTable",
///         "token_user_display_name": "Bob Smith",
///         "token_user_principal_name": "bobsmith@contoso.com",
///         "type": "PowerBI",
///     },
///     job_name="sj2331",
///     output_name="output3022",
///     resource_group_name="sjrg7983")
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         dataset: someDataset
///         groupId: ac40305e-3e8d-43ac-8161-c33799f43e95
///         groupName: MyPowerBIGroup
///         refreshToken: someRefreshToken==
///         table: someTable
///         tokenUserDisplayName: Bob Smith
///         tokenUserPrincipalName: bobsmith@contoso.com
///         type: PowerBI
///       jobName: sj2331
///       outputName: output3022
///       resourceGroupName: sjrg7983
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Service Bus Queue output with Avro serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.ServiceBusQueueOutputDataSourceArgs
///         {
///             PropertyColumns = new[]
///             {
///                 "column1",
///                 "column2",
///             },
///             QueueName = "sdkqueue",
///             ServiceBusNamespace = "sdktest",
///             SharedAccessPolicyKey = "sharedAccessPolicyKey=",
///             SharedAccessPolicyName = "RootManageSharedAccessKey",
///             SystemPropertyColumns = new Dictionary<string, object?>
///             {
///                 ["MessageId"] = "col3",
///                 ["PartitionKey"] = "col4",
///             },
///             Type = "Microsoft.ServiceBus/Queue",
///         },
///         JobName = "sj5095",
///         OutputName = "output3456",
///         ResourceGroupName = "sjrg3410",
///         Serialization = new AzureNative.StreamAnalytics.Inputs.AvroSerializationArgs
///         {
///             Type = "Avro",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.ServiceBusQueueOutputDataSourceArgs{
/// 				PropertyColumns: pulumi.StringArray{
/// 					pulumi.String("column1"),
/// 					pulumi.String("column2"),
/// 				},
/// 				QueueName:              pulumi.String("sdkqueue"),
/// 				ServiceBusNamespace:    pulumi.String("sdktest"),
/// 				SharedAccessPolicyKey:  pulumi.String("sharedAccessPolicyKey="),
/// 				SharedAccessPolicyName: pulumi.String("RootManageSharedAccessKey"),
/// 				SystemPropertyColumns: pulumi.Any(map[string]interface{}{
/// 					"MessageId":    "col3",
/// 					"PartitionKey": "col4",
/// 				}),
/// 				Type: pulumi.String("Microsoft.ServiceBus/Queue"),
/// 			},
/// 			JobName:           pulumi.String("sj5095"),
/// 			OutputName:        pulumi.String("output3456"),
/// 			ResourceGroupName: pulumi.String("sjrg3410"),
/// 			Serialization: &streamanalytics.AvroSerializationArgs{
/// 				Type: pulumi.String("Avro"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(ServiceBusQueueOutputDataSourceArgs.builder()
///                 .propertyColumns(
///                     "column1",
///                     "column2")
///                 .queueName("sdkqueue")
///                 .serviceBusNamespace("sdktest")
///                 .sharedAccessPolicyKey("sharedAccessPolicyKey=")
///                 .sharedAccessPolicyName("RootManageSharedAccessKey")
///                 .systemPropertyColumns(Map.ofEntries(
///                     Map.entry("MessageId", "col3"),
///                     Map.entry("PartitionKey", "col4")
///                 ))
///                 .type("Microsoft.ServiceBus/Queue")
///                 .build())
///             .jobName("sj5095")
///             .outputName("output3456")
///             .resourceGroupName("sjrg3410")
///             .serialization(AvroSerializationArgs.builder()
///                 .type("Avro")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         propertyColumns: [
///             "column1",
///             "column2",
///         ],
///         queueName: "sdkqueue",
///         serviceBusNamespace: "sdktest",
///         sharedAccessPolicyKey: "sharedAccessPolicyKey=",
///         sharedAccessPolicyName: "RootManageSharedAccessKey",
///         systemPropertyColumns: {
///             MessageId: "col3",
///             PartitionKey: "col4",
///         },
///         type: "Microsoft.ServiceBus/Queue",
///     },
///     jobName: "sj5095",
///     outputName: "output3456",
///     resourceGroupName: "sjrg3410",
///     serialization: {
///         type: "Avro",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "property_columns": [
///             "column1",
///             "column2",
///         ],
///         "queue_name": "sdkqueue",
///         "service_bus_namespace": "sdktest",
///         "shared_access_policy_key": "sharedAccessPolicyKey=",
///         "shared_access_policy_name": "RootManageSharedAccessKey",
///         "system_property_columns": {
///             "MessageId": "col3",
///             "PartitionKey": "col4",
///         },
///         "type": "Microsoft.ServiceBus/Queue",
///     },
///     job_name="sj5095",
///     output_name="output3456",
///     resource_group_name="sjrg3410",
///     serialization={
///         "type": "Avro",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         propertyColumns:
///           - column1
///           - column2
///         queueName: sdkqueue
///         serviceBusNamespace: sdktest
///         sharedAccessPolicyKey: sharedAccessPolicyKey=
///         sharedAccessPolicyName: RootManageSharedAccessKey
///         systemPropertyColumns:
///           MessageId: col3
///           PartitionKey: col4
///         type: Microsoft.ServiceBus/Queue
///       jobName: sj5095
///       outputName: output3456
///       resourceGroupName: sjrg3410
///       serialization:
///         type: Avro
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a Service Bus Topic output with CSV serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.ServiceBusTopicOutputDataSourceArgs
///         {
///             PropertyColumns = new[]
///             {
///                 "column1",
///                 "column2",
///             },
///             ServiceBusNamespace = "sdktest",
///             SharedAccessPolicyKey = "sharedAccessPolicyKey=",
///             SharedAccessPolicyName = "RootManageSharedAccessKey",
///             TopicName = "sdktopic",
///             Type = "Microsoft.ServiceBus/Topic",
///         },
///         JobName = "sj7094",
///         OutputName = "output7886",
///         ResourceGroupName = "sjrg6450",
///         Serialization = new AzureNative.StreamAnalytics.Inputs.CsvSerializationArgs
///         {
///             Encoding = AzureNative.StreamAnalytics.Encoding.UTF8,
///             FieldDelimiter = ",",
///             Type = "Csv",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.ServiceBusTopicOutputDataSourceArgs{
/// 				PropertyColumns: pulumi.StringArray{
/// 					pulumi.String("column1"),
/// 					pulumi.String("column2"),
/// 				},
/// 				ServiceBusNamespace:    pulumi.String("sdktest"),
/// 				SharedAccessPolicyKey:  pulumi.String("sharedAccessPolicyKey="),
/// 				SharedAccessPolicyName: pulumi.String("RootManageSharedAccessKey"),
/// 				TopicName:              pulumi.String("sdktopic"),
/// 				Type:                   pulumi.String("Microsoft.ServiceBus/Topic"),
/// 			},
/// 			JobName:           pulumi.String("sj7094"),
/// 			OutputName:        pulumi.String("output7886"),
/// 			ResourceGroupName: pulumi.String("sjrg6450"),
/// 			Serialization: &streamanalytics.CsvSerializationArgs{
/// 				Encoding:       pulumi.String(streamanalytics.EncodingUTF8),
/// 				FieldDelimiter: pulumi.String(","),
/// 				Type:           pulumi.String("Csv"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(ServiceBusTopicOutputDataSourceArgs.builder()
///                 .propertyColumns(
///                     "column1",
///                     "column2")
///                 .serviceBusNamespace("sdktest")
///                 .sharedAccessPolicyKey("sharedAccessPolicyKey=")
///                 .sharedAccessPolicyName("RootManageSharedAccessKey")
///                 .topicName("sdktopic")
///                 .type("Microsoft.ServiceBus/Topic")
///                 .build())
///             .jobName("sj7094")
///             .outputName("output7886")
///             .resourceGroupName("sjrg6450")
///             .serialization(CsvSerializationArgs.builder()
///                 .encoding("UTF8")
///                 .fieldDelimiter(",")
///                 .type("Csv")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         propertyColumns: [
///             "column1",
///             "column2",
///         ],
///         serviceBusNamespace: "sdktest",
///         sharedAccessPolicyKey: "sharedAccessPolicyKey=",
///         sharedAccessPolicyName: "RootManageSharedAccessKey",
///         topicName: "sdktopic",
///         type: "Microsoft.ServiceBus/Topic",
///     },
///     jobName: "sj7094",
///     outputName: "output7886",
///     resourceGroupName: "sjrg6450",
///     serialization: {
///         encoding: azure_native.streamanalytics.Encoding.UTF8,
///         fieldDelimiter: ",",
///         type: "Csv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "property_columns": [
///             "column1",
///             "column2",
///         ],
///         "service_bus_namespace": "sdktest",
///         "shared_access_policy_key": "sharedAccessPolicyKey=",
///         "shared_access_policy_name": "RootManageSharedAccessKey",
///         "topic_name": "sdktopic",
///         "type": "Microsoft.ServiceBus/Topic",
///     },
///     job_name="sj7094",
///     output_name="output7886",
///     resource_group_name="sjrg6450",
///     serialization={
///         "encoding": azure_native.streamanalytics.Encoding.UTF8,
///         "field_delimiter": ",",
///         "type": "Csv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         propertyColumns:
///           - column1
///           - column2
///         serviceBusNamespace: sdktest
///         sharedAccessPolicyKey: sharedAccessPolicyKey=
///         sharedAccessPolicyName: RootManageSharedAccessKey
///         topicName: sdktopic
///         type: Microsoft.ServiceBus/Topic
///       jobName: sj7094
///       outputName: output7886
///       resourceGroupName: sjrg6450
///       serialization:
///         encoding: UTF8
///         fieldDelimiter: ','
///         type: Csv
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a blob output with CSV serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.BlobOutputDataSourceArgs
///         {
///             Container = "state",
///             DateFormat = "yyyy/MM/dd",
///             PathPattern = "{date}/{time}",
///             StorageAccounts = new[]
///             {
///                 new AzureNative.StreamAnalytics.Inputs.StorageAccountArgs
///                 {
///                     AccountKey = "accountKey==",
///                     AccountName = "someAccountName",
///                 },
///             },
///             TimeFormat = "HH",
///             Type = "Microsoft.Storage/Blob",
///         },
///         JobName = "sj900",
///         OutputName = "output1623",
///         ResourceGroupName = "sjrg5023",
///         Serialization = new AzureNative.StreamAnalytics.Inputs.CsvSerializationArgs
///         {
///             Encoding = AzureNative.StreamAnalytics.Encoding.UTF8,
///             FieldDelimiter = ",",
///             Type = "Csv",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.BlobOutputDataSourceArgs{
/// 				Container:   pulumi.String("state"),
/// 				DateFormat:  pulumi.String("yyyy/MM/dd"),
/// 				PathPattern: pulumi.String("{date}/{time}"),
/// 				StorageAccounts: streamanalytics.StorageAccountArray{
/// 					&streamanalytics.StorageAccountArgs{
/// 						AccountKey:  pulumi.String("accountKey=="),
/// 						AccountName: pulumi.String("someAccountName"),
/// 					},
/// 				},
/// 				TimeFormat: pulumi.String("HH"),
/// 				Type:       pulumi.String("Microsoft.Storage/Blob"),
/// 			},
/// 			JobName:           pulumi.String("sj900"),
/// 			OutputName:        pulumi.String("output1623"),
/// 			ResourceGroupName: pulumi.String("sjrg5023"),
/// 			Serialization: &streamanalytics.CsvSerializationArgs{
/// 				Encoding:       pulumi.String(streamanalytics.EncodingUTF8),
/// 				FieldDelimiter: pulumi.String(","),
/// 				Type:           pulumi.String("Csv"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(BlobOutputDataSourceArgs.builder()
///                 .container("state")
///                 .dateFormat("yyyy/MM/dd")
///                 .pathPattern("{date}/{time}")
///                 .storageAccounts(StorageAccountArgs.builder()
///                     .accountKey("accountKey==")
///                     .accountName("someAccountName")
///                     .build())
///                 .timeFormat("HH")
///                 .type("Microsoft.Storage/Blob")
///                 .build())
///             .jobName("sj900")
///             .outputName("output1623")
///             .resourceGroupName("sjrg5023")
///             .serialization(CsvSerializationArgs.builder()
///                 .encoding("UTF8")
///                 .fieldDelimiter(",")
///                 .type("Csv")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         container: "state",
///         dateFormat: "yyyy/MM/dd",
///         pathPattern: "{date}/{time}",
///         storageAccounts: [{
///             accountKey: "accountKey==",
///             accountName: "someAccountName",
///         }],
///         timeFormat: "HH",
///         type: "Microsoft.Storage/Blob",
///     },
///     jobName: "sj900",
///     outputName: "output1623",
///     resourceGroupName: "sjrg5023",
///     serialization: {
///         encoding: azure_native.streamanalytics.Encoding.UTF8,
///         fieldDelimiter: ",",
///         type: "Csv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "container": "state",
///         "date_format": "yyyy/MM/dd",
///         "path_pattern": "{date}/{time}",
///         "storage_accounts": [{
///             "account_key": "accountKey==",
///             "account_name": "someAccountName",
///         }],
///         "time_format": "HH",
///         "type": "Microsoft.Storage/Blob",
///     },
///     job_name="sj900",
///     output_name="output1623",
///     resource_group_name="sjrg5023",
///     serialization={
///         "encoding": azure_native.streamanalytics.Encoding.UTF8,
///         "field_delimiter": ",",
///         "type": "Csv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         container: state
///         dateFormat: yyyy/MM/dd
///         pathPattern: '{date}/{time}'
///         storageAccounts:
///           - accountKey: accountKey==
///             accountName: someAccountName
///         timeFormat: HH
///         type: Microsoft.Storage/Blob
///       jobName: sj900
///       outputName: output1623
///       resourceGroupName: sjrg5023
///       serialization:
///         encoding: UTF8
///         fieldDelimiter: ','
///         type: Csv
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Azure Data Lake Store output with JSON serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.AzureDataLakeStoreOutputDataSourceArgs
///         {
///             AccountName = "someaccount",
///             DateFormat = "yyyy/MM/dd",
///             FilePathPrefix = "{date}/{time}",
///             RefreshToken = "someRefreshToken==",
///             TenantId = "cea4e98b-c798-49e7-8c40-4a2b3beb47dd",
///             TimeFormat = "HH",
///             TokenUserDisplayName = "Bob Smith",
///             TokenUserPrincipalName = "bobsmith@contoso.com",
///             Type = "Microsoft.DataLake/Accounts",
///         },
///         JobName = "sj3310",
///         OutputName = "output5195",
///         ResourceGroupName = "sjrg6912",
///         Serialization = new AzureNative.StreamAnalytics.Inputs.JsonSerializationArgs
///         {
///             Encoding = AzureNative.StreamAnalytics.Encoding.UTF8,
///             Format = AzureNative.StreamAnalytics.JsonOutputSerializationFormat.Array,
///             Type = "Json",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.AzureDataLakeStoreOutputDataSourceArgs{
/// 				AccountName:            pulumi.String("someaccount"),
/// 				DateFormat:             pulumi.String("yyyy/MM/dd"),
/// 				FilePathPrefix:         pulumi.String("{date}/{time}"),
/// 				RefreshToken:           pulumi.String("someRefreshToken=="),
/// 				TenantId:               pulumi.String("cea4e98b-c798-49e7-8c40-4a2b3beb47dd"),
/// 				TimeFormat:             pulumi.String("HH"),
/// 				TokenUserDisplayName:   pulumi.String("Bob Smith"),
/// 				TokenUserPrincipalName: pulumi.String("bobsmith@contoso.com"),
/// 				Type:                   pulumi.String("Microsoft.DataLake/Accounts"),
/// 			},
/// 			JobName:           pulumi.String("sj3310"),
/// 			OutputName:        pulumi.String("output5195"),
/// 			ResourceGroupName: pulumi.String("sjrg6912"),
/// 			Serialization: &streamanalytics.JsonSerializationArgs{
/// 				Encoding: pulumi.String(streamanalytics.EncodingUTF8),
/// 				Format:   pulumi.String(streamanalytics.JsonOutputSerializationFormatArray),
/// 				Type:     pulumi.String("Json"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(AzureDataLakeStoreOutputDataSourceArgs.builder()
///                 .accountName("someaccount")
///                 .dateFormat("yyyy/MM/dd")
///                 .filePathPrefix("{date}/{time}")
///                 .refreshToken("someRefreshToken==")
///                 .tenantId("cea4e98b-c798-49e7-8c40-4a2b3beb47dd")
///                 .timeFormat("HH")
///                 .tokenUserDisplayName("Bob Smith")
///                 .tokenUserPrincipalName("bobsmith@contoso.com")
///                 .type("Microsoft.DataLake/Accounts")
///                 .build())
///             .jobName("sj3310")
///             .outputName("output5195")
///             .resourceGroupName("sjrg6912")
///             .serialization(JsonSerializationArgs.builder()
///                 .encoding("UTF8")
///                 .format("Array")
///                 .type("Json")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         accountName: "someaccount",
///         dateFormat: "yyyy/MM/dd",
///         filePathPrefix: "{date}/{time}",
///         refreshToken: "someRefreshToken==",
///         tenantId: "cea4e98b-c798-49e7-8c40-4a2b3beb47dd",
///         timeFormat: "HH",
///         tokenUserDisplayName: "Bob Smith",
///         tokenUserPrincipalName: "bobsmith@contoso.com",
///         type: "Microsoft.DataLake/Accounts",
///     },
///     jobName: "sj3310",
///     outputName: "output5195",
///     resourceGroupName: "sjrg6912",
///     serialization: {
///         encoding: azure_native.streamanalytics.Encoding.UTF8,
///         format: azure_native.streamanalytics.JsonOutputSerializationFormat.Array,
///         type: "Json",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "account_name": "someaccount",
///         "date_format": "yyyy/MM/dd",
///         "file_path_prefix": "{date}/{time}",
///         "refresh_token": "someRefreshToken==",
///         "tenant_id": "cea4e98b-c798-49e7-8c40-4a2b3beb47dd",
///         "time_format": "HH",
///         "token_user_display_name": "Bob Smith",
///         "token_user_principal_name": "bobsmith@contoso.com",
///         "type": "Microsoft.DataLake/Accounts",
///     },
///     job_name="sj3310",
///     output_name="output5195",
///     resource_group_name="sjrg6912",
///     serialization={
///         "encoding": azure_native.streamanalytics.Encoding.UTF8,
///         "format": azure_native.streamanalytics.JsonOutputSerializationFormat.ARRAY,
///         "type": "Json",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         accountName: someaccount
///         dateFormat: yyyy/MM/dd
///         filePathPrefix: '{date}/{time}'
///         refreshToken: someRefreshToken==
///         tenantId: cea4e98b-c798-49e7-8c40-4a2b3beb47dd
///         timeFormat: HH
///         tokenUserDisplayName: Bob Smith
///         tokenUserPrincipalName: bobsmith@contoso.com
///         type: Microsoft.DataLake/Accounts
///       jobName: sj3310
///       outputName: output5195
///       resourceGroupName: sjrg6912
///       serialization:
///         encoding: UTF8
///         format: Array
///         type: Json
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Azure Data Warehouse output
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.AzureSynapseOutputDataSourceArgs
///         {
///             Database = "zhayaSQLpool",
///             Password = "password123",
///             Server = "asatestserver",
///             Table = "test2",
///             Type = "Microsoft.Sql/Server/DataWarehouse",
///             User = "tolladmin",
///         },
///         JobName = "sjName",
///         OutputName = "dwOutput",
///         ResourceGroupName = "sjrg",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.AzureSynapseOutputDataSourceArgs{
/// 				Database: pulumi.String("zhayaSQLpool"),
/// 				Password: pulumi.String("password123"),
/// 				Server:   pulumi.String("asatestserver"),
/// 				Table:    pulumi.String("test2"),
/// 				Type:     pulumi.String("Microsoft.Sql/Server/DataWarehouse"),
/// 				User:     pulumi.String("tolladmin"),
/// 			},
/// 			JobName:           pulumi.String("sjName"),
/// 			OutputName:        pulumi.String("dwOutput"),
/// 			ResourceGroupName: pulumi.String("sjrg"),
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
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(AzureSynapseOutputDataSourceArgs.builder()
///                 .database("zhayaSQLpool")
///                 .password("password123")
///                 .server("asatestserver")
///                 .table("test2")
///                 .type("Microsoft.Sql/Server/DataWarehouse")
///                 .user("tolladmin")
///                 .build())
///             .jobName("sjName")
///             .outputName("dwOutput")
///             .resourceGroupName("sjrg")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         database: "zhayaSQLpool",
///         password: "password123",
///         server: "asatestserver",
///         table: "test2",
///         type: "Microsoft.Sql/Server/DataWarehouse",
///         user: "tolladmin",
///     },
///     jobName: "sjName",
///     outputName: "dwOutput",
///     resourceGroupName: "sjrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "database": "zhayaSQLpool",
///         "password": "password123",
///         "server": "asatestserver",
///         "table": "test2",
///         "type": "Microsoft.Sql/Server/DataWarehouse",
///         "user": "tolladmin",
///     },
///     job_name="sjName",
///     output_name="dwOutput",
///     resource_group_name="sjrg")
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         database: zhayaSQLpool
///         password: password123
///         server: asatestserver
///         table: test2
///         type: Microsoft.Sql/Server/DataWarehouse
///         user: tolladmin
///       jobName: sjName
///       outputName: dwOutput
///       resourceGroupName: sjrg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Azure Function output
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.AzureFunctionOutputDataSourceArgs
///         {
///             FunctionAppName = "functionappforasaautomation",
///             FunctionName = "HttpTrigger2",
///             MaxBatchCount = 100,
///             MaxBatchSize = 256,
///             Type = "Microsoft.AzureFunction",
///         },
///         JobName = "sjName",
///         OutputName = "azureFunction1",
///         ResourceGroupName = "sjrg",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.AzureFunctionOutputDataSourceArgs{
/// 				FunctionAppName: pulumi.String("functionappforasaautomation"),
/// 				FunctionName:    pulumi.String("HttpTrigger2"),
/// 				MaxBatchCount:   pulumi.Float64(100),
/// 				MaxBatchSize:    pulumi.Float64(256),
/// 				Type:            pulumi.String("Microsoft.AzureFunction"),
/// 			},
/// 			JobName:           pulumi.String("sjName"),
/// 			OutputName:        pulumi.String("azureFunction1"),
/// 			ResourceGroupName: pulumi.String("sjrg"),
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
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(AzureFunctionOutputDataSourceArgs.builder()
///                 .functionAppName("functionappforasaautomation")
///                 .functionName("HttpTrigger2")
///                 .maxBatchCount(100.0)
///                 .maxBatchSize(256.0)
///                 .type("Microsoft.AzureFunction")
///                 .build())
///             .jobName("sjName")
///             .outputName("azureFunction1")
///             .resourceGroupName("sjrg")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         functionAppName: "functionappforasaautomation",
///         functionName: "HttpTrigger2",
///         maxBatchCount: 100,
///         maxBatchSize: 256,
///         type: "Microsoft.AzureFunction",
///     },
///     jobName: "sjName",
///     outputName: "azureFunction1",
///     resourceGroupName: "sjrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "function_app_name": "functionappforasaautomation",
///         "function_name": "HttpTrigger2",
///         "max_batch_count": 100,
///         "max_batch_size": 256,
///         "type": "Microsoft.AzureFunction",
///     },
///     job_name="sjName",
///     output_name="azureFunction1",
///     resource_group_name="sjrg")
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         functionAppName: functionappforasaautomation
///         functionName: HttpTrigger2
///         maxBatchCount: 100
///         maxBatchSize: 256
///         type: Microsoft.AzureFunction
///       jobName: sjName
///       outputName: azureFunction1
///       resourceGroupName: sjrg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Azure SQL database output
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.AzureSqlDatabaseOutputDataSourceArgs
///         {
///             Database = "someDatabase",
///             Password = "somePassword",
///             Server = "someServer",
///             Table = "someTable",
///             Type = "Microsoft.Sql/Server/Database",
///             User = "<user>",
///         },
///         JobName = "sj6458",
///         OutputName = "output1755",
///         ResourceGroupName = "sjrg2157",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.AzureSqlDatabaseOutputDataSourceArgs{
/// 				Database: pulumi.String("someDatabase"),
/// 				Password: pulumi.String("somePassword"),
/// 				Server:   pulumi.String("someServer"),
/// 				Table:    pulumi.String("someTable"),
/// 				Type:     pulumi.String("Microsoft.Sql/Server/Database"),
/// 				User:     pulumi.String("<user>"),
/// 			},
/// 			JobName:           pulumi.String("sj6458"),
/// 			OutputName:        pulumi.String("output1755"),
/// 			ResourceGroupName: pulumi.String("sjrg2157"),
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
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(AzureSqlDatabaseOutputDataSourceArgs.builder()
///                 .database("someDatabase")
///                 .password("somePassword")
///                 .server("someServer")
///                 .table("someTable")
///                 .type("Microsoft.Sql/Server/Database")
///                 .user("<user>")
///                 .build())
///             .jobName("sj6458")
///             .outputName("output1755")
///             .resourceGroupName("sjrg2157")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         database: "someDatabase",
///         password: "somePassword",
///         server: "someServer",
///         table: "someTable",
///         type: "Microsoft.Sql/Server/Database",
///         user: "<user>",
///     },
///     jobName: "sj6458",
///     outputName: "output1755",
///     resourceGroupName: "sjrg2157",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "database": "someDatabase",
///         "password": "somePassword",
///         "server": "someServer",
///         "table": "someTable",
///         "type": "Microsoft.Sql/Server/Database",
///         "user": "<user>",
///     },
///     job_name="sj6458",
///     output_name="output1755",
///     resource_group_name="sjrg2157")
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         database: someDatabase
///         password: somePassword
///         server: someServer
///         table: someTable
///         type: Microsoft.Sql/Server/Database
///         user: <user>
///       jobName: sj6458
///       outputName: output1755
///       resourceGroupName: sjrg2157
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Azure Table output
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.AzureTableOutputDataSourceArgs
///         {
///             AccountKey = "accountKey==",
///             AccountName = "someAccountName",
///             BatchSize = 25,
///             ColumnsToRemove = new[]
///             {
///                 "column1",
///                 "column2",
///             },
///             PartitionKey = "partitionKey",
///             RowKey = "rowKey",
///             Table = "samples",
///             Type = "Microsoft.Storage/Table",
///         },
///         JobName = "sj2790",
///         OutputName = "output958",
///         ResourceGroupName = "sjrg5176",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.AzureTableOutputDataSourceArgs{
/// 				AccountKey:  pulumi.String("accountKey=="),
/// 				AccountName: pulumi.String("someAccountName"),
/// 				BatchSize:   pulumi.Int(25),
/// 				ColumnsToRemove: pulumi.StringArray{
/// 					pulumi.String("column1"),
/// 					pulumi.String("column2"),
/// 				},
/// 				PartitionKey: pulumi.String("partitionKey"),
/// 				RowKey:       pulumi.String("rowKey"),
/// 				Table:        pulumi.String("samples"),
/// 				Type:         pulumi.String("Microsoft.Storage/Table"),
/// 			},
/// 			JobName:           pulumi.String("sj2790"),
/// 			OutputName:        pulumi.String("output958"),
/// 			ResourceGroupName: pulumi.String("sjrg5176"),
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
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(AzureTableOutputDataSourceArgs.builder()
///                 .accountKey("accountKey==")
///                 .accountName("someAccountName")
///                 .batchSize(25)
///                 .columnsToRemove(
///                     "column1",
///                     "column2")
///                 .partitionKey("partitionKey")
///                 .rowKey("rowKey")
///                 .table("samples")
///                 .type("Microsoft.Storage/Table")
///                 .build())
///             .jobName("sj2790")
///             .outputName("output958")
///             .resourceGroupName("sjrg5176")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         accountKey: "accountKey==",
///         accountName: "someAccountName",
///         batchSize: 25,
///         columnsToRemove: [
///             "column1",
///             "column2",
///         ],
///         partitionKey: "partitionKey",
///         rowKey: "rowKey",
///         table: "samples",
///         type: "Microsoft.Storage/Table",
///     },
///     jobName: "sj2790",
///     outputName: "output958",
///     resourceGroupName: "sjrg5176",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "account_key": "accountKey==",
///         "account_name": "someAccountName",
///         "batch_size": 25,
///         "columns_to_remove": [
///             "column1",
///             "column2",
///         ],
///         "partition_key": "partitionKey",
///         "row_key": "rowKey",
///         "table": "samples",
///         "type": "Microsoft.Storage/Table",
///     },
///     job_name="sj2790",
///     output_name="output958",
///     resource_group_name="sjrg5176")
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         accountKey: accountKey==
///         accountName: someAccountName
///         batchSize: 25
///         columnsToRemove:
///           - column1
///           - column2
///         partitionKey: partitionKey
///         rowKey: rowKey
///         table: samples
///         type: Microsoft.Storage/Table
///       jobName: sj2790
///       outputName: output958
///       resourceGroupName: sjrg5176
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an Event Hub output with JSON serialization
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var output = new AzureNative.StreamAnalytics.Output("output", new()
///     {
///         Datasource = new AzureNative.StreamAnalytics.Inputs.EventHubOutputDataSourceArgs
///         {
///             EventHubName = "sdkeventhub",
///             PartitionKey = "partitionKey",
///             ServiceBusNamespace = "sdktest",
///             SharedAccessPolicyKey = "sharedAccessPolicyKey=",
///             SharedAccessPolicyName = "RootManageSharedAccessKey",
///             Type = "Microsoft.ServiceBus/EventHub",
///         },
///         JobName = "sj3310",
///         OutputName = "output5195",
///         ResourceGroupName = "sjrg6912",
///         Serialization = new AzureNative.StreamAnalytics.Inputs.JsonSerializationArgs
///         {
///             Encoding = AzureNative.StreamAnalytics.Encoding.UTF8,
///             Format = AzureNative.StreamAnalytics.JsonOutputSerializationFormat.Array,
///             Type = "Json",
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
/// 		_, err := streamanalytics.NewOutput(ctx, "output", &streamanalytics.OutputArgs{
/// 			Datasource: &streamanalytics.EventHubOutputDataSourceArgs{
/// 				EventHubName:           pulumi.String("sdkeventhub"),
/// 				PartitionKey:           pulumi.String("partitionKey"),
/// 				ServiceBusNamespace:    pulumi.String("sdktest"),
/// 				SharedAccessPolicyKey:  pulumi.String("sharedAccessPolicyKey="),
/// 				SharedAccessPolicyName: pulumi.String("RootManageSharedAccessKey"),
/// 				Type:                   pulumi.String("Microsoft.ServiceBus/EventHub"),
/// 			},
/// 			JobName:           pulumi.String("sj3310"),
/// 			OutputName:        pulumi.String("output5195"),
/// 			ResourceGroupName: pulumi.String("sjrg6912"),
/// 			Serialization: &streamanalytics.JsonSerializationArgs{
/// 				Encoding: pulumi.String(streamanalytics.EncodingUTF8),
/// 				Format:   pulumi.String(streamanalytics.JsonOutputSerializationFormatArray),
/// 				Type:     pulumi.String("Json"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.streamanalytics.Output;
/// import com.pulumi.azurenative.streamanalytics.OutputArgs;
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
///         var output = new Output("output", OutputArgs.builder()
///             .datasource(EventHubOutputDataSourceArgs.builder()
///                 .eventHubName("sdkeventhub")
///                 .partitionKey("partitionKey")
///                 .serviceBusNamespace("sdktest")
///                 .sharedAccessPolicyKey("sharedAccessPolicyKey=")
///                 .sharedAccessPolicyName("RootManageSharedAccessKey")
///                 .type("Microsoft.ServiceBus/EventHub")
///                 .build())
///             .jobName("sj3310")
///             .outputName("output5195")
///             .resourceGroupName("sjrg6912")
///             .serialization(JsonSerializationArgs.builder()
///                 .encoding("UTF8")
///                 .format("Array")
///                 .type("Json")
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
/// const output = new azure_native.streamanalytics.Output("output", {
///     datasource: {
///         eventHubName: "sdkeventhub",
///         partitionKey: "partitionKey",
///         serviceBusNamespace: "sdktest",
///         sharedAccessPolicyKey: "sharedAccessPolicyKey=",
///         sharedAccessPolicyName: "RootManageSharedAccessKey",
///         type: "Microsoft.ServiceBus/EventHub",
///     },
///     jobName: "sj3310",
///     outputName: "output5195",
///     resourceGroupName: "sjrg6912",
///     serialization: {
///         encoding: azure_native.streamanalytics.Encoding.UTF8,
///         format: azure_native.streamanalytics.JsonOutputSerializationFormat.Array,
///         type: "Json",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// output = azure_native.streamanalytics.Output("output",
///     datasource={
///         "event_hub_name": "sdkeventhub",
///         "partition_key": "partitionKey",
///         "service_bus_namespace": "sdktest",
///         "shared_access_policy_key": "sharedAccessPolicyKey=",
///         "shared_access_policy_name": "RootManageSharedAccessKey",
///         "type": "Microsoft.ServiceBus/EventHub",
///     },
///     job_name="sj3310",
///     output_name="output5195",
///     resource_group_name="sjrg6912",
///     serialization={
///         "encoding": azure_native.streamanalytics.Encoding.UTF8,
///         "format": azure_native.streamanalytics.JsonOutputSerializationFormat.ARRAY,
///         "type": "Json",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   output:
///     type: azure-native:streamanalytics:Output
///     properties:
///       datasource:
///         eventHubName: sdkeventhub
///         partitionKey: partitionKey
///         serviceBusNamespace: sdktest
///         sharedAccessPolicyKey: sharedAccessPolicyKey=
///         sharedAccessPolicyName: RootManageSharedAccessKey
///         type: Microsoft.ServiceBus/EventHub
///       jobName: sj3310
///       outputName: output5195
///       resourceGroupName: sjrg6912
///       serialization:
///         encoding: UTF8
///         format: Array
///         type: Json
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
/// $ pulumi import azure-native:streamanalytics:Output output5195 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/streamingjobs/{jobName}/outputs/{outputName}
/// ```
class OutputStreamanalytics extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  late final pulumi.Output<AzureDataLakeStoreOutputDataSourceResponse?>
  datasource;

  /// Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.
  late final pulumi.Output<DiagnosticsResponse> diagnostics;

  /// The current entity tag for the output. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  late final pulumi.Output<String> etag;

  /// Resource name
  late final pulumi.Output<String?> name;

  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  late final pulumi.Output<AvroSerializationResponse?> serialization;

  /// The size window to constrain a Stream Analytics output to.
  late final pulumi.Output<int?> sizeWindow;

  /// The time frame for filtering Stream Analytics job outputs.
  late final pulumi.Output<String?> timeWindow;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [OutputStreamanalytics].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputStreamanalytics]. {@macro pulumi_streamanalytics_output_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputStreamanalytics(
    String name, {
    OutputArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:streamanalytics:Output',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    datasource = registerOutput<AzureDataLakeStoreOutputDataSourceResponse?>(
      'datasource',
    );
    diagnostics = registerOutput<DiagnosticsResponse>('diagnostics');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    serialization = registerOutput<AvroSerializationResponse?>('serialization');
    sizeWindow = registerOutput<int?>('sizeWindow');
    timeWindow = registerOutput<String?>('timeWindow');
    type = registerOutput<String>('type');
  }
}

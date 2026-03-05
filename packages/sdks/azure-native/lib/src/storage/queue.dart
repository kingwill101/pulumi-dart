import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';

/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### QueueOperationPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queue = new AzureNative.Storage.Queue("queue", new()
///     {
///         AccountName = "sto328",
///         QueueName = "queue6185",
///         ResourceGroupName = "res3376",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewQueue(ctx, "queue", &storage.QueueArgs{
/// 			AccountName:       pulumi.String("sto328"),
/// 			QueueName:         pulumi.String("queue6185"),
/// 			ResourceGroupName: pulumi.String("res3376"),
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
/// import com.pulumi.azurenative.storage.Queue;
/// import com.pulumi.azurenative.storage.QueueArgs;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .accountName("sto328")
///             .queueName("queue6185")
///             .resourceGroupName("res3376")
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
/// const queue = new azure_native.storage.Queue("queue", {
///     accountName: "sto328",
///     queueName: "queue6185",
///     resourceGroupName: "res3376",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// queue = azure_native.storage.Queue("queue",
///     account_name="sto328",
///     queue_name="queue6185",
///     resource_group_name="res3376")
///
/// ```
///
/// ```yaml
/// resources:
///   queue:
///     type: azure-native:storage:Queue
///     properties:
///       accountName: sto328
///       queueName: queue6185
///       resourceGroupName: res3376
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### QueueOperationPutWithMetadata
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queue = new AzureNative.Storage.Queue("queue", new()
///     {
///         AccountName = "sto328",
///         Metadata =
///         {
///             { "sample1", "meta1" },
///             { "sample2", "meta2" },
///         },
///         QueueName = "queue6185",
///         ResourceGroupName = "res3376",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewQueue(ctx, "queue", &storage.QueueArgs{
/// 			AccountName: pulumi.String("sto328"),
/// 			Metadata: pulumi.StringMap{
/// 				"sample1": pulumi.String("meta1"),
/// 				"sample2": pulumi.String("meta2"),
/// 			},
/// 			QueueName:         pulumi.String("queue6185"),
/// 			ResourceGroupName: pulumi.String("res3376"),
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
/// import com.pulumi.azurenative.storage.Queue;
/// import com.pulumi.azurenative.storage.QueueArgs;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .accountName("sto328")
///             .metadata(Map.ofEntries(
///                 Map.entry("sample1", "meta1"),
///                 Map.entry("sample2", "meta2")
///             ))
///             .queueName("queue6185")
///             .resourceGroupName("res3376")
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
/// const queue = new azure_native.storage.Queue("queue", {
///     accountName: "sto328",
///     metadata: {
///         sample1: "meta1",
///         sample2: "meta2",
///     },
///     queueName: "queue6185",
///     resourceGroupName: "res3376",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// queue = azure_native.storage.Queue("queue",
///     account_name="sto328",
///     metadata={
///         "sample1": "meta1",
///         "sample2": "meta2",
///     },
///     queue_name="queue6185",
///     resource_group_name="res3376")
///
/// ```
///
/// ```yaml
/// resources:
///   queue:
///     type: azure-native:storage:Queue
///     properties:
///       accountName: sto328
///       metadata:
///         sample1: meta1
///         sample2: meta2
///       queueName: queue6185
///       resourceGroupName: res3376
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
/// $ pulumi import azure-native:storage:Queue queue6185 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/queueServices/default/queues/{queueName}
/// ```
class Queue extends pulumi.CustomResource {
  /// Integer indicating an approximate number of messages in the queue. This number is not lower than the actual number of messages in the queue, but could be higher.
  late final pulumi.Output<int> approximateMessageCount;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A name-value pair that represents queue metadata.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_storage_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    approximateMessageCount = registerOutput<int>('approximateMessageCount');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}

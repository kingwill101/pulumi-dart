import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';
import 'queue_state.dart';

/// Manages a Queue within an Azure Storage Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleQueue = new azure.storage.Queue("example", {
///     name: "mysamplequeue",
///     storageAccountName: exampleAccount.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_queue = azure.storage.Queue("example",
///     name="mysamplequeue",
///     storage_account_name=example_account.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleQueue = new Azure.Storage.Queue("example", new()
///     {
///         Name = "mysamplequeue",
///         StorageAccountName = exampleAccount.Name,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewQueue(ctx, "example", &storage.QueueArgs{
/// 			Name:               pulumi.String("mysamplequeue"),
/// 			StorageAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplestorageacc"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_queue" "example" {
///   name                 = "mysamplequeue"
///   storage_account_name = azure_storage_account.example.name
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Queue;
/// import com.pulumi.azure.storage.QueueArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleQueue = new Queue("exampleQueue", QueueArgs.builder()
///             .name("mysamplequeue")
///             .storageAccountName(exampleAccount.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleQueue:
///     type: azure:storage:Queue
///     name: example
///     properties:
///       name: mysamplequeue
///       storageAccountName: ${exampleAccount.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2025-08-01
///
/// ## Import
///
/// Storage Queue's can be imported using the `resource id`, e.g.
///
/// If `storageAccountName` is used:
///
/// ```sh
/// $ pulumi import azure:storage/queue:Queue queue1 https://example.queue.core.windows.net/queue1
/// ```
///
/// If `storageAccountId` is used:
///
/// ```sh
/// $ pulumi import azure:storage/queue:Queue queue1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount/queueServices/default/queues/queue1
/// ```
class Queue extends pulumi.CustomResource {
  /// A mapping of MetaData which should be assigned to this Storage Queue.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Resource Manager ID of this Storage Queue.
  late final pulumi.Output<String> resourceManagerId;
  /// The name of the Storage Account where the Storage Queue should be created.
  ///
  /// &gt; **Note:** One of `storageAccountName` or `storageAccountId` must be specified. When specifying `storageAccountId` the resource will use the Resource Manager API, rather than the Data Plane API.
  late final pulumi.Output<String?> storageAccountId;
  /// The name of the Storage Account where the Storage Queue should be created. This property is deprecated in favour of `storageAccountId`.
  ///
  /// &gt; **Note:** Migrating from the deprecated `storageAccountName` to `storageAccountId` is supported without recreation. Any other change to either property will result in the resource being recreated.
  late final pulumi.Output<String?> storageAccountName;
  /// The data plane URL of the Storage Queue in the format of `&lt;storage queue endpoint&gt;/&lt;queue name&gt;`. E.g. `https://example.queue.core.windows.net/queue1`.
  late final pulumi.Output<String> url;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_storage_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountName = registerOutput<String?>('storageAccountName');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [Queue] resource's state with the given [name] and [id].
  static Queue get(
    String name,
    pulumi.Input<String> id, {
    QueueState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Queue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Queue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/queue:Queue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountName = registerOutput<String?>('storageAccountName');
    url = registerOutput<String>('url');
  }

  /// Creates a typed reference to an existing [Queue] resource.
  Queue.reference(String urn)
    : super(
        'azure:storage/queue:Queue',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    resourceManagerId = registerOutput<String>('resourceManagerId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountName = registerOutput<String?>('storageAccountName');
    url = registerOutput<String>('url');
  }
}

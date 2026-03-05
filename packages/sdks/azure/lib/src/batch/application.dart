import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_state.dart';

/// Manages Azure Batch Application instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleAccount2 = new azure.batch.Account("example", {
///     name: "exampleba",
///     resourceGroupName: example.name,
///     location: example.location,
///     poolAllocationMode: "BatchService",
///     storageAccountId: exampleAccount.id,
///     storageAccountAuthenticationMode: "StorageKeys",
/// });
/// const exampleApplication = new azure.batch.Application("example", {
///     name: "example-batch-application",
///     resourceGroupName: example.name,
///     accountName: exampleAccount2.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_account2 = azure.batch.Account("example",
///     name="exampleba",
///     resource_group_name=example.name,
///     location=example.location,
///     pool_allocation_mode="BatchService",
///     storage_account_id=example_account.id,
///     storage_account_authentication_mode="StorageKeys")
/// example_application = azure.batch.Application("example",
///     name="example-batch-application",
///     resource_group_name=example.name,
///     account_name=example_account2.name)
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleAccount2 = new Azure.Batch.Account("example", new()
///     {
///         Name = "exampleba",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PoolAllocationMode = "BatchService",
///         StorageAccountId = exampleAccount.Id,
///         StorageAccountAuthenticationMode = "StorageKeys",
///     });
///
///     var exampleApplication = new Azure.Batch.Application("example", new()
///     {
///         Name = "example-batch-application",
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount2.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/batch"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount2, err := batch.NewAccount(ctx, "example", &batch.AccountArgs{
/// 			Name:                             pulumi.String("exampleba"),
/// 			ResourceGroupName:                example.Name,
/// 			Location:                         example.Location,
/// 			PoolAllocationMode:               pulumi.String("BatchService"),
/// 			StorageAccountId:                 exampleAccount.ID(),
/// 			StorageAccountAuthenticationMode: pulumi.String("StorageKeys"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = batch.NewApplication(ctx, "example", &batch.ApplicationArgs{
/// 			Name:              pulumi.String("example-batch-application"),
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount2.Name,
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
/// import com.pulumi.azure.batch.Application;
/// import com.pulumi.azure.batch.ApplicationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new com.pulumi.azure.storage.Account("exampleAccount", com.pulumi.azure.storage.AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleAccount2 = new com.pulumi.azure.batch.Account("exampleAccount2", com.pulumi.azure.batch.AccountArgs.builder()
///             .name("exampleba")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .poolAllocationMode("BatchService")
///             .storageAccountId(exampleAccount.id())
///             .storageAccountAuthenticationMode("StorageKeys")
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-batch-application")
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount2.name())
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
///       name: example-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleAccount2:
///     type: azure:batch:Account
///     name: example
///     properties:
///       name: exampleba
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       poolAllocationMode: BatchService
///       storageAccountId: ${exampleAccount.id}
///       storageAccountAuthenticationMode: StorageKeys
///   exampleApplication:
///     type: azure:batch:Application
///     name: example
///     properties:
///       name: example-batch-application
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount2.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Batch` - 2024-07-01
///
/// ## Import
///
/// Batch Applications can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:batch/application:Application example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Batch/batchAccounts/exampleba/applications/example-batch-application
/// ```
class Application extends pulumi.CustomResource {
  /// The name of the Batch account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// A value indicating whether packages within the application may be overwritten using the same version string. Defaults to `true`.
  late final pulumi.Output<bool?> allowUpdates;
  /// The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package.
  late final pulumi.Output<String?> defaultVersion;
  /// The display name for the application.
  late final pulumi.Output<String?> displayName;
  /// The name of the application. This must be unique within the account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group that contains the Batch account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_batch_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:batch/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    allowUpdates = registerOutput<bool?>('allowUpdates');
    defaultVersion = registerOutput<String?>('defaultVersion');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:batch/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    allowUpdates = registerOutput<bool?>('allowUpdates');
    defaultVersion = registerOutput<String?>('defaultVersion');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}

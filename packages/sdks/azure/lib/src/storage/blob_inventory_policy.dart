import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_args.dart';
import 'blob_inventory_policy_state.dart';

/// Manages a Storage Blob Inventory Policy.
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
///     name: "examplestoracc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     blobProperties: {
///         versioningEnabled: true,
///     },
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "examplecontainer",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleBlobInventoryPolicy = new azure.storage.BlobInventoryPolicy("example", {
///     storageAccountId: exampleAccount.id,
///     rules: [{
///         name: "rule1",
///         storageContainerName: exampleContainer.name,
///         format: "Csv",
///         schedule: "Daily",
///         scope: "Container",
///         schemaFields: [
///             "Name",
///             "Last-Modified",
///         ],
///     }],
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
///     name="examplestoracc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     blob_properties={
///         "versioning_enabled": True,
///     })
/// example_container = azure.storage.Container("example",
///     name="examplecontainer",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_blob_inventory_policy = azure.storage.BlobInventoryPolicy("example",
///     storage_account_id=example_account.id,
///     rules=[{
///         "name": "rule1",
///         "storage_container_name": example_container.name,
///         "format": "Csv",
///         "schedule": "Daily",
///         "scope": "Container",
///         "schema_fields": [
///             "Name",
///             "Last-Modified",
///         ],
///     }])
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
///         Name = "examplestoracc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         BlobProperties = new Azure.Storage.Inputs.AccountBlobPropertiesArgs
///         {
///             VersioningEnabled = true,
///         },
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "examplecontainer",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleBlobInventoryPolicy = new Azure.Storage.BlobInventoryPolicy("example", new()
///     {
///         StorageAccountId = exampleAccount.Id,
///         Rules = new[]
///         {
///             new Azure.Storage.Inputs.BlobInventoryPolicyRuleArgs
///             {
///                 Name = "rule1",
///                 StorageContainerName = exampleContainer.Name,
///                 Format = "Csv",
///                 Schedule = "Daily",
///                 Scope = "Container",
///                 SchemaFields = new[]
///                 {
///                     "Name",
///                     "Last-Modified",
///                 },
///             },
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
/// 			Name:                   pulumi.String("examplestoracc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			BlobProperties: &storage.AccountBlobPropertiesArgs{
/// 				VersioningEnabled: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("examplecontainer"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBlobInventoryPolicy(ctx, "example", &storage.BlobInventoryPolicyArgs{
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Rules: storage.BlobInventoryPolicyRuleArray{
/// 				&storage.BlobInventoryPolicyRuleArgs{
/// 					Name:                 pulumi.String("rule1"),
/// 					StorageContainerName: exampleContainer.Name,
/// 					Format:               pulumi.String("Csv"),
/// 					Schedule:             pulumi.String("Daily"),
/// 					Scope:                pulumi.String("Container"),
/// 					SchemaFields: pulumi.StringArray{
/// 						pulumi.String("Name"),
/// 						pulumi.String("Last-Modified"),
/// 					},
/// 				},
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.inputs.AccountBlobPropertiesArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.BlobInventoryPolicy;
/// import com.pulumi.azure.storage.BlobInventoryPolicyArgs;
/// import com.pulumi.azure.storage.inputs.BlobInventoryPolicyRuleArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestoracc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .blobProperties(AccountBlobPropertiesArgs.builder()
///                 .versioningEnabled(true)
///                 .build())
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("examplecontainer")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleBlobInventoryPolicy = new BlobInventoryPolicy("exampleBlobInventoryPolicy", BlobInventoryPolicyArgs.builder()
///             .storageAccountId(exampleAccount.id())
///             .rules(BlobInventoryPolicyRuleArgs.builder()
///                 .name("rule1")
///                 .storageContainerName(exampleContainer.name())
///                 .format("Csv")
///                 .schedule("Daily")
///                 .scope("Container")
///                 .schemaFields(
///                     "Name",
///                     "Last-Modified")
///                 .build())
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
///       name: examplestoracc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       blobProperties:
///         versioningEnabled: true
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: examplecontainer
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleBlobInventoryPolicy:
///     type: azure:storage:BlobInventoryPolicy
///     name: example
///     properties:
///       storageAccountId: ${exampleAccount.id}
///       rules:
///         - name: rule1
///           storageContainerName: ${exampleContainer.name}
///           format: Csv
///           schedule: Daily
///           scope: Container
///           schemaFields:
///             - Name
///             - Last-Modified
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
///
/// ## Import
///
/// Storage Blob Inventory Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/blobInventoryPolicy:BlobInventoryPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Storage/storageAccounts/storageAccount1
/// ```
class BlobInventoryPolicy extends pulumi.CustomResource {
  /// One or more `rules` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;
  /// The ID of the storage account to apply this Blob Inventory Policy to. Changing this forces a new Storage Blob Inventory Policy to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [BlobInventoryPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlobInventoryPolicy]. {@macro pulumi_storage_blob_inventory_policy_blob_inventory_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlobInventoryPolicy(
    String name, {
    BlobInventoryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/blobInventoryPolicy:BlobInventoryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [BlobInventoryPolicy] resource's state with the given [name] and [id].
  static BlobInventoryPolicy get(
    String name,
    pulumi.Input<String> id, {
    BlobInventoryPolicyState? state,
  }) {
    return BlobInventoryPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BlobInventoryPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/blobInventoryPolicy:BlobInventoryPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    storageAccountId = registerOutput<String>('storageAccountId');
  }
}

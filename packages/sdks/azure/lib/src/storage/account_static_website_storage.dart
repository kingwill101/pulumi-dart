import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_static_website_args.dart';
import 'account_static_website_state.dart';

/// Manages the Static Website of an Azure Storage Account.
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
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleAccountStaticWebsite = new azure.storage.AccountStaticWebsite("example", {
///     storageAccountId: exampleAccount.id,
///     error404Document: "custom_not_found.html",
///     indexDocument: "custom_index.html",
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
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS",
///     tags={
///         "environment": "staging",
///     })
/// example_account_static_website = azure.storage.AccountStaticWebsite("example",
///     storage_account_id=example_account.id,
///     error404_document="custom_not_found.html",
///     index_document="custom_index.html")
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
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleAccountStaticWebsite = new Azure.Storage.AccountStaticWebsite("example", new()
///     {
///         StorageAccountId = exampleAccount.Id,
///         Error404Document = "custom_not_found.html",
///         IndexDocument = "custom_index.html",
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
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewAccountStaticWebsite(ctx, "example", &storage.AccountStaticWebsiteArgs{
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Error404Document: pulumi.String("custom_not_found.html"),
/// 			IndexDocument:    pulumi.String("custom_index.html"),
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
/// import com.pulumi.azure.storage.AccountStaticWebsite;
/// import com.pulumi.azure.storage.AccountStaticWebsiteArgs;
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
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleAccountStaticWebsite = new AccountStaticWebsite("exampleAccountStaticWebsite", AccountStaticWebsiteArgs.builder()
///             .storageAccountId(exampleAccount.id())
///             .error404Document("custom_not_found.html")
///             .indexDocument("custom_index.html")
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
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///       tags:
///         environment: staging
///   exampleAccountStaticWebsite:
///     type: azure:storage:AccountStaticWebsite
///     name: example
///     properties:
///       storageAccountId: ${exampleAccount.id}
///       error404Document: custom_not_found.html
///       indexDocument: custom_index.html
/// ```
///
///
/// ## Import
///
/// Storage Account Static Websites can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/accountStaticWebsite:AccountStaticWebsite mysite /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount
/// ```
class AccountStaticWebsiteStorage extends pulumi.CustomResource {
  /// The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  late final pulumi.Output<String?> error404Document;
  /// The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html.
  late final pulumi.Output<String?> indexDocument;
  /// The ID of the Storage Account to set Static Website on. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [AccountStaticWebsiteStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountStaticWebsiteStorage]. {@macro pulumi_storage_account_static_website_account_static_website_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountStaticWebsiteStorage(
    String name, {
    AccountStaticWebsiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/accountStaticWebsite:AccountStaticWebsite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    error404Document = registerOutput<String?>('error404Document');
    indexDocument = registerOutput<String?>('indexDocument');
    storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [AccountStaticWebsiteStorage] resource's state with the given [name] and [id].
  static AccountStaticWebsiteStorage get(
    String name,
    pulumi.Input<String> id, {
    AccountStaticWebsiteState? state,
  }) {
    return AccountStaticWebsiteStorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountStaticWebsiteStorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/accountStaticWebsite:AccountStaticWebsite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    error404Document = registerOutput<String?>('error404Document');
    indexDocument = registerOutput<String?>('indexDocument');
    storageAccountId = registerOutput<String>('storageAccountId');
  }
}

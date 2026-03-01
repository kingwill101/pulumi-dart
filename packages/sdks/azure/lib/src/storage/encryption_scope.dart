import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_scope_args.dart';
import 'encryption_scope_state.dart';

/// Manages a Storage Encryption Scope.
///
/// > **Note:** Storage Encryption Scopes are in Preview [more information can be found here](https://docs.microsoft.com/azure/storage/blobs/encryption-scope-manage).
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
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleEncryptionScope = new azure.storage.EncryptionScope("example", {
///     name: "microsoftmanaged",
///     storageAccountId: exampleAccount.id,
///     source: "Microsoft.Storage",
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
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_encryption_scope = azure.storage.EncryptionScope("example",
///     name="microsoftmanaged",
///     storage_account_id=example_account.id,
///     source="Microsoft.Storage")
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
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         Identity = new Azure.Storage.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleEncryptionScope = new Azure.Storage.EncryptionScope("example", new()
///     {
///         Name = "microsoftmanaged",
///         StorageAccountId = exampleAccount.Id,
///         Source = "Microsoft.Storage",
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
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			Identity: &storage.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewEncryptionScope(ctx, "example", &storage.EncryptionScopeArgs{
/// 			Name:             pulumi.String("microsoftmanaged"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Source:           pulumi.String("Microsoft.Storage"),
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
/// import com.pulumi.azure.storage.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.storage.EncryptionScope;
/// import com.pulumi.azure.storage.EncryptionScopeArgs;
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
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleEncryptionScope = new EncryptionScope("exampleEncryptionScope", EncryptionScopeArgs.builder()
///             .name("microsoftmanaged")
///             .storageAccountId(exampleAccount.id())
///             .source("Microsoft.Storage")
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
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       identity:
///         type: SystemAssigned
///   exampleEncryptionScope:
///     type: azure:storage:EncryptionScope
///     name: example
///     properties:
///       name: microsoftmanaged
///       storageAccountId: ${exampleAccount.id}
///       source: Microsoft.Storage
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Storage` - 2023-05-01
///
/// ## Import
///
/// Storage Encryption Scopes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/encryptionScope:EncryptionScope example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Storage/storageAccounts/account1/encryptionScopes/scope1
/// ```
class EncryptionScope extends pulumi.CustomResource {
  /// Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> infrastructureEncryptionRequired;
  /// The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`.
  late final pulumi.Output<String?> keyVaultKeyId;
  /// The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created.
  late final pulumi.Output<String> name;
  /// The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`.
  late final pulumi.Output<String> source;
  /// The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [EncryptionScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EncryptionScope]. {@macro pulumi_storage_encryption_scope_encryption_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EncryptionScope(
    String name, {
    EncryptionScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/encryptionScope:EncryptionScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.infrastructureEncryptionRequired = registerOutput<bool?>('infrastructureEncryptionRequired');
    this.keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    this.name = registerOutput<String>('name');
    this.source = registerOutput<String>('source');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [EncryptionScope] resource's state with the given [name] and [id].
  static EncryptionScope get(
    String name,
    pulumi.Input<String> id, {
    EncryptionScopeState? state,
  }) {
    return EncryptionScope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EncryptionScope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/encryptionScope:EncryptionScope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.infrastructureEncryptionRequired = registerOutput<bool?>('infrastructureEncryptionRequired');
    this.keyVaultKeyId = registerOutput<String?>('keyVaultKeyId');
    this.name = registerOutput<String>('name');
    this.source = registerOutput<String>('source');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_encryption.dart';
import 'account_identity.dart';
import 'account_key_vault_reference.dart';
import 'account_network_profile.dart';
import 'account_state.dart';

/// Manages an Azure Batch account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "testbatch",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "teststorage",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleAccount2 = new azure.batch.Account("example", {
///     name: "testbatchaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     poolAllocationMode: "BatchService",
///     storageAccountId: exampleAccount.id,
///     storageAccountAuthenticationMode: "StorageKeys",
///     tags: {
///         env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="testbatch",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="teststorage",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_account2 = azure.batch.Account("example",
///     name="testbatchaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     pool_allocation_mode="BatchService",
///     storage_account_id=example_account.id,
///     storage_account_authentication_mode="StorageKeys",
///     tags={
///         "env": "test",
///     })
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
///         Name = "testbatch",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "teststorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleAccount2 = new Azure.Batch.Account("example", new()
///     {
///         Name = "testbatchaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PoolAllocationMode = "BatchService",
///         StorageAccountId = exampleAccount.Id,
///         StorageAccountAuthenticationMode = "StorageKeys",
///         Tags =
///         {
///             { "env", "test" },
///         },
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
/// 			Name:     pulumi.String("testbatch"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("teststorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = batch.NewAccount(ctx, "example", &batch.AccountArgs{
/// 			Name:                             pulumi.String("testbatchaccount"),
/// 			ResourceGroupName:                example.Name,
/// 			Location:                         example.Location,
/// 			PoolAllocationMode:               pulumi.String("BatchService"),
/// 			StorageAccountId:                 exampleAccount.ID(),
/// 			StorageAccountAuthenticationMode: pulumi.String("StorageKeys"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
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
///             .name("testbatch")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new com.pulumi.azure.storage.Account("exampleAccount", com.pulumi.azure.storage.AccountArgs.builder()
///             .name("teststorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleAccount2 = new com.pulumi.azure.batch.Account("exampleAccount2", com.pulumi.azure.batch.AccountArgs.builder()
///             .name("testbatchaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .poolAllocationMode("BatchService")
///             .storageAccountId(exampleAccount.id())
///             .storageAccountAuthenticationMode("StorageKeys")
///             .tags(Map.of("env", "test"))
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
///       name: testbatch
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: teststorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleAccount2:
///     type: azure:batch:Account
///     name: example
///     properties:
///       name: testbatchaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       poolAllocationMode: BatchService
///       storageAccountId: ${exampleAccount.id}
///       storageAccountAuthenticationMode: StorageKeys
///       tags:
///         env: test
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
/// Batch Account can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:batch/account:Account example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Batch/batchAccounts/account1
/// ```
class Account extends pulumi.CustomResource {
  /// The account endpoint used to interact with the Batch service.
  late final pulumi.Output<String> accountEndpoint;

  /// Specifies the allowed authentication mode for the Batch account. Possible values include `AAD`, `SharedKey` or `TaskAuthenticationToken`.
  late final pulumi.Output<List<String>> allowedAuthenticationModes;

  /// Specifies if customer managed key encryption should be used to encrypt batch account data. One `encryption` block as defined below.
  late final pulumi.Output<AccountEncryption?> encryption;

  /// An `identity` block as defined below.
  late final pulumi.Output<AccountIdentity?> identity;

  /// A `key_vault_reference` block, as defined below, that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode.
  late final pulumi.Output<AccountKeyVaultReference?> keyVaultReference;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Batch account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A `network_profile` block as defined below.
  late final pulumi.Output<AccountNetworkProfile?> networkProfile;

  /// Specifies the mode to use for pool allocation. Possible values are `BatchService` or `UserSubscription`. Defaults to `BatchService`.
  late final pulumi.Output<String?> poolAllocationMode;

  /// The Batch account primary access key.
  late final pulumi.Output<String> primaryAccessKey;

  /// Whether public network access is allowed for this server. Defaults to `true`.
  ///
  /// &gt; **NOTE:** When using `UserSubscription` mode, an Azure KeyVault reference has to be specified. See `key_vault_reference` below.
  ///
  /// &gt; **NOTE:** When using `UserSubscription` mode, the `Microsoft Azure Batch` service principal has to have `Contributor` role on your subscription scope, as documented [here](https://docs.microsoft.com/azure/batch/batch-account-create-portal#additional-configuration-for-user-subscription-mode).
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** To work around [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/5574) this property is currently treated as case-insensitive. A future version of this provider will require that the casing is correct.
  late final pulumi.Output<String> resourceGroupName;

  /// The Batch account secondary access key.
  late final pulumi.Output<String> secondaryAccessKey;

  /// Specifies the storage account authentication mode. Possible values include `StorageKeys`, `BatchAccountManagedIdentity`.
  ///
  /// &gt; **NOTE:** When using `BatchAccountManagedIdentity` mod, the `identity.type` must set to `UserAssigned` or `SystemAssigned`.
  late final pulumi.Output<String?> storageAccountAuthenticationMode;

  /// Specifies the storage account to use for the Batch account. If not specified, Azure Batch will manage the storage.
  ///
  /// &gt; **NOTE:** When using `storage_account_id`, the `storage_account_authentication_mode` must be specified as well.
  late final pulumi.Output<String?> storageAccountId;

  /// Specifies the user assigned identity for the storage account.
  late final pulumi.Output<String?> storageAccountNodeIdentity;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_batch_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:batch/account:Account',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountEndpoint = registerOutput<String>('accountEndpoint');
    allowedAuthenticationModes = registerOutput<List<String>>(
      'allowedAuthenticationModes',
    );
    encryption = registerOutput<AccountEncryption?>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountEncryption.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<AccountIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultReference = registerOutput<AccountKeyVaultReference?>(
      'keyVaultReference',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountKeyVaultReference.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<AccountNetworkProfile?>(
      'networkProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountNetworkProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    poolAllocationMode = registerOutput<String?>('poolAllocationMode');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    storageAccountAuthenticationMode = registerOutput<String?>(
      'storageAccountAuthenticationMode',
    );
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountNodeIdentity = registerOutput<String?>(
      'storageAccountNodeIdentity',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:batch/account:Account',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountEndpoint = registerOutput<String>('accountEndpoint');
    allowedAuthenticationModes = registerOutput<List<String>>(
      'allowedAuthenticationModes',
    );
    encryption = registerOutput<AccountEncryption?>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountEncryption.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<AccountIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultReference = registerOutput<AccountKeyVaultReference?>(
      'keyVaultReference',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountKeyVaultReference.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<AccountNetworkProfile?>(
      'networkProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccountNetworkProfile.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    poolAllocationMode = registerOutput<String?>('poolAllocationMode');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    storageAccountAuthenticationMode = registerOutput<String?>(
      'storageAccountAuthenticationMode',
    );
    storageAccountId = registerOutput<String?>('storageAccountId');
    storageAccountNodeIdentity = registerOutput<String?>(
      'storageAccountNodeIdentity',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }
}

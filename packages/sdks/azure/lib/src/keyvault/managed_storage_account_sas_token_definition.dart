import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_storage_account_sas_token_definition_args.dart';
import 'managed_storage_account_sas_token_definition_state.dart';

/// Manages a Key Vault Managed Storage Account SAS Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getClientConfig({});
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleGetAccountSAS = azure.storage.getAccountSASOutput({
///     connectionString: exampleAccount.primaryConnectionString,
///     httpsOnly: true,
///     resourceTypes: {
///         service: true,
///         container: false,
///         object: false,
///     },
///     services: {
///         blob: true,
///         queue: false,
///         table: false,
///         file: false,
///     },
///     start: "2021-04-30T00:00:00Z",
///     expiry: "2023-04-30T00:00:00Z",
///     permissions: {
///         read: true,
///         write: true,
///         "delete": false,
///         list: false,
///         add: true,
///         create: true,
///         update: false,
///         process: false,
///         tag: false,
///         filter: false,
///     },
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-keyvault",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     tenantId: example.then(example => example.tenantId),
///     skuName: "standard",
///     accessPolicies: [{
///         tenantId: example.then(example => example.tenantId),
///         objectId: example.then(example => example.objectId),
///         secretPermissions: [
///             "Get",
///             "Delete",
///         ],
///         storagePermissions: [
///             "Get",
///             "List",
///             "Set",
///             "SetSAS",
///             "GetSAS",
///             "DeleteSAS",
///             "Update",
///             "RegenerateKey",
///         ],
///     }],
/// });
/// const exampleManagedStorageAccount = new azure.keyvault.ManagedStorageAccount("example", {
///     name: "examplemanagedstorage",
///     keyVaultId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     storageAccountKey: "key1",
///     regenerateKeyAutomatically: false,
///     regenerationPeriod: "P1D",
/// });
/// const exampleManagedStorageAccountSasTokenDefinition = new azure.keyvault.ManagedStorageAccountSasTokenDefinition("example", {
///     name: "examplesasdefinition",
///     validityPeriod: "P1D",
///     managedStorageAccountId: exampleManagedStorageAccount.id,
///     sasTemplateUri: exampleGetAccountSAS.apply(exampleGetAccountSAS => exampleGetAccountSAS.sas),
///     sasType: "account",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_client_config()
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_get_account_sas = azure.storage.get_account_sas_output(connection_string=example_account.primary_connection_string,
///     https_only=True,
///     resource_types={
///         "service": True,
///         "container": False,
///         "object": False,
///     },
///     services={
///         "blob": True,
///         "queue": False,
///         "table": False,
///         "file": False,
///     },
///     start="2021-04-30T00:00:00Z",
///     expiry="2023-04-30T00:00:00Z",
///     permissions={
///         "read": True,
///         "write": True,
///         "delete": False,
///         "list": False,
///         "add": True,
///         "create": True,
///         "update": False,
///         "process": False,
///         "tag": False,
///         "filter": False,
///     })
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-keyvault",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     tenant_id=example.tenant_id,
///     sku_name="standard",
///     access_policies=[{
///         "tenant_id": example.tenant_id,
///         "object_id": example.object_id,
///         "secret_permissions": [
///             "Get",
///             "Delete",
///         ],
///         "storage_permissions": [
///             "Get",
///             "List",
///             "Set",
///             "SetSAS",
///             "GetSAS",
///             "DeleteSAS",
///             "Update",
///             "RegenerateKey",
///         ],
///     }])
/// example_managed_storage_account = azure.keyvault.ManagedStorageAccount("example",
///     name="examplemanagedstorage",
///     key_vault_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     storage_account_key="key1",
///     regenerate_key_automatically=False,
///     regeneration_period="P1D")
/// example_managed_storage_account_sas_token_definition = azure.keyvault.ManagedStorageAccountSasTokenDefinition("example",
///     name="examplesasdefinition",
///     validity_period="P1D",
///     managed_storage_account_id=example_managed_storage_account.id,
///     sas_template_uri=example_get_account_sas.sas,
///     sas_type="account")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleGetAccountSAS = Azure.Storage.GetAccountSAS.Invoke(new()
///     {
///         ConnectionString = exampleAccount.PrimaryConnectionString,
///         HttpsOnly = true,
///         ResourceTypes = new Azure.Storage.Inputs.GetAccountSASResourceTypesInputArgs
///         {
///             Service = true,
///             Container = false,
///             Object = false,
///         },
///         Services = new Azure.Storage.Inputs.GetAccountSASServicesInputArgs
///         {
///             Blob = true,
///             Queue = false,
///             Table = false,
///             File = false,
///         },
///         Start = "2021-04-30T00:00:00Z",
///         Expiry = "2023-04-30T00:00:00Z",
///         Permissions = new Azure.Storage.Inputs.GetAccountSASPermissionsInputArgs
///         {
///             Read = true,
///             Write = true,
///             Delete = false,
///             List = false,
///             Add = true,
///             Create = true,
///             Update = false,
///             Process = false,
///             Tag = false,
///             Filter = false,
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-keyvault",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         TenantId = example.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = example.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 SecretPermissions = new[]
///                 {
///                     "Get",
///                     "Delete",
///                 },
///                 StoragePermissions = new[]
///                 {
///                     "Get",
///                     "List",
///                     "Set",
///                     "SetSAS",
///                     "GetSAS",
///                     "DeleteSAS",
///                     "Update",
///                     "RegenerateKey",
///                 },
///             },
///         },
///     });
///
///     var exampleManagedStorageAccount = new Azure.KeyVault.ManagedStorageAccount("example", new()
///     {
///         Name = "examplemanagedstorage",
///         KeyVaultId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         StorageAccountKey = "key1",
///         RegenerateKeyAutomatically = false,
///         RegenerationPeriod = "P1D",
///     });
///
///     var exampleManagedStorageAccountSasTokenDefinition = new Azure.KeyVault.ManagedStorageAccountSasTokenDefinition("example", new()
///     {
///         Name = "examplesasdefinition",
///         ValidityPeriod = "P1D",
///         ManagedStorageAccountId = exampleManagedStorageAccount.Id,
///         SasTemplateUri = exampleGetAccountSAS.Apply(getAccountSASResult => getAccountSASResult.Sas),
///         SasType = "account",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetAccountSAS := storage.GetAccountSASOutput(ctx, storage.GetAccountSASOutputArgs{
/// 			ConnectionString: exampleAccount.PrimaryConnectionString,
/// 			HttpsOnly:        pulumi.Bool(true),
/// 			ResourceTypes: &storage.GetAccountSASResourceTypesArgs{
/// 				Service:   pulumi.Bool(true),
/// 				Container: pulumi.Bool(false),
/// 				Object:    pulumi.Bool(false),
/// 			},
/// 			Services: &storage.GetAccountSASServicesArgs{
/// 				Blob:  pulumi.Bool(true),
/// 				Queue: pulumi.Bool(false),
/// 				Table: pulumi.Bool(false),
/// 				File:  pulumi.Bool(false),
/// 			},
/// 			Start:  pulumi.String("2021-04-30T00:00:00Z"),
/// 			Expiry: pulumi.String("2023-04-30T00:00:00Z"),
/// 			Permissions: &storage.GetAccountSASPermissionsArgs{
/// 				Read:    pulumi.Bool(true),
/// 				Write:   pulumi.Bool(true),
/// 				Delete:  pulumi.Bool(false),
/// 				List:    pulumi.Bool(false),
/// 				Add:     pulumi.Bool(true),
/// 				Create:  pulumi.Bool(true),
/// 				Update:  pulumi.Bool(false),
/// 				Process: pulumi.Bool(false),
/// 				Tag:     pulumi.Bool(false),
/// 				Filter:  pulumi.Bool(false),
/// 			},
/// 		}, nil)
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("example-keyvault"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			TenantId:          pulumi.String(example.TenantId),
/// 			SkuName:           pulumi.String("standard"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(example.TenantId),
/// 					ObjectId: pulumi.String(example.ObjectId),
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Delete"),
/// 					},
/// 					StoragePermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Set"),
/// 						pulumi.String("SetSAS"),
/// 						pulumi.String("GetSAS"),
/// 						pulumi.String("DeleteSAS"),
/// 						pulumi.String("Update"),
/// 						pulumi.String("RegenerateKey"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleManagedStorageAccount, err := keyvault.NewManagedStorageAccount(ctx, "example", &keyvault.ManagedStorageAccountArgs{
/// 			Name:                       pulumi.String("examplemanagedstorage"),
/// 			KeyVaultId:                 exampleKeyVault.ID(),
/// 			StorageAccountId:           exampleAccount.ID(),
/// 			StorageAccountKey:          pulumi.String("key1"),
/// 			RegenerateKeyAutomatically: pulumi.Bool(false),
/// 			RegenerationPeriod:         pulumi.String("P1D"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewManagedStorageAccountSasTokenDefinition(ctx, "example", &keyvault.ManagedStorageAccountSasTokenDefinitionArgs{
/// 			Name:                    pulumi.String("examplesasdefinition"),
/// 			ValidityPeriod:          pulumi.String("P1D"),
/// 			ManagedStorageAccountId: exampleManagedStorageAccount.ID(),
/// 			SasTemplateUri: pulumi.String(exampleGetAccountSAS.ApplyT(func(exampleGetAccountSAS storage.GetAccountSASResult) (*string, error) {
/// 				return &exampleGetAccountSAS.Sas, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			SasType: pulumi.String("account"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountSASArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASResourceTypesArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASServicesArgs;
/// import com.pulumi.azure.storage.inputs.GetAccountSASPermissionsArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.ManagedStorageAccount;
/// import com.pulumi.azure.keyvault.ManagedStorageAccountArgs;
/// import com.pulumi.azure.keyvault.ManagedStorageAccountSasTokenDefinition;
/// import com.pulumi.azure.keyvault.ManagedStorageAccountSasTokenDefinitionArgs;
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
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         final var exampleGetAccountSAS = StorageFunctions.getAccountSAS(GetAccountSASArgs.builder()
///             .connectionString(exampleAccount.primaryConnectionString())
///             .httpsOnly(true)
///             .resourceTypes(GetAccountSASResourceTypesArgs.builder()
///                 .service(true)
///                 .container(false)
///                 .object(false)
///                 .build())
///             .services(GetAccountSASServicesArgs.builder()
///                 .blob(true)
///                 .queue(false)
///                 .table(false)
///                 .file(false)
///                 .build())
///             .start("2021-04-30T00:00:00Z")
///             .expiry("2023-04-30T00:00:00Z")
///             .permissions(GetAccountSASPermissionsArgs.builder()
///                 .read(true)
///                 .write(true)
///                 .delete(false)
///                 .list(false)
///                 .add(true)
///                 .create(true)
///                 .update(false)
///                 .process(false)
///                 .tag(false)
///                 .filter(false)
///                 .build())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-keyvault")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .tenantId(example.tenantId())
///             .skuName("standard")
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(example.tenantId())
///                 .objectId(example.objectId())
///                 .secretPermissions(
///                     "Get",
///                     "Delete")
///                 .storagePermissions(
///                     "Get",
///                     "List",
///                     "Set",
///                     "SetSAS",
///                     "GetSAS",
///                     "DeleteSAS",
///                     "Update",
///                     "RegenerateKey")
///                 .build())
///             .build());
///
///         var exampleManagedStorageAccount = new ManagedStorageAccount("exampleManagedStorageAccount", ManagedStorageAccountArgs.builder()
///             .name("examplemanagedstorage")
///             .keyVaultId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .storageAccountKey("key1")
///             .regenerateKeyAutomatically(false)
///             .regenerationPeriod("P1D")
///             .build());
///
///         var exampleManagedStorageAccountSasTokenDefinition = new ManagedStorageAccountSasTokenDefinition("exampleManagedStorageAccountSasTokenDefinition", ManagedStorageAccountSasTokenDefinitionArgs.builder()
///             .name("examplesasdefinition")
///             .validityPeriod("P1D")
///             .managedStorageAccountId(exampleManagedStorageAccount.id())
///             .sasTemplateUri(exampleGetAccountSAS.applyValue(_exampleGetAccountSAS -> _exampleGetAccountSAS.sas()))
///             .sasType("account")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-keyvault
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       tenantId: ${example.tenantId}
///       skuName: standard
///       accessPolicies:
///         - tenantId: ${example.tenantId}
///           objectId: ${example.objectId}
///           secretPermissions:
///             - Get
///             - Delete
///           storagePermissions:
///             - Get
///             - List
///             - Set
///             - SetSAS
///             - GetSAS
///             - DeleteSAS
///             - Update
///             - RegenerateKey
///   exampleManagedStorageAccount:
///     type: azure:keyvault:ManagedStorageAccount
///     name: example
///     properties:
///       name: examplemanagedstorage
///       keyVaultId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       storageAccountKey: key1
///       regenerateKeyAutomatically: false
///       regenerationPeriod: P1D
///   exampleManagedStorageAccountSasTokenDefinition:
///     type: azure:keyvault:ManagedStorageAccountSasTokenDefinition
///     name: example
///     properties:
///       name: examplesasdefinition
///       validityPeriod: P1D
///       managedStorageAccountId: ${exampleManagedStorageAccount.id}
///       sasTemplateUri: ${exampleGetAccountSAS.sas}
///       sasType: account
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   exampleGetAccountSAS:
///     fn::invoke:
///       function: azure:storage:getAccountSAS
///       arguments:
///         connectionString: ${exampleAccount.primaryConnectionString}
///         httpsOnly: true
///         resourceTypes:
///           service: true
///           container: false
///           object: false
///         services:
///           blob: true
///           queue: false
///           table: false
///           file: false
///         start: 2021-04-30T00:00:00Z
///         expiry: 2023-04-30T00:00:00Z
///         permissions:
///           read: true
///           write: true
///           delete: false
///           list: false
///           add: true
///           create: true
///           update: false
///           process: false
///           tag: false
///           filter: false
/// ```
///
///
/// ## Import
///
/// Key Vaults can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/managedStorageAccountSasTokenDefinition:ManagedStorageAccountSasTokenDefinition example https://example-keyvault.vault.azure.net/storage/exampleStorageAcc01/sas/exampleSasDefinition01
/// ```
class ManagedStorageAccountSasTokenDefinition extends pulumi.CustomResource {
  /// The ID of the Managed Storage Account.
  late final pulumi.Output<String> managedStorageAccountId;
  /// The name which should be used for this SAS Definition.
  late final pulumi.Output<String> name;
  /// The SAS definition token template signed with an arbitrary key. Tokens created according to the SAS definition will have the same properties as the template, but regenerated with a new validity period.
  late final pulumi.Output<String> sasTemplateUri;
  /// The type of SAS token the SAS definition will create. Possible values are `account` and `service`.
  late final pulumi.Output<String> sasType;
  /// The ID of the Secret that is created by Managed Storage Account SAS Definition.
  late final pulumi.Output<String> secretId;
  /// A mapping of tags which should be assigned to the SAS Definition. Changing this forces a new resource to be created.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Validity period of SAS token. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  late final pulumi.Output<String> validityPeriod;

  /// Creates a new [ManagedStorageAccountSasTokenDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedStorageAccountSasTokenDefinition]. {@macro pulumi_keyvault_managed_storage_account_sas_token_definition_managed_storage_account_sas_token_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedStorageAccountSasTokenDefinition(
    String name, {
    ManagedStorageAccountSasTokenDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedStorageAccountSasTokenDefinition:ManagedStorageAccountSasTokenDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    managedStorageAccountId = registerOutput<String>('managedStorageAccountId');
    this.name = registerOutput<String>('name');
    sasTemplateUri = registerOutput<String>('sasTemplateUri');
    sasType = registerOutput<String>('sasType');
    secretId = registerOutput<String>('secretId');
    tags = registerOutput<Map<String, String>?>('tags');
    validityPeriod = registerOutput<String>('validityPeriod');
  }

  /// Gets an existing [ManagedStorageAccountSasTokenDefinition] resource's state with the given [name] and [id].
  static ManagedStorageAccountSasTokenDefinition get(
    String name,
    pulumi.Input<String> id, {
    ManagedStorageAccountSasTokenDefinitionState? state,
  }) {
    return ManagedStorageAccountSasTokenDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedStorageAccountSasTokenDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedStorageAccountSasTokenDefinition:ManagedStorageAccountSasTokenDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    managedStorageAccountId = registerOutput<String>('managedStorageAccountId');
    this.name = registerOutput<String>('name');
    sasTemplateUri = registerOutput<String>('sasTemplateUri');
    sasType = registerOutput<String>('sasType');
    secretId = registerOutput<String>('secretId');
    tags = registerOutput<Map<String, String>?>('tags');
    validityPeriod = registerOutput<String>('validityPeriod');
  }
}

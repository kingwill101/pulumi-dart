import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_scope_args.dart';
import 'encryption_scope_key_vault_properties_response.dart';

/// The Encryption Scope resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageAccountPutEncryptionScope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var encryptionScope = new AzureNative.Storage.EncryptionScope("encryptionScope", new()
///     {
///         AccountName = "accountname",
///         EncryptionScopeName = "{encryption-scope-name}",
///         ResourceGroupName = "resource-group-name",
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
/// 		_, err := storage.NewEncryptionScope(ctx, "encryptionScope", &storage.EncryptionScopeArgs{
/// 			AccountName:         pulumi.String("accountname"),
/// 			EncryptionScopeName: pulumi.String("{encryption-scope-name}"),
/// 			ResourceGroupName:   pulumi.String("resource-group-name"),
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
/// import com.pulumi.azurenative.storage.EncryptionScope;
/// import com.pulumi.azurenative.storage.EncryptionScopeArgs;
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
///         var encryptionScope = new EncryptionScope("encryptionScope", EncryptionScopeArgs.builder()
///             .accountName("accountname")
///             .encryptionScopeName("{encryption-scope-name}")
///             .resourceGroupName("resource-group-name")
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
/// const encryptionScope = new azure_native.storage.EncryptionScope("encryptionScope", {
///     accountName: "accountname",
///     encryptionScopeName: "{encryption-scope-name}",
///     resourceGroupName: "resource-group-name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// encryption_scope = azure_native.storage.EncryptionScope("encryptionScope",
///     account_name="accountname",
///     encryption_scope_name="{encryption-scope-name}",
///     resource_group_name="resource-group-name")
///
/// ```
///
/// ```yaml
/// resources:
///   encryptionScope:
///     type: azure-native:storage:EncryptionScope
///     properties:
///       accountName: accountname
///       encryptionScopeName: '{encryption-scope-name}'
///       resourceGroupName: resource-group-name
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountPutEncryptionScopeWithInfrastructureEncryption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var encryptionScope = new AzureNative.Storage.EncryptionScope("encryptionScope", new()
///     {
///         AccountName = "accountname",
///         EncryptionScopeName = "{encryption-scope-name}",
///         RequireInfrastructureEncryption = true,
///         ResourceGroupName = "resource-group-name",
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
/// 		_, err := storage.NewEncryptionScope(ctx, "encryptionScope", &storage.EncryptionScopeArgs{
/// 			AccountName:                     pulumi.String("accountname"),
/// 			EncryptionScopeName:             pulumi.String("{encryption-scope-name}"),
/// 			RequireInfrastructureEncryption: pulumi.Bool(true),
/// 			ResourceGroupName:               pulumi.String("resource-group-name"),
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
/// import com.pulumi.azurenative.storage.EncryptionScope;
/// import com.pulumi.azurenative.storage.EncryptionScopeArgs;
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
///         var encryptionScope = new EncryptionScope("encryptionScope", EncryptionScopeArgs.builder()
///             .accountName("accountname")
///             .encryptionScopeName("{encryption-scope-name}")
///             .requireInfrastructureEncryption(true)
///             .resourceGroupName("resource-group-name")
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
/// const encryptionScope = new azure_native.storage.EncryptionScope("encryptionScope", {
///     accountName: "accountname",
///     encryptionScopeName: "{encryption-scope-name}",
///     requireInfrastructureEncryption: true,
///     resourceGroupName: "resource-group-name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// encryption_scope = azure_native.storage.EncryptionScope("encryptionScope",
///     account_name="accountname",
///     encryption_scope_name="{encryption-scope-name}",
///     require_infrastructure_encryption=True,
///     resource_group_name="resource-group-name")
///
/// ```
///
/// ```yaml
/// resources:
///   encryptionScope:
///     type: azure-native:storage:EncryptionScope
///     properties:
///       accountName: accountname
///       encryptionScopeName: '{encryption-scope-name}'
///       requireInfrastructureEncryption: true
///       resourceGroupName: resource-group-name
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
/// $ pulumi import azure-native:storage:EncryptionScope {encryption-scope-name} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/encryptionScopes/{encryptionScopeName}
/// ```
class EncryptionScope extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets the creation date and time of the encryption scope in UTC.
  late final pulumi.Output<String> creationTime;

  /// The key vault properties for the encryption scope. This is a required field if encryption scope 'source' attribute is set to 'Microsoft.KeyVault'.
  late final pulumi.Output<EncryptionScopeKeyVaultPropertiesResponse?>
  keyVaultProperties;

  /// Gets the last modification date and time of the encryption scope in UTC.
  late final pulumi.Output<String> lastModifiedTime;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.
  late final pulumi.Output<bool?> requireInfrastructureEncryption;

  /// The provider for the encryption scope. Possible values (case-insensitive):  Microsoft.Storage, Microsoft.KeyVault.
  late final pulumi.Output<String?> source;

  /// The state of the encryption scope. Possible values (case-insensitive):  Enabled, Disabled.
  late final pulumi.Output<String?> state;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EncryptionScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EncryptionScope]. {@macro pulumi_storage_encryption_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EncryptionScope(
    String name, {
    EncryptionScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:storage:EncryptionScope',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    keyVaultProperties =
        registerOutput<EncryptionScopeKeyVaultPropertiesResponse?>(
          'keyVaultProperties',
        );
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    requireInfrastructureEncryption = registerOutput<bool?>(
      'requireInfrastructureEncryption',
    );
    source = registerOutput<String?>('source');
    state = registerOutput<String?>('state');
    type = registerOutput<String>('type');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_args.dart';

/// A workspace key
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a workspace key
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var key = new AzureNative.Synapse.Key("key", new()
///     {
///         IsActiveCMK = true,
///         KeyName = "somekey",
///         KeyVaultUrl = "https://vault.azure.net/keys/somesecret",
///         ResourceGroupName = "ExampleResourceGroup",
///         WorkspaceName = "ExampleWorkspace",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewKey(ctx, "key", &synapse.KeyArgs{
/// 			IsActiveCMK:       pulumi.Bool(true),
/// 			KeyName:           pulumi.String("somekey"),
/// 			KeyVaultUrl:       pulumi.String("https://vault.azure.net/keys/somesecret"),
/// 			ResourceGroupName: pulumi.String("ExampleResourceGroup"),
/// 			WorkspaceName:     pulumi.String("ExampleWorkspace"),
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
/// import com.pulumi.azurenative.synapse.Key;
/// import com.pulumi.azurenative.synapse.KeyArgs;
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
///         var key = new Key("key", KeyArgs.builder()
///             .isActiveCMK(true)
///             .keyName("somekey")
///             .keyVaultUrl("https://vault.azure.net/keys/somesecret")
///             .resourceGroupName("ExampleResourceGroup")
///             .workspaceName("ExampleWorkspace")
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
/// const key = new azure_native.synapse.Key("key", {
///     isActiveCMK: true,
///     keyName: "somekey",
///     keyVaultUrl: "https://vault.azure.net/keys/somesecret",
///     resourceGroupName: "ExampleResourceGroup",
///     workspaceName: "ExampleWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// key = azure_native.synapse.Key("key",
///     is_active_cmk=True,
///     key_name="somekey",
///     key_vault_url="https://vault.azure.net/keys/somesecret",
///     resource_group_name="ExampleResourceGroup",
///     workspace_name="ExampleWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   key:
///     type: azure-native:synapse:Key
///     properties:
///       isActiveCMK: true
///       keyName: somekey
///       keyVaultUrl: https://vault.azure.net/keys/somesecret
///       resourceGroupName: ExampleResourceGroup
///       workspaceName: ExampleWorkspace
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
/// $ pulumi import azure-native:synapse:Key somekey /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/keys/{keyName}
/// ```
class Key extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Used to activate the workspace after a customer managed key is provided.
  late final pulumi.Output<bool?> isActiveCMK;

  /// The Key Vault Url of the workspace key.
  late final pulumi.Output<String?> keyVaultUrl;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Key].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Key]. {@macro pulumi_synapse_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Key(String name, {KeyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:synapse:Key',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    isActiveCMK = registerOutput<bool?>('isActiveCMK');
    keyVaultUrl = registerOutput<String?>('keyVaultUrl');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}

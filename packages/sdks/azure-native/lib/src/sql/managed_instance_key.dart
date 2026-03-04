import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_key_args.dart';

/// A managed instance key.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-10-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a managed instance key
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedInstanceKey = new AzureNative.Sql.ManagedInstanceKey("managedInstanceKey", new()
///     {
///         KeyName = "someVault_someKey_01234567890123456789012345678901",
///         ManagedInstanceName = "sqlcrudtest-4645",
///         ResourceGroupName = "sqlcrudtest-7398",
///         ServerKeyType = AzureNative.Sql.ServerKeyType.AzureKeyVault,
///         Uri = "https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedInstanceKey(ctx, "managedInstanceKey", &sql.ManagedInstanceKeyArgs{
/// 			KeyName:             pulumi.String("someVault_someKey_01234567890123456789012345678901"),
/// 			ManagedInstanceName: pulumi.String("sqlcrudtest-4645"),
/// 			ResourceGroupName:   pulumi.String("sqlcrudtest-7398"),
/// 			ServerKeyType:       pulumi.String(sql.ServerKeyTypeAzureKeyVault),
/// 			Uri:                 pulumi.String("https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901"),
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
/// import com.pulumi.azurenative.sql.ManagedInstanceKey;
/// import com.pulumi.azurenative.sql.ManagedInstanceKeyArgs;
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
///         var managedInstanceKey = new ManagedInstanceKey("managedInstanceKey", ManagedInstanceKeyArgs.builder()
///             .keyName("someVault_someKey_01234567890123456789012345678901")
///             .managedInstanceName("sqlcrudtest-4645")
///             .resourceGroupName("sqlcrudtest-7398")
///             .serverKeyType("AzureKeyVault")
///             .uri("https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901")
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
/// const managedInstanceKey = new azure_native.sql.ManagedInstanceKey("managedInstanceKey", {
///     keyName: "someVault_someKey_01234567890123456789012345678901",
///     managedInstanceName: "sqlcrudtest-4645",
///     resourceGroupName: "sqlcrudtest-7398",
///     serverKeyType: azure_native.sql.ServerKeyType.AzureKeyVault,
///     uri: "https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_instance_key = azure_native.sql.ManagedInstanceKey("managedInstanceKey",
///     key_name="someVault_someKey_01234567890123456789012345678901",
///     managed_instance_name="sqlcrudtest-4645",
///     resource_group_name="sqlcrudtest-7398",
///     server_key_type=azure_native.sql.ServerKeyType.AZURE_KEY_VAULT,
///     uri="https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901")
///
/// ```
///
/// ```yaml
/// resources:
///   managedInstanceKey:
///     type: azure-native:sql:ManagedInstanceKey
///     properties:
///       keyName: someVault_someKey_01234567890123456789012345678901
///       managedInstanceName: sqlcrudtest-4645
///       resourceGroupName: sqlcrudtest-7398
///       serverKeyType: AzureKeyVault
///       uri: https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901
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
/// $ pulumi import azure-native:sql:ManagedInstanceKey sqlcrudtest-4645 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/keys/{keyName}
/// ```
class ManagedInstanceKey extends pulumi.CustomResource {
  /// Key auto rotation opt-in flag. Either true or false.
  late final pulumi.Output<bool> autoRotationEnabled;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The key creation date.
  late final pulumi.Output<String> creationDate;

  /// Kind of encryption protector. This is metadata used for the Azure portal experience.
  late final pulumi.Output<String> kind;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Thumbprint of the key.
  late final pulumi.Output<String> thumbprint;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedInstanceKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstanceKey]. {@macro pulumi_sql_managed_instance_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstanceKey(
    String name, {
    ManagedInstanceKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:ManagedInstanceKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRotationEnabled = registerOutput<bool>('autoRotationEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
  }
}

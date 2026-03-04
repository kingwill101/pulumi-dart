import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_key_args.dart';

/// A server key.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a server key
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverKey = new AzureNative.Sql.ServerKey("serverKey", new()
///     {
///         KeyName = "someVault_someKey_01234567890123456789012345678901",
///         ResourceGroupName = "sqlcrudtest-7398",
///         ServerKeyType = AzureNative.Sql.ServerKeyType.AzureKeyVault,
///         ServerName = "sqlcrudtest-4645",
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
/// 		_, err := sql.NewServerKey(ctx, "serverKey", &sql.ServerKeyArgs{
/// 			KeyName:           pulumi.String("someVault_someKey_01234567890123456789012345678901"),
/// 			ResourceGroupName: pulumi.String("sqlcrudtest-7398"),
/// 			ServerKeyType:     pulumi.String(sql.ServerKeyTypeAzureKeyVault),
/// 			ServerName:        pulumi.String("sqlcrudtest-4645"),
/// 			Uri:               pulumi.String("https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901"),
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
/// import com.pulumi.azurenative.sql.ServerKey;
/// import com.pulumi.azurenative.sql.ServerKeyArgs;
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
///         var serverKey = new ServerKey("serverKey", ServerKeyArgs.builder()
///             .keyName("someVault_someKey_01234567890123456789012345678901")
///             .resourceGroupName("sqlcrudtest-7398")
///             .serverKeyType("AzureKeyVault")
///             .serverName("sqlcrudtest-4645")
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
/// const serverKey = new azure_native.sql.ServerKey("serverKey", {
///     keyName: "someVault_someKey_01234567890123456789012345678901",
///     resourceGroupName: "sqlcrudtest-7398",
///     serverKeyType: azure_native.sql.ServerKeyType.AzureKeyVault,
///     serverName: "sqlcrudtest-4645",
///     uri: "https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_key = azure_native.sql.ServerKey("serverKey",
///     key_name="someVault_someKey_01234567890123456789012345678901",
///     resource_group_name="sqlcrudtest-7398",
///     server_key_type=azure_native.sql.ServerKeyType.AZURE_KEY_VAULT,
///     server_name="sqlcrudtest-4645",
///     uri="https://someVault.vault.azure.net/keys/someKey/01234567890123456789012345678901")
///
/// ```
///
/// ```yaml
/// resources:
///   serverKey:
///     type: azure-native:sql:ServerKey
///     properties:
///       keyName: someVault_someKey_01234567890123456789012345678901
///       resourceGroupName: sqlcrudtest-7398
///       serverKeyType: AzureKeyVault
///       serverName: sqlcrudtest-4645
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
/// $ pulumi import azure-native:sql:ServerKey sqlcrudtest-4645 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/keys/{keyName}
/// ```
class ServerKey extends pulumi.CustomResource {
  /// Key auto rotation opt-in flag. Either true or false.
  late final pulumi.Output<bool> autoRotationEnabled;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The server key creation date.
  late final pulumi.Output<String> creationDate;

  /// Kind of encryption protector. This is metadata used for the Azure portal experience.
  late final pulumi.Output<String> kind;

  /// Resource location.
  late final pulumi.Output<String> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Subregion of the server key.
  late final pulumi.Output<String> subregion;

  /// Thumbprint of the server key.
  late final pulumi.Output<String> thumbprint;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerKey]. {@macro pulumi_sql_server_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerKey(
    String name, {
    ServerKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:ServerKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRotationEnabled = registerOutput<bool>('autoRotationEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    subregion = registerOutput<String>('subregion');
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
  }
}

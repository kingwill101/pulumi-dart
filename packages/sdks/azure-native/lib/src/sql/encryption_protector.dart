import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_protector_args.dart';

/// The server encryption protector.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update the encryption protector to key vault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var encryptionProtector = new AzureNative.Sql.EncryptionProtector("encryptionProtector", new()
///     {
///         AutoRotationEnabled = false,
///         EncryptionProtectorName = "current",
///         ResourceGroupName = "sqlcrudtest-7398",
///         ServerKeyName = "someVault_someKey_01234567890123456789012345678901",
///         ServerKeyType = AzureNative.Sql.ServerKeyType.AzureKeyVault,
///         ServerName = "sqlcrudtest-4645",
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
/// 		_, err := sql.NewEncryptionProtector(ctx, "encryptionProtector", &sql.EncryptionProtectorArgs{
/// 			AutoRotationEnabled:     pulumi.Bool(false),
/// 			EncryptionProtectorName: pulumi.String("current"),
/// 			ResourceGroupName:       pulumi.String("sqlcrudtest-7398"),
/// 			ServerKeyName:           pulumi.String("someVault_someKey_01234567890123456789012345678901"),
/// 			ServerKeyType:           pulumi.String(sql.ServerKeyTypeAzureKeyVault),
/// 			ServerName:              pulumi.String("sqlcrudtest-4645"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_encryptionprotector" "encryptionProtector" {
///   auto_rotation_enabled     = false
///   encryption_protector_name = "current"
///   resource_group_name       = "sqlcrudtest-7398"
///   server_key_name           = "someVault_someKey_01234567890123456789012345678901"
///   server_key_type           = "AzureKeyVault"
///   server_name               = "sqlcrudtest-4645"
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
/// import com.pulumi.azurenative.sql.EncryptionProtector;
/// import com.pulumi.azurenative.sql.EncryptionProtectorArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var encryptionProtector = new EncryptionProtector("encryptionProtector", EncryptionProtectorArgs.builder()
///             .autoRotationEnabled(false)
///             .encryptionProtectorName("current")
///             .resourceGroupName("sqlcrudtest-7398")
///             .serverKeyName("someVault_someKey_01234567890123456789012345678901")
///             .serverKeyType("AzureKeyVault")
///             .serverName("sqlcrudtest-4645")
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
/// const encryptionProtector = new azure_native.sql.EncryptionProtector("encryptionProtector", {
///     autoRotationEnabled: false,
///     encryptionProtectorName: "current",
///     resourceGroupName: "sqlcrudtest-7398",
///     serverKeyName: "someVault_someKey_01234567890123456789012345678901",
///     serverKeyType: azure_native.sql.ServerKeyType.AzureKeyVault,
///     serverName: "sqlcrudtest-4645",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// encryption_protector = azure_native.sql.EncryptionProtector("encryptionProtector",
///     auto_rotation_enabled=False,
///     encryption_protector_name="current",
///     resource_group_name="sqlcrudtest-7398",
///     server_key_name="someVault_someKey_01234567890123456789012345678901",
///     server_key_type=azure_native.sql.ServerKeyType.AZURE_KEY_VAULT,
///     server_name="sqlcrudtest-4645")
///
/// ```
///
/// ```yaml
/// resources:
///   encryptionProtector:
///     type: azure-native:sql:EncryptionProtector
///     properties:
///       autoRotationEnabled: false
///       encryptionProtectorName: current
///       resourceGroupName: sqlcrudtest-7398
///       serverKeyName: someVault_someKey_01234567890123456789012345678901
///       serverKeyType: AzureKeyVault
///       serverName: sqlcrudtest-4645
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update the encryption protector to service managed
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var encryptionProtector = new AzureNative.Sql.EncryptionProtector("encryptionProtector", new()
///     {
///         EncryptionProtectorName = "current",
///         ResourceGroupName = "sqlcrudtest-7398",
///         ServerKeyName = "ServiceManaged",
///         ServerKeyType = AzureNative.Sql.ServerKeyType.ServiceManaged,
///         ServerName = "sqlcrudtest-4645",
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
/// 		_, err := sql.NewEncryptionProtector(ctx, "encryptionProtector", &sql.EncryptionProtectorArgs{
/// 			EncryptionProtectorName: pulumi.String("current"),
/// 			ResourceGroupName:       pulumi.String("sqlcrudtest-7398"),
/// 			ServerKeyName:           pulumi.String("ServiceManaged"),
/// 			ServerKeyType:           pulumi.String(sql.ServerKeyTypeServiceManaged),
/// 			ServerName:              pulumi.String("sqlcrudtest-4645"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_encryptionprotector" "encryptionProtector" {
///   encryption_protector_name = "current"
///   resource_group_name       = "sqlcrudtest-7398"
///   server_key_name           = "ServiceManaged"
///   server_key_type           = "ServiceManaged"
///   server_name               = "sqlcrudtest-4645"
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
/// import com.pulumi.azurenative.sql.EncryptionProtector;
/// import com.pulumi.azurenative.sql.EncryptionProtectorArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var encryptionProtector = new EncryptionProtector("encryptionProtector", EncryptionProtectorArgs.builder()
///             .encryptionProtectorName("current")
///             .resourceGroupName("sqlcrudtest-7398")
///             .serverKeyName("ServiceManaged")
///             .serverKeyType("ServiceManaged")
///             .serverName("sqlcrudtest-4645")
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
/// const encryptionProtector = new azure_native.sql.EncryptionProtector("encryptionProtector", {
///     encryptionProtectorName: "current",
///     resourceGroupName: "sqlcrudtest-7398",
///     serverKeyName: "ServiceManaged",
///     serverKeyType: azure_native.sql.ServerKeyType.ServiceManaged,
///     serverName: "sqlcrudtest-4645",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// encryption_protector = azure_native.sql.EncryptionProtector("encryptionProtector",
///     encryption_protector_name="current",
///     resource_group_name="sqlcrudtest-7398",
///     server_key_name="ServiceManaged",
///     server_key_type=azure_native.sql.ServerKeyType.SERVICE_MANAGED,
///     server_name="sqlcrudtest-4645")
///
/// ```
///
/// ```yaml
/// resources:
///   encryptionProtector:
///     type: azure-native:sql:EncryptionProtector
///     properties:
///       encryptionProtectorName: current
///       resourceGroupName: sqlcrudtest-7398
///       serverKeyName: ServiceManaged
///       serverKeyType: ServiceManaged
///       serverName: sqlcrudtest-4645
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
/// $ pulumi import azure-native:sql:EncryptionProtector current /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/encryptionProtector/{encryptionProtectorName}
/// ```
class EncryptionProtector extends pulumi.CustomResource {
  /// Key auto rotation opt-in flag. Either true or false.
  late final pulumi.Output<bool?> autoRotationEnabled;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Kind of encryption protector. This is metadata used for the Azure portal experience.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The name of the server key.
  late final pulumi.Output<String?> serverKeyName;
  /// The encryption protector type like 'ServiceManaged', 'AzureKeyVault'.
  late final pulumi.Output<String> serverKeyType;
  /// Subregion of the encryption protector.
  late final pulumi.Output<String> subregion;
  /// Thumbprint of the server key.
  late final pulumi.Output<String> thumbprint;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The URI of the server key.
  late final pulumi.Output<String> uri;

  /// Creates a new [EncryptionProtector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EncryptionProtector]. {@macro pulumi_sql_encryption_protector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EncryptionProtector(
    String name, {
    EncryptionProtectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:EncryptionProtector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRotationEnabled = registerOutput<bool?>('autoRotationEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    serverKeyName = registerOutput<String?>('serverKeyName');
    serverKeyType = registerOutput<String>('serverKeyType');
    subregion = registerOutput<String>('subregion');
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
    uri = registerOutput<String>('uri');
  }

  /// Creates a typed reference to an existing [EncryptionProtector] resource.
  EncryptionProtector.reference(String urn)
    : super(
        'azure-native:sql:EncryptionProtector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoRotationEnabled = registerOutput<bool?>('autoRotationEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    serverKeyName = registerOutput<String?>('serverKeyName');
    serverKeyType = registerOutput<String>('serverKeyType');
    subregion = registerOutput<String>('subregion');
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
    uri = registerOutput<String>('uri');
  }
}

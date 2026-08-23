import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_azure_adonly_authentication_args.dart';

/// Azure Active Directory only authentication.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates Azure Active Directory only authentication object.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverAzureADOnlyAuthentication = new AzureNative.Sql.ServerAzureADOnlyAuthentication("serverAzureADOnlyAuthentication", new()
///     {
///         AuthenticationName = "Default",
///         AzureADOnlyAuthentication = false,
///         ResourceGroupName = "sqlcrudtest-4799",
///         ServerName = "sqlcrudtest-6440",
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
/// 		_, err := sql.NewServerAzureADOnlyAuthentication(ctx, "serverAzureADOnlyAuthentication", &sql.ServerAzureADOnlyAuthenticationArgs{
/// 			AuthenticationName:        pulumi.String("Default"),
/// 			AzureADOnlyAuthentication: pulumi.Bool(false),
/// 			ResourceGroupName:         pulumi.String("sqlcrudtest-4799"),
/// 			ServerName:                pulumi.String("sqlcrudtest-6440"),
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
/// resource "azure-native_sql_serverazureadonlyauthentication" "serverAzureADOnlyAuthentication" {
///   authentication_name          = "Default"
///   azure_ad_only_authentication = false
///   resource_group_name          = "sqlcrudtest-4799"
///   server_name                  = "sqlcrudtest-6440"
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
/// import com.pulumi.azurenative.sql.ServerAzureADOnlyAuthentication;
/// import com.pulumi.azurenative.sql.ServerAzureADOnlyAuthenticationArgs;
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
///         var serverAzureADOnlyAuthentication = new ServerAzureADOnlyAuthentication("serverAzureADOnlyAuthentication", ServerAzureADOnlyAuthenticationArgs.builder()
///             .authenticationName("Default")
///             .azureADOnlyAuthentication(false)
///             .resourceGroupName("sqlcrudtest-4799")
///             .serverName("sqlcrudtest-6440")
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
/// const serverAzureADOnlyAuthentication = new azure_native.sql.ServerAzureADOnlyAuthentication("serverAzureADOnlyAuthentication", {
///     authenticationName: "Default",
///     azureADOnlyAuthentication: false,
///     resourceGroupName: "sqlcrudtest-4799",
///     serverName: "sqlcrudtest-6440",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_azure_ad_only_authentication = azure_native.sql.ServerAzureADOnlyAuthentication("serverAzureADOnlyAuthentication",
///     authentication_name="Default",
///     azure_ad_only_authentication=False,
///     resource_group_name="sqlcrudtest-4799",
///     server_name="sqlcrudtest-6440")
///
/// ```
///
/// ```yaml
/// resources:
///   serverAzureADOnlyAuthentication:
///     type: azure-native:sql:ServerAzureADOnlyAuthentication
///     properties:
///       authenticationName: Default
///       azureADOnlyAuthentication: false
///       resourceGroupName: sqlcrudtest-4799
///       serverName: sqlcrudtest-6440
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
/// $ pulumi import azure-native:sql:ServerAzureADOnlyAuthentication Default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/azureADOnlyAuthentications/{authenticationName}
/// ```
class ServerAzureADOnlyAuthentication extends pulumi.CustomResource {
  /// Azure Active Directory only Authentication enabled.
  late final pulumi.Output<bool> azureADOnlyAuthentication;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerAzureADOnlyAuthentication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerAzureADOnlyAuthentication]. {@macro pulumi_sql_server_azure_adonly_authentication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerAzureADOnlyAuthentication(
    String name, {
    ServerAzureADOnlyAuthenticationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ServerAzureADOnlyAuthentication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureADOnlyAuthentication = registerOutput<bool>('azureADOnlyAuthentication');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}

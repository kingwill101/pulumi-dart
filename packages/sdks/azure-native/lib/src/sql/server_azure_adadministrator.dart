import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_azure_adadministrator_args.dart';

/// Azure Active Directory administrator.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2018-06-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates an existing Azure Active Directory administrator.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverAzureADAdministrator = new AzureNative.Sql.ServerAzureADAdministrator("serverAzureADAdministrator", new()
///     {
///         AdministratorName = "ActiveDirectory",
///         AdministratorType = AzureNative.Sql.AdministratorType.ActiveDirectory,
///         Login = "bob@contoso.com",
///         ResourceGroupName = "sqlcrudtest-4799",
///         ServerName = "sqlcrudtest-6440",
///         Sid = "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///         TenantId = "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
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
/// 		_, err := sql.NewServerAzureADAdministrator(ctx, "serverAzureADAdministrator", &sql.ServerAzureADAdministratorArgs{
/// 			AdministratorName: pulumi.String("ActiveDirectory"),
/// 			AdministratorType: pulumi.String(sql.AdministratorTypeActiveDirectory),
/// 			Login:             pulumi.String("bob@contoso.com"),
/// 			ResourceGroupName: pulumi.String("sqlcrudtest-4799"),
/// 			ServerName:        pulumi.String("sqlcrudtest-6440"),
/// 			Sid:               pulumi.String("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c"),
/// 			TenantId:          pulumi.String("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c"),
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
/// import com.pulumi.azurenative.sql.ServerAzureADAdministrator;
/// import com.pulumi.azurenative.sql.ServerAzureADAdministratorArgs;
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
///         var serverAzureADAdministrator = new ServerAzureADAdministrator("serverAzureADAdministrator", ServerAzureADAdministratorArgs.builder()
///             .administratorName("ActiveDirectory")
///             .administratorType("ActiveDirectory")
///             .login("bob@contoso.com")
///             .resourceGroupName("sqlcrudtest-4799")
///             .serverName("sqlcrudtest-6440")
///             .sid("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
///             .tenantId("c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
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
/// const serverAzureADAdministrator = new azure_native.sql.ServerAzureADAdministrator("serverAzureADAdministrator", {
///     administratorName: "ActiveDirectory",
///     administratorType: azure_native.sql.AdministratorType.ActiveDirectory,
///     login: "bob@contoso.com",
///     resourceGroupName: "sqlcrudtest-4799",
///     serverName: "sqlcrudtest-6440",
///     sid: "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     tenantId: "c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_azure_ad_administrator = azure_native.sql.ServerAzureADAdministrator("serverAzureADAdministrator",
///     administrator_name="ActiveDirectory",
///     administrator_type=azure_native.sql.AdministratorType.ACTIVE_DIRECTORY,
///     login="bob@contoso.com",
///     resource_group_name="sqlcrudtest-4799",
///     server_name="sqlcrudtest-6440",
///     sid="c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c",
///     tenant_id="c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c")
///
/// ```
///
/// ```yaml
/// resources:
///   serverAzureADAdministrator:
///     type: azure-native:sql:ServerAzureADAdministrator
///     properties:
///       administratorName: ActiveDirectory
///       administratorType: ActiveDirectory
///       login: bob@contoso.com
///       resourceGroupName: sqlcrudtest-4799
///       serverName: sqlcrudtest-6440
///       sid: c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c
///       tenantId: c6b82b90-a647-49cb-8a62-0d2d3cb7ac7c
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
/// $ pulumi import azure-native:sql:ServerAzureADAdministrator ActiveDirectory /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/administrators/{administratorName}
/// ```
class ServerAzureADAdministrator extends pulumi.CustomResource {
  /// Type of the sever administrator.
  late final pulumi.Output<String?> administratorType;

  /// Azure Active Directory only Authentication enabled.
  late final pulumi.Output<bool> azureADOnlyAuthentication;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Login name of the server administrator.
  late final pulumi.Output<String> login;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// SID (object ID) of the server administrator.
  late final pulumi.Output<String> sid;

  /// Tenant ID of the administrator.
  late final pulumi.Output<String?> tenantId;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerAzureADAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerAzureADAdministrator]. {@macro pulumi_sql_server_azure_adadministrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerAzureADAdministrator(
    String name, {
    ServerAzureADAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:ServerAzureADAdministrator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorType = registerOutput<String?>('administratorType');
    azureADOnlyAuthentication = registerOutput<bool>(
      'azureADOnlyAuthentication',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    login = registerOutput<String>('login');
    this.name = registerOutput<String>('name');
    sid = registerOutput<String>('sid');
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}

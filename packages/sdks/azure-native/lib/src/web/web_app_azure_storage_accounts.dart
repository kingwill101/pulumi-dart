import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_storage_info_value_response.dart';
import 'web_app_azure_storage_accounts_args.dart';

/// AzureStorageInfo dictionary resource.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update Azure Storage Accounts
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppAzureStorageAccounts = new AzureNative.Web.WebAppAzureStorageAccounts("webAppAzureStorageAccounts", new()
///     {
///         Name = "sitef6141",
///         Properties =
///         {
///             { "account1", new AzureNative.Web.Inputs.AzureStorageInfoValueArgs
///             {
///                 AccessKey = "26515^%@#*",
///                 AccountName = "testsa",
///                 MountPath = "/mounts/a/files",
///                 ShareName = "web",
///                 Type = AzureNative.Web.AzureStorageType.AzureFiles,
///             } },
///         },
///         ResourceGroupName = "testrg123",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebAppAzureStorageAccounts(ctx, "webAppAzureStorageAccounts", &web.WebAppAzureStorageAccountsArgs{
/// 			Name: pulumi.String("sitef6141"),
/// 			Properties: web.AzureStorageInfoValueMap{
/// 				"account1": &web.AzureStorageInfoValueArgs{
/// 					AccessKey:   pulumi.String("26515^%@#*"),
/// 					AccountName: pulumi.String("testsa"),
/// 					MountPath:   pulumi.String("/mounts/a/files"),
/// 					ShareName:   pulumi.String("web"),
/// 					Type:        web.AzureStorageTypeAzureFiles,
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
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
/// resource "azure-native_web_webappazurestorageaccounts" "webAppAzureStorageAccounts" {
///   name = "sitef6141"
///   properties = {
///     "account1" = {
///       access_key   = "26515^%@#*"
///       account_name = "testsa"
///       mount_path   = "/mounts/a/files"
///       share_name   = "web"
///       type         = "AzureFiles"
///     }
///   }
///   resource_group_name = "testrg123"
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
/// import com.pulumi.azurenative.web.WebAppAzureStorageAccounts;
/// import com.pulumi.azurenative.web.WebAppAzureStorageAccountsArgs;
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
///         var webAppAzureStorageAccounts = new WebAppAzureStorageAccounts("webAppAzureStorageAccounts", WebAppAzureStorageAccountsArgs.builder()
///             .name("sitef6141")
///             .properties(Map.of("account1", AzureStorageInfoValueArgs.builder()
///                 .accessKey("26515^%@#*")
///                 .accountName("testsa")
///                 .mountPath("/mounts/a/files")
///                 .shareName("web")
///                 .type("AzureFiles")
///                 .build()))
///             .resourceGroupName("testrg123")
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
/// const webAppAzureStorageAccounts = new azure_native.web.WebAppAzureStorageAccounts("webAppAzureStorageAccounts", {
///     name: "sitef6141",
///     properties: {
///         account1: {
///             accessKey: "26515^%@#*",
///             accountName: "testsa",
///             mountPath: "/mounts/a/files",
///             shareName: "web",
///             type: azure_native.web.AzureStorageType.AzureFiles,
///         },
///     },
///     resourceGroupName: "testrg123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_azure_storage_accounts = azure_native.web.WebAppAzureStorageAccounts("webAppAzureStorageAccounts",
///     name="sitef6141",
///     properties={
///         "account1": {
///             "access_key": "26515^%@#*",
///             "account_name": "testsa",
///             "mount_path": "/mounts/a/files",
///             "share_name": "web",
///             "type": azure_native.web.AzureStorageType.AZURE_FILES,
///         },
///     },
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppAzureStorageAccounts:
///     type: azure-native:web:WebAppAzureStorageAccounts
///     properties:
///       name: sitef6141
///       properties:
///         account1:
///           accessKey: 26515^%@#*
///           accountName: testsa
///           mountPath: /mounts/a/files
///           shareName: web
///           type: AzureFiles
///       resourceGroupName: testrg123
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
/// $ pulumi import azure-native:web:WebAppAzureStorageAccounts web /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/azurestorageaccounts
/// ```
class WebAppAzureStorageAccounts extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Azure storage accounts.
  late final pulumi.Output<Map<String, AzureStorageInfoValueResponse>> properties;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppAzureStorageAccounts].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppAzureStorageAccounts]. {@macro pulumi_web_web_app_azure_storage_accounts_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppAzureStorageAccounts(
    String name, {
    WebAppAzureStorageAccountsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppAzureStorageAccounts',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, AzureStorageInfoValueResponse>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<AzureStorageInfoValueResponse>(guardedValue, (value) => AzureStorageInfoValueResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}

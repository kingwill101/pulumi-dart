import 'package:pulumi/pulumi.dart' as pulumi;
import 'favorite_process_args.dart';
import 'system_data_response.dart';

/// A favorite process identifier.
///
/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### FavoriteProcessCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var favoriteProcess = new AzureNative.TestBase.FavoriteProcess("favoriteProcess", new()
///     {
///         ActualProcessName = "testApp&.exe",
///         FavoriteProcessResourceName = "testAppProcess",
///         PackageName = "contoso-package2",
///         ResourceGroupName = "contoso-rg1",
///         TestBaseAccountName = "contoso-testBaseAccount1",
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
/// 	testbase "github.com/pulumi/pulumi-azure-native-sdk/testbase/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := testbase.NewFavoriteProcess(ctx, "favoriteProcess", &testbase.FavoriteProcessArgs{
/// 			ActualProcessName:           pulumi.String("testApp&.exe"),
/// 			FavoriteProcessResourceName: pulumi.String("testAppProcess"),
/// 			PackageName:                 pulumi.String("contoso-package2"),
/// 			ResourceGroupName:           pulumi.String("contoso-rg1"),
/// 			TestBaseAccountName:         pulumi.String("contoso-testBaseAccount1"),
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
/// import com.pulumi.azurenative.testbase.FavoriteProcess;
/// import com.pulumi.azurenative.testbase.FavoriteProcessArgs;
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
///         var favoriteProcess = new FavoriteProcess("favoriteProcess", FavoriteProcessArgs.builder()
///             .actualProcessName("testApp&.exe")
///             .favoriteProcessResourceName("testAppProcess")
///             .packageName("contoso-package2")
///             .resourceGroupName("contoso-rg1")
///             .testBaseAccountName("contoso-testBaseAccount1")
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
/// const favoriteProcess = new azure_native.testbase.FavoriteProcess("favoriteProcess", {
///     actualProcessName: "testApp&.exe",
///     favoriteProcessResourceName: "testAppProcess",
///     packageName: "contoso-package2",
///     resourceGroupName: "contoso-rg1",
///     testBaseAccountName: "contoso-testBaseAccount1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// favorite_process = azure_native.testbase.FavoriteProcess("favoriteProcess",
///     actual_process_name="testApp&.exe",
///     favorite_process_resource_name="testAppProcess",
///     package_name="contoso-package2",
///     resource_group_name="contoso-rg1",
///     test_base_account_name="contoso-testBaseAccount1")
///
/// ```
///
/// ```yaml
/// resources:
///   favoriteProcess:
///     type: azure-native:testbase:FavoriteProcess
///     properties:
///       actualProcessName: testApp&.exe
///       favoriteProcessResourceName: testAppProcess
///       packageName: contoso-package2
///       resourceGroupName: contoso-rg1
///       testBaseAccountName: contoso-testBaseAccount1
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
/// $ pulumi import azure-native:testbase:FavoriteProcess testAppProcess /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}/packages/{packageName}/favoriteProcesses/{favoriteProcessResourceName}
/// ```
class FavoriteProcess extends pulumi.CustomResource {
  /// The actual name of the favorite process. It will be equal to resource name except for the scenario that the process name contains characters that are not allowed in the resource name.
  late final pulumi.Output<String> actualProcessName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FavoriteProcess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FavoriteProcess]. {@macro pulumi_testbase_favorite_process_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FavoriteProcess(
    String name, {
    FavoriteProcessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:testbase:FavoriteProcess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actualProcessName = registerOutput<String>('actualProcessName');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}

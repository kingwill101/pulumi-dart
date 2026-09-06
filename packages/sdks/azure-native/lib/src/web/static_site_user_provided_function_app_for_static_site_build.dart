import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_user_provided_function_app_for_static_site_build_args.dart';
import 'system_data_response.dart';

/// Static Site User Provided Function App ARM resource.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Register a user provided function app with a static site build
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staticSiteUserProvidedFunctionAppForStaticSiteBuild = new AzureNative.Web.StaticSiteUserProvidedFunctionAppForStaticSiteBuild("staticSiteUserProvidedFunctionAppForStaticSiteBuild", new()
///     {
///         EnvironmentName = "default",
///         FunctionAppName = "testFunctionApp",
///         FunctionAppRegion = "West US 2",
///         FunctionAppResourceId = "/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/functionRG/providers/Microsoft.Web/sites/testFunctionApp",
///         IsForced = true,
///         Name = "testStaticSite0",
///         ResourceGroupName = "rg",
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
/// 		_, err := web.NewStaticSiteUserProvidedFunctionAppForStaticSiteBuild(ctx, "staticSiteUserProvidedFunctionAppForStaticSiteBuild", &web.StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs{
/// 			EnvironmentName:       pulumi.String("default"),
/// 			FunctionAppName:       pulumi.String("testFunctionApp"),
/// 			FunctionAppRegion:     pulumi.String("West US 2"),
/// 			FunctionAppResourceId: pulumi.String("/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/functionRG/providers/Microsoft.Web/sites/testFunctionApp"),
/// 			IsForced:              pulumi.Bool(true),
/// 			Name:                  pulumi.String("testStaticSite0"),
/// 			ResourceGroupName:     pulumi.String("rg"),
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
/// resource "azure-native_web_staticsiteuserprovidedfunctionappforstaticsitebuild" "staticSiteUserProvidedFunctionAppForStaticSiteBuild" {
///   environment_name         = "default"
///   function_app_name        = "testFunctionApp"
///   function_app_region      = "West US 2"
///   function_app_resource_id = "/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/functionRG/providers/Microsoft.Web/sites/testFunctionApp"
///   is_forced                = "true"
///   name                     = "testStaticSite0"
///   resource_group_name      = "rg"
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
/// import com.pulumi.azurenative.web.StaticSiteUserProvidedFunctionAppForStaticSiteBuild;
/// import com.pulumi.azurenative.web.StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs;
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
///         var staticSiteUserProvidedFunctionAppForStaticSiteBuild = new StaticSiteUserProvidedFunctionAppForStaticSiteBuild("staticSiteUserProvidedFunctionAppForStaticSiteBuild", StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs.builder()
///             .environmentName("default")
///             .functionAppName("testFunctionApp")
///             .functionAppRegion("West US 2")
///             .functionAppResourceId("/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/functionRG/providers/Microsoft.Web/sites/testFunctionApp")
///             .isForced(true)
///             .name("testStaticSite0")
///             .resourceGroupName("rg")
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
/// const staticSiteUserProvidedFunctionAppForStaticSiteBuild = new azure_native.web.StaticSiteUserProvidedFunctionAppForStaticSiteBuild("staticSiteUserProvidedFunctionAppForStaticSiteBuild", {
///     environmentName: "default",
///     functionAppName: "testFunctionApp",
///     functionAppRegion: "West US 2",
///     functionAppResourceId: "/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/functionRG/providers/Microsoft.Web/sites/testFunctionApp",
///     isForced: true,
///     name: "testStaticSite0",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// static_site_user_provided_function_app_for_static_site_build = azure_native.web.StaticSiteUserProvidedFunctionAppForStaticSiteBuild("staticSiteUserProvidedFunctionAppForStaticSiteBuild",
///     environment_name="default",
///     function_app_name="testFunctionApp",
///     function_app_region="West US 2",
///     function_app_resource_id="/subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/functionRG/providers/Microsoft.Web/sites/testFunctionApp",
///     is_forced=True,
///     name="testStaticSite0",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   staticSiteUserProvidedFunctionAppForStaticSiteBuild:
///     type: azure-native:web:StaticSiteUserProvidedFunctionAppForStaticSiteBuild
///     properties:
///       environmentName: default
///       functionAppName: testFunctionApp
///       functionAppRegion: West US 2
///       functionAppResourceId: /subscription/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/functionRG/providers/Microsoft.Web/sites/testFunctionApp
///       isForced: 'true'
///       name: testStaticSite0
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:web:StaticSiteUserProvidedFunctionAppForStaticSiteBuild testFunctionApp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/staticSites/{name}/builds/{environmentName}/userProvidedFunctionApps/{functionAppName}
/// ```
class StaticSiteUserProvidedFunctionAppForStaticSiteBuild extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The date and time on which the function app was registered with the static site.
  late final pulumi.Output<String> createdOn;
  /// The region of the function app registered with the static site
  late final pulumi.Output<String?> functionAppRegion;
  /// The resource id of the function app registered with the static site
  late final pulumi.Output<String?> functionAppResourceId;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StaticSiteUserProvidedFunctionAppForStaticSiteBuild].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticSiteUserProvidedFunctionAppForStaticSiteBuild]. {@macro pulumi_web_static_site_user_provided_function_app_for_static_site_build_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticSiteUserProvidedFunctionAppForStaticSiteBuild(
    String name, {
    StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:StaticSiteUserProvidedFunctionAppForStaticSiteBuild',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdOn = registerOutput<String>('createdOn');
    functionAppRegion = registerOutput<String?>('functionAppRegion');
    functionAppResourceId = registerOutput<String?>('functionAppResourceId');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [StaticSiteUserProvidedFunctionAppForStaticSiteBuild] resource.
  StaticSiteUserProvidedFunctionAppForStaticSiteBuild.reference(String urn)
    : super(
        'azure-native:web:StaticSiteUserProvidedFunctionAppForStaticSiteBuild',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdOn = registerOutput<String>('createdOn');
    functionAppRegion = registerOutput<String?>('functionAppRegion');
    functionAppResourceId = registerOutput<String?>('functionAppResourceId');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}

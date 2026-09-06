import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_user_provided_function_app_for_static_site_args.dart';
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
/// ### Register a user provided function app with a static site
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staticSiteUserProvidedFunctionAppForStaticSite = new AzureNative.Web.StaticSiteUserProvidedFunctionAppForStaticSite("staticSiteUserProvidedFunctionAppForStaticSite", new()
///     {
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
/// 		_, err := web.NewStaticSiteUserProvidedFunctionAppForStaticSite(ctx, "staticSiteUserProvidedFunctionAppForStaticSite", &web.StaticSiteUserProvidedFunctionAppForStaticSiteArgs{
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
/// resource "azure-native_web_staticsiteuserprovidedfunctionappforstaticsite" "staticSiteUserProvidedFunctionAppForStaticSite" {
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
/// import com.pulumi.azurenative.web.StaticSiteUserProvidedFunctionAppForStaticSite;
/// import com.pulumi.azurenative.web.StaticSiteUserProvidedFunctionAppForStaticSiteArgs;
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
///         var staticSiteUserProvidedFunctionAppForStaticSite = new StaticSiteUserProvidedFunctionAppForStaticSite("staticSiteUserProvidedFunctionAppForStaticSite", StaticSiteUserProvidedFunctionAppForStaticSiteArgs.builder()
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
/// const staticSiteUserProvidedFunctionAppForStaticSite = new azure_native.web.StaticSiteUserProvidedFunctionAppForStaticSite("staticSiteUserProvidedFunctionAppForStaticSite", {
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
/// static_site_user_provided_function_app_for_static_site = azure_native.web.StaticSiteUserProvidedFunctionAppForStaticSite("staticSiteUserProvidedFunctionAppForStaticSite",
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
///   staticSiteUserProvidedFunctionAppForStaticSite:
///     type: azure-native:web:StaticSiteUserProvidedFunctionAppForStaticSite
///     properties:
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
/// $ pulumi import azure-native:web:StaticSiteUserProvidedFunctionAppForStaticSite testFunctionApp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/staticSites/{name}/userProvidedFunctionApps/{functionAppName}
/// ```
class StaticSiteUserProvidedFunctionAppForStaticSite extends pulumi.CustomResource {
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

  /// Creates a new [StaticSiteUserProvidedFunctionAppForStaticSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticSiteUserProvidedFunctionAppForStaticSite]. {@macro pulumi_web_static_site_user_provided_function_app_for_static_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticSiteUserProvidedFunctionAppForStaticSite(
    String name, {
    StaticSiteUserProvidedFunctionAppForStaticSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:StaticSiteUserProvidedFunctionAppForStaticSite',
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

  /// Creates a typed reference to an existing [StaticSiteUserProvidedFunctionAppForStaticSite] resource.
  StaticSiteUserProvidedFunctionAppForStaticSite.reference(String urn)
    : super(
        'azure-native:web:StaticSiteUserProvidedFunctionAppForStaticSite',
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
